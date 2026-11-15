import hashlib,http.cookiejar,json,os,shutil,subprocess,tempfile,time,traceback,urllib.request
from pathlib import Path
import yaml
home=Path('/var/lib/dsh');profile=home/'profiles/web';patch=profile/'cordis.patch.yml';cred=home/'.credentials.yaml'
node='/opt/dsh/node/bin/node';cli='/opt/dsh/runtime/node_modules/@deepseek-ai/dsh/lib/bin.js'
backup=None;changed=False

def run(*args,timeout=40):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=timeout).stdout
class DumpLoader(yaml.SafeLoader):pass
DumpLoader.add_constructor('tag:yaml.org,2002:js',lambda loader,node:loader.construct_scalar(node))
def effective():
 text=run('runuser','-u','dsh','--','env','HOME=/var/lib/dsh','DSH_HOME=/var/lib/dsh',node,cli,'--profile','web','--dump-config')
 entries=yaml.load(text,Loader=DumpLoader)
 row=next(x for x in entries if isinstance(x,dict) and x.get('id')=='system-prompt')
 return row['config']
def check_render(config):
 code="""import fs from 'node:fs';import {renderPrompt} from '/opt/dsh/runtime/node_modules/@deepseek-ai/dsh-system-prompt/lib/index.js';const c=JSON.parse(fs.readFileSync(0,'utf8'));try{renderPrompt({sections:[{name:'deployment:persona-prefix',text:c.personaPrefix??''},{name:'deployment:persona-suffix',text:c.personaSuffix??''}],variables:{provider:'validation',mode:'standard'}});console.log(JSON.stringify({ok:true}))}catch(e){console.log(JSON.stringify({ok:false,unknownCwd:String(e.message).includes('unknown prompt variable')&&String(e.message).includes('{{cwd}}')}))}"""
 p=subprocess.run([node,'--input-type=module','-e',code],input=json.dumps(config),capture_output=True,text=True,timeout=30,check=True)
 return json.loads(p.stdout)
def ready():
 launch=(home/'entry-url.txt').read_text().strip();opener=urllib.request.build_opener(urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar()))
 request=urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'})
 with opener.open(request,timeout=10) as r:assert r.status==200
 with opener.open(urllib.request.Request('http://127.0.0.1:3080/dsh-purge/status',headers={'Host':'gaozy.tech'}),timeout=20) as r:assert json.load(r).get('ready')
try:
 before_bytes=patch.read_bytes();before=yaml.safe_load(before_bytes) or [];cred_sha=hashlib.sha256(cred.read_bytes()).hexdigest()
 current=effective();reproduced=check_render(current)
 assert reproduced.get('unknownCwd') or reproduced.get('ok')
 corrected=dict(current)
 if '{{cwd}}' in str(corrected.get('personaSuffix','')):corrected['personaSuffix']=''
 assert check_render(corrected)['ok']
 backup=Path(tempfile.mkdtemp(prefix='dsh-prompt-fix-',dir='/root'));backup.chmod(0o700);shutil.copy2(patch,backup/'cordis.patch.yml')
 after=json.loads(json.dumps(before));row=next((r for r in after if isinstance(r,dict) and r.get('id')=='system-prompt'),None)
 if row is None:after.append({'id':'system-prompt','config':corrected})
 else:row['config']=corrected
 other=lambda rows:[r for r in rows if not isinstance(r,dict) or r.get('id')!='system-prompt']
 assert other(before)==other(after)
 run('systemctl','stop','dsh');changed=True
 assert patch.read_bytes()==before_bytes,'Concurrent configuration edit'
 temporary=patch.with_name('cordis.patch.yml.prompt-fix')
 temporary.write_text(yaml.safe_dump(after,sort_keys=False,allow_unicode=True));temporary.chmod(0o600);shutil.chown(temporary,user='dsh',group='dsh');temporary.replace(patch)
 actual=effective();assert check_render(actual)['ok'] and '{{cwd}}' not in str(actual.get('personaSuffix',''))
 entry=home/'entry-url.txt'
 if entry.exists():entry.unlink()
 run('systemctl','start','dsh')
 for attempt in range(60):
  try:ready();break
  except Exception:
   if attempt==59:raise
   time.sleep(2)
 assert cred_sha==hashlib.sha256(cred.read_bytes()).hexdigest()
 assert other(yaml.safe_load(patch.read_text()))==other(before)
 print(json.dumps({'ok':True,'originalErrorReproduced':bool(reproduced.get('unknownCwd')),'actualPromptRendererVerified':True,'persistentProfileOverride':True,'dshRestarted':True,'modelAndCredentialSettingsPreserved':True}))
except Exception as e:
 restored=False
 if changed and backup:
  try:
   run('systemctl','stop','dsh');shutil.copy2(backup/'cordis.patch.yml',patch);shutil.chown(patch,user='dsh',group='dsh');run('systemctl','start','dsh');restored=True
  except Exception:pass
 print(json.dumps({'ok':False,'restored':restored,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
