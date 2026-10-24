#!/usr/bin/env python3
"""Dedicated remote-control deployment. Existing VPN and panel services are untouched."""
import base64
import json
import os
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection, remote_json
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives.ciphers.aead import AESGCM

ROOT=Path(__file__).parent
revision=os.environ.get('GITHUB_SHA','manual')
if not revision.isalnum(): raise ValueError('Invalid revision')
with connection() as client:
    remote_json(client,"""
import json,subprocess
from pathlib import Path
root=Path('/opt/qinglian-remote')
root.mkdir(mode=0o755,exist_ok=True)
subprocess.run(['id','-u','qinglian-remote'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL).returncode == 0 or subprocess.run(['useradd','--system','--home','/var/lib/qinglian-remote','--shell','/usr/sbin/nologin','qinglian-remote'],check=True)
print(json.dumps({'ready':True}))
""")
    destination='/opt/qinglian-remote/releases/'+revision
    remote_json(client,"import json\nfrom pathlib import Path\nPath("+repr(destination+ '/static')+").mkdir(parents=True,exist_ok=True)\nprint(json.dumps({'ready':True}))")
    with client.open_sftp() as sftp:
        for name in ['server.py','static/index.html','static/app.js','static/style.css']:
            sftp.put(str(ROOT/name),destination+'/'+name)
    script=r'''
import base64,datetime,ipaddress,json,os,secrets,socket,subprocess,ssl,urllib.request
from pathlib import Path
root=Path('/opt/qinglian-remote'); config=Path('/etc/qinglian-remote'); config.mkdir(mode=0o700,exist_ok=True)
host=HOST_VALUE
credentials=config/'credentials.json'
if credentials.exists():
    data=json.loads(credentials.read_text())
else:
    with socket.socket() as sock:
        if sock.connect_ex(('127.0.0.1',18443)) == 0: raise RuntimeError('port 18443 already in use')
    data={'adminToken':secrets.token_urlsafe(32),'agentToken':secrets.token_urlsafe(32),'url':'https://'+host+':18443'}
    credentials.write_text(json.dumps(data)); credentials.chmod(0o600)
    (config/'remote.env').write_text('QINGLIAN_REMOTE_TOKEN='+data['adminToken']+'\nQINGLIAN_AGENT_TOKEN='+data['agentToken']+'\nQINGLIAN_TOTP_STATE=/var/lib/qinglian-remote/totp-step\n')
    (config/'remote.env').chmod(0o600)
if not (config/'server.pem').exists():
    san=('IP:' if is_ip(host) else 'DNS:')+host
    subprocess.run(['openssl','req','-x509','-newkey','rsa:3072','-nodes','-days','365','-keyout',str(config/'server.key'),'-out',str(config/'server.pem'),'-subj','/CN='+host,'-addext','subjectAltName='+san,'-addext','basicConstraints=critical,CA:TRUE'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
    subprocess.run(['chown','root:qinglian-remote',str(config/'server.key')],check=True); (config/'server.key').chmod(0o640)
# Service account must traverse the certificate directory; only public certificate is world-readable.
subprocess.run(['chown','root:qinglian-remote',str(config)],check=True); config.chmod(0o750)
state=Path('/var/lib/qinglian-remote'); state.mkdir(mode=0o700,exist_ok=True)
subprocess.run(['chown','qinglian-remote:qinglian-remote',str(state)],check=True)
unit='''+repr('''[Unit]
Description=Qinglian phone relay with TOTP
After=network-online.target
Wants=network-online.target
[Service]
User=qinglian-remote
Group=qinglian-remote
EnvironmentFile=/etc/qinglian-remote/remote.env
WorkingDirectory=/opt/qinglian-remote/current
ExecStart=/usr/bin/python3 /opt/qinglian-remote/current/server.py --relay --host 0.0.0.0 --port 18443 --tls-cert /etc/qinglian-remote/server.pem --tls-key /etc/qinglian-remote/server.key
Restart=always
RestartSec=5
NoNewPrivileges=true
ProtectSystem=strict
ProtectHome=true
PrivateTmp=true
ReadWritePaths=/var/lib/qinglian-remote
UMask=0077
[Install]
WantedBy=multi-user.target
''')+r'''
unit_path=Path('/etc/systemd/system/qinglian-remote.service')
previous_unit=unit_path.read_text() if unit_path.exists() else None
current=root/'current'; previous=os.readlink(current) if current.is_symlink() else None
new=root/'current.new'; new.unlink(missing_ok=True); new.symlink_to(DEST_VALUE); new.replace(current)
unit_path.write_text(unit)
try:
    subprocess.run(['systemctl','daemon-reload'],check=True)
    subprocess.run(['systemctl','enable','--now','qinglian-remote.service'],check=True,stdout=subprocess.DEVNULL)
    subprocess.run(['systemctl','restart','qinglian-remote.service'],check=True)
    import time
    context=ssl.create_default_context(cafile=str(config/'server.pem'))
    success=False
    for attempt in range(15):
        try:
            with urllib.request.urlopen(data['url']+'/',context=context,timeout=5) as response:
                assert response.status==200
            success=True; break
        except Exception: time.sleep(1)
    if not success: raise RuntimeError('HTTPS health check failed')
except Exception:
    if previous:
        new.unlink(missing_ok=True); new.symlink_to(previous); new.replace(current)
    if previous_unit is not None: unit_path.write_text(previous_unit)
    subprocess.run(['systemctl','daemon-reload'])
    subprocess.run(['systemctl','restart' if previous else 'stop','qinglian-remote.service'])
    raise
# No existing service, proxy, firewall or database is modified.
data['caPem']=(config/'server.pem').read_text()
data['active']=subprocess.run(['systemctl','is-active','--quiet','qinglian-remote.service']).returncode==0
print(json.dumps(data))
'''
    script=script.replace('HOST_VALUE',repr(os.environ['QINGLIAN_SSH_HOST'])).replace('DEST_VALUE',repr(destination))
    script=script.replace('host=','def is_ip(value):\n    try: ipaddress.ip_address(value); return True\n    except ValueError: return False\nhost=',1)
    result=remote_json(client,script,timeout=180)
    # Verify HTTPS from the runner with the dedicated CA, without printing credentials.
    import ssl, tempfile, urllib.request, urllib.error
    with tempfile.TemporaryDirectory() as temporary:
        ca=Path(temporary)/'ca.pem'; ca.write_text(result['caPem'])
        context=ssl.create_default_context(cafile=str(ca))
        with urllib.request.urlopen(result['url']+'/',context=context,timeout=20) as response:
            if response.status!=200: raise RuntimeError('external HTTPS page check failed')
        try:
            urllib.request.urlopen(result['url']+'/api/status',context=context,timeout=20)
            raise RuntimeError('anonymous API unexpectedly allowed')
        except urllib.error.HTTPError as error:
            if error.code!=401: raise
    key=os.urandom(32); nonce=os.urandom(12)
    public=serialization.load_pem_public_key((ROOT/'deploy-public.pem').read_bytes())
    wrapped=public.encrypt(key,padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
    ciphertext=AESGCM(key).encrypt(nonce,json.dumps(result).encode(),b'Qinglian Remote Bootstrap v1')
    envelope=json.dumps({k:base64.b64encode(v).decode() for k,v in dict(key=wrapped,nonce=nonce,data=ciphertext).items()})
    print('REMOTE_ENVELOPE='+base64.b64encode(envelope.encode()).decode())
    print('REMOTE_URL='+result['url'])
    print('HTTPS page=200, anonymous control=401, service active='+str(result['active']))
