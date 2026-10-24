#!/usr/bin/env python3
"""Upgrade an already-integrated x-ui after encrypted backup; preserve config and counters."""
import hashlib,json,os,ssl,sys,tempfile,urllib.request
from pathlib import Path
from ssh_common import connection,remote_json
os.umask(0o077)
preflight=r'''
import hashlib,json,sqlite3,subprocess,tempfile,socket
from pathlib import Path
assert subprocess.check_output(['/usr/local/x-ui/x-ui','-v'],text=True).strip()=='0.3.2'
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());assert cfg['ownerId']>0 and cfg['tls']['port']==11452
if cfg['tls'].get('httpsPort') != 443:
 with socket.socket() as probe:probe.bind(('0.0.0.0',443))
# Do not change firewall policy implicitly. The existing dedicated API stays open.

connection=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);connection.row_factory=sqlite3.Row
settings={r['key']:r['value'] for r in connection.execute('SELECT key,value FROM settings')}
configuration=[{k:r[k] for k in r.keys() if k not in ('up','down')} for r in connection.execute('SELECT * FROM inbounds ORDER BY id')]
counters={str(r['id']):[r['up'],r['down']] for r in connection.execute('SELECT id,up,down FROM inbounds')};connection.close()
print(json.dumps({'stage':tempfile.mkdtemp(prefix='qinglian-upgrade-'),'oldSha':hashlib.sha256(Path('/usr/local/x-ui/x-ui').read_bytes()).hexdigest(),
 'configSha':hashlib.sha256(Path('/etc/x-ui/qinglian.json').read_bytes()).hexdigest(),'configuration':configuration,'counters':counters,
 'panelPort':int(settings.get('webPort','54321')),'basePath':settings.get('webBasePath','/'),'config':cfg}))
'''
install=r'''
import hashlib,http.cookiejar,json,os,shutil,sqlite3,ssl,subprocess,time,urllib.request,urllib.parse,urllib.error
from pathlib import Path
stage=Path(STAGE);meta=json.loads((stage/'metadata.json').read_text());cfg=meta['config'];binary=Path('/usr/local/x-ui/x-ui');config=Path('/etc/x-ui/qinglian.json')
assert hashlib.sha256(binary.read_bytes()).hexdigest()==meta['oldSha']
assert hashlib.sha256(config.read_bytes()).hexdigest()==meta['configSha']
assert hashlib.sha256((stage/'x-ui').read_bytes()).hexdigest()==meta['newSha']
originalConfig=config.read_bytes()
(stage/'config.before').write_bytes(originalConfig);(stage/'config.before').chmod(0o600)
previous=binary.with_name('x-ui.qinglian-before-updates-'+meta['oldSha'][:12]);shutil.copy2(binary,previous)
changed=False
try:
 subprocess.run(['systemctl','stop','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
 replacement=binary.with_name('.qinglian-upgrade');shutil.copyfile(stage/'x-ui',replacement);replacement.chmod(0o755);os.replace(replacement,binary);changed=True
 cfg['tls']['httpsPort']=443
 replacementConfig=config.with_name('.qinglian-https-upgrade');replacementConfig.write_text(json.dumps(cfg));replacementConfig.chmod(0o600);os.replace(replacementConfig,config)
 subprocess.run(['systemctl','start','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
 tls=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem');api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=tls))
 base=meta['basePath'];port=meta['panelPort'];url='https://127.0.0.1:11452'+base+'api/v1/'
 manifest=None
 for attempt in range(30):
  try:
   with api.open(urllib.request.Request(url+'updates',headers={'Authorization':'Bearer '+cfg['clientToken']}),timeout=3) as response:manifest=json.load(response)
   break
  except Exception:time.sleep(.5)
 assert manifest['schema']==1 and manifest['ui']['navHeight']>=64
 try:api.open(url+'updates',timeout=3);raise AssertionError('anonymous updates allowed')
 except urllib.error.HTTPError as error:assert error.code==401
 db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row
 current=[{k:r[k] for k in r.keys() if k not in ('up','down')} for r in db.execute('SELECT * FROM inbounds ORDER BY id')];assert current==meta['configuration']
 for row in db.execute('SELECT id,up,down FROM inbounds'):
  before=meta['counters'][str(row['id'])];assert row['up']>=before[0] and row['down']>=before[1]
 user=db.execute('SELECT username,password FROM users WHERE id=?',(cfg['ownerId'],)).fetchone();db.close()
 panel=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar()))
 origin='http://127.0.0.1:'+str(port);page=origin+base
 with panel.open(page+'login',urllib.parse.urlencode(dict(user)).encode(),timeout=5) as response:assert json.load(response)['success']
 with panel.open(page+'xui/qinglian',timeout=5) as response:assert 'App 热修复与版本发布' in response.read().decode()
 def publish(endpoint,data):
  request=urllib.request.Request(page+'xui/qinglian/updates'+endpoint,data=json.dumps(data).encode(),headers={'Content-Type':'application/json','X-Requested-With':'XMLHttpRequest','Origin':origin})
  with panel.open(request,timeout=5) as response:return json.load(response)
 # Publish the identical UI and roll it back. This exercises production rights
 # without altering any settings seen by devices, only the publication number.
 published=publish('',manifest);rolled=publish('/rollback',{})
 assert rolled['ui']==manifest['ui'] and rolled['apk']==manifest['apk'] and rolled['revision']==published['revision']+1
 request=urllib.request.Request(page+'xui/qinglian/updates',headers={'Authorization':'Bearer '+cfg['clientToken']})
 try:urllib.request.build_opener(urllib.request.ProxyHandler({})).open(request,timeout=3);raise AssertionError('App accessed update publisher')
 except urllib.error.HTTPError as error:assert error.code==401
 assert json.loads(config.read_text())==cfg
 # Both ports enforce the identical certificate, API allowlist and authentication.
 for apiPort in (11452,443):
  check='https://127.0.0.1:'+str(apiPort)+base
  with api.open(urllib.request.Request(check+'api/v1/quota',headers={'Authorization':'Bearer '+cfg['clientToken']}),timeout=3) as response:assert response.status==200
  for path,expected in [('api/v1/quota',401),('xui/qinglian',404)]:
   try:api.open(check+path,timeout=3);raise AssertionError('route boundary violated')
   except urllib.error.HTTPError as error:assert error.code==expected
 assert subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()=='active'
 print(json.dumps({'ok':True,'updatesApiVerified':True,'panelPublishRollbackVerified':True,'adminBoundaryVerified':True,'configAndInboundsPreserved':True,'countersNotReset':True,'nativeHttps443Verified':True}))
except Exception as error:
 if changed:
  subprocess.run(['systemctl','stop','x-ui'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
  config.write_bytes(originalConfig);config.chmod(0o600)
  restore=binary.with_name('.qinglian-rollback');shutil.copyfile(previous,restore);restore.chmod(0o755);os.replace(restore,binary)
 subprocess.run(['systemctl','start','x-ui'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
 print(json.dumps({'ok':False,'rolledBack':True,'errorType':type(error).__name__}))
'''
try:
 with connection() as client,tempfile.TemporaryDirectory() as tmp:
  metadata=remote_json(client,preflight);stage=metadata['stage'];assert stage.startswith('/tmp/qinglian-upgrade-') and '/' not in stage[len('/tmp/'):]
  binary=Path(os.environ['QINGLIAN_SERVER_BINARY']);metadata['newSha']=hashlib.sha256(binary.read_bytes()).hexdigest();local=Path(tmp)/'metadata.json';local.write_text(json.dumps(metadata))
  with client.open_sftp() as sftp:
   sftp.put(str(local),stage+'/metadata.json');sftp.chmod(stage+'/metadata.json',0o600);sftp.put(str(binary),stage+'/x-ui');sftp.chmod(stage+'/x-ui',0o700)
   sftp.get('/etc/x-ui/qinglian/ca.pem',str(Path(tmp)/'ca.pem'))
  result=remote_json(client,'STAGE='+repr(stage)+'\n'+install,timeout=180)
  if not result.get('ok'):raise RuntimeError('upgrade rolled back')
  context=ssl.create_default_context(cafile=str(Path(tmp)/'ca.pem'));opener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=context))
  url='https://'+os.environ['QINGLIAN_SSH_HOST']+':11452'+metadata['basePath']+'api/v1/updates'
  try:
   for apiPort in (11452,443):
    publicUrl='https://'+os.environ['QINGLIAN_SSH_HOST']+':'+str(apiPort)+metadata['basePath']+'api/v1/updates'
    with opener.open(urllib.request.Request(publicUrl,headers={'Authorization':'Bearer '+metadata['config']['clientToken']}),timeout=15) as response:assert json.load(response)['schema']==1
  except Exception:
   rollback=remote_json(client,'STAGE='+repr(stage)+'\n'+r"""
import hashlib,json,os,shutil,subprocess
from pathlib import Path
stage=Path(STAGE);meta=json.loads((stage/'metadata.json').read_text());binary=Path('/usr/local/x-ui/x-ui')
assert hashlib.sha256(binary.read_bytes()).hexdigest()==meta['newSha']
previous=binary.with_name('x-ui.qinglian-before-updates-'+meta['oldSha'][:12])
assert hashlib.sha256(previous.read_bytes()).hexdigest()==meta['oldSha']
assert hashlib.sha256((stage/'config.before').read_bytes()).hexdigest()==meta['configSha']
subprocess.run(['systemctl','stop','x-ui'],check=True,capture_output=True,timeout=30)
replacement=binary.with_name('.qinglian-public-rollback');shutil.copyfile(previous,replacement);replacement.chmod(0o755);os.replace(replacement,binary)
config=Path('/etc/x-ui/qinglian.json');config.write_bytes((stage/'config.before').read_bytes());config.chmod(0o600)
subprocess.run(['systemctl','start','x-ui'],check=True,capture_output=True,timeout=30)
print(json.dumps({'publicCheckFailedAndRolledBack':True}))
""",timeout=90)
   print(json.dumps(rollback));raise
  with client.open_sftp() as sftp:
   sftp.remove(stage+'/metadata.json');sftp.remove(stage+'/x-ui');sftp.remove(stage+'/config.before');sftp.rmdir(stage)
  print(json.dumps(result));print('Public App update API verified with CA and hostname checks.')
except Exception as error:
 print('Upgrade stopped:',type(error).__name__,'; private details suppressed. Check rollback state before retrying.',file=sys.stderr);sys.exit(1)
