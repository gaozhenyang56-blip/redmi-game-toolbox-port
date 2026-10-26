#!/usr/bin/env python3
"""Bootstrap a private preview on 18444 and an isolated test service on 18445."""
import base64,json,os,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
from cryptography.hazmat.primitives import hashes,serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives.ciphers.aead import AESGCM
ROOT=Path(__file__).parent
revision=os.environ['GITHUB_SHA']
if not revision.isalnum():raise ValueError('Invalid revision')
with connection() as client:
 result=remote_json(client,r'''
import json,os,secrets,subprocess,socket
from pathlib import Path
root=Path('/opt/senren-web');root.mkdir(mode=0o755,exist_ok=True)
config=Path('/etc/senren-web');config.mkdir(mode=0o700,exist_ok=True)
if not (config/'deploy.key').exists():
 subprocess.run(['openssl','genpkey','-algorithm','RSA','-pkeyopt','rsa_keygen_bits:3072','-out',str(config/'deploy.key')],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
 (config/'deploy.key').chmod(0o600)
public=subprocess.check_output(['openssl','pkey','-in',str(config/'deploy.key'),'-pubout'],stderr=subprocess.DEVNULL).decode()
credentials=config/'preview.json'
if credentials.exists():data=json.loads(credentials.read_text())
else:
 for port in [18444,18445]:
  with socket.socket() as sock:
   if sock.connect_ex(('127.0.0.1',port))==0:raise RuntimeError('Preview port already occupied')
 data={'username':'owner','password':secrets.token_urlsafe(24)}
 credentials.write_text(json.dumps(data));credentials.chmod(0o600)
 (config/'preview.env').write_text('SENREN_PREVIEW_USER='+data['username']+'\nSENREN_PREVIEW_PASSWORD='+data['password']+'\n')
 (config/'preview.env').chmod(0o600)
cert=Path('/etc/qinglian-remote/server.pem')
if not cert.exists():raise RuntimeError('Dedicated TLS certificate is missing')
data.update(publicKey=public,caPem=cert.read_text())
print(json.dumps(data))
''')
 result['url']='https://'+os.environ['QINGLIAN_SSH_HOST']+':18444/'
 result['testUrl']='https://'+os.environ['QINGLIAN_SSH_HOST']+':18445/'
 public=result.pop('publicKey')
 print('SENREN_DEPLOY_PUBLIC='+base64.b64encode(public.encode()).decode())
 key=os.urandom(32);nonce=os.urandom(12)
 recipient=serialization.load_pem_public_key((ROOT.parent/'remote-control/deploy-public.pem').read_bytes())
 wrapped=recipient.encrypt(key,padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
 encrypted=AESGCM(key).encrypt(nonce,json.dumps(result).encode(),b'Senren Private Preview v1')
 envelope={k:base64.b64encode(v).decode() for k,v in dict(key=wrapped,nonce=nonce,data=encrypted).items()}
 print('SENREN_CREDENTIAL_ENVELOPE='+base64.b64encode(json.dumps(envelope).encode()).decode())
 source=ROOT/'download-input.enc.json'
 if not source.exists():
  print('BOOTSTRAP_READY: waiting for encrypted resource transfer manifest')
  raise SystemExit(0)
 # Upload only application code, engine, compatibility scripts and encrypted input.
 destination='/opt/senren-web/releases/'+revision
 remote_json(client,"import json\nfrom pathlib import Path\nPath("+repr(destination)+").mkdir(parents=True,exist_ok=True)\nprint(json.dumps({'ok':True}))")
 with client.open_sftp() as sftp:
  for path in ROOT.rglob('*'):
   if not path.is_file() or '__pycache__' in path.parts or path.name.startswith('.'):continue
   relative=path.relative_to(ROOT)
   if relative.parts[0] not in ('engine','web','compat','tools') and path.name not in ('server.py','accounts.py','download-input.enc.json'):continue
   parent=destination+'/'+str(relative.parent)
   try:sftp.stat(parent)
   except FileNotFoundError:
    current=destination
    for part in relative.parent.parts:
     current+='/'+part
     try:sftp.mkdir(current)
     except OSError:pass
   sftp.put(str(path),destination+'/'+str(relative))
 script=r'''
import base64,concurrent.futures,hashlib,json,os,shutil,ssl,struct,subprocess,tarfile,time,urllib.request
from pathlib import Path
release=Path(RELEASE_VALUE);root=Path('/opt/senren-web');config=Path('/etc/senren-web');game=root/'game';game.mkdir(mode=0o750,exist_ok=True)
manifest=json.loads((release/'download-input.enc.json').read_text())
if manifest.get('algorithm')!='RSA-OAEP-SHA256-chunks-v1':raise RuntimeError('Unsupported encrypted resource manifest')
blocks=manifest['chunks']
if not 1<=len(blocks)<=128:raise RuntimeError('Invalid encrypted manifest size')
plaintext=bytearray();nonce=None
for index,encoded in enumerate(blocks):
 block=subprocess.check_output(['openssl','pkeyutl','-decrypt','-inkey',str(config/'deploy.key'),'-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256','-pkeyopt','rsa_mgf1_md:sha256'],input=base64.b64decode(encoded),stderr=subprocess.DEVNULL)
 sequence,total=struct.unpack_from('<II',block,16)
 if sequence!=index or total!=len(blocks) or (nonce is not None and block[:16]!=nonce):raise RuntimeError('Encrypted manifest sequence mismatch')
 nonce=block[:16];plaintext.extend(block[24:])
items=json.loads(plaintext)
ready=game/'base-ready.json'
if not ready.exists():
 if shutil.disk_usage(root).free + sum(p.stat().st_size for p in game.rglob('*') if p.is_file()) < 18*1024**3:raise RuntimeError('Insufficient disk space for staged game preparation')
 downloads=game/'downloads';downloads.mkdir(mode=0o700,exist_ok=True)
 expected={1:3221225472,2:3221225472,3:2334129175}
 def download(item):
  path=downloads/('game.part'+str(item['part'])+'.rar');size=expected[item['part']]
  if path.exists() and path.stat().st_size==size:return
  headers={'User-Agent':item['userAgent']};offset=path.stat().st_size if path.exists() else 0
  if offset:headers['Range']='bytes='+str(offset)+'-'
  with urllib.request.urlopen(urllib.request.Request(item['url'],headers=headers),timeout=90) as response,path.open('ab' if offset else 'wb') as output:
   if offset and response.status!=206:raise RuntimeError('Resource resume unsupported')
   while chunk:=response.read(4*1024*1024):output.write(chunk)
  if path.stat().st_size!=size:raise RuntimeError('Incomplete resource transfer')
 with concurrent.futures.ThreadPoolExecutor(max_workers=3) as pool:list(pool.map(download,items))
 tools=root/'tools';tools.mkdir(exist_ok=True);archive=tools/'7zip.tar.xz'
 with urllib.request.urlopen('https://www.7-zip.org/a/7z2501-linux-x64.tar.xz',timeout=30) as response:archive.write_bytes(response.read(8*1024*1024))
 if hashlib.sha256(archive.read_bytes()).hexdigest()!=SEVEN_ZIP_SHA:raise RuntimeError('7zip checksum mismatch')
 with tarfile.open(archive) as tar:
  member=tar.getmember('7zz')
  with tar.extractfile(member) as source,(tools/'7zz').open('wb') as out:shutil.copyfileobj(source,out)
 (tools/'7zz').chmod(0o755)
 extracted=game/'extracted';extracted.mkdir(exist_ok=True)
 with (game/'extract.log').open('w') as log:subprocess.run([str(tools/'7zz'),'x','-y','-p-','-mmt=1','-bsp0','-o'+str(extracted),'-xr!adult*',str(downloads/'game.part1.rar')],check=True,stdout=log,stderr=log)
 candidates=list(extracted.glob('*/data.xp3'))
 if len(candidates)!=1:raise RuntimeError('Base game entry missing')
 game_dir=candidates[0].parent
 with (game/'convert.log').open('w') as log:subprocess.run(['python3',str(release/'tools/convert_xp3_names.py'),'--game-dir',str(game_dir)],check=True,stdout=log,stderr=log)
 with (game/'bootstrap.log').open('w') as log:subprocess.run(['python3',str(release/'tools/inject_bootstrap.py'),'--game-dir',str(game_dir)],check=True,stdout=log,stderr=log)
 ready.write_text(json.dumps({'root':str(game_dir)}))
else:game_dir=Path(json.loads(ready.read_text())['root'])
subprocess.run(['python3',str(release/'tools/prepare_resources.py'),'--game-dir',str(game_dir)],check=True,stdout=subprocess.DEVNULL)
if subprocess.run(['id','-u','senren-web'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL).returncode:
 subprocess.run(['useradd','--system','--home','/var/lib/senren-web','--shell','/usr/sbin/nologin','senren-web'],check=True)
# Prepared resources are read-only to the application service.
subprocess.run(['chown','-R','root:senren-web',str(game/'extracted')],check=True)
for path in (game/'extracted').rglob('*'):path.chmod(0o750 if path.is_dir() else 0o640)
(root/'game').chmod(0o755);(game/'extracted').chmod(0o750)
state=Path('/var/lib/senren-web');state.mkdir(mode=0o700,exist_ok=True);subprocess.run(['chown','senren-web:senren-web',str(state)],check=True)
for label,port in [('preview',18444),('test',18445)]:
 pointer=root/label
 if label=='preview' and pointer.exists():continue
 next_link=root/(label+'.new');next_link.unlink(missing_ok=True);next_link.symlink_to(release);next_link.replace(pointer)
 unit='[Unit]\nDescription=Senren private '+label+'\nAfter=network-online.target\n[Service]\nUser=senren-web\nGroup=senren-web\nSupplementaryGroups=qinglian-remote\nEnvironmentFile=/etc/senren-web/preview.env\nWorkingDirectory='+str(pointer)+'\nExecStart=/usr/bin/python3 '+str(pointer)+'/server.py --host 0.0.0.0 --port '+str(port)+' --cert /etc/qinglian-remote/server.pem --key /etc/qinglian-remote/server.key\nRestart=always\nRestartSec=5\nNoNewPrivileges=true\nPrivateTmp=true\nProtectSystem=strict\nProtectHome=true\nReadWritePaths=/var/lib/senren-web\nUMask=0077\n[Install]\nWantedBy=multi-user.target\n'
 Path('/etc/systemd/system/senren-'+label+'.service').write_text(unit)
 subprocess.run(['systemctl','daemon-reload'],check=True);subprocess.run(['systemctl','enable','--now','senren-'+label+'.service'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL);subprocess.run(['systemctl','restart','senren-'+label+'.service'],check=True)
credentials=json.loads((config/'preview.json').read_text());context=ssl.create_default_context(cafile='/etc/qinglian-remote/server.pem');host=HOST_VALUE
headers={'Authorization':'Basic '+base64.b64encode((credentials['username']+':'+credentials['password']).encode()).decode()}
for port in [18444,18445]:
 for attempt in range(15):
  try:
   with urllib.request.urlopen(urllib.request.Request('https://'+host+':'+str(port)+'/api/status',headers=headers),context=context,timeout=10) as response:data=json.load(response)
   if data.get('ready') and data.get('engineReady'):break
  except Exception:time.sleep(1)
 else:raise RuntimeError('Private preview health check failed')
print(json.dumps({'ready':True,'productionPort':18444,'testPort':18445}))
'''
 import hashlib
 script=script.replace('RELEASE_VALUE',repr(destination)).replace('HOST_VALUE',repr(os.environ['QINGLIAN_SSH_HOST'])).replace('SEVEN_ZIP_SHA',repr('4ca3b7c6f2f67866b92622818b58233dc70367be2f36b498eb0bdeaaa44b53f4'))
 import textwrap
 guarded="import json,traceback,re\ntry:\n"+textwrap.indent(script,' ')+"\nexcept Exception as error:\n print(json.dumps({'error':re.sub(r'https?://[^\\s]+','[redacted URL]',traceback.format_exc())}))\n"
 result=remote_json(client,guarded,timeout=1500)
 if result.get('error'):raise RuntimeError(result['error'])
 print('DEPLOY_RESULT='+json.dumps(result))
