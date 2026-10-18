#!/usr/bin/env python3
"""Real, isolated core tests; test-only certificates and credentials, loopback targets."""
import hashlib,json,os,socket,subprocess,tempfile,threading,time,urllib.request,zipfile
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from pathlib import Path
ROOT=Path(__file__).parents[1];CACHE=Path(os.environ.get('QINGLIAN_TEST_CACHE','/tmp/qinglian-core-tests'));CACHE.mkdir(parents=True,exist_ok=True)
def download(url,path,digest):
 if not path.exists() or hashlib.sha256(path.read_bytes()).hexdigest()!=digest:
  with urllib.request.urlopen(url,timeout=120) as r:path.write_bytes(r.read())
 assert hashlib.sha256(path.read_bytes()).hexdigest()==digest
jar=CACHE/'json.jar';download('https://repo.maven.apache.org/maven2/org/json/json/20240303/json-20240303.jar',jar,'3cf6cd6892e32e2b4c1c39e0f52f5248a2f5b37646fdfbb79a66b46b618414ed')
archive=CACHE/'v2ray.zip';download('https://github.com/v2fly/v2ray-core/releases/download/v5.54.2/v2ray-linux-64.zip',archive,'595f22e9f56936c8f4c471b3e81a9fe35d356dae9342fd71d1caf8dc99ac8378')
core=CACHE/'v2ray'
with zipfile.ZipFile(archive) as z:core.write_bytes(z.read('v2ray'))
core.chmod(0o700);classes=CACHE/'classes';classes.mkdir(exist_ok=True)
subprocess.run(['javac','-cp',str(jar),'-d',str(classes),str(ROOT/'app/src/main/java/com/gzy/qinglian/NodeConfig.java'),str(ROOT/'server/NodeConfigCli.java')],check=True)
def port():
 with socket.socket() as sock:sock.bind(('127.0.0.1',0));return sock.getsockname()[1]
