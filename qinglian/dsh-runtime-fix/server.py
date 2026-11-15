import hashlib,http.cookiejar,json,os,shutil,subprocess,tempfile,time,traceback,urllib.request
from pathlib import Path
from compat import fix_source
home=Path('/var/lib/dsh');target=home/'plugins/dsh-purge/lib/identity.js';folder=Path(__file__).resolve().parent
node='/opt/dsh/node/bin/node';renderer='/opt/dsh/runtime/node_modules/@deepseek-ai/dsh-system-prompt/lib/index.js'
backup=None;changed=False

def run(*args,timeout=40):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=timeout).stdout.strip()
def check():return json.loads(run('runuser','-u','dsh','--','env','HOME=/var/lib/dsh','DSH_HOME=/var/lib/dsh',node,str(folder/'check.mjs'),str(target),renderer))
def ready():
 launch=(home/'entry-url.txt').read_text().strip();opener=urllib.request.build_opener(urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar()))
 with opener.open(urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'}),timeout=10) as r:assert r.status==200
 with opener.open(urllib.request.Request('http://127.0.0.1:3080/dsh-purge/status',headers={'Host':'gaozy.tech'}),timeout=20) as r:assert json.load(r).get('ready')
try:
 before=check();assert before['errors']>0 or before['ok']
 before_text=target.read_text();patched=fix_source(before_text)
 hashes={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in [home/'.credentials.yaml',home/'profiles/web/cordis.patch.yml']}
 backup=Path(tempfile.mkdtemp(prefix='dsh-runtime-prompt-',dir='/root'));backup.chmod(0o700);shutil.copy2(target,backup/'identity.js')
 run('systemctl','stop','dsh');changed=True
 stat=target.stat();temp=target.with_suffix('.js.compat');temp.write_text(patched);os.chmod(temp,stat.st_mode & 0o777);os.chown(temp,stat.st_uid,stat.st_gid);temp.replace(target)
 run(node,'--check',str(target));after=check();assert after['ok'] and after['passed']==4
 entry=home/'entry-url.txt'
 if entry.exists():entry.unlink()
 run('systemctl','start','dsh')
 for attempt in range(60):
  try:ready();break
  except Exception:
   if attempt==59:raise
   time.sleep(2)
 assert all(hashlib.sha256(Path(p).read_bytes()).hexdigest()==digest for p,digest in hashes.items())
 print(json.dumps({'ok':True,'runtimeErrorReproduced':before['errors']>0,'rewriterAndRendererCasesPassed':after['passed'],'runtimeHookFixed':True,'dshRestarted':True,'apiConfigurationPreserved':True}))
except Exception as e:
 restored=False
 if changed and backup:
  try:run('systemctl','stop','dsh');shutil.copy2(backup/'identity.js',target);shutil.chown(target,user='dsh',group='dsh');run('systemctl','start','dsh');restored=True
  except Exception:pass
 print(json.dumps({'ok':False,'restored':restored,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
