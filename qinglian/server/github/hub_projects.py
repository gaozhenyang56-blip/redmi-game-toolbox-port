"""Update only the hub collector through the existing pinned SSH connection."""
import hashlib,json,sys
from pathlib import Path
from ssh_common import connection,remote_json
SCRIPT=r'''
import hashlib,http.client,json,os,shutil,subprocess,tempfile,time
from pathlib import Path

def run(*args):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=45).stdout.strip()
def signature(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()
def api(path,body=None,cookie=None):
 c=http.client.HTTPConnection('127.0.0.1',9178,timeout=10);headers={'Content-Type':'application/json'}
 if cookie:headers['Cookie']=cookie
 c.request('POST' if body is not None else 'GET','/panel'+path,body=json.dumps(body) if body is not None else None,headers=headers)
 r=c.getresponse();result=(r.status,dict(r.getheaders()),r.read());c.close();return result

changed=False;timer_stopped=False;backup=None
try:
 target=Path('/opt/server-hub/collector.py');staged=Path('/opt/server-hub-update/collector-projects.py')
 assert signature(staged)==EXPECTED_SHA
 units=['dsh','x-ui','server-hub','astrbot','napcat-login','openlist-astrbot','openlist-progress','qinglian-exports','qinglian-hy2','qinglian-remote']
 identities={name:run('systemctl','show',name,'--property=MainPID,ActiveEnterTimestampMonotonic') for name in units}
 assert run('systemctl','is-active','dsh')=='active'
 assert run('systemctl','is-active','server-hub-collector.timer')=='active'
 private_paths=['/etc/x-ui/qinglian.json','/var/lib/server-hub/config.json','/var/lib/server-hub/auth.json','/var/lib/server-hub/session-key']
 signatures={path:signature(path) for path in private_paths}
 status_path=Path('/var/lib/server-hub/status.json');before_ids={p['id'] for p in json.loads(status_path.read_text())['projects']}
 backup=Path(tempfile.mkdtemp(prefix='server-hub-projects-',dir='/root'));backup.chmod(0o700)
 shutil.copy2(target,backup/'collector.py')
 run('systemctl','stop','server-hub-collector.timer');timer_stopped=True
 # Wait for any existing collection to finish before replacing or sampling.
 for attempt in range(45):
  state=run('systemctl','show','server-hub-collector.service','--property=ActiveState','--value')
  if state not in ('activating','active','deactivating'):break
  if attempt==44:raise TimeoutError()
  time.sleep(1)
 replacement=target.with_suffix('.projects-new');shutil.copyfile(staged,replacement);replacement.chmod(0o644);os.replace(replacement,target);changed=True
 run('systemctl','start','server-hub-collector.service')
 private=json.loads(Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'))
 code,headers,body=api('/api/login',{'username':private['openlist_user'],'password':private['openlist_pass']});assert code==200 and json.loads(body)['ok']
 cookie=headers['Set-Cookie'].split(';')[0]
 code,_,body=api('/api/status',cookie=cookie);assert code==200
 status=json.loads(body);assert not status['stale']
 dsh=next(p for p in status['projects'] if p['id']=='dsh.service')
 assert dsh['name']=='DeepSeek Harness' and dsh['url']=='https://gaozy.tech/dsh'
 assert dsh['status']=='healthy' and dsh['auth_required'] and dsh['http_status']==401
 assert (3080,'tcp','local') in [tuple(p) for p in dsh['ports']]
 assert before_ids<={p['id'] for p in status['projects']}
 assert api('/api/logout',{},cookie)[0]==200
 assert api('/api/status')[0]==401
 assert all(signature(path)==value for path,value in signatures.items())
 assert all(run('systemctl','show',name,'--property=MainPID,ActiveEnterTimestampMonotonic')==identity for name,identity in identities.items())
 run('systemctl','start','server-hub-collector.timer');timer_stopped=False
 print(json.dumps({'ok':True,'project':dsh['name'],'url':dsh['url'],'status':dsh['status'],'authentication_required':dsh['auth_required'],'memory_bytes':dsh['memory_bytes'],'latency_ms':dsh['latency_ms'],'project_count':len(status['projects']),'existing_projects_preserved':True,'service_processes_unchanged':True,'private_configuration_unchanged':True,'backup':str(backup)}))
except Exception as error:
 restored=False
 if changed:
  try:
   shutil.copy2(backup/'collector.py','/opt/server-hub/collector.py');run('systemctl','start','server-hub-collector.service');restored=True
  except Exception:pass
 if timer_stopped:
  try:run('systemctl','start','server-hub-collector.timer')
  except Exception:pass
 print(json.dumps({'ok':False,'rolled_back':restored,'error_type':type(error).__name__,'line':__import__('traceback').extract_tb(error.__traceback__)[-1].lineno}))
'''
source=Path(__file__).resolve().parents[2]/'server-hub/collector.py'
expected=hashlib.sha256(source.read_bytes()).hexdigest()
with connection() as client:
 with client.open_sftp() as sftp:
  sftp.put(str(source),'/opt/server-hub-update/collector-projects.py');sftp.chmod('/opt/server-hub-update/collector-projects.py',0o600)
 result=remote_json(client,'EXPECTED_SHA='+repr(expected)+'\n'+SCRIPT,timeout=150)
 print('HUB_PROJECTS='+json.dumps(result),flush=True)
 if not result.get('ok'):sys.exit(1)
