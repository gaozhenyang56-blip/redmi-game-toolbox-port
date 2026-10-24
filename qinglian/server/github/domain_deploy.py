#!/usr/bin/env python3
"""Configure the user-owned gaozy.tech CDN origin. No token/key enters logs."""
import hashlib,json,os,re,sys,tempfile,urllib.request,urllib.error,ssl
from pathlib import Path
from ssh_common import connection,remote_json
os.umask(0o077)
DOMAIN='gaozy.tech'
TOKEN=os.environ.get('QINGLIAN_CLOUDFLARE_TOKEN','')
if not re.fullmatch(r'[A-Za-z0-9_-]{20,1024}',TOKEN):raise SystemExit('Missing repository secret QINGLIAN_CLOUDFLARE_TOKEN; no server changes made.')

def cloud(path,data=None,method=None):
 request=urllib.request.Request('https://api.cloudflare.com/client/v4'+path,data=None if data is None else json.dumps(data).encode(),method=method,headers={'Authorization':'Bearer '+TOKEN,'Content-Type':'application/json','User-Agent':'Qinglian-Deploy/1.0'})
 with urllib.request.urlopen(request,timeout=30) as response:value=json.load(response)
 if not value.get('success'):raise RuntimeError('Cloudflare operation rejected')
 return value['result']

preflight=r'''
import hashlib,json,sqlite3,subprocess,tempfile
from pathlib import Path
config=Path('/etc/x-ui/qinglian.json');cfg=json.loads(config.read_text())
assert cfg['tls']['port']==11452 and cfg['tls'].get('httpsPort')==443
assert cfg['tls'].get('domainName','') in ('','gaozy.tech')
assert subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()=='active'
db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row
row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone();base=row[0] if row else '/'
rows=[{k:r[k] for k in r.keys() if k not in ('up','down')} for r in db.execute('SELECT * FROM inbounds ORDER BY id')]
counters={str(r['id']):[r['up'],r['down']] for r in db.execute('SELECT id,up,down FROM inbounds')};db.close()
print(json.dumps({'stage':tempfile.mkdtemp(prefix='qinglian-domain-'),'host':cfg['serverAddress'],'basePath':base,'token':cfg['clientToken'],'oldSha':hashlib.sha256(Path('/usr/local/x-ui/x-ui').read_bytes()).hexdigest(),'configSha':hashlib.sha256(config.read_bytes()).hexdigest(),'inbounds':rows,'counters':counters}))
'''

