"""Start the existing DSH installation and verify its authenticated transports."""
import base64,http.client,http.cookiejar,json,os,subprocess,time,traceback,urllib.request
from pathlib import Path

def run(*args,check=True):return subprocess.run(args,check=check,capture_output=True,text=True,timeout=60).stdout.strip()
try:
 assert os.geteuid()==0
 assert 'User=dsh' in run('systemctl','show','dsh.service','--property=User')
 protected=['x-ui','astrbot','qinglian-exports','server-hub']
 identities={u:run('systemctl','show',u,'--property=MainPID,ActiveEnterTimestampMonotonic',check=False) for u in protected}
 run('systemctl','enable','--now','dsh.service')
 state=None
 for attempt in range(90):
  try:
   launch=Path('/var/lib/dsh/entry-url.txt').read_text().strip()
   jar=http.cookiejar.CookieJar();opener=urllib.request.build_opener(urllib.request.HTTPCookieProcessor(jar))
   with opener.open(urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'}),timeout=5) as r:assert r.status==200
   with opener.open(urllib.request.Request('http://127.0.0.1:3080/dsh-purge/status',headers={'Host':'gaozy.tech'}),timeout=15) as r:state=json.load(r)
   assert state.get('ok') and state.get('ready')
   cookie='; '.join(c.name+'='+c.value for c in jar)
   websocket=http.client.HTTPConnection('127.0.0.1',3080,timeout=8)
   websocket.request('GET','/api/remote.mux',headers={'Host':'gaozy.tech','Origin':'https://gaozy.tech','Cookie':cookie,
    'Upgrade':'websocket','Connection':'Upgrade','Sec-WebSocket-Version':'13','Sec-WebSocket-Key':base64.b64encode(os.urandom(16)).decode()})
   response=websocket.getresponse();assert response.status==101;websocket.close()
   break
  except Exception:
   if attempt==89:raise
   time.sleep(2)
 active=run('systemctl','is-active','dsh.service');enabled=run('systemctl','is-enabled','dsh.service')
 assert active=='active' and enabled=='enabled'
 unchanged=all(run('systemctl','show',u,'--property=MainPID,ActiveEnterTimestampMonotonic',check=False)==v for u,v in identities.items())
 print(json.dumps({'ok':True,'mainServiceState':active,'startupEnabled':enabled=='enabled','authenticatedWebUiVerified':True,
  'websocketUpgradeVerified':True,'pluginReady':state.get('ready'),'pluginVersion':state.get('plugin_version'),
  'appliedPatchGroups':state.get('patches_applied'),'pendingPatchGroups':state.get('patches_pending'),
  'otherApplicationServicesUnchanged':unchanged}))
except Exception as e:
 print(json.dumps({'ok':False,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
