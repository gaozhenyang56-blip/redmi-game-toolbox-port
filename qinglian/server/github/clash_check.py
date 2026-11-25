"""Production subscription round-trip. Never log URLs, credentials or configs."""
import json,os,subprocess,tempfile,urllib.error,urllib.request
from pathlib import Path

def verify_clash(opener,origin,headers):
 def request(path,body=None,method=None):
  h={**headers,'Origin':origin,'X-Requested-With':'XMLHttpRequest','Content-Type':'application/json'}
  return opener.open(urllib.request.Request(origin+path,json.dumps(body).encode() if body is not None else None,headers=h,method=method),timeout=20)
 with request('/xui/qinglian/clash') as r:assert b'subscription-qr' in r.read(1048576)
 with request('/xui/qinglian/clash/links') as r:nodes=json.load(r)['nodes']
 ids=[n['id'] for n in nodes if n['available']][:64];assert ids
 anonymous=urllib.request.build_opener(urllib.request.ProxyHandler({}))
 created=[]
 try:
  for flavor in ('clash','mihomo'):
   with request('/xui/qinglian/clash/links',{'name':'Temporary deployment verification','flavor':flavor,'inbounds':ids,'hy2':flavor=='mihomo'}) as r:sub=json.load(r)
   created.append(sub['id']);assert sub['url'].startswith(origin+'/api/v1/clash/sub/')
   with anonymous.open(urllib.request.Request(sub['url'],headers=headers),timeout=20) as r:
    assert r.status==200 and 'no-store' in r.headers.get('Cache-Control','');data=r.read(1048576)
   assert b'proxies:' in data and b'skip-cert-verify: true' not in data
   for forbidden in (b'clientToken',b'managementToken',b'PRIVATE KEY',b'external-controller'):
    assert forbidden not in data
   core=os.environ['QINGLIAN_CLASH_CORE']
   with tempfile.TemporaryDirectory() as directory:
    config=Path(directory)/'subscription.yaml';config.write_bytes(data);config.chmod(0o600)
    # No stdout/stderr with real production configuration may escape.
    result=subprocess.run([core,'-t','-d',directory,'-f',str(config)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=20);assert result.returncode==0
   with request('/xui/qinglian/clash/links/'+sub['id'],method='DELETE') as r:assert r.status==200
   created.remove(sub['id'])
   try:anonymous.open(urllib.request.Request(sub['url'],headers=headers),timeout=20)
   except urllib.error.HTTPError as error:assert error.code==404
   else:raise AssertionError('revoked subscription still available')
  print(json.dumps({'clashAndMihomoSubscriptionRoundTrip':True,'actualCoreConfigurationValidation':True,'anonymousTokenFetchAndRevocation':True,'noCredentialsLogged':True}))
 finally:
  for identifier in created:
   try:
    with request('/xui/qinglian/clash/links/'+identifier,method='DELETE'):pass
   except Exception:pass
