"""Read-only, redacted HY2 health and UDP buffer diagnostics."""
import sys,json
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import subprocess,json,re,time,urllib.request
from pathlib import Path
def run(args):
 p=subprocess.run(args,capture_output=True,text=True,timeout=10);return p.stdout.strip() if p.returncode==0 else ''
def udp():
 lines=Path('/proc/net/snmp').read_text().splitlines()
 for i,line in enumerate(lines[:-1]):
  if line.startswith('Udp:') and 'RcvbufErrors' in line:return dict(zip(line.split()[1:],map(int,lines[i+1].split()[1:])))
 return {}
a=udp();before=run(['systemctl','show','qinglian-hy2','-p','ActiveState','-p','NRestarts','-p','MemoryCurrent','-p','CPUUsageNSec']);time.sleep(3);b=udp()
raw=run(['ss','-ulnm','sport','=',':443']);memory=re.findall(r'skmem:\(([^)]+)',raw)
config=json.loads(Path('/etc/x-ui/qinglian/hy2.json').read_text())
req=urllib.request.Request('http://127.0.0.1:11453/status',headers={'Authorization':'Bearer '+config['managementToken']})
with urllib.request.build_opener(urllib.request.ProxyHandler({})).open(req,timeout=3) as response:status=json.load(response)
print(json.dumps({'hy2':{k:status.get(k) for k in ['running','enabled','error']},'service':before,'udpCounterDelta':{k:b[k]-a.get(k,0) for k in b},'udpMemory':memory,'udpReceiveCeiling':run(['sysctl','-n','net.core.rmem_max']),'udpSendCeiling':run(['sysctl','-n','net.core.wmem_max']),'serverQuic':json.loads(Path('/run/qinglian-hy2/hy2-server.json').read_text()).get('quic',{})}))
'''
with connection() as client:print(json.dumps(remote_json(client,SCRIPT),ensure_ascii=False))
