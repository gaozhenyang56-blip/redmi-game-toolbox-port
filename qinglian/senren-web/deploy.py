#!/usr/bin/env python3
"""Private preview first; prepare large game assets on the disposable runner."""
import base64,concurrent.futures,hashlib,json,os,shutil,ssl,struct,subprocess,sys,tarfile,tempfile,time,urllib.request,urllib.error
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
from cryptography.hazmat.primitives import hashes,serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives.ciphers.aead import AESGCM
ROOT=Path(__file__).parent
REV=os.environ['GITHUB_SHA'];MODE=os.environ.get('SENREN_DEPLOY_MODE','entry')
if not REV.isalnum():raise ValueError('Invalid revision')
BASE='/opt/senren-web';DEST=BASE+'/releases/'+REV
HOST=os.environ['QINGLIAN_SSH_HOST'];URL='https://'+HOST+':18444/'
TOOL_SHA='4ca3b7c6f2f67866b92622818b58233dc70367be2f36b498eb0bdeaaa44b53f4'

def safe_remote(client,script,timeout=120):
 import textwrap
 guarded="import json,traceback,re\ntry:\n"+textwrap.indent(script,' ')+"\nexcept Exception:\n print(json.dumps({'error':re.sub(r'https?://[^\\s]+','[redacted URL]',traceback.format_exc())}))\n"
 result=remote_json(client,guarded,timeout=timeout)
 if result.get('error'):raise RuntimeError(result['error'])
 return result

def mkdir(sftp,path):
 current=''
 for part in path.strip('/').split('/'):
  current+='/'+part
  try:sftp.mkdir(current)
  except OSError:pass

def verify(data):
 with tempfile.TemporaryDirectory() as temporary:
  ca=Path(temporary)/'ca.crt';ca.write_text(data['caPem']);context=ssl.create_default_context(cafile=str(ca))
  authorization='Basic '+base64.b64encode((data['username']+':'+data['password']).encode()).decode()
  for port in [18444,18445]:
   base='https://'+HOST+':'+str(port)
   for attempt in range(15):
    try:
     with urllib.request.urlopen(urllib.request.Request(base+'/api/status',headers={'Authorization':authorization}),context=context,timeout=10) as response:status=json.load(response)
     break
    except Exception:
     if attempt==14:raise
     time.sleep(1)
   try:urllib.request.urlopen(base+'/',context=context,timeout=10);raise RuntimeError('Anonymous preview access allowed')
   except urllib.error.HTTPError as error:
    if error.code!=401:raise
   print('VERIFIED_PORT='+str(port)+' RESOURCE_READY='+str(status['ready']))
   if port==18445:
    def admin_request(path,method='GET',payload=None,extra=None):
     headers={'Authorization':authorization,**(extra or {})}
     with urllib.request.urlopen(urllib.request.Request(base+path,data=payload,method=method,headers=headers),context=context,timeout=15) as response:return response.read()
    page=admin_request('/admin')
    if '文件管理'.encode() not in page:raise RuntimeError('Admin page missing')
    listing=json.loads(admin_request('/api/admin/files'));token=listing['token'];probe='admin-smoke-'+REV[:12]+'.txt'
    mutation={'X-Admin-Token':token,'Content-Type':'application/json'}
    admin_request('/api/admin/upload?path='+probe,'PUT',b'admin-upload-check',{'X-Admin-Token':token,'X-File-Version':'new','Content-Type':'application/octet-stream'})
    if admin_request('/game/'+probe)!=b'admin-upload-check':raise RuntimeError('Uploaded resource not visible')
    listing=json.loads(admin_request('/api/admin/files'));version=next(f['version'] for f in listing['files'] if f['path']==probe)
    admin_request('/api/admin/reset','POST',json.dumps({'path':probe,'version':version}).encode(),mutation)
    try:admin_request('/api/admin/files',extra={'Authorization':''});raise RuntimeError('Anonymous admin access allowed')
    except urllib.error.HTTPError as error:
     if error.code!=401:raise
    print('TEST_FILE_ADMIN_UPLOAD_READ_RESET_AUTH_VERIFIED')

