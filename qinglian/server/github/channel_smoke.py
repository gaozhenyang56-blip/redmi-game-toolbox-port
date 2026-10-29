#!/usr/bin/env python3
"""Bounded real guest TCP/Mux + double-HY2 smoke; one quota, no real users touched."""
import hashlib,json,os,re,secrets,socket,ssl,subprocess,tempfile,time,urllib.request,zipfile,uuid
from pathlib import Path
from ssh_common import connection,remote_json
os.umask(0o077)
PROJECT=Path(__file__).resolve().parents[2]
PINS={
 'json.jar':('https://repo.maven.apache.org/maven2/org/json/json/20240303/json-20240303.jar','3cf6cd6892e32e2b4c1c39e0f52f5248a2f5b37646fdfbb79a66b46b618414ed'),
 'v2ray.zip':('https://github.com/v2fly/v2ray-core/releases/download/v5.54.2/v2ray-linux-64.zip','595f22e9f56936c8f4c471b3e81a9fe35d356dae9342fd71d1caf8dc99ac8378'),
 'hysteria':('https://github.com/apernet/hysteria/releases/download/app%2Fv2.13.0/hysteria-linux-amd64','907ba8c9693edb104b20582681fb7dc15639d5b64a9cbb616a7b539190a86691')}
def dependencies(root):
 root.mkdir(parents=True,exist_ok=True)
 for name,(url,sha) in PINS.items():
  path=root/name
  if not path.exists() or hashlib.sha256(path.read_bytes()).hexdigest()!=sha:
   with urllib.request.urlopen(url,timeout=90) as response:path.write_bytes(response.read())
  assert hashlib.sha256(path.read_bytes()).hexdigest()==sha
 with zipfile.ZipFile(root/'v2ray.zip') as z:(root/'v2ray').write_bytes(z.read('v2ray'))
 for name in ['v2ray','hysteria']:(root/name).chmod(0o700)
 classes=root/'classes';classes.mkdir(exist_ok=True)
 subprocess.run(['javac','-cp',str(root/'json.jar'),'-d',str(classes),str(PROJECT/'app/src/main/java/com/gzy/qinglian/NodeConfig.java'),str(PROJECT/'server/NodeConfigCli.java')],check=True)
 return str(root/'json.jar')+':'+str(classes)
def port():
 with socket.socket() as s:s.bind(('127.0.0.1',0));return s.getsockname()[1]
