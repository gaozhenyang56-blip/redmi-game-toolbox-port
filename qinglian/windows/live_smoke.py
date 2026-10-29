"""Explicit Windows public test: strict CDN, real native transports, guest meter.
The fourth case simulates HY2 verification timeout then verifies real TCP fallback.
No deployment or carrier-specific claims; cleanup is scoped to a random test device.
"""
import json
import os
from pathlib import Path
import secrets
import sys
import tempfile
import threading
import time
import urllib.parse
from unittest.mock import patch
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE)); sys.path.insert(0,str(HERE.parent/'server/github'))
import client
from ssh_common import connection,remote_json

resources=Path(sys.argv[1]).resolve(); client.ROOT=resources; client.common.ROOT=resources
with connection() as ssh,tempfile.TemporaryDirectory() as directory:
    state=Path(directory); client.STATE=state; client.common.STATE=state
    config=remote_json(ssh,"import json;from pathlib import Path;c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());print(json.dumps({'host':c['serverAddress'],'statePath':c['statePath'],'domain':c['tls'].get('domainName','')}))")
    api=client.Api(); api.device=secrets.token_hex(32); device=api.device
    request=api.request; requests=[]
    def tracked_request(*args,**kwargs): requests.append(args[0]); return request(*args,**kwargs)
    api.request=tracked_request
    try:
        for path in ('online','quota'): assert isinstance(api.request(path,bootstrap=True),dict)
        assert urllib.parse.urlsplit(api.base).hostname==config['domain']=='gaozy.tech'
        assert urllib.parse.urlsplit(api.origin_base).hostname==config['host']
        print('PASS: Windows public-CA CDN control / original private-CA metered speed origin')
        for mode,high,simulate in [('compat',False,False),('hy2',False,False),('hy2',True,False),('auto',True,True)]:
            events=[]; c=client.Connection(api,lambda *value:events.append(value)); requests.clear()
            real_probe=api.verify_proxy
            def probe(cancel=None,cold_hy2=False):
                if simulate and cold_hy2: raise TimeoutError('CI-only simulated UDP verification timeout')
                return real_probe(cancel,cold_hy2)
            with patch.object(client.common.ProxySettings,'enable'),patch.object(client.common.ProxySettings,'close'),patch.object(api,'verify_proxy',probe):
                c.start(mode,high,False)
                try:
                    for _ in range(600):
                        if c.connected: break
                        if any(event=='error' for event,value in events): break
                        time.sleep(.1)
                    if not c.connected: raise RuntimeError('Windows public connection failed: '+next((str(value) for event,value in events if event=='error'),'timeout'))
                    assert c.speed(1,threading.Event(),lambda *_:None).startswith('已完成')
                    for _ in range(30):
                        quota=api.current('quota'); assert quota['limitBytes']==64*1024**3
                        if quota['usedBytes']>=1048576: break
                        time.sleep(.5)
                    else: raise AssertionError('Windows guest native counters not observed')
                    assert requests.count('guest/start')==1, 'fallback must retain the same guest allocation'
                    if simulate:
                        assert any(event=='warning' for event,value in events)
                        assert any(event=='connected' and 'HY2' not in value for event,value in events)
                finally:
                    c.disconnect(); c.thread.join(timeout=30); assert not c.thread.is_alive() and not c.procs
            print('PASS: Windows '+('simulated HY2 timeout -> real TCP, one guest session' if simulate else 'HY2 high' if high else mode)+' / 1 MiB / meter / native cleanup')
    finally:
        api.hold_session=False; api.end()
        script='STATE='+repr(config['statePath'])+'\nDEVICE='+repr(device)+'\n'+'''import sqlite3,json,time
with sqlite3.connect(STATE) as db:
 ids=[r[0] for r in db.execute('SELECT user_id FROM guest_sessions WHERE device=?',(DEVICE,))]
 for u in ids: db.execute("UPDATE exports SET status='revoked' WHERE user_id=? AND kind='guest'",(u,))
time.sleep(3)
with sqlite3.connect(STATE) as db:
 for u in ids:
  for table in ['history','api_sessions','device_registrations','guest_sessions','exports']: db.execute('DELETE FROM '+table+' WHERE user_id=?',(u,))
  db.execute('DELETE FROM api_users WHERE id=?',(u,))
print(json.dumps({'fixtureCleaned':True}))'''
        assert remote_json(ssh,script,timeout=20)['fixtureCleaned']
