#!/usr/bin/env python3
"""Read-only update-channel acceptance: TLS, bytes, APK signature and version."""
import hashlib,json,os,re,ssl,subprocess,sys,tempfile,urllib.request
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
print(json.dumps({'token':cfg['clientToken'],'ca':Path('/etc/x-ui/qinglian/ca.pem').read_text(),'base':row[0] if row else '/'}))
""")
  root=Path(tmp);ca=root/'ca.pem';ca.write_text(data['ca']);opener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=ssl.create_default_context(cafile=str(ca))))
  base='https://'+os.environ['QINGLIAN_SSH_HOST']+':11452'+data['base']+'api/v1/'
  def request(path):return opener.open(urllib.request.Request(base+path,headers={'Authorization':'Bearer '+data['token']}),timeout=30)
  with request('updates') as response:value=json.load(response)
  assert value['schema']==1 and value['apk'];apk=value['apk'];digest=apk['sha256'];assert re.fullmatch('[0-9a-f]{64}',digest) and 0<apk['size']<=64*1024*1024
  path=root/'app.apk';hash=hashlib.sha256();total=0
  with request('apk/'+digest) as response,path.open('wb') as output:
   while chunk:=response.read(65536):
    total+=len(chunk);assert total<=apk['size'];output.write(chunk);hash.update(chunk)
  assert total==apk['size'] and hash.hexdigest()==digest
  sdk=Path(os.environ.get('ANDROID_HOME','/usr/local/lib/android/sdk'));signers=sorted(sdk.glob('build-tools/*/apksigner'));assert signers,'Android verifier unavailable'
  signer=signers[-1];verified=subprocess.run([str(signer),'verify','--print-certs',str(path)],capture_output=True,text=True,timeout=30)
  assert verified.returncode==0 and '2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870' in verified.stdout.lower().replace(':','')
  badging=subprocess.run([str(signer.parent/'aapt'),'dump','badging',str(path)],capture_output=True,text=True,timeout=30);assert badging.returncode==0
  assert "name='com.gzy.qinglian'" in badging.stdout and "versionCode='"+str(apk['versionCode'])+"'" in badging.stdout
  if os.environ.get('QINGLIAN_EXPECTED_VERSION'):assert apk['versionCode']==int(os.environ['QINGLIAN_EXPECTED_VERSION'])
  if os.environ.get('QINGLIAN_DELIVERY_DIR'):
   assert apk['versionCode']==17 and apk['versionName']=='1.1.8-preview'
   delivery=Path(os.environ['QINGLIAN_DELIVERY_DIR']);delivery.mkdir(parents=True,exist_ok=True)
   import shutil
   filename='Qinglian-1.1.8-preview-v17.apk';shutil.copyfile(path,delivery/filename)
   (delivery/'SHA256SUMS.txt').write_text(digest+'  '+filename+'\n')
  print(json.dumps({'publicTlsUpdateDownload':True,'sizeAndDigestMatch':True,'originalApkSignatureVerified':True,'packageAndVersionMatch':True,'versionCode':apk['versionCode']}))
except Exception as error:
 print('Update release verification failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
