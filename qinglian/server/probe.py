#!/usr/bin/env python3
"""Read-only real VMess probe; private profile/config never enter logs or artifacts."""
import hashlib,json,os,socket,ssl,struct,subprocess,sys,tempfile,time,urllib.request,zipfile
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'github'))
from ssh_common import connection,remote_json
os.umask(0o077)
hy2=None
try:
 with tempfile.TemporaryDirectory() as tmp:
  root=Path(tmp)
  with connection() as ssh:
   settings=remote_json(ssh,"""
import json,sqlite3
from pathlib import Path
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text())
db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True)
row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone()
print(json.dumps({'token':cfg['clientToken'],'ca':Path('/etc/x-ui/qinglian/ca.pem').read_text(),'base':row[0] if row else '/'}))
""")
  ca=root/'ca.pem';ca.write_text(settings['ca'])
  opener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=ssl.create_default_context(cafile=str(ca))))
  url='https://'+os.environ['QINGLIAN_SSH_HOST']+':11452'+settings['base']+'api/v1/profile'
  with opener.open(urllib.request.Request(url,headers={'Authorization':'Bearer '+settings['token']}),timeout=15) as response:profile=json.load(response)
  n=profile['acceleration']['node'] if os.environ.get('QINGLIAN_PROBE_CHANNEL')=='accelerated' else profile['node']
  if n.get('protocol')=='hysteria2':
   path=root/'hysteria'
   with urllib.request.urlopen('https://github.com/apernet/hysteria/releases/download/app%2Fv2.13.0/hysteria-linux-amd64',timeout=90) as response:path.write_bytes(response.read())
   assert hashlib.sha256(path.read_bytes()).hexdigest()=='907ba8c9693edb104b20582681fb7dc15639d5b64a9cbb616a7b539190a86691';path.chmod(0o700)
   hyca=root/'hy2-ca.pem';hyca.write_text(n['caPem']);hycfg=root/'hy2.json';hycfg.write_text(json.dumps({'server':n['add']+':'+str(n['port']),'auth':n['auth'],'tls':{'sni':n['sni'],'insecure':False,'ca':str(hyca)},'lazy':True,'socks5':{'listen':'127.0.0.1:10810'}}))
   hy2=subprocess.Popen([str(path),'client','-c',str(hycfg),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
   for attempt in range(50):
    try:
     with socket.create_connection(('127.0.0.1',10810),.2):break
    except OSError:time.sleep(.1)

  archive=root/'core.zip'
  with urllib.request.urlopen('https://github.com/v2fly/v2ray-core/releases/download/v5.54.2/v2ray-linux-64.zip',timeout=90) as response:archive.write_bytes(response.read())
  assert hashlib.sha256(archive.read_bytes()).hexdigest()=='595f22e9f56936c8f4c471b3e81a9fe35d356dae9342fd71d1caf8dc99ac8378'
  with zipfile.ZipFile(archive) as z:(root/'v2ray').write_bytes(z.read('v2ray'))
  (root/'v2ray').chmod(0o700)
  with socket.socket() as sock:sock.bind(('127.0.0.1',0));port=sock.getsockname()[1]
  classpath=os.environ['RUNNER_TEMP']+'/json.jar:'+os.environ['RUNNER_TEMP']+'/qinglian-config'
  converted=subprocess.run(['java','-cp',classpath,'NodeConfigCli'],input=json.dumps(n).encode(),capture_output=True,timeout=20)
  assert converted.returncode==0,'App configuration converter failed'
  config=json.loads(converted.stdout)
  for inbound in config['inbounds']:
   if inbound['protocol']=='http':inbound['port']=port
   else:
    with socket.socket() as sock:sock.bind(('127.0.0.1',0));socks_port=sock.getsockname()[1]
    inbound['port']=socks_port
  cfg=root/'config.json';cfg.write_text(json.dumps(config))
  core=subprocess.Popen([str(root/'v2ray'),'run','-c',str(cfg)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
  try:
   for attempt in range(50):
    try:
     with socket.create_connection(('127.0.0.1',port),.2):break
    except OSError:time.sleep(.1)
   args=['curl','--silent','--show-error','--fail','--noproxy','','--proxy','http://127.0.0.1:'+str(port),'--max-time','40']
   start=time.monotonic()
   result=subprocess.run(args+['--output',str(root/'latency'),'--write-out','%{http_code}','https://www.google.com/generate_204'],capture_output=True,timeout=45)
   assert result.returncode==0 and result.stdout==b'204','VMess HTTPS request failed'
   elapsed=round((time.monotonic()-start)*1000)
   download_start=time.monotonic()
   result=subprocess.run(args+['--output',str(root/'download'),'https://speed.cloudflare.com/__down?bytes=8388608'],capture_output=True,timeout=45)
   assert result.returncode==0 and (root/'download').stat().st_size==8388608,'VMess download failed'
   download_elapsed=time.monotonic()-download_start
   # App-style UDP DNS over SOCKS, twice, exercises the exact generated DNS
   # routing, VMess TCP upstream and warm cache instead of curl's local resolver.
   def read_exact(stream,count):
    data=b''
    while len(data)<count:
     part=stream.recv(count-len(data));assert part;data+=part
    return data
   service_checks=[]
   if os.environ.get('QINGLIAN_SERVICE_CHECK')=='1':
    targets=[('github-avatar','https://avatars.githubusercontent.com/u/583231?v=4'),('google-avatar','https://lh3.googleusercontent.com/a/default-user=s96-c'),('google-static','https://www.gstatic.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png'),('chatgpt','https://chatgpt.com/'),('codex','https://chatgpt.com/codex'),('openai-static','https://cdn.oaistatic.com/')]
    for label,target in targets:
     result=subprocess.run(args+['--max-time','15','--output',str(root/'service-body'),'--write-out','%{http_code} %{size_download} %{time_total} %{content_type}',target],capture_output=True,timeout=20)
     service_checks.append({'service':label,'curlExit':result.returncode,'response':result.stdout.decode(errors='replace')[:120]})
   dns_times=[]
   with socket.create_connection(('127.0.0.1',socks_port),5) as control,socket.socket(socket.AF_INET,socket.SOCK_DGRAM) as udp:
    control.settimeout(5);udp.bind(('127.0.0.1',0));udp.settimeout(12)
    control.sendall(bytes([5,1,0]));assert read_exact(control,2)==bytes([5,0])
    control.sendall(bytes([5,3,0,1,127,0,0,1])+struct.pack('!H',udp.getsockname()[1]))
    reply=read_exact(control,4);assert reply[:2]==bytes([5,0]) and reply[3]==1
    relay_host=socket.inet_ntoa(read_exact(control,4));relay_port=struct.unpack('!H',read_exact(control,2))[0]
    if relay_host=='0.0.0.0':relay_host='127.0.0.1'
    for qtype in [1,1,28]:
     query_id=1000+len(dns_times)
     name=b''.join(bytes([len(label)])+label.encode() for label in 'example.com'.split('.'))+bytes([0])
     query=struct.pack('!HHHHHH',query_id,256,1,0,0,0)+name+struct.pack('!HH',qtype,1)
     start=time.monotonic();udp.sendto(bytes([0,0,0,1,1,1,1,1,0,53])+query,(relay_host,relay_port))
     packet,_=udp.recvfrom(4096);offset=10 if packet[3]==1 else 22
     answer=packet[offset:];rid,flags,questions,answers,_,_=struct.unpack('!HHHHHH',answer[:12])
     assert rid==query_id and flags&32768 and flags&15==0,'DNS response invalid'
     assert answers>0 if qtype==1 else answers==0,'DNS IPv4 policy failed'
     dns_times.append(round((time.monotonic()-start)*1000,2))
   print(json.dumps({'proxyHttps204':True,'protocol':n.get('protocol','vmess'),'requestMilliseconds':elapsed,'proxiedDownloadBytes':8388608,'proxiedDownloadMbps':round(8388608*8/download_elapsed/1e6,2),'directFallback':False,
    'appGeneratedConfiguration':True,'udpDnsViaCore':True,'ipv6DnsNoData':True,'dnsMillisecondsColdWarmAAAA':dns_times,'serviceChecks':service_checks}))
  finally:
   core.terminate()
   try:core.wait(timeout=5)
   except subprocess.TimeoutExpired:core.kill();core.wait()
except Exception as error:
 print('Real-node probe failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)

finally:
 if hy2 is not None:
  hy2.terminate()
  try:hy2.wait(timeout=5)
  except subprocess.TimeoutExpired:hy2.kill();hy2.wait()
