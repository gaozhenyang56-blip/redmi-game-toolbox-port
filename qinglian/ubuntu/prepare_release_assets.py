#!/usr/bin/env python3
"""Restore ONLY the app bootstrap/public CA for an explicitly requested desktop release."""
import json
import os
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
os.umask(0o077)
output=Path(sys.argv[1]); output.mkdir(parents=True,exist_ok=True)
with connection() as ssh:
    cfg=remote_json(ssh,"import json;from pathlib import Path;c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());print(json.dumps({'host':c['serverAddress'],'port':c['tls']['port'],'clientToken':c['clientToken'],'domain':c['tls'].get('domainName','')}))")
    with ssh.open_sftp() as s: s.get('/etc/x-ui/qinglian/ca.pem',str(output/'api-ca.pem'))
    config={'url':'https://'+cfg['host']+':'+str(cfg['port'])+'/api/v1/profile','clientToken':cfg['clientToken'],'caAsset':'api-ca.pem'}
    if cfg.get('domain'):config['cdnUrl']='https://'+cfg['domain']+'/api/v1/profile'
    (output/'profile.json').write_text(json.dumps(config))
print('Prepared app bootstrap and public API CA; no admin, SSH, account session or signing assets included.')
