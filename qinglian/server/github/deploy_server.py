#!/usr/bin/env python3
"""Version-pinned deployment after verified encrypted backup. No credentials in stdout."""
import datetime,hashlib,ipaddress,json,os,ssl,sys,tempfile,time,urllib.request
from pathlib import Path
from cryptography import x509
from cryptography.hazmat.primitives import hashes,serialization
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.x509.oid import NameOID
from ssh_common import connection,remote_json,encrypt_file
os.umask(0o077)
root=Path(__file__).parent
original=(root/'original-binary.sha256').read_text().strip()
binary=Path(os.environ['QINGLIAN_SERVER_BINARY']);binary_sha=hashlib.sha256(binary.read_bytes()).hexdigest()
preflight=r'''
import hashlib,json,os,platform,socket,sqlite3,stat,subprocess,tempfile
from pathlib import Path
binary=Path('/usr/local/x-ui/x-ui');assert stat.S_ISREG(binary.lstat().st_mode)
assert platform.machine()=='x86_64'
assert subprocess.check_output([str(binary),'-v'],text=True).strip()=='0.3.2'
assert hashlib.sha256(binary.read_bytes()).hexdigest()==EXPECTED_ORIGINAL
assert not Path('/etc/x-ui/qinglian.json').exists(),'existing feature configuration must not be overwritten'
probe=socket.socket();probe.bind(('0.0.0.0',11452));probe.close()
connection=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);connection.row_factory=sqlite3.Row
settings={r['key']:r['value'] for r in connection.execute('SELECT key,value FROM settings')}
rows=[dict(r) for r in connection.execute('SELECT * FROM inbounds WHERE protocol=?',('vmess',))];assert len(rows)==1
row=rows[0];clients=json.loads(row['settings'])['clients'];assert len(clients)==1
stream=json.loads(row['stream_settings']);assert stream['network']=='tcp' and stream.get('security','none') in ('none','')
header=stream.get('tcpSettings',{}).get('header',{});assert header['type']=='http'
request=header.get('request') or {};paths=request.get('path') or ['/'];hosts=(request.get('headers') or {}).get('Host') or [''];assert len(paths)==len(hosts)==1
node={'id':clients[0]['id'],'port':row['port'],'aid':clients[0].get('alterId',0),'net':'tcp','type':'http','host':hosts[0],'path':paths[0],'tls':'none'}
port=int(settings.get('webPort','54321'));assert port!=11452
base=settings.get('webBasePath','/');assert base.startswith('/') and base.endswith('/')
configuration=[{k:r[k] for k in r.keys() if k not in ('up','down')} for r in connection.execute('SELECT * FROM inbounds ORDER BY id')]
counters={str(r['id']):[r['up'],r['down']] for r in connection.execute('SELECT id,up,down FROM inbounds')}
connection.close()
print(json.dumps({'stage':tempfile.mkdtemp(prefix='qinglian-deploy-'),'node':node,'ownerId':row['user_id'],'panelPort':port,'basePath':base,'configuration':configuration,'counters':counters}))
'''
install=r'''
import hashlib,http.cookiejar,json,os,shutil,sqlite3,ssl,subprocess,time,urllib.parse,urllib.request,urllib.error
from pathlib import Path
os.umask(0o077)
stage=Path(STAGE);meta=json.loads((stage/'metadata.json').read_text());binary=Path('/usr/local/x-ui/x-ui');previous=Path('/usr/local/x-ui/x-ui.qinglian-previous')
assert hashlib.sha256(binary.read_bytes()).hexdigest()==meta['originalSha256']
assert hashlib.sha256((stage/'x-ui').read_bytes()).hexdigest()==meta['newSha256']
assert not Path('/etc/x-ui/qinglian.json').exists()
private=Path('/etc/x-ui/qinglian');assert not private.exists(),'unexpected private data directory'
private.mkdir(mode=0o700)
for name in ['ca.pem','ca.key','server.pem','server.key']:
 shutil.copyfile(stage/name,private/name);(private/name).chmod(0o600)
config=Path('/etc/x-ui/qinglian.json');shutil.copyfile(stage/'config.json',config);config.chmod(0o600)
if previous.exists():assert hashlib.sha256(previous.read_bytes()).hexdigest()==meta['originalSha256']
else:shutil.copy2(binary,previous)
changed=False
try:
 subprocess.run(['systemctl','stop','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
 destination=binary.with_name('.qinglian-new');shutil.copyfile(stage/'x-ui',destination);destination.chmod(0o755);os.replace(destination,binary);changed=True
 subprocess.run(['systemctl','start','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
 cfg=json.loads(config.read_text());token=cfg['clientToken'];base=meta['basePath'];port=meta['panelPort']
 tls=ssl.create_default_context(cafile=str(private/'ca.pem'))
 api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=tls))
 quota=None
 for attempt in range(20):
  try:
   request=urllib.request.Request('https://127.0.0.1:11452'+base+'api/v1/quota',headers={'Authorization':'Bearer '+token})
   with api.open(request,timeout=3) as response:quota=json.load(response)
   break
  except Exception:time.sleep(.5)
 assert quota is not None and all(type(quota[k]) is int and quota[k]>=0 for k in ['upload','download','total','expire'])
 try:api.open('https://127.0.0.1:11452'+base+'api/v1/online',timeout=3);raise AssertionError('anonymous App API was allowed')
 except urllib.error.HTTPError as error:assert error.code==401
 db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row
 current=[{k:r[k] for k in r.keys() if k not in ('up','down')} for r in db.execute('SELECT * FROM inbounds ORDER BY id')];assert current==meta['configuration']
 for row in db.execute('SELECT id,up,down FROM inbounds'):
  before=meta['counters'][str(row['id'])];assert row['up']>=before[0] and row['down']>=before[1]
 row=db.execute('SELECT user_id FROM inbounds WHERE protocol=?',('vmess',)).fetchone()
 user=db.execute('SELECT username,password FROM users WHERE id=?',(row['user_id'],)).fetchone();db.close()
 jar=http.cookiejar.CookieJar();panel=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPCookieProcessor(jar))
 origin='http://127.0.0.1:'+str(port)+base
 body=urllib.parse.urlencode({'username':user['username'],'password':user['password']}).encode()
 with panel.open(origin+'login',body,timeout=5) as response:assert json.load(response)['success']
 with panel.open(origin+'xui/qinglian',timeout=5) as response:assert '在线设备' in response.read().decode()
 with panel.open(origin+'xui/qinglian/devices',timeout=5) as response:details=json.load(response);assert isinstance(details['devices'],list)
 with panel.open(origin+'xui/qinglian/selection',timeout=5) as response:selection=json.load(response);assert selection['selectedId']>0 and isinstance(selection['nodes'],list)
 choice=urllib.request.Request(origin+'xui/qinglian/selection',data=json.dumps({'inboundId':selection['selectedId']}).encode(),headers={'X-Requested-With':'XMLHttpRequest','Content-Type':'application/json','Origin':'http://127.0.0.1:'+str(port)})
 with panel.open(choice,timeout=5) as response:assert json.load(response)['ok']
 anonymous=urllib.request.build_opener(urllib.request.ProxyHandler({}))
 try:
  anonymous.open(urllib.request.Request(origin+'xui/qinglian/devices',headers={'Authorization':'Bearer '+token}),timeout=3);raise AssertionError('client accessed admin details')
 except urllib.error.HTTPError as error:assert error.code==401
 assert subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()=='active'
 print(json.dumps({'ok':True,'panelPageVerified':True,'apiTlsVerified':True,'inboundConfigurationPreserved':True,'countersNotReset':True,'adminBoundaryVerified':True}))
except Exception as error:
 if changed:
  subprocess.run(['systemctl','stop','x-ui'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
  restore=binary.with_name('.qinglian-restore');shutil.copyfile(previous,restore);restore.chmod(0o755);os.replace(restore,binary)
 config.unlink(missing_ok=True)
 subprocess.run(['systemctl','start','x-ui'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
 print(json.dumps({'ok':False,'rolledBack':True,'errorType':type(error).__name__}))
'''
def make_pki(host,folder):
    now=datetime.datetime.now(datetime.timezone.utc);ca_key=rsa.generate_private_key(public_exponent=65537,key_size=3072);server_key=rsa.generate_private_key(public_exponent=65537,key_size=3072)
    issuer=x509.Name([x509.NameAttribute(NameOID.COMMON_NAME,'Qinglian API Root')])
    ca=x509.CertificateBuilder().subject_name(issuer).issuer_name(issuer).public_key(ca_key.public_key()).serial_number(x509.random_serial_number()).not_valid_before(now-datetime.timedelta(days=1)).not_valid_after(now+datetime.timedelta(days=3650)).add_extension(x509.BasicConstraints(ca=True,path_length=0),True).add_extension(x509.KeyUsage(False,False,False,False,False,True,True,False,False),True).sign(ca_key,hashes.SHA256())
    names=[x509.IPAddress(ipaddress.ip_address(host)),x509.IPAddress(ipaddress.ip_address('127.0.0.1'))]
    leaf=x509.CertificateBuilder().subject_name(x509.Name([x509.NameAttribute(NameOID.COMMON_NAME,'Qinglian API')])).issuer_name(issuer).public_key(server_key.public_key()).serial_number(x509.random_serial_number()).not_valid_before(now-datetime.timedelta(days=1)).not_valid_after(now+datetime.timedelta(days=825)).add_extension(x509.BasicConstraints(ca=False,path_length=None),True).add_extension(x509.SubjectAlternativeName(names),False).add_extension(x509.ExtendedKeyUsage([x509.oid.ExtendedKeyUsageOID.SERVER_AUTH]),False).sign(ca_key,hashes.SHA256())
    values={'ca.pem':ca.public_bytes(serialization.Encoding.PEM),'server.pem':leaf.public_bytes(serialization.Encoding.PEM)+ca.public_bytes(serialization.Encoding.PEM),
        'ca.key':ca_key.private_bytes(serialization.Encoding.PEM,serialization.PrivateFormat.PKCS8,serialization.NoEncryption()),'server.key':server_key.private_bytes(serialization.Encoding.PEM,serialization.PrivateFormat.PKCS8,serialization.NoEncryption())}
    for name,data in values.items():(folder/name).write_bytes(data)
    return values
