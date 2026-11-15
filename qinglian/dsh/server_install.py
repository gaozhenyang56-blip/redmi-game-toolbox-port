"""Server-side installation with private backup and HTTPS routing rollback."""
import base64,hashlib,http.client,http.cookiejar,json,os,re,secrets,shutil,socket,sqlite3,ssl,subprocess,tempfile,time,traceback,urllib.request,urllib.error
from pathlib import Path
stage=Path('/opt/dsh-update');base=Path('/opt/dsh');backup=None;routing_changed=False

def run(*args,timeout=60):
 return subprocess.run(args,check=True,capture_output=True,text=True,timeout=timeout).stdout.strip()
def digest(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def state():
 with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:
  db.row_factory=sqlite3.Row
  settings=[list(r) for r in db.execute('SELECT key,value FROM settings ORDER BY id')]
  rows=[dict(r) for r in db.execute('SELECT * FROM inbounds ORDER BY id')]
 return settings,[{k:v for k,v in r.items() if k not in ('up','down')} for r in rows],{r['id']:(r['up'],r['down']) for r in rows}
class DomainConnection(http.client.HTTPSConnection):
 def connect(self):self.sock=self._context.wrap_socket(socket.create_connection(('127.0.0.1',443),10),server_hostname=self.host)
def origin(path,headers=None):
 c=DomainConnection('gaozy.tech',context=ssl.create_default_context(),timeout=10)
 c.request('GET',path,headers={'Host':'gaozy.tech',**(headers or {})});r=c.getresponse();result=(r.status,r.getheaders(),r.read());c.close();return result
try:
 assert os.geteuid()==0
 manifest=json.loads((stage/'manifest.json').read_text())
 for name,expected in manifest.items():assert digest(stage/name)==expected
 assert shutil.disk_usage('/opt').free>2*1024**3
 assert run('uname','-m')=='x86_64'
 before=state();config_sha=digest('/etc/x-ui/qinglian.json')
 cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());assert cfg['tls']['domainName']=='gaozy.tech'
 protected=['server-hub','astrbot','napcat-login','openlist-astrbot','openlist-progress','qinglian-exports','qinglian-hy2','qinglian-remote']
 identities={n:run('systemctl','show',n,'--property=MainPID,ActiveEnterTimestampMonotonic') for n in protected}
 backup=Path(tempfile.mkdtemp(prefix='dsh-deploy-',dir='/root'));backup.chmod(0o700)
 for name in ['/usr/local/x-ui/x-ui','/etc/x-ui/qinglian.json','/etc/systemd/system/x-ui.service']:
  p=Path(name)
  if p.exists():
   dest=backup/p.relative_to('/');dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,dest)
 with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db,sqlite3.connect(backup/'x-ui.db') as dest:db.backup(dest)
 key=Path('/root/dsh-deployment-key.pem')
 credentials=json.loads(subprocess.run(['openssl','pkeyutl','-decrypt','-inkey',str(key),'-in',str(stage/'login.sealed'),'-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256'],check=True,capture_output=True).stdout)
 assert credentials['username']=='gaozhenyang'
 authdir=Path('/etc/dsh');authdir.mkdir(mode=0o700,exist_ok=True)
 authfile=authdir/'web-auth.json'
 if authfile.exists():shutil.copy2(authfile,backup/'web-auth.json')
 salt=secrets.token_bytes(32)
 authfile.write_text(json.dumps({'username':credentials['username'],'salt':base64.b64encode(salt).decode(),'hash':base64.b64encode(hashlib.pbkdf2_hmac('sha256',credentials['password'].encode(),salt,600000)).decode()}));authfile.chmod(0o600)
 if subprocess.run(['id','dsh'],capture_output=True).returncode:run('useradd','--system','--user-group','--home-dir','/var/lib/dsh','--shell','/usr/sbin/nologin','dsh')
 base.mkdir(mode=0o755,exist_ok=True)
 if not (base/'node').exists():
  (base/'node').mkdir();run('tar','-xJf',str(stage/'node.tar.xz'),'--strip-components=1','-C',str(base/'node'),timeout=120)
 if not (base/'runtime').exists():
  (base/'runtime').mkdir();run('tar','-xzf',str(stage/'runtime.tar.gz'),'-C',str(base/'runtime'),timeout=180)
 run(str(base/'node/bin/node'),'--version')
 for path in ['/var/lib/dsh','/srv/dsh-workspace']:
  Path(path).mkdir(mode=0o750,exist_ok=True);shutil.chown(path,user='dsh',group='dsh')
 shutil.copy2(stage/'launch.py',base/'launch.py');(base/'launch.py').chmod(0o755)
 shutil.copy2(stage/'dsh.service','/etc/systemd/system/dsh.service')
 entry=Path('/var/lib/dsh/entry-url.txt')
 # A new process must publish its own launch credential.
 if entry.exists():entry.unlink()
 run('systemctl','daemon-reload');run('systemctl','enable','dsh');run('systemctl','restart','dsh')
 for _ in range(120):
  if entry.exists():
   launch=entry.read_text().strip()
   try:
    request=urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'})
    jar=http.cookiejar.CookieJar();local=urllib.request.build_opener(urllib.request.HTTPCookieProcessor(jar))
    with local.open(request,timeout=5) as r:assert r.status==200
    break
   except Exception:pass
  time.sleep(2)
 else:raise RuntimeError('DSH startup timed out')
 new=Path('/usr/local/x-ui/.dsh-new');shutil.copy2(stage/'x-ui',new);new.chmod(0o755)
 routing_changed=True
 run('systemctl','stop','x-ui');os.replace(new,'/usr/local/x-ui/x-ui');run('systemctl','start','x-ui')
 basic='Basic '+base64.b64encode((credentials['username']+':'+credentials['password']).encode()).decode()
 for attempt in range(30):
  try:
   assert origin('/dsh/')[0]==401
   code,headers,_=origin('/dsh/',{'Authorization':basic})
   assert code==303
   cookies=[v for k,v in headers if k.lower()=='set-cookie'];assert cookies
   assert all('Path=/dsh/' in c and 'Secure' in c and 'HttpOnly' in c for c in cookies)
   cookie='; '.join(c.split(';',1)[0] for c in cookies)
   assert origin('/dsh/',{'Authorization':basic,'Cookie':cookie})[0]==200
   assert origin('/dsh',{'Authorization':basic})[0]==308
   assert origin('/panel/health')[0]==200
   break
  except Exception:
   if attempt==29:raise
   time.sleep(1)
 after=state();assert before[:2]==after[:2]
 assert all(after[2][k][i]>=v[i] for k,v in before[2].items() for i in (0,1))
 assert digest('/etc/x-ui/qinglian.json')==config_sha
 assert all(run('systemctl','show',n,'--property=MainPID,ActiveEnterTimestampMonotonic')==v for n,v in identities.items())
 assert run('systemctl','is-active','dsh')=='active'
 # Confirm the original private-CA API remains available and excludes DSH.
 api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem')))
 prefix=dict(before[0]).get('webBasePath','/')
 for port in (443,11452):
  with api.open(urllib.request.Request('https://127.0.0.1:'+str(port)+prefix+'api/v1/quota',headers={'Authorization':'Bearer '+cfg['clientToken']}),timeout=10) as r:assert r.status==200
  try:api.open('https://127.0.0.1:'+str(port)+'/dsh/',timeout=10);raise AssertionError('IP boundary exposed DSH')
  except urllib.error.HTTPError as e:assert e.code==404
 # Keep a recoverable encrypted handoff and root-only key for future reruns.
 print(json.dumps({'ok':True,'url':'https://gaozy.tech/dsh/','version':'0.2.2-rc.1','username':credentials['username'],
  'native_auth_exchange':True,'secure_cookie_scope':True,'panel_healthy':True,'original_api_verified':True,
  'nodes_and_counters_preserved':True,'other_services_unchanged':True,'backup':str(backup),
  'dsh_memory':run('systemctl','show','dsh','-p','MemoryCurrent','--value')}))
except Exception as e:
 restored=False
 if routing_changed and backup:
  try:
   run('systemctl','stop','x-ui');shutil.copy2(backup/'usr/local/x-ui/x-ui','/usr/local/x-ui/x-ui');run('systemctl','start','x-ui');restored=True
  except Exception:pass
 subprocess.run(['systemctl','stop','dsh'],capture_output=True)
 print(json.dumps({'ok':False,'routing_rolled_back':restored,'error_type':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