install=r'''
import hashlib,http.client,json,os,shutil,socket,sqlite3,ssl,subprocess,time
from pathlib import Path
stage=Path(STAGE);meta=json.loads((stage/'metadata.json').read_text());binary=Path('/usr/local/x-ui/x-ui');config=Path('/etc/x-ui/qinglian.json')
assert hashlib.sha256(binary.read_bytes()).hexdigest()==meta['oldSha']
assert hashlib.sha256(config.read_bytes()).hexdigest()==meta['configSha']
assert hashlib.sha256((stage/'x-ui').read_bytes()).hexdigest()==meta['newSha']
(stage/'config.before').write_bytes(config.read_bytes());(stage/'config.before').chmod(0o600)
old=binary.with_name('x-ui.qinglian-before-domain-'+meta['oldSha'][:12]);shutil.copy2(binary,old)
changed=False;phase='installCertificateTools'
try:
 # Standard Ubuntu packages; never pipe an installer from an unknown website.
 env=os.environ.copy();env['DEBIAN_FRONTEND']='noninteractive';env['NEEDRESTART_MODE']='l'
 subprocess.run(['apt-get','update','-qq'],env=env,check=True,capture_output=True,timeout=180)
 subprocess.run(['apt-get','install','-y','--no-install-recommends','certbot','python3-certbot-dns-cloudflare'],env=env,check=True,capture_output=True,timeout=240)
 credentials=Path('/etc/x-ui/qinglian/cloudflare-dns.ini');replacement=credentials.with_suffix('.new');shutil.copyfile(stage/'dns.ini',replacement);replacement.chmod(0o600);os.replace(replacement,credentials)
 command=['certbot','certonly','--non-interactive','--agree-tos','--register-unsafely-without-email','--dns-cloudflare','--dns-cloudflare-credentials',str(credentials),'--dns-cloudflare-propagation-seconds','45','--cert-name','qinglian-gaozy-tech','--keep-until-expiring','-d','gaozy.tech']
 phase='issueDomainCertificate'
 subprocess.run(command,check=True,capture_output=True,timeout=240)
 lineage=Path('/etc/letsencrypt/live/qinglian-gaozy-tech')
 subprocess.run(['openssl','verify','-CApath','/etc/ssl/certs','-untrusted',str(lineage/'chain.pem'),str(lineage/'cert.pem')],check=True,capture_output=True,timeout=10)
 subprocess.run(['openssl','x509','-in',str(lineage/'cert.pem'),'-noout','-checkhost','gaozy.tech','-checkend','2592000'],check=True,capture_output=True,timeout=10)
 cfg=json.loads(config.read_text());cfg['tls'].update(domainName='gaozy.tech',domainCertificate=str(lineage/'fullchain.pem'),domainPrivateKey=str(lineage/'privkey.pem'),cdnCidrs=meta['cdnCidrs'])
 phase='upgradeAndVerifyOrigin'
 subprocess.run(['systemctl','stop','x-ui'],check=True,capture_output=True,timeout=30)
 replacement=binary.with_name('.qinglian-domain-upgrade');shutil.copyfile(stage/'x-ui',replacement);replacement.chmod(0o755);os.replace(replacement,binary);changed=True
 replacement=config.with_name('.qinglian-domain-config');replacement.write_text(json.dumps(cfg));replacement.chmod(0o600);os.replace(replacement,config)
 subprocess.run(['systemctl','start','x-ui'],check=True,capture_output=True,timeout=30)
 class LocalDomain(http.client.HTTPSConnection):
  def connect(self):
   self.sock=socket.create_connection(('127.0.0.1',443),5)
   self.sock=self._context.wrap_socket(self.sock,server_hostname='gaozy.tech')
 def get(path,token=False):
  c=LocalDomain('gaozy.tech',context=ssl.create_default_context(),timeout=5)
  try:
   c.request('GET',path,headers={'User-Agent':'Qinglian-Deploy/1.0',**({'Authorization':'Bearer '+cfg['clientToken']} if token else {})});r=c.getresponse();data=r.read(1024);return r.status,data
  finally:c.close()
 for attempt in range(30):
  try:
   assert get(meta['basePath']+'api/v1/quota',True)[0]==200;break
  except Exception:
   if attempt==29:raise
   time.sleep(.5)
 assert get(meta['basePath'])[0]==200
 assert get(meta['basePath']+'api/v1/quota')[0]==401
 # Confirm the IP certificate and App-only route boundary have not changed.
 c=http.client.HTTPSConnection('127.0.0.1',443,context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem'),timeout=5)
 c.request('GET',meta['basePath']+'xui/qinglian');r=c.getresponse();assert r.status==404;r.read();c.close()
 db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row
 rows=[{k:r[k] for k in r.keys() if k not in ('up','down')} for r in db.execute('SELECT * FROM inbounds ORDER BY id')];assert rows==meta['inbounds']
 for r in db.execute('SELECT id,up,down FROM inbounds'):
  before=meta['counters'][str(r['id'])];assert r['up']>=before[0] and r['down']>=before[1]
 db.close()
 print(json.dumps({'ok':True,'publicOriginCertificateVerified':True,'domainPanelAndApiVerified':True,'ipApiBoundaryPreserved':True,'nodesAndCountersPreserved':True}))
except Exception as error:
 if changed:
  subprocess.run(['systemctl','stop','x-ui'],capture_output=True,timeout=30)
  replacement=binary.with_name('.qinglian-domain-rollback');shutil.copyfile(old,replacement);replacement.chmod(0o755);os.replace(replacement,binary)
  config.write_bytes((stage/'config.before').read_bytes());config.chmod(0o600)
 subprocess.run(['systemctl','start','x-ui'],capture_output=True,timeout=30)
 print(json.dumps({'ok':False,'rolledBack':changed,'errorType':type(error).__name__,'phase':phase}))
'''
rollback=r'''
import hashlib,json,os,shutil,subprocess
from pathlib import Path
stage=Path(STAGE);meta=json.loads((stage/'metadata.json').read_text());binary=Path('/usr/local/x-ui/x-ui');config=Path('/etc/x-ui/qinglian.json')
assert hashlib.sha256(binary.read_bytes()).hexdigest()==meta['newSha']
old=binary.with_name('x-ui.qinglian-before-domain-'+meta['oldSha'][:12]);assert hashlib.sha256(old.read_bytes()).hexdigest()==meta['oldSha']
subprocess.run(['systemctl','stop','x-ui'],check=True,capture_output=True,timeout=30)
replacement=binary.with_name('.qinglian-domain-rollback');shutil.copyfile(old,replacement);replacement.chmod(0o755);os.replace(replacement,binary)
config.write_bytes((stage/'config.before').read_bytes());config.chmod(0o600)
subprocess.run(['systemctl','start','x-ui'],check=True,capture_output=True,timeout=30)
print(json.dumps({'domainPublicCheckRolledBack':True}))
'''
renew='\nimport json,subprocess\nfrom pathlib import Path\nhook=Path(\'/etc/letsencrypt/renewal-hooks/deploy/qinglian-domain\')\ncontent="""#!/usr/bin/python3\n# Qinglian-owned domain renewal hook: only our lineage and configured domain.\nimport json,os,subprocess\nfrom pathlib import Path\nif os.environ.get(\'RENEWED_LINEAGE\')==\'/etc/letsencrypt/live/qinglian-gaozy-tech\':\n cfg=json.loads(Path(\'/etc/x-ui/qinglian.json\').read_text())\n if cfg.get(\'tls\',{}).get(\'domainName\')==\'gaozy.tech\':\n  subprocess.run([\'/usr/bin/systemctl\',\'try-restart\',\'x-ui.service\'],check=True,timeout=30)\n"""\nif hook.exists():assert \'Qinglian-owned domain renewal hook\' in hook.read_text()\nhook.parent.mkdir(parents=True,exist_ok=True);hook.write_text(content);hook.chmod(0o700)\nsubprocess.run([\'systemctl\',\'enable\',\'--now\',\'certbot.timer\'],check=True,capture_output=True,timeout=30)\nassert subprocess.check_output([\'systemctl\',\'is-active\',\'certbot.timer\'],text=True).strip()==\'active\'\nprint(json.dumps({\'automaticCertificateRenewalEnabled\':True}))\n'