def launch(config,root,name):
 path=root/(name+'.json');path.write_text(json.dumps(config));return subprocess.Popen([str(core),'run','-c',str(path)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
def wait(port,process):
 for i in range(60):
  if process.poll() is not None:raise AssertionError('core exited')
  try:
   with socket.create_connection(('127.0.0.1',port),.1):return
  except OSError:time.sleep(.05)
 raise AssertionError('core startup timeout')
class Origin(BaseHTTPRequestHandler):
 def log_message(self,*args):pass
 def do_GET(self):
  data=b'qinglian-end-to-end-protocol-matrix\n'*2048;self.send_response(200);self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data)
origin=ThreadingHTTPServer(('127.0.0.1',0),Origin);threading.Thread(target=origin.serve_forever,daemon=True).start()
fixtures=ROOT/'app/src/test/resources';uid='11111111-1111-4111-8111-111111111111';results=[]
try:
 for proto,network,tls,kind in [('vmess','tcp',False,'http'),('vmess','ws',True,'none'),('vless','tcp',False,'none'),('vless','ws',True,'none'),('trojan','tcp',True,'none'),('shadowsocks','tcp',False,'none')]:
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);server_port=port();http_port=port();socks_port=port();password='public-test-fixture-only'
   node={'protocol':proto,'add':'127.0.0.1','port':server_port,'id':uid,'password':password,'method':'chacha20-ietf-poly1305','net':network,'type':kind,'path':'/fixture','tls':'tls' if tls else 'none','sni':'127.0.0.1'}
   stream={'network':network,'security':node['tls']}
   if network=='tcp':stream['tcpSettings']={'header':{'type':kind,**({'request':{'path':['/fixture']}} if kind=='http' else {})}}
   else:stream['wsSettings']={'path':'/fixture'}
   if tls:stream['tlsSettings']={'certificates':[{'certificateFile':str(fixtures/'tls-server-cert.pem'),'keyFile':str(fixtures/'tls-server-key.pem')}]}
   if proto in ['vmess','vless']:settings={'clients':[{'id':uid,'alterId':0}]};settings.update({'decryption':'none'} if proto=='vless' else {})
   elif proto=='trojan':settings={'clients':[{'password':password}]}
   else:settings={'method':node['method'],'password':password,'network':'tcp,udp'}
   server=launch({'log':{'loglevel':'none'},'inbounds':[{'listen':'127.0.0.1','port':server_port,'protocol':proto,'settings':settings,'streamSettings':stream}],'outbounds':[{'protocol':'freedom','settings':{}}]},root,'server')
   client=None
   try:
    wait(server_port,server)
    converted=subprocess.run(['java','-cp',str(jar)+':'+str(classes),'NodeConfigCli'],input=json.dumps(node).encode(),capture_output=True,check=True)
    config=json.loads(converted.stdout)
    for inbound in config['inbounds']:inbound['port']=http_port if inbound['protocol']=='http' else socks_port
    if tls:config['outbounds'][0]['streamSettings']['tlsSettings']['certificates']=[{'usage':'verify','certificate':(fixtures/'tls-ca.pem').read_text().splitlines()}]
    client=launch(config,root,'client');wait(http_port,client)
    result=subprocess.run(['curl','-fsS','--max-time','8','--noproxy','','--proxy','http://127.0.0.1:'+str(http_port),'http://127.0.0.1:'+str(origin.server_port)],capture_output=True,timeout=10)
    assert result.returncode==0 and result.stdout==b'qinglian-end-to-end-protocol-matrix\n'*2048,proto+' end-to-end transfer failed: '+result.stderr.decode()
    results.append({'protocol':proto,'network':network,'tls':tls,'verifiedTransfer':True})
   finally:
    if client:client.terminate();client.wait(timeout=5)
    server.terminate();server.wait(timeout=5)
 # The HY2 SOCKS endpoint is intentionally absent: only matched services may pass.
 with tempfile.TemporaryDirectory() as temp:
  root=Path(temp);server_port=port();http_port=port();socks_port=port()
  compatible={'protocol':'vmess','add':'127.0.0.1','port':server_port,'id':uid,'net':'tcp','type':'none','tls':'none'}
  hybrid={'protocol':'hysteria2','add':'192.0.2.1','port':443,'auth':'public-fixture','compatibility':compatible}
  server=launch({'dns':{'hosts':{'avatars.githubusercontent.com':'127.0.0.1','chatgpt.com':'127.0.0.1'}},'log':{'loglevel':'none'},'inbounds':[{'listen':'127.0.0.1','port':server_port,'protocol':'vmess','settings':{'clients':[{'id':uid,'alterId':0}]}}],'outbounds':[{'protocol':'freedom','settings':{'domainStrategy':'UseIP'}}]},root,'hybrid-server');client=None
  try:
   wait(server_port,server)
   converted=subprocess.run(['java','-cp',str(jar)+':'+str(classes),'NodeConfigCli'],input=json.dumps(hybrid).encode(),capture_output=True,check=True)
   config=json.loads(converted.stdout)
   for inbound in config['inbounds']:inbound['port']=http_port if inbound['protocol']=='http' else socks_port
   client=launch(config,root,'hybrid-client');wait(http_port,client)
   for host,success in [('avatars.githubusercontent.com',True),('chatgpt.com',True),('ordinary.example',False)]:
    result=subprocess.run(['curl','-fsS','--max-time','3','--noproxy','','--proxy','socks5://127.0.0.1:'+str(socks_port),'-H','Host: '+host,'http://127.0.0.1:'+str(origin.server_port)],capture_output=True,timeout=5)
    assert (result.returncode==0)==success,host+' unexpected hybrid route: '+result.stderr.decode()
    if success:assert result.stdout==b'qinglian-end-to-end-protocol-matrix\n'*2048
   results.append({'protocol':'hybrid-hy2','ipDestinationSniffing':True,'compatibleServices':True,'ordinaryTrafficNeverFallsBack':True})
  finally:
   if client:client.terminate();client.wait(timeout=5)
   server.terminate();server.wait(timeout=5)
 print(json.dumps({'realCoreProtocolMatrix':results,'directFallback':False}))
finally:origin.shutdown();origin.server_close()
