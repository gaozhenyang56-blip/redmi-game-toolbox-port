#!/usr/bin/env python3
"""Explicit small public guest test through the actual Ubuntu runtime. No deployment.
Uses the existing pinned SSH connection to provision private API assets in a temp dir.
"""
import json
import os
from pathlib import Path
import sys
import tempfile
import threading
import time
from unittest.mock import patch
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE)); sys.path.insert(0,str(HERE.parent/'server/github'))
import runtime
from ssh_common import connection,remote_json
os.umask(0o077)
LIB=Path('/usr/lib/qinglian')
with connection() as ssh,tempfile.TemporaryDirectory() as d:
    root=Path(d); lib=root/'lib'; lib.mkdir(); state=root/'state'; state.mkdir()
    cfg=remote_json(ssh,"import json;from pathlib import Path;c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());print(json.dumps({'host':c['serverAddress'],'port':c['tls']['port'],'statePath':c['statePath'],'clientToken':c['clientToken']}))")
    with ssh.open_sftp() as s: s.get('/etc/x-ui/qinglian/ca.pem',str(lib/'api-ca.pem'))
    for name in ('node-config.jar','json.jar','v2ray','hysteria','tun2socks','geoip.dat','geosite.dat','runtime.py'):
        (lib/name).symlink_to(LIB/name)
    runtime.save(lib/'profile.json',dict(url='https://'+cfg['host']+':'+str(cfg['port'])+'/api/v1/profile',clientToken=cfg['clientToken'],caAsset='api-ca.pem'))
    runtime.ROOT=lib; runtime.STATE=state
    api=runtime.Api(); device=api.device
    try:
        for path in ('online','quota'): assert isinstance(api.request(path,bootstrap=True),dict)
        for accelerated,performance in ((False,False),(True,False),(True,True)):
            events=[]; c=runtime.Connection(api,lambda e,v:events.append((e,v)))
            with patch.object(runtime.ProxySettings,'enable'),patch.object(runtime.ProxySettings,'close'):
                c.start(accelerated,performance,False,False)
                try:
                    for _ in range(400):
                        if c.connected: break
                        if any(e=='error' for e,v in events): break
                        time.sleep(.1)
                    if not c.connected: raise RuntimeError('Ubuntu public connection failed: '+next((v for e,v in events if e=='error'),'timeout'))
                    result=c.speed(1,threading.Event(),lambda *_:None)
                    assert result.startswith('已完成')
                    # Native worker counters are sampled asynchronously; do not demand
                    # the API have observed the last packet in the same instant.
                    for _ in range(30):
                        quota=api.current('quota')
                        assert quota['limitBytes']==64*1024**3
                        if quota['usedBytes']>=1048576: break
                        time.sleep(.5)
                    else: raise AssertionError('public guest native counters did not catch up')
                finally:
                    c.disconnect(); c.thread.join(timeout=30)
                    assert not c.thread.is_alive(), 'connection shutdown timeout'
            print('PASS: public '+('HY2 aggressive' if performance else 'HY2 conservative' if accelerated else 'compatibility')+' / strict CA / 1 MiB / guest meter / clean stop')
    finally:
        api.end()
        # Scope cleanup to this fresh cryptographic device fixture, never a real account.
        script='STATE='+repr(cfg['statePath'])+'\nDEVICE='+repr(device)+'\n'+'''import sqlite3,json,time
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