panelCheck=r'''
import http.cookiejar,json,sqlite3,ssl,urllib.request,urllib.parse
from pathlib import Path
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row
user=dict(db.execute('SELECT username,password FROM users WHERE id=?',(cfg['ownerId'],)).fetchone())
row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone();base=row[0] if row else '/';db.close()
class NoRedirect(urllib.request.HTTPRedirectHandler):
 def redirect_request(self,*args):return None
opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=ssl.create_default_context()),urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar()),NoRedirect())
headers={'User-Agent':'Qinglian-Deploy/1.0'}
request=urllib.request.Request('https://gaozy.tech'+base+'login',data=urllib.parse.urlencode(user).encode(),headers=headers)
with opener.open(request,timeout=15) as r:assert json.load(r)['success']
with opener.open(urllib.request.Request('https://gaozy.tech'+base+'xui/qinglian',headers=headers),timeout=15) as r:assert 'App 热修复与版本发布' in r.read().decode()
print(json.dumps({'publicPanelLoginVerified':True}))
'''

def public(path,token=None):
 request=urllib.request.Request('https://'+DOMAIN+path,headers={'User-Agent':'Qinglian-Deploy/1.0','Accept':'application/json',**({'Authorization':'Bearer '+token} if token else {})})
 # Redirects must never carry a device token to a different endpoint.
 class NoRedirect(urllib.request.HTTPRedirectHandler):
  def redirect_request(self,*args):return None
 opener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=ssl.create_default_context()),NoRedirect())
 with opener.open(request,timeout=20) as response:return response.status,json.load(response) if token else response.read(512)