with connection() as client:
 client.get_transport().set_keepalive(20)
 data=safe_remote(client,r'''
import json,shutil,subprocess
from pathlib import Path
root=Path('/opt/senren-web');root.mkdir(mode=0o755,exist_ok=True)
config=Path('/etc/senren-web')
credentials=json.loads((config/'preview.json').read_text())
credentials['caPem']=Path('/etc/qinglian-remote/server.pem').read_text()
credentials['freeBytes']=shutil.disk_usage(root).free
print(json.dumps(credentials))
''')
 print('SERVER_FREE_GIB='+str(round(data.pop('freeBytes')/1024**3,2)))
 # Only code and public engine binaries are uploaded in this step.
 with client.open_sftp() as sftp:
  mkdir(sftp,DEST)
  for path in ROOT.rglob('*'):
   if not path.is_file() or '__pycache__' in path.parts or path.name.startswith('.'):continue
   relative=path.relative_to(ROOT)
   if relative.parts[0] not in ('engine','web','compat','tools') and path.name not in ('server.py','accounts.py','file_manager.py','download-input.enc.json'):continue
   mkdir(sftp,DEST+'/'+str(relative.parent));sftp.put(str(path),DEST+'/'+str(relative))
 entry=r'''
import json,os,subprocess
from pathlib import Path
root=Path('/opt/senren-web');release=Path(RELEASE)
if subprocess.run(['id','-u','senren-web'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL).returncode:subprocess.run(['useradd','--system','--home','/var/lib/senren-web','--shell','/usr/sbin/nologin','senren-web'],check=True)
state=Path('/var/lib/senren-web');state.mkdir(mode=0o700,exist_ok=True);subprocess.run(['chown','senren-web:senren-web',str(state)],check=True)
for label,port in [('preview',18444),('test',18445)]:
 pointer=root/label
 if label=='preview' and pointer.exists():continue
 new=root/(label+'.new');new.unlink(missing_ok=True);new.symlink_to(release);new.replace(pointer)
 if (root/'game/base/data.xp3').exists():subprocess.run(['python3',str(release/'tools/prepare_resources.py'),'--game-dir',str(root/'game/base')],check=True,stdout=subprocess.DEVNULL)
 unit='[Unit]\nDescription=Senren private '+label+'\nAfter=network-online.target\n[Service]\nUser=senren-web\nGroup=senren-web\nSupplementaryGroups=qinglian-remote\nEnvironmentFile=/etc/senren-web/preview.env\nWorkingDirectory='+str(pointer)+'\nExecStart=/usr/bin/python3 '+str(pointer)+'/server.py --host 0.0.0.0 --port '+str(port)+' --cert /etc/qinglian-remote/server.pem --key /etc/qinglian-remote/server.key\nRestart=always\nRestartSec=5\nNoNewPrivileges=true\nPrivateTmp=true\nProtectSystem=strict\nProtectHome=true\nReadWritePaths=/var/lib/senren-web\nUMask=0077\n[Install]\nWantedBy=multi-user.target\n'
 if label=='test':unit=unit.replace('EnvironmentFile=', 'Environment=SENREN_FILES_DIR=/var/lib/senren-web/test-resources\nEnvironmentFile=')
 Path('/etc/systemd/system/senren-'+label+'.service').write_text(unit)
 subprocess.run(['systemctl','daemon-reload'],check=True);subprocess.run(['systemctl','enable','--now','senren-'+label+'.service'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL);subprocess.run(['systemctl','restart','senren-'+label+'.service'],check=True)
print(json.dumps({'entry':True}))
'''.replace('RELEASE',repr(DEST))
 safe_remote(client,entry)
 if MODE=='entry':
  verify(data);print('PRIVATE_ENTRY_URL='+URL);raise SystemExit(0)
 if MODE!='resources':raise ValueError('Unknown deploy mode')
 # Decrypt the download capabilities inside the server; return privately over SSH.
 decrypt=r'''
import base64,json,struct,subprocess
from pathlib import Path
manifest=json.loads(Path(MANIFEST).read_text());blocks=manifest['chunks'];nonce=None;plain=bytearray()
if not 1<=len(blocks)<=128:raise RuntimeError('Invalid manifest')
for index,encoded in enumerate(blocks):
 block=subprocess.check_output(['openssl','pkeyutl','-decrypt','-inkey','/etc/senren-web/deploy.key','-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256','-pkeyopt','rsa_mgf1_md:sha256'],input=base64.b64decode(encoded),stderr=subprocess.DEVNULL)
 sequence,total=struct.unpack_from('<II',block,16)
 if sequence!=index or total!=len(blocks) or (nonce is not None and block[:16]!=nonce):raise RuntimeError('Manifest sequence mismatch')
 nonce=block[:16];plain.extend(block[24:])
print(json.dumps({'items':json.loads(plain)}))
'''.replace('MANIFEST',repr(DEST+'/download-input.enc.json'))
 items=safe_remote(client,decrypt)['items']
 capacity=safe_remote(client,"import json,shutil\nfrom pathlib import Path\np=Path('/opt/senren-web/game/base');p.mkdir(parents=True,exist_ok=True)\nprint(json.dumps({'free':shutil.disk_usage(p).free,'existing':sum(f.stat().st_size for f in p.rglob('*') if f.is_file())}))")
 if capacity['free']+capacity['existing'] < 7992000000+512*1024**2:raise RuntimeError('Server needs at least 8.0 GiB for base resources; preview entry is already online')
 with tempfile.TemporaryDirectory(prefix='senren-prepare-') as temporary:
  temp=Path(temporary);sizes={1:3221225472,2:3221225472,3:2334129175}
  def download(item):
   out=temp/('game.part'+str(item['part'])+'.rar')
   with urllib.request.urlopen(urllib.request.Request(item['url'],headers={'User-Agent':item['userAgent']}),timeout=90) as response,out.open('wb') as target:
    shutil.copyfileobj(response,target,4*1024*1024)
   if out.stat().st_size!=sizes[item['part']]:raise RuntimeError('Incomplete game transfer')
   print('RESOURCE_PART_READY='+str(item['part']),flush=True)
  with concurrent.futures.ThreadPoolExecutor(max_workers=3) as pool:list(pool.map(download,items))
  tool=temp/'7zip.tar.xz'
  with urllib.request.urlopen('https://www.7-zip.org/a/7z2501-linux-x64.tar.xz',timeout=30) as response:tool.write_bytes(response.read(8*1024*1024))
  if hashlib.sha256(tool.read_bytes()).hexdigest()!=TOOL_SHA:raise RuntimeError('7zip checksum mismatch')
  with tarfile.open(tool) as archive:
   with archive.extractfile(archive.getmember('7zz')) as source,(temp/'7zz').open('wb') as target:shutil.copyfileobj(source,target)
  (temp/'7zz').chmod(0o755)
  with (temp/'extract.log').open('w') as log:subprocess.run([str(temp/'7zz'),'x','-y','-p-','-mmt=1','-bsp0','-o'+str(temp/'base'),'-xr!adult*',str(temp/'game.part1.rar')],check=True,stdout=log,stderr=log)
  candidates=list((temp/'base').glob('*/data.xp3'))
  if len(candidates)!=1:raise RuntimeError('Missing base game')
  game=candidates[0].parent
  subprocess.run(['python3',str(ROOT/'tools/convert_xp3_names.py'),'--game-dir',str(game)],check=True)
  subprocess.run(['python3',str(ROOT/'tools/prepare_resources.py'),'--game-dir',str(game)],check=True)
  manifest=json.loads((ROOT/'game-manifest.json').read_text());files=[name for name in manifest['files'] if name not in manifest.get('overrides',{})]
  checksums={}
  with client.open_sftp() as sftp:
   for index,name in enumerate(files):
    source=game/name;destination=BASE+'/game/base/'+name;mkdir(sftp,str(Path(destination).parent))
    with source.open('rb') as stream:checksums[name]=hashlib.file_digest(stream,'sha256').hexdigest()
    try:complete=sftp.stat(destination).st_size==source.stat().st_size
    except OSError:complete=False
    if not complete:
     temporary_path=destination+'.uploading'
     try:offset=sftp.stat(temporary_path).st_size
     except OSError:offset=0
     if offset>source.stat().st_size:sftp.remove(temporary_path);offset=0
     with source.open('rb') as incoming,sftp.open(temporary_path,'ab') as outgoing:
      outgoing.set_pipelined(True);incoming.seek(offset)
      while chunk:=incoming.read(1024*1024):outgoing.write(chunk)
     sftp.posix_rename(temporary_path,destination)
    if index%10==0:print('BASE_FILES_UPLOADED='+str(index+1)+'/'+str(len(files)),flush=True)
  validate=r'''
import hashlib,json,subprocess
from pathlib import Path
root=Path('/opt/senren-web');base=root/'game/base';expected=CHECKSUMS
for name,digest in expected.items():
 with (base/name).open('rb') as stream:
  if hashlib.file_digest(stream,'sha256').hexdigest()!=digest:raise RuntimeError('Resource checksum mismatch')
subprocess.run(['chown','-R','root:senren-web',str(root/'game')],check=True)
for path in (root/'game').rglob('*'):path.chmod(0o750 if path.is_dir() else 0o640)
for label in ['preview','test']:
 release=(root/label).resolve()
 subprocess.run(['python3',str(release/'tools/prepare_resources.py'),'--game-dir',str(base)],check=True,stdout=subprocess.DEVNULL)
print(json.dumps({'resources':True,'files':len(expected)}))
'''.replace('CHECKSUMS',repr(checksums))
  result=safe_remote(client,validate,timeout=240);print('BASE_RESOURCES_VERIFIED='+str(result['files']))
 verify(data);print('GAME_PREVIEW_URL='+URL)