def main():
 with connection() as ssh,tempfile.TemporaryDirectory() as d:
  root=Path(d);cache=Path(os.environ.get('QINGLIAN_TEST_CACHE',str(root/'cache')));cp=dependencies(cache)
  cfg=remote_json(ssh,"import json;from pathlib import Path;c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());print(json.dumps({'host':c['serverAddress'],'port':c['tls']['port'],'statePath':c['statePath'],'clientToken':c['clientToken']}))")
  ca=root/'ca.pem'
  with ssh.open_sftp() as s:s.get('/etc/x-ui/qinglian/ca.pem',str(ca))
  opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=ssl.create_default_context(cafile=str(ca))))
  base='https://'+cfg['host']+':'+str(cfg['port'])+'/api/v1/guest/';device=secrets.token_hex(32);key=secrets.token_hex(32);expected=0
  def request(path,body=None):
   req=urllib.request.Request(base+path,data=None if body is None else json.dumps(body).encode(),headers={'Content-Type':'application/json','Authorization':'Bearer '+(cfg['clientToken'] if path=='start' else key),'X-Qinglian-Device':device})
   with opener.open(req,timeout=8) as response:return json.load(response)
  def profile(protocol):
   for _ in range(30):
    value=request('profile',{'tcpProtocol':protocol,'labHy2':True})
    if value.get('ready'):return value
    time.sleep(.5)
   raise RuntimeError('fixture workers not ready')
  def transfer(node,multi=False,reuse=False):
   nonlocal expected
   processes=[];http=port();api=port()
   try:
    if multi:
     for lane in range(2):
      hy={'server':node['add']+':'+str(node['port']),'auth':node['auth'],'tls':{'sni':node.get('sni',node['add']),'ca':str(ca),'insecure':False},'lazy':True,'socks5':{'listen':'127.0.0.1:'+str(10810+lane)},'congestion':{'type':'bbr','bbrProfile':'aggressive'},'quic':{'initStreamReceiveWindow':8388608,'maxStreamReceiveWindow':33554432,'initConnReceiveWindow':16777216,'maxConnReceiveWindow':67108864,'disablePathMTUDiscovery':True,'keepAlivePeriod':'10s','maxIdleTimeout':'30s'}}
      path=root/('hy'+str(lane)+'.json');path.write_text(json.dumps(hy));processes.append(subprocess.Popen([str(cache/'hysteria'),'client','-c',str(path),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL))
    result=subprocess.run(['java','-cp',cp,'NodeConfigCli']+(['two-hy2'] if multi else [])+(['mux'] if reuse else []),input=json.dumps(node).encode(),capture_output=True,check=True);config=json.loads(result.stdout)
    for inbound in config['inbounds']:inbound['port']=http if inbound['protocol']=='http' else port()
    config['api']={'tag':'api','services':['StatsService']};config['inbounds'].append({'tag':'api-in','listen':'127.0.0.1','port':api,'protocol':'dokodemo-door','settings':{'address':'127.0.0.1'}});config['routing']['rules'].insert(0,{'type':'field','inboundTag':['api-in'],'outboundTag':'api'})
    path=root/'core.json';path.write_text(json.dumps(config));processes.append(subprocess.Popen([str(cache/'v2ray'),'run','-c',str(path)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL))
    for _ in range(100):
     assert all(p.poll() is None for p in processes),'native client startup failed'
     try:
      with socket.create_connection(('127.0.0.1',http),.1):break
     except OSError:time.sleep(.05)
    else:raise RuntimeError('native startup timeout')
    for _ in range(24 if multi else 2):
     size=65536 if multi else 262144
     headers='header = "Authorization: Bearer '+key+'"\nheader = "X-Qinglian-Device: '+device+'"\n'
     result=subprocess.run(['curl','-fsS','--max-time','10','--noproxy','','--proxy','http://127.0.0.1:'+str(http),'--cacert',str(ca),'--config','-','--output',os.devnull,'--write-out','%{http_code} %{size_download}',base+'speed?bytes='+str(size)],input=headers.encode(),capture_output=True,timeout=12)
     assert result.returncode==0 and result.stdout.decode().strip()=='200 '+str(size),'strict proxy transfer failed'
     expected+=size
    if multi:
     result=subprocess.run([str(cache/'v2ray'),'api','stats','--server=127.0.0.1:'+str(api),'-json','outbound'],capture_output=True,text=True,check=True)
     stats={x['name']:int(x.get('value',0)) for x in json.loads(result.stdout)['stat']}
     for tag in ['proxy','hy2-lane-1']:assert stats.get('outbound>>>'+tag+'>>>traffic>>>downlink',0)>0,'unused HY2 lane'
   finally:
    for p in reversed(processes):p.terminate();p.wait(timeout=5)
  try:
   started=request('start',{'requestId':str(uuid.uuid4()),'sessionKey':key});ident=started['id'];assert re.fullmatch('[0-9a-f]{32}',ident)
   for protocol in ['vless','trojan']:
    value=profile(protocol);assert value['tcpProtocol']==protocol and value['node']['protocol']==protocol and value['node']['tls']=='tls'
    transfer(value['node'],reuse=protocol=='vless');print('PASS public '+protocol+' TLS / original CA / metered guest'+(' / Mux' if protocol=='vless' else ''))
   value=profile('trojan');assert value['labHy2'] and value['acceleration']['node']['hy2Performance']=='aggressive-v1'
   node=value['acceleration']['node'];node['compatibility']=value['node'];transfer(node,multi=True)
   for _ in range(30):
    quota=request('quota');assert quota['limitBytes']==64*1024**3 and not quota['domainHistory']
    if quota['usedBytes']>=expected:break
    time.sleep(.5)
   else:raise AssertionError('guest native meter did not catch up')
   assert quota['remainingBytes']==quota['limitBytes']-quota['usedBytes']
   print('PASS public two independent HY2 connections / both App balancer lanes / same guest 64GiB combined meter / no domain history')
  finally:
   try:request('stop',{})
   finally:
    script='STATE='+repr(cfg['statePath'])+'\nDEVICE='+repr(device)+'\n'+'''import sqlite3,json,time
with sqlite3.connect(STATE) as db:
 ids=[r[0] for r in db.execute('SELECT user_id FROM guest_sessions WHERE device=?',(DEVICE,))]
 for u in ids:db.execute("UPDATE exports SET status='revoked' WHERE user_id=? AND kind='guest'",(u,))
time.sleep(3)
with sqlite3.connect(STATE) as db:
 for u in ids:
  for table in ['history','api_sessions','device_registrations','guest_sessions','exports']:db.execute('DELETE FROM '+table+' WHERE user_id=?',(u,))
  db.execute('DELETE FROM api_users WHERE id=?',(u,))
print(json.dumps({'fixtureCleaned':True}))'''
    assert remote_json(ssh,script,timeout=20)['fixtureCleaned']
if __name__=='__main__':
 try:main()
 except Exception as error:
  trace=error.__traceback__;line=0
  while trace is not None:
   if trace.tb_frame.f_code.co_filename==__file__:line=trace.tb_lineno
   trace=trace.tb_next
  print('Channel verification stopped:',type(error).__name__,'sourceLine='+str(line),'; private details suppressed.');raise SystemExit(1)
