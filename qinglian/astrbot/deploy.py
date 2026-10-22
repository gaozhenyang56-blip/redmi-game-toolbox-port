"""Deploy AstrBot using the existing pinned Qinglian SSH connection."""
import hashlib
import hmac
import json
import os
from pathlib import Path
import sys
import time

sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection,remote_json

ROOT=Path(__file__).resolve().parent
with connection() as client:
    preflight=remote_json(client,r'''
import json,os,shutil,socket,subprocess
from pathlib import Path
def active(name):
 return subprocess.run(['systemctl','is-active',name],capture_output=True,text=True).stdout.strip()
assert os.geteuid()==0, 'Root required'
assert not Path('/opt/astrbot').exists(), 'Existing AstrBot directory'
with socket.socket() as s:s.bind(('127.0.0.1',6185))
print(json.dumps({'diskFreeBytes':shutil.disk_usage('/opt').free,
 'memoryAvailableKiB':next(int(l.split()[1]) for l in Path('/proc/meminfo').read_text().splitlines() if l.startswith('MemAvailable:')),
 'xui':active('x-ui'),'exports':active('qinglian-exports')}))
''')
    print('Preflight:',json.dumps(preflight),flush=True)
    if preflight['memoryAvailableKiB'] < 700*1024:
        raise SystemExit('Insufficient available memory for installation')
    bootstrap=hmac.new(os.environ['QINGLIAN_SSH_PASSWORD'].encode(),b'astrbot-dashboard-bootstrap:v1',hashlib.sha256).hexdigest()[:24]
    sftp=client.open_sftp()
    for local,remote in [(ROOT/'install.sh','/tmp/astrbot-install.sh'),(Path(os.environ['RUNNER_TEMP'])/'astrbot-source.tar.gz','/tmp/astrbot-source.tar.gz')]:
        sftp.put(str(local),remote);sftp.chmod(remote,0o600)
    with sftp.open('/tmp/astrbot-bootstrap.json','w') as f:
        f.write(json.dumps({'password':bootstrap}))
    sftp.chmod('/tmp/astrbot-bootstrap.json',0o600)
    sftp.close()
    try:
        _,out,err=client.exec_command('bash /tmp/astrbot-install.sh > /var/log/astrbot-install.log 2>&1',timeout=1200)
        deadline=time.monotonic()+1200
        while not out.channel.exit_status_ready():
            if time.monotonic()>deadline:raise RuntimeError('Deployment exceeded time limit')
            time.sleep(15)
            print('Installing AstrBot; private server-local log retained.',flush=True)
        status=out.channel.recv_exit_status()
        if status:
            # Filter log categories only; never upload application credentials or configuration.
            diagnostic=remote_json(client,r'''
import json,re,subprocess
from pathlib import Path
p=Path('/var/log/astrbot-install.log')
text=p.read_text(errors='replace')[-20000:] if p.exists() else ''
safe=[l[:350] for l in text.splitlines() if re.match(r'^(?:error:|ERROR:|E:|ModuleNotFoundError:|ImportError:|RuntimeError:|AssertionError:|Failed to|No solution found|  ×|  ╰─|  ├─)',l)]
print(json.dumps({'categories':safe[-12:],'serviceActive':subprocess.run(['systemctl','is-active','astrbot'],capture_output=True,text=True).stdout.strip()}))
''')
            print('Deployment diagnostic:',json.dumps(diagnostic),flush=True)
            raise RuntimeError('Deployment failed; full log stays on server')
        result=remote_json(client,r'''
import json,subprocess,urllib.request
def run(args):return subprocess.check_output(args,text=True).strip()
print(json.dumps({'service':run(['systemctl','is-active','astrbot']),
 'enabled':run(['systemctl','is-enabled','astrbot']),
 'http':urllib.request.urlopen('http://127.0.0.1:6185/',timeout=10).status,
 'xui':run(['systemctl','is-active','x-ui']),
 'exports':run(['systemctl','is-active','qinglian-exports']),
 'bind':'127.0.0.1:6185','version':'4.29.1'}))
''')
        print('Deployment verified:',json.dumps(result),flush=True)
    finally:
        client.exec_command('rm -f /tmp/astrbot-bootstrap.json /tmp/astrbot-install.sh /tmp/astrbot-source.tar.gz',timeout=10)[1].channel.recv_exit_status()
