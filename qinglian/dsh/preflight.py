import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection,remote_json
with connection() as c:
 print(json.dumps(remote_json(c,r'''
import json,shutil,subprocess,socket
from pathlib import Path
def run(args):
 p=subprocess.run(args,capture_output=True,text=True,timeout=10);return p.stdout.strip()[:500]
ports={}
for port in (3080,8443):
 try:
  with socket.socket() as s:s.bind(('0.0.0.0',port))
  ports[str(port)]='free'
 except OSError:ports[str(port)]='occupied'
print(json.dumps({'os':Path('/etc/os-release').read_text(),'arch':run(['uname','-m']),
 'memory':next(l for l in Path('/proc/meminfo').read_text().splitlines() if l.startswith('MemAvailable:')),
 'diskFree':shutil.disk_usage('/opt').free,'ports':ports,
 'node':run(['node','--version']) if shutil.which('node') else None,
 'nginx':shutil.which('nginx'),'docker':shutil.which('docker'),
 'certificate':Path('/etc/letsencrypt/live/qinglian-gaozy-tech/fullchain.pem').exists(),
 'existingDsh':Path('/opt/dsh').exists(),'xui':run(['systemctl','is-active','x-ui'])}))
''')))
