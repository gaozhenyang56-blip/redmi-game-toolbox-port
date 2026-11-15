import hashlib,http.cookiejar,json,os,shutil,subprocess,tarfile,tempfile,time,traceback,urllib.request
from pathlib import Path
home=Path('/var/lib/dsh');profile=home/'profiles/web';backup=None;changed=False

def run(*args):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=45).stdout.strip()
try:
 package=Path('/root/dsh-purge-install.tgz')
 assert hashlib.sha256(package.read_bytes()).hexdigest()==EXPECTED_SHA
 backup=Path(tempfile.mkdtemp(prefix='dsh-plugin-install-',dir='/root'));backup.chmod(0o700)
 manifest=profile/'package.json';shutil.copy2(manifest,backup/'package.json')
 patch=profile/'cordis.patch.yml';patch_before=patch.read_bytes();credentials=(home/'.credentials.yaml').read_bytes()
 plugins=home/'plugins';plugins.mkdir(mode=0o750,exist_ok=True);shutil.chown(plugins,user='dsh',group='dsh')
 target=plugins/'dsh-purge'
 assert not target.exists(), 'Plugin already installed'
 target.mkdir(mode=0o750)
 with tarfile.open(package) as archive:
  for item in archive.getmembers():
   assert item.name.startswith('package/') and '..' not in Path(item.name).parts and not item.issym() and not item.islnk()
   item.name=item.name[len('package/'):]
   if item.name:archive.extract(item,target,filter='data')
 assert json.loads((target/'package.json').read_text())['version']=='1.1.71'
 for folder,dirs,files in os.walk(target):
  shutil.chown(folder,user='dsh',group='dsh')
  for file in files:shutil.chown(Path(folder)/file,user='dsh',group='dsh')
 run('systemctl','stop','dsh');changed=True
 modules=profile/'node_modules';modules.mkdir(exist_ok=True);shutil.chown(modules,user='dsh',group='dsh')
 link=modules/'dsh-purge';assert not link.exists();link.symlink_to('../../..'+'/plugins/dsh-purge')
 # Node resolves this exactly as the documented profile-local file dependency.
 assert (link/'package.json').is_file()
 data=json.loads(manifest.read_text());data.setdefault('dependencies',{})['dsh-purge']='file:../../plugins/dsh-purge'
 bundles=data['dsh']['profile']['bundles']
 if 'dsh-purge' not in bundles:bundles.append('dsh-purge')
 temp=manifest.with_suffix('.json.new');temp.write_text(json.dumps(data,ensure_ascii=False,indent=2));temp.chmod(0o600);shutil.chown(temp,user='dsh',group='dsh');temp.replace(manifest)
 entry=home/'entry-url.txt'
 if entry.exists():entry.unlink()
 run('systemctl','start','dsh')
 for _ in range(100):
  if entry.exists():
   try:
    launch=entry.read_text().strip();opener=urllib.request.build_opener(urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar()))
    request=urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'})
    with opener.open(request,timeout=8) as r:assert r.status==200
    request=urllib.request.Request('http://127.0.0.1:3080/dsh-purge/status',headers={'Host':'gaozy.tech'})
    with opener.open(request,timeout=20) as r:state=json.load(r)
    assert state.get('ok') and state.get('plugin_version')=='1.1.71'
    break
   except Exception:pass
  time.sleep(2)
 else:raise RuntimeError('Plugin did not become ready')
 assert patch.read_bytes()==patch_before
 assert (home/'.credentials.yaml').read_bytes()==credentials
 assert run('systemctl','is-active','astrbot')=='active'
 print(json.dumps({'ok':True,'plugin':'dsh-purge','version':'1.1.71','statusApiVerified':True,'modelConfigPreserved':True,'hostPatchApplyRequested':False}))
except Exception as e:
 restored=False
 if changed:
  try:
   run('systemctl','stop','dsh');shutil.copy2(backup/'package.json',manifest);shutil.chown(manifest,user='dsh',group='dsh')
   if link.is_symlink():link.unlink()
   run('systemctl','start','dsh');restored=True
  except Exception:pass
 print(json.dumps({'ok':False,'restored':restored,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
