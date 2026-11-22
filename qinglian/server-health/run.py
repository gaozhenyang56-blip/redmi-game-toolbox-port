import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import collections,http.client,json,os,re,socket,ssl,subprocess,time
from pathlib import Path

def run(args,timeout=15):
 try:
  p=subprocess.run(args,capture_output=True,text=True,timeout=timeout)
  return p.stdout if p.returncode==0 else ''
 except (OSError,subprocess.TimeoutExpired):return ''
def props(unit):
 text=run(['systemctl','show',unit,'--property=ActiveState,SubState,Result,NRestarts,MemoryCurrent,MemoryMax,TasksCurrent,LimitNOFILE,ActiveEnterTimestamp'])
 return dict(line.split('=',1) for line in text.splitlines() if '=' in line)
mem={l.split(':',1)[0]:int(l.split()[1])*1024 for l in Path('/proc/meminfo').read_text().splitlines() if l.split()[1].isdigit()}
disk=os.statvfs('/')
result={'memory':{k:mem.get(k) for k in ('MemTotal','MemAvailable','SwapTotal','SwapFree')},'load':Path('/proc/loadavg').read_text().split()[:3],
 'disk':{'freeBytes':disk.f_bavail*disk.f_frsize,'freeInodes':disk.f_favail},
 'services':{u:props(u) for u in ('x-ui','dsh','astrbot','server-hub','qinglian-exports','qinglian-hy2')}}
patterns={'outOfMemory':r'out of memory|oom.kill|oom-kill|killed process',
 'diskFull':r'no space left|ENOSPC','addressInUse':r'address already in use|EADDRINUSE',
 'permissionDenied':r'permission denied|EACCES','tlsError':r'TLS handshake error|certificate has expired|x509:',
 'panicOrCrash':r'panic:|segmentation fault|core dumped','listenerStartError':r'TLS API unavailable|failed to listen|bind: cannot'}
result['recentErrors']={}
for u in ('x-ui','dsh','astrbot'):
 log=run(['journalctl','-u',u,'--since','24 hours ago','-n','2000','--no-pager','-o','cat'])
 result['recentErrors'][u]={k:len(re.findall(v,log,re.I)) for k,v in patterns.items()}
kernel=run(['journalctl','-k','--since','24 hours ago','-n','5000','--no-pager','-o','cat'])
result['kernelOomEvents']=len(re.findall(patterns['outOfMemory'],kernel,re.I))
listeners=run(['ss','-H','-lnt'])
result['listeners']={str(p):bool(re.search(r':'+str(p)+r'\s',listeners)) for p in (443,11452,3080,9178)}
class Origin(http.client.HTTPSConnection):
 def connect(self):self.sock=self._context.wrap_socket(socket.create_connection(('127.0.0.1',443),6),server_hostname='gaozy.tech')
result['originHttps']={}
for path in ('/','/panel/health','/dsh/'):
 c=None
 try:
  c=Origin('gaozy.tech',context=ssl.create_default_context(),timeout=8)
  c.request('GET',path,headers={'Host':'gaozy.tech','User-Agent':'Qinglian-Deploy/1.0'})
  response=c.getresponse();result['originHttps'][path]={'status':response.status};response.read(512)
 except Exception as e:result['originHttps'][path]={'errorType':type(e).__name__}
 finally:
  if c:c.close()
cfg=Path('/etc/x-ui/qinglian.json')
if cfg.is_file():
 config=json.loads(cfg.read_text());tls=config.get('tls',{})
 result['domainConfigured']=tls.get('domainName')=='gaozy.tech'
 cert=tls.get('domainCertificate')
 if cert and Path(cert).is_file():result['originCertificateDates']=run(['openssl','x509','-in',cert,'-noout','-dates']).strip().splitlines()
result['failedUnitCount']=len([l for l in run(['systemctl','--failed','--no-legend','--plain','--no-pager']).splitlines() if l.strip()])
print(json.dumps(result))
'''
with connection() as c:print(json.dumps(remote_json(c,SCRIPT,timeout=150)),flush=True)