try:
    with connection() as client,tempfile.TemporaryDirectory() as temp:
        metadata=remote_json(client,'EXPECTED_ORIGINAL='+repr(original)+'\n'+preflight);stage=metadata['stage'];assert stage.startswith('/tmp/qinglian-deploy-') and '/' not in stage[len('/tmp/'):]
        folder=Path(temp);host=os.environ['QINGLIAN_SSH_HOST'];pki=make_pki(host,folder)
        import secrets
        token=secrets.token_urlsafe(48)
        config={'ownerId':metadata['ownerId'],'serverAddress':host,'clientToken':token,'nodeUuid':metadata['node']['id'],'statePath':'/etc/x-ui/qinglian/devices.sqlite3','trustedProxyCidrs':[],
                'tls':{'port':11452,'certificate':'/etc/x-ui/qinglian/server.pem','privateKey':'/etc/x-ui/qinglian/server.key'}}
        (folder/'config.json').write_text(json.dumps(config));metadata.update(originalSha256=original,newSha256=binary_sha);(folder/'metadata.json').write_text(json.dumps(metadata))
        with client.open_sftp() as sftp:
            for name in ['ca.pem','ca.key','server.pem','server.key','config.json','metadata.json']:sftp.put(str(folder/name),stage+'/'+name);sftp.chmod(stage+'/'+name,0o600)
            sftp.put(str(binary),stage+'/x-ui');sftp.chmod(stage+'/x-ui',0o700)
        result=remote_json(client,'STAGE='+repr(stage)+'\n'+install,timeout=180)
        if not result.get('ok'):raise RuntimeError('deployment rolled back')
        context=ssl.create_default_context(cafile=str(folder/'ca.pem'));opener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=context))
        base='https://'+host+':11452'+metadata['basePath']+'api/v1/'
        for name in ['online','quota','profile']:
            with opener.open(urllib.request.Request(base+name,headers={'Authorization':'Bearer '+token}),timeout=15) as response:data=json.load(response)
            if name=='online':assert type(data['online']) is int and data['online']>=0
            elif name=='quota':assert all(type(data[k]) is int and data[k]>=0 for k in ['upload','download','total','expire'])
            else:assert data['node']['id']==metadata['node']['id'] and len(data['revision'])==64
        node=metadata['node'];node['add']=host
        bundle={'node':node,'apiConfig':{name:{'url':base+endpoint,'clientToken':token,'caAsset':'api-ca.pem'} for name,endpoint in [('online','online'),('quota','quota'),('telemetry','heartbeat'),('profile','profile')]},
                'caCertificate':pki['ca.pem'].decode(),'pkiBackup':{name:data.decode() for name,data in pki.items()},'serverConfig':config,'certificateExpires':(datetime.datetime.now(datetime.timezone.utc)+datetime.timedelta(days=825)).isoformat()}
        (folder/'app-api.json').write_text(json.dumps(bundle));encrypt_file(folder/'app-api.json','private-app-api')
        with client.open_sftp() as sftp:
            for name in ['ca.pem','ca.key','server.pem','server.key','config.json','metadata.json','x-ui']:sftp.remove(stage+'/'+name)
            sftp.rmdir(stage)
        print(json.dumps(result));print('Public HTTPS App API verified with the private CA and hostname checks; encrypted app configuration prepared.')
except Exception as failure:
    print('Deployment stopped:',type(failure).__name__,'; check private state before retrying. No credentials published.',file=sys.stderr);raise SystemExit(1)
