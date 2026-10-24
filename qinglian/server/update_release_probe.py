#!/usr/bin/env python3
"""Read-only update-channel acceptance: TLS, bytes, APK signature and version."""
import hashlib,json,os,re,ssl,subprocess,sys,tempfile,urllib.request,urllib.error,zipfile,urllib.parse
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'github'))
from ssh_common import connection,remote_json
try:
 with connection() as ssh,tempfile.TemporaryDirectory() as tmp:
  data=remote_json(ssh,"""
import json,sqlite3
from pathlib import Path
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True)
row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone()
print(json.dumps({'token':cfg['clientToken'],'ca':Path('/etc/x-ui/qinglian/ca.pem').read_text(),'base':row[0] if row else '/','domain':cfg['tls'].get('domainName','')}))
""")
  class NoRedirect(urllib.request.HTTPRedirectHandler):
   def redirect_request(self,*args):return None
  root=Path(tmp);ca=root/'ca.pem';ca.write_text(data['ca']);opener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=ssl.create_default_context(cafile=str(ca))),NoRedirect())
  base='https://'+os.environ['QINGLIAN_SSH_HOST']+':443'+data['base']+'api/v1/'
  def request(path):return opener.open(urllib.request.Request(base+path,headers={'Authorization':'Bearer '+data['token'],'User-Agent':'Qinglian/Release-Check','Accept-Encoding':'identity'}),timeout=30)
  with request('updates') as response:value=json.load(response)
  legacy=base.replace(':443',':11452',1)
  with opener.open(urllib.request.Request(legacy+'updates',headers={'Authorization':'Bearer '+data['token'],'User-Agent':'Qinglian/Release-Check','Accept-Encoding':'identity'}),timeout=15) as response:
   old=json.load(response);assert old['apk']==value['apk'] and old['ui']==value['ui']
  for prefix in (base,legacy):
   try:opener.open(prefix+'updates',timeout=10);raise AssertionError('anonymous updates accepted')
   except urllib.error.HTTPError as error:assert error.code==401

  cdnVerified=False
  if data.get('domain'):
   assert data['domain']=='gaozy.tech'
   cdnBase='https://'+data['domain']+data['base']+'api/v1/'
   cdnOpener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=ssl.create_default_context()),NoRedirect())
   with cdnOpener.open(urllib.request.Request(cdnBase+'updates',headers={'Authorization':'Bearer '+data['token'],'User-Agent':'Qinglian/Release-Check'}),timeout=30) as response:assert json.load(response)['apk']==value['apk']
   # Download through the CDN with platform roots; never add the private IP CA
   # to the public-domain trust store or follow redirects with the bearer.
   opener=cdnOpener;base=cdnBase;cdnVerified=True
  assert value['schema']==1 and value['apk'];apk=value['apk'];digest=apk['sha256'];assert re.fullmatch('[0-9a-f]{64}',digest) and 0<apk['size']<=64*1024*1024
  path=root/'app.apk';hash=hashlib.sha256();total=0
  with request('apk/'+digest) as response,path.open('wb') as output:
   while chunk:=response.read(65536):
    total+=len(chunk);assert total<=apk['size'];output.write(chunk);hash.update(chunk)
  assert total==apk['size'] and hash.hexdigest()==digest
  if cdnVerified:
   checked=set()
   with zipfile.ZipFile(path) as archive:
    for name in archive.namelist():
     if not name.startswith('assets/') or not name.endswith('.json') or '.example.' in name:continue
     assert archive.getinfo(name).file_size<=8192,'Unexpected bootstrap JSON size'
     asset=json.loads(archive.read(name))
     if isinstance(asset,dict) and 'url' in asset and 'clientToken' in asset:
      assert asset.get('cdnUrl')=='https://'+data['domain']+urllib.parse.urlsplit(asset['url']).path,'API asset missing the configured CDN route'
      assert set(asset)<=set(['url','cdnUrl','clientToken','caAsset'])
      checked.add(name)
   assert {'assets/profile.json','assets/quota.json','assets/online.json','assets/telemetry.json','assets/updates.json'}<=checked

  sdk=Path(os.environ.get('ANDROID_HOME','/usr/local/lib/android/sdk'));signers=sorted(sdk.glob('build-tools/*/apksigner'));assert signers,'Android verifier unavailable'
  signer=signers[-1];verified=subprocess.run([str(signer),'verify','--print-certs',str(path)],capture_output=True,text=True,timeout=30)
  assert verified.returncode==0 and '2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870' in verified.stdout.lower().replace(':','')
  badging=subprocess.run([str(signer.parent/'aapt'),'dump','badging',str(path)],capture_output=True,text=True,timeout=30);assert badging.returncode==0
  assert "name='com.gzy.qinglian'" in badging.stdout and "versionCode='"+str(apk['versionCode'])+"'" in badging.stdout
  if os.environ.get('QINGLIAN_EXPECTED_VERSION'):assert apk['versionCode']==int(os.environ['QINGLIAN_EXPECTED_VERSION'])
  if os.environ.get('QINGLIAN_DELIVERY_DIR'):
   assert cdnVerified and apk['versionCode']==21 and apk['versionName']=='1.1.12-preview'
   delivery=Path(os.environ['QINGLIAN_DELIVERY_DIR']);delivery.mkdir(parents=True,exist_ok=True)
   import shutil
   filename='Qinglian-1.1.12-preview-v21.apk';shutil.copyfile(path,delivery/filename)
   (delivery/'SHA256SUMS.txt').write_text(digest+'  '+filename+'\n')
  print(json.dumps({'allApiAssetsCdnVerified':cdnVerified,'cdnUpdateDownloadVerified':cdnVerified,'bothHttpsPortsVerified':True,'publicTlsUpdateDownload':True,'sizeAndDigestMatch':True,'originalApkSignatureVerified':True,'packageAndVersionMatch':True,'versionCode':apk['versionCode']}))
except Exception as error:
 print('Update release verification failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
