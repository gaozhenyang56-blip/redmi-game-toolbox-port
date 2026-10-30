"""Bounded App guest-path diagnosis from pinned public APK; no SSH required."""
import hashlib,json,os,secrets,socket,ssl,subprocess,tempfile,time,urllib.error,urllib.parse,urllib.request,uuid,zipfile
from pathlib import Path
from channel_smoke import dependencies,port
os.umask(0o077)
APK_URL='https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/releases/download/qinglian-android-v1.1.12-preview-v21/Qinglian-1.1.12-preview-v21.apk'
APK_SHA='b121bf3538b2ef93d6174e5cf5c8653b7b87ca6fd38c30ac9094fa483c40f66b'
class NoRedirect(urllib.request.HTTPRedirectHandler):
 def redirect_request(self,*args,**kwargs):return None

def main():
 phase='bootstrap';results={};stopped=False;started=False
 with tempfile.TemporaryDirectory() as directory:
  root=Path(directory);apk=root/'app.apk';cache=Path(os.environ.get('QINGLIAN_TEST_CACHE',str(root/'cache')))
  try:
   with urllib.request.urlopen(APK_URL,timeout=60) as response:data=response.read(64*1024**2+1)
   assert hashlib.sha256(data).hexdigest()==APK_SHA
   apk.write_bytes(data)
   with zipfile.ZipFile(apk) as z:
    config=json.loads(z.read('assets/profile.json'));ca=root/'ca.pem';ca.write_bytes(z.read('assets/'+config['caAsset']))
   original=urllib.parse.urlsplit(config['url']);assert original.scheme=='https' and original.hostname=='107.150.7.124'
   cp=dependencies(cache)
   opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),NoRedirect())
   device=secrets.token_hex(32);key=secrets.token_hex(32);base='https://gaozy.tech/api/v1/guest/'
   def request(path,body=None):
    req=urllib.request.Request(base+path,data=None if body is None else json.dumps(body).encode(),headers={'Content-Type':'application/json','User-Agent':'Qinglian/AndroidPathCheck','Authorization':'Bearer '+(config['clientToken'] if path=='start' else key),'X-Qinglian-Device':device})
    with opener.open(req,timeout=12) as response:return json.load(response)
   phase='guest-start';value=request('start',{'requestId':str(uuid.uuid4()),'sessionKey':key});started=True
   assert re_id(value.get('id',''))
   phase='guest-profile';profile=None
   for _ in range(40):
    profile=request('profile',{'labHy2':True})
    if profile.get('ready'):break
    time.sleep(.5)
   assert profile and profile.get('ready')
   def transfer(node,hy2):
    assert node['add']==original.hostname
    processes=[];http=port()
    result={'protocol':'hysteria2' if hy2 else node.get('protocol'),'port':node['port'],'ready':True}
    if not hy2:
     try:
      with socket.create_connection((node['add'],int(node['port'])),5):result['tcpReachable']=True
     except OSError:result['tcpReachable']=False
    try:
     if hy2:
      hy={'server':node['add']+':'+str(node['port']),'auth':node['auth'],'tls':{'sni':node.get('sni',node['add']),'ca':str(ca),'insecure':False},'lazy':True,'socks5':{'listen':'127.0.0.1:10810'},'congestion':{'type':'bbr','bbrProfile':'aggressive'},'quic':{'initStreamReceiveWindow':8388608,'maxStreamReceiveWindow':33554432,'initConnReceiveWindow':16777216,'maxConnReceiveWindow':67108864,'disablePathMTUDiscovery':True,'keepAlivePeriod':'10s','maxIdleTimeout':'30s'}}
      path=root/'hy.json';path.write_text(json.dumps(hy));processes.append(subprocess.Popen([str(cache/'hysteria'),'client','-c',str(path),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL))
     p=subprocess.run(['java','-cp',cp,'NodeConfigCli'],input=json.dumps(node).encode(),capture_output=True,check=True);core=json.loads(p.stdout)
     for inbound in core['inbounds']:inbound['port']=http if inbound['protocol']=='http' else port()
     path=root/'core.json';path.write_text(json.dumps(core));processes.append(subprocess.Popen([str(cache/'v2ray'),'run','-c',str(path)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL))
     for _ in range(100):
      if any(p.poll() is not None for p in processes):raise RuntimeError('fixture core stopped')
      try:
       with socket.create_connection(('127.0.0.1',http),.1):break
      except OSError:time.sleep(.05)
     else:raise RuntimeError('fixture core not ready')
     # Original private CA and original server endpoint: CDN traffic cannot be
     # mistaken for VPN throughput. 256KiB per channel, guest quota still metered.
     headers='header = "Authorization: Bearer '+key+'"\nheader = "X-Qinglian-Device: '+device+'"\n'
     url=urllib.parse.urljoin(config['url'],'guest/speed?bytes=262144')
     p=subprocess.run(['curl','-fsS','--max-time','20','--noproxy','','--proxy','http://127.0.0.1:'+str(http),'--cacert',str(ca),'--config','-','--output',os.devnull,'--write-out','%{http_code} %{size_download}',url],input=headers.encode(),capture_output=True,timeout=23)
     result['transferVerified']=p.returncode==0 and p.stdout.decode().strip()=='200 262144';result['curlCode']=p.returncode
    except Exception as error:result['transferVerified']=False;result['errorType']=type(error).__name__
    finally:
     for process in reversed(processes):
      process.terminate()
      try:process.wait(timeout=5)
      except subprocess.TimeoutExpired:process.kill();process.wait(timeout=5)
    return result
   phase='compatibility-transfer';results['compatibility']=transfer(profile['node'],False)
   acceleration=profile.get('acceleration')
   if acceleration:
    phase='acceleration-transfer';node=acceleration['node'];node['compatibility']=profile['node'];results['acceleration']=transfer(node,True)
   else:results['acceleration']={'ready':False,'transferVerified':False}
   phase='guest-quota';quota=request('quota');results['quotaValid']=quota.get('limitBytes')==64*1024**3 and quota.get('domainHistory') is False
  except Exception as error:results['error']={'phase':phase,'errorType':type(error).__name__,'httpStatus':error.code if isinstance(error,urllib.error.HTTPError) else None}
  finally:
   if started:
    try:request('stop',{});stopped=True
    except Exception:pass
  results['testGuestStopped']=stopped;results['credentialsOrPayloadLogged']=False
  print(json.dumps(results))
  return 0 if results.get('compatibility',{}).get('transferVerified') and results.get('acceleration',{}).get('transferVerified') and stopped else 1

def re_id(value):
 import re
 return re.fullmatch('[0-9a-f]{32}',value)
if __name__=='__main__':raise SystemExit(main())
