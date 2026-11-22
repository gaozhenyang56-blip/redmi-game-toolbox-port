"""Root helper: fixed DSH operations over a restricted local Unix socket."""
import base64,hashlib,hmac,json,os,pwd,re,socket,socketserver,struct,subprocess,sys,threading,time,urllib.request,urllib.error
from pathlib import Path
SOCKET='/run/dsh-control-helper/control.sock'
AUTH=Path('/etc/dsh/web-auth.json')
UNIT='dsh.service'
LOCK=threading.Lock();LAST_ACTION=0

def command(*args):
 return subprocess.run(args,capture_output=True,text=True,timeout=12,check=False)

def properties():
 fields='ActiveState,SubState,Result,NRestarts,MainPID,MemoryCurrent,MemoryHigh,MemoryMax,ActiveEnterTimestampMonotonic,Restart,CPUQuotaPerSecUSec'
 return dict(line.split('=',1) for line in command('systemctl','show',UNIT,'--property='+fields).stdout.splitlines() if '=' in line)

def backend():
 try:
  with urllib.request.urlopen(urllib.request.Request('http://127.0.0.1:3080/',headers={'Host':'gaozy.tech'}),timeout=4) as r:return r.status in (200,401,403)
 except urllib.error.HTTPError as e:return e.code in (401,403)
 except Exception:return False

def redact(value):
 # Exact server-held credential values plus common secret/token formats.
 values=[]
 for path in (Path('/var/lib/dsh/.credentials.yaml'),Path('/var/lib/dsh/entry-url.txt')):
  try:
   raw=path.read_text()
   if path.name=='entry-url.txt':values.extend(re.findall(r'[?&]token=([^&\s]+)',raw))
   else:
    for line in raw.splitlines():
     match=re.match(r'^\s+[^:#]+:\s*(.+?)\s*$',line)
     if match:
      scalar=match[1].strip().strip('\"\'')
      if len(scalar)>=8:values.append(scalar)
  except OSError:pass
 for secret in sorted(set(values),key=len,reverse=True):value=value.replace(secret,'[已隐藏]')
 value=re.sub(r'(?i)([?&](?:token|key|api_key|access_token)=)[^\s&\"<>]+',r'\1[已隐藏]',value)
 value=re.sub(r'(?i)\b(Bearer|Basic)\s+[^\s\"\']+',r'\1 [已隐藏]',value)
 value=re.sub(r'\b(?:sk-|AIza)[A-Za-z0-9_-]{12,}','[已隐藏]',value)
 value=re.sub(r'(?i)((?:api[_-]?key|password|secret|authorization)\s*[\"\']?\s*[:=]\s*[\"\']?)[^\s,\"\'}]+',r'\1[已隐藏]',value)
 return value

def logs(source,lines):
 if source not in ('runtime','system'):raise ValueError('invalid source')
 lines=max(20,min(200,int(lines)))
 if source=='system':raw=command('journalctl','-u',UNIT,'-n',str(lines),'--no-pager','-o','short-iso').stdout
 else:
  try:
   with Path('/var/lib/dsh/runtime.log').open('rb') as f:
    f.seek(0,2);f.seek(max(0,f.tell()-262144));raw=f.read().decode('utf-8','replace')
  except OSError:raw='暂无运行日志'
 return '\n'.join(line[:2000] for line in redact(raw).splitlines()[-lines:])

def dispatch(req):
 global LAST_ACTION
 op=req.get('op')
 if op=='auth':
  auth=json.loads(AUTH.read_text())
  password=str(req.get('password',''))
  candidate=hashlib.pbkdf2_hmac('sha256',password.encode(),base64.b64decode(auth['salt']),600000)
  return {'ok':hmac.compare_digest(str(req.get('username','')),auth['username']) and hmac.compare_digest(candidate,base64.b64decode(auth['hash']))}
 if op=='status':
  props=properties();props['backendReady']=backend()
  start=int(props.get('ActiveEnterTimestampMonotonic','0'))/1e6
  props['uptimeSeconds']=max(0,int(time.monotonic()-start)) if props.get('ActiveState')=='active' else 0
  return {'ok':True,'status':props}
 if op=='logs':return {'ok':True,'text':logs(req.get('source','runtime'),req.get('lines',100))}
 if op in ('start','stop','restart'):
  with LOCK:
   if time.monotonic()-LAST_ACTION<5:return {'ok':False,'error':'操作过于频繁，请稍后再试'}
   result=command('systemctl','--no-block',op,UNIT);LAST_ACTION=time.monotonic()
  return {'ok':result.returncode==0,'error':None if result.returncode==0 else '服务操作失败，请查看系统日志'}
 raise ValueError('unsupported operation')

class Handler(socketserver.StreamRequestHandler):
 def handle(self):
  self.connection.settimeout(15)
  _,uid,_=struct.unpack('3i',self.connection.getsockopt(socket.SOL_SOCKET,socket.SO_PEERCRED,12))
  if uid not in (0,pwd.getpwnam('dsh-control').pw_uid):return
  try:
   data=self.rfile.readline(16385)
   if len(data)>16384 or not data.endswith(b'\n'):raise ValueError()
   response=dispatch(json.loads(data))
  except Exception:response={'ok':False,'error':'请求无效或服务暂不可用'}
  self.wfile.write(json.dumps(response,ensure_ascii=False).encode()+b'\n')

class Server(socketserver.ThreadingUnixStreamServer):
 daemon_threads=True
 def __init__(self,*args):self.slots=threading.BoundedSemaphore(8);super().__init__(*args)
 def process_request(self,*args):
  if not self.slots.acquire(blocking=False):self.shutdown_request(args[0]);return
  try:super().process_request(*args)
  except Exception:self.slots.release();raise
 def process_request_thread(self,*args):
  try:super().process_request_thread(*args)
  finally:self.slots.release()

def watchdog():
 state=Path('/run/dsh-watchdog/state.json');state.parent.mkdir(mode=0o700,exist_ok=True)
 try:data=json.loads(state.read_text())
 except (OSError,ValueError):data={}
 props=properties();now=time.monotonic();active=props.get('ActiveState')=='active'
 age=now-int(props.get('ActiveEnterTimestampMonotonic','0'))/1e6
 if not active or age<120 or backend():data['failures']=0
 else:data['failures']=data.get('failures',0)+1
 if data.get('failures',0)>=3 and now-data.get('lastRestart',0)>300:
  # Recheck state to preserve an intentional manual stop.
  if properties().get('ActiveState')=='active':
   command('systemctl','--no-block','try-restart',UNIT)
   data.update(lastRestart=now,failures=0)
   print('DSH backend failed three health checks; requested targeted restart',flush=True)
 state.write_text(json.dumps(data));state.chmod(0o600)

if __name__=='__main__':
 if sys.argv[-1]=='watchdog':watchdog()
 else:
  Path(SOCKET).unlink(missing_ok=True)
  server=Server(SOCKET,Handler);os.chown(SOCKET,0,pwd.getpwnam('dsh-control').pw_gid);os.chmod(SOCKET,0o660)
  server.serve_forever()
