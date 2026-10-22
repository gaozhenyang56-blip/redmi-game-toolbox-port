"""Decrypt transient model credentials and configure the existing AstrBot service."""
import base64
import hashlib
import hmac
import json
import os
from pathlib import Path
import sys

from cryptography.hazmat.primitives.ciphers.aead import AESGCM
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection

raw=base64.b64decode(os.environ['ASTRBOT_PROVIDER_ENVELOPE'],validate=True)
salt,nonce,ciphertext=raw[:16],raw[16:28],raw[28:]
password=os.environ['QINGLIAN_SSH_PASSWORD'].encode()
key=hashlib.pbkdf2_hmac('sha256',password,salt,600000,dklen=32)
credentials=json.loads(AESGCM(key).decrypt(nonce,ciphertext,b'astrbot-provider:v1'))
credentials['dashboard_password']=hmac.new(password,b'astrbot-dashboard-bootstrap:v1',hashlib.sha256).hexdigest()[:24]
with connection() as client:
 sftp=client.open_sftp()
 with sftp.open('/tmp/astrbot-provider.json','w') as f:f.write(json.dumps(credentials))
 sftp.chmod('/tmp/astrbot-provider.json',0o600)
 sftp.put(str(Path(__file__).with_name('configure-server.py')),'/tmp/astrbot-configure.py')
 sftp.chmod('/tmp/astrbot-configure.py',0o600);sftp.close()
 try:
  command='cd /opt/astrbot && .venv/bin/python /tmp/astrbot-configure.py /tmp/astrbot-provider.json > /var/log/astrbot-configure.log 2>&1'
  _,out,err=client.exec_command(command,timeout=900)
  status=out.channel.recv_exit_status()
  sftp=client.open_sftp()
  with sftp.open('/var/log/astrbot-configure.log') as f:log=f.read().decode(errors='replace')
  sftp.close()
  summary=next((line.split('=',1)[1] for line in log.splitlines() if line.startswith('ASTRBOT_VERIFY_JSON=')),None)
  if summary:print(json.dumps(json.loads(summary),ensure_ascii=False),flush=True)
  if status or not summary:
   import re
   safe=[line[:300] for line in log.splitlines() if re.match(r'^(?:ModuleNotFoundError|ImportError|AssertionError|RuntimeError|KeyError|urllib.error.HTTPError):',line)]
   print(json.dumps({'configured':False,'diagnostic':safe[-4:]}),flush=True)
   raise SystemExit(1)
 finally:
  client.exec_command('rm -f /tmp/astrbot-provider.json /tmp/astrbot-configure.py',timeout=10)[1].channel.recv_exit_status()
