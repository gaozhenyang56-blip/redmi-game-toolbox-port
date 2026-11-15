"""Apply the approved plugin offline with an unprivileged process and rollback."""
import hashlib,http.cookiejar,json,os,shutil,subprocess,tempfile,time,traceback,urllib.request
from pathlib import Path
base=Path('/opt/dsh');home=Path('/var/lib/dsh');backup=None;changed=False
runtime=base/'runtime';ai=runtime/'node_modules/@deepseek-ai';node=base/'node/bin/node'
plugin=home/'plugins/dsh-purge';patch=home/'profiles/web/cordis.patch.yml';cred=home/'.credentials.yaml'

def run(*args,timeout=60,env=None):
 return subprocess.run(args,check=True,capture_output=True,text=True,timeout=timeout,env=env).stdout.strip()
def digest(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def authenticated():
 launch=(home/'entry-url.txt').read_text().strip()
 opener=urllib.request.build_opener(urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar()))
 with opener.open(urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'}),timeout=10) as r:assert r.status==200
 with opener.open(urllib.request.Request('http://127.0.0.1:3080/dsh-purge/status',headers={'Host':'gaozy.tech'}),timeout=30) as r:return json.load(r)
try:
 assert os.geteuid()==0 and json.loads((plugin/'package.json').read_text())['version']=='1.1.71'
 assert run('systemctl','is-active','dsh')=='active'
 assert shutil.disk_usage('/opt').free>2*1024**3
 before={str(p):digest(p) for p in (patch,cred)}
 protected=['x-ui','astrbot','qinglian-exports','server-hub']
 identities={s:run('systemctl','show',s,'--property=MainPID,ActiveEnterTimestampMonotonic') for s in protected}
 backup=Path(tempfile.mkdtemp(prefix='dsh-apply-',dir='/root'));backup.chmod(0o700)
 run('systemctl','stop','dsh');changed=True
 print('',end='',flush=True)
 run('tar','-czf',str(backup/'runtime.tar.gz'),'-C','/opt/dsh','runtime',timeout=240)
 run('tar','-czf',str(backup/'home.tar.gz'),'-C','/var/lib','dsh',timeout=120)
 # Permit writes only while the service is stopped. CLI runs without root.
 run('chown','-R','dsh:dsh',str(runtime),timeout=120)
 command=['runuser','-u','dsh','--','env','HOME=/var/lib/dsh','DSH_HOME=/var/lib/dsh',
  'DSH_BASE='+str(ai),'PATH=/opt/dsh/node/bin:/usr/local/bin:/usr/bin:/bin',
  str(node),str(plugin/'bin/dsh-purge.js'),'--apply']
 log=backup/'apply.log'
 with log.open('w') as output:
  log.chmod(0o600)
  result=subprocess.run(command,stdout=output,stderr=subprocess.STDOUT,timeout=240)
 assert result.returncode==0, 'Plugin apply command failed'
 run('chown','-R','root:root',str(runtime),timeout=120)
 assert all(digest(p)==sha for p,sha in before.items()), 'Model settings changed'
 entry=home/'entry-url.txt'
 if entry.exists():entry.unlink()
 run('systemctl','start','dsh')
 for attempt in range(90):
  try:
   state=authenticated()
   assert state.get('ok') and state.get('ready')
   assert int(state.get('patches_applied',0))>0
   assert int(state.get('patches_pending',0))==0
   break
  except Exception:
   if attempt==89:raise
   time.sleep(2)
 assert all(digest(p)==sha for p,sha in before.items())
 assert all(run('systemctl','show',s,'--property=MainPID,ActiveEnterTimestampMonotonic')==v for s,v in identities.items())
 print(json.dumps({'ok':True,'version':state.get('plugin_version'),'applied':state.get('patches_applied'),
  'pending':state.get('patches_pending'),'skipped':state.get('patches_skipped'),'total':state.get('patches_total'),
  'dshRestarted':True,'modelSettingsPreserved':True,'otherServicesUnchanged':True,'runtimeOwnerRestored':runtime.stat().st_uid==0}))
except Exception as e:
 restored=False
 if changed and backup:
  try:
   run('systemctl','stop','dsh')
   if (backup/'runtime.tar.gz').exists():
    runtime.rename(backup/'runtime.failed');run('tar','-xzf',str(backup/'runtime.tar.gz'),'-C','/opt/dsh',timeout=240)
   if (backup/'home.tar.gz').exists():
    home.rename(backup/'home.failed');run('tar','-xzf',str(backup/'home.tar.gz'),'-C','/var/lib',timeout=120)
   run('systemctl','start','dsh');restored=True
  except Exception:pass
 print(json.dumps({'ok':False,'restored':restored,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
