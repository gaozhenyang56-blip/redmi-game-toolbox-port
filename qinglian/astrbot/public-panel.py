"""Enable the authenticated AstrBot dashboard on public TCP 6185."""
import json
import os
from pathlib import Path
import sys
import time
import urllib.error
import urllib.request

sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection,remote_json

SCRIPT=r'''
import json,os,shutil,subprocess,time,urllib.request
from pathlib import Path
path=Path('/opt/astrbot/data/cmd_config.json')
config=json.loads(path.read_text(encoding='utf-8-sig'))
dashboard=config['dashboard']
assert dashboard.get('enable'), 'Dashboard must be enabled'
assert dashboard.get('pbkdf2_password','').startswith('pbkdf2_sha256$'), 'Hashed dashboard password required'
backup=path.with_name('cmd_config.before-public.json')
if not backup.exists():
 shutil.copy2(path,backup);os.chmod(backup,0o600)
dashboard['host']='0.0.0.0';dashboard['port']=6185
subprocess.run(['systemctl','stop','astrbot'],check=True)
temporary=path.with_suffix('.json.new')
temporary.write_text(json.dumps(config,ensure_ascii=False,indent=2));os.chmod(temporary,0o600)
shutil.chown(temporary,user='astrbot',group='astrbot');temporary.replace(path)
ufw_active=False
if shutil.which('ufw'):
 status=subprocess.run(['ufw','status'],capture_output=True,text=True,timeout=10)
 ufw_active=any(line.strip()=='Status: active' for line in status.stdout.splitlines())
 if ufw_active:subprocess.run(['ufw','allow','6185/tcp','comment','AstrBot dashboard'],check=True,stdout=subprocess.DEVNULL)
subprocess.run(['systemctl','start','astrbot'],check=True)
for _ in range(60):
 try:
  with urllib.request.urlopen('http://127.0.0.1:6185/',timeout=3) as r:
   if r.status==200:break
 except Exception:pass
 time.sleep(2)
else:raise RuntimeError('Dashboard readiness failed')
def active(service):return subprocess.check_output(['systemctl','is-active',service],text=True).strip()
print(json.dumps({'bind':'0.0.0.0:6185','service':active('astrbot'),'xui':active('x-ui'),'exports':active('qinglian-exports'),'ufwRuleAdded':ufw_active}))
'''
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=180)
 print('SERVER_STATUS='+json.dumps(result),flush=True)

base='http://'+os.environ['QINGLIAN_SSH_HOST']+':6185'
for attempt in range(12):
 try:
  with urllib.request.urlopen(base+'/',timeout=10) as response:
   assert response.status==200
  break
 except Exception:
  if attempt==11:raise RuntimeError('Public dashboard not reachable from GitHub runner')
  time.sleep(5)
try:
 urllib.request.urlopen(base+'/api/v1/providers',timeout=10)
 raise RuntimeError('Protected endpoint unexpectedly allowed unauthenticated access')
except urllib.error.HTTPError as e:
 assert e.code in (401,403), 'Unexpected authentication response'
 print('PUBLIC_PANEL_VERIFIED='+json.dumps({'publicHttp':200,'unauthenticatedProviderEndpoint':e.code,'port':6185,'passwordPreserved':True}),flush=True)
