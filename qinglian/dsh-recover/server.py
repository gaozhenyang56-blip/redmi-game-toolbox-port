"""Capture sanitized failure evidence, then recover only an unhealthy DSH unit."""
import hashlib,http.client,http.cookiejar,json,os,re,subprocess,time,traceback,urllib.request
from pathlib import Path

def run(*args,check=False):return subprocess.run(args,check=check,capture_output=True,text=True,timeout=60).stdout.strip()
def props():
 text=run('systemctl','show','dsh.service','--property=ActiveState,SubState,Result,NRestarts,Restart,MainPID,ExecMainCode,ExecMainStatus,MemoryCurrent,MemoryHigh,MemoryMax,OOMPolicy,ActiveEnterTimestampMonotonic')
 return dict(l.split('=',1) for l in text.splitlines() if '=' in l)
def health():
 try:
  c=http.client.HTTPConnection('127.0.0.1',3080,timeout=5);c.request('GET','/',headers={'Host':'gaozy.tech'});r=c.getresponse();status=r.status;c.close();return status
 except Exception:return None
try:
 assert os.geteuid()==0
 files=[Path('/var/lib/dsh/profiles/web/cordis.patch.yml'),Path('/var/lib/dsh/.credentials.yaml')]
 hashes={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
 before=props();before_http=health()
 memory={l.split(':',1)[0]:int(l.split()[1])*1024 for l in Path('/proc/meminfo').read_text().splitlines() if l.startswith(('MemTotal:','MemAvailable:','SwapTotal:','SwapFree:'))}
 group=run('systemctl','show','dsh.service','--property=ControlGroup','--value');events={}
 if group.startswith('/'):
  eventfile=Path('/sys/fs/cgroup'+group)/'memory.events'
  if eventfile.exists():events=dict((k,int(v)) for k,v in (line.split() for line in eventfile.read_text().splitlines()))
 log=Path('/var/lib/dsh/runtime.log');tail=''
 if log.exists():
  with log.open('rb') as f:f.seek(max(0,log.stat().st_size-384*1024));tail=f.read().decode(errors='replace')
 categories={k:len(re.findall(p,tail,re.I)) for k,p in {
 'v8HeapOom':r'heap out of memory|Reached heap limit|Ineffective mark-compacts',
 'addressInUse':r'EADDRINUSE|address already in use','diskFull':r'ENOSPC|no space left',
 'permission':r'EACCES|permission denied','syntaxError':r'SyntaxError:',
 'moduleMissing':r'ERR_MODULE_NOT_FOUND|Cannot find module','uncaughtError':r'uncaughtException|unhandledRejection',
 'restartRequest':r'restarting|restart requested|restart scheduled'}.items()}
 journal=run('journalctl','-u','dsh','--since','2 hours ago','-n','200','--no-pager','-o','cat')
 journal_categories={k:len(re.findall(p,journal,re.I)) for k,p in {'oomKill':r'oom-kill|out of memory|OOM event','startLimit':r'start request repeated too quickly|start-limit-hit','cleanExit':r'Deactivated successfully','killed':r'status=9/KILL|status=247'}.items()}
 recovered=False
 if before_http not in (200,401,403):
  if before['ActiveState'] in ('inactive','failed'):
   run('systemctl','reset-failed','dsh.service');run('systemctl','start','dsh.service',check=True);recovered=True
  elif before['ActiveState']=='active':
   age=float(Path('/proc/uptime').read_text().split()[0])-int(before.get('ActiveEnterTimestampMonotonic','0'))/1e6
   if age>90:run('systemctl','restart','dsh.service',check=True);recovered=True
 if recovered:
  for _ in range(75):
   if health() in (200,401,403):break
   time.sleep(2)
 after=props();after_http=health()
 assert all(hashlib.sha256(Path(p).read_bytes()).hexdigest()==v for p,v in hashes.items())
 print(json.dumps({'ok':after_http in (200,401,403),'serviceBefore':before,'backendHttpBefore':before_http,
  'memory':memory,'cgroupMemoryEvents':events,'privateLogErrorCategories':categories,'journalCategories':journal_categories,
  'targetedRestartOrStart':recovered,'serviceAfter':after,'backendHttpAfter':after_http,'apiSettingsPreserved':True}))
except Exception as e:print(json.dumps({'ok':False,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