try:
 zones=cloud('/zones?name='+DOMAIN);assert len(zones)==1;zone=zones[0]['id'];assert re.fullmatch('[0-9a-f]{32}',zone)
 record=cloud('/zones/'+zone+'/dns_records?type=A&name='+DOMAIN)
 ips=cloud('/ips');cidrs=ips['ipv4_cidrs']+ips['ipv6_cidrs']
 import ipaddress
 assert cidrs and all(ipaddress.ip_network(c).prefixlen>=8 for c in cidrs)
 oldSsl=cloud('/zones/'+zone+'/settings/ssl')['value']
 with connection() as ssh,tempfile.TemporaryDirectory() as d:
  meta=remote_json(ssh,preflight);stage=meta['stage'];assert re.fullmatch('/tmp/qinglian-domain-[A-Za-z0-9_]+',stage)
  assert record and all(r['content']==meta['host'] and r['proxied'] for r in record)
  assert not cloud('/zones/'+zone+'/dns_records?type=AAAA&name='+DOMAIN),'Origin AAAA needs explicit review; IPv4 origin expected'
  meta['cdnCidrs']=cidrs;binary=Path(os.environ['QINGLIAN_SERVER_BINARY']);meta['newSha']=hashlib.sha256(binary.read_bytes()).hexdigest()
  private=Path(d);(private/'metadata.json').write_text(json.dumps(meta));(private/'dns.ini').write_text('dns_cloudflare_api_token = '+TOKEN+'\n')
  with ssh.open_sftp() as sftp:
   for name,source in [('metadata.json',private/'metadata.json'),('dns.ini',private/'dns.ini'),('x-ui',binary)]:sftp.put(str(source),stage+'/'+name);sftp.chmod(stage+'/'+name,0o600)
  result=remote_json(ssh,'STAGE='+repr(stage)+'\n'+install,timeout=850)
  if not result.get('ok'):
   print(json.dumps(result));raise RuntimeError('Domain installation failed with rollback')
  changedSsl=False
  try:
   cloud('/zones/'+zone+'/settings/ssl',{'value':'strict'},'PATCH');changedSsl=True
   import time
   for attempt in range(12):
    try:
     status,data=public(meta['basePath']+'api/v1/quota',meta['token']);assert status==200 and isinstance(data,dict);break
    except Exception:
     if attempt==11:raise
     time.sleep(5)
   assert public(meta['basePath'])[0]==200
   try:public(meta['basePath']+'api/v1/quota');raise AssertionError('anonymous API accepted')
   except urllib.error.HTTPError as error:assert error.code==401
   panelResult=remote_json(ssh,panelCheck,timeout=60);assert panelResult['publicPanelLoginVerified']
   renewal=remote_json(ssh,renew);assert renewal['automaticCertificateRenewalEnabled']
  except Exception:
   if changedSsl:cloud('/zones/'+zone+'/settings/ssl',{'value':oldSsl},'PATCH')
   print(json.dumps(remote_json(ssh,'STAGE='+repr(stage)+'\n'+rollback,timeout=90)));raise
  with ssh.open_sftp() as sftp:
   for name in sftp.listdir(stage):sftp.remove(stage+'/'+name)
   sftp.rmdir(stage)
  print(json.dumps({**result,**renewal,**panelResult,'cloudflareStrictHttpsVerified':True,'publicDomainPanelAndApiVerified':True}))
except Exception as error:
 print('Domain setup stopped:',type(error).__name__,'; private details suppressed. Existing IP API retained; inspect rollback result.',file=sys.stderr);sys.exit(1)
