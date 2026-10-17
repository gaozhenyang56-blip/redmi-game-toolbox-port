#!/usr/bin/env python3
"""Read-only real VMess probe; private profile/config never enter logs or artifacts."""
import hashlib,json,os,socket,ssl,subprocess,sys,tempfile,time,urllib.request,zipfile
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'github'))
from ssh_common import connection,remote_json
os.umask(0o077)
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
  with opener.open(urllib.request.Request(url,headers={'Authorization':'Bearer '+settings['token']}),timeout=15) as response:n=json.load(response)['node']
  archive=root/'core.zip'
  with urllib.request.urlopen('https://github.com/v2fly/v2ray-core/releases/download/v5.54.2/v2ray-linux-64.zip',timeout=90) as response:archive.write_bytes(response.read())
  assert hashlib.sha256(archive.read_bytes()).hexdigest()=='595f22e9f56936c8f4c471b3e81a9fe35d356dae9342fd71d1caf8dc99ac8378'
  with zipfile.ZipFile(archive) as z:(root/'v2ray').write_bytes(z.read('v2ray'))
  (root/'v2ray').chmod(0o700)
  with socket.socket() as sock:sock.bind(('127.0.0.1',0));port=sock.getsockname()[1]
  request={'method':'GET','path':[n.get('path') or '/']}
  if n.get('host'):request['headers']={'Host':[n['host']]}
  config={'log':{'loglevel':'none'},'inbounds':[{'listen':'127.0.0.1','port':port,'protocol':'http','settings':{}}],
   'outbounds':[{'tag':'proxy','protocol':'vmess','settings':{'vnext':[{'address':n['add'],'port':n['port'],'users':[{'id':n['id'],'alterId':n.get('aid',0),'security':'auto'}]}]},
    'streamSettings':{'network':'tcp','security':'none','tcpSettings':{'header':{'type':'http','request':request}}}}]}
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
   result=subprocess.run(args+['--output',str(root/'download'),'https://speed.cloudflare.com/__down?bytes=1048576'],capture_output=True,timeout=45)
   assert result.returncode==0 and (root/'download').stat().st_size==1048576,'VMess download failed'
   print(json.dumps({'vmessHttps204':True,'requestMilliseconds':elapsed,'proxiedDownloadBytes':1048576,'directFallback':False}))
  finally:
   core.terminate()
   try:core.wait(timeout=5)
   except subprocess.TimeoutExpired:core.kill();core.wait()
except Exception as error:
 print('Real-node probe failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
