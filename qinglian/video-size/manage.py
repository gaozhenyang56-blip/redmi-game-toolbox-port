import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,pathlib,re,subprocess
props=subprocess.run(['systemctl','show','astrbot','--property=MainPID,ActiveState,SubState,Result,ExecMainStatus'],capture_output=True,text=True).stdout
service=dict(line.split('=',1) for line in props.splitlines() if '=' in line)
ports=[]
for line in subprocess.run(['ss','-H','-lntp'],capture_output=True,text=True).stdout.splitlines():
 match=re.search(r'pid=(\d+)',line)
 if not match:continue
 try:cgroup=pathlib.Path('/proc/'+match[1]+'/cgroup').read_text()
 except OSError:continue
 if 'astrbot.service' in cgroup:ports.append(line.split()[3])
logs=subprocess.run(['journalctl','-u','astrbot','--since','-8min','--no-pager','-o','cat'],capture_output=True,text=True).stdout
errors=re.findall(r'\b([A-Za-z_][A-Za-z0-9_.]*(?:Error|Exception)):',logs)
flags={key:sum(key in line.lower() for line in logs.splitlines()) for key in ('hellotik','application startup complete','running on','uvicorn','traceback')}
config=pathlib.Path('/opt/astrbot/data/cmd_config.json');dashboard={}
if config.exists():
 obj=json.loads(config.read_text(encoding='utf-8-sig'));value=obj.get('dashboard',{})
 if isinstance(value,dict):dashboard={key:value.get(key) for key in ('enable','host','port')}
video=json.loads(pathlib.Path('/opt/astrbot/data/config/astrbot_plugin_hellotik_video_config.json').read_text(encoding='utf-8-sig'))
print(json.dumps({'service':service,'listening_endpoints':ports,'log_counts':flags,'exception_types':sorted(set(errors)),'dashboard':dashboard,'video_max_mb':video.get('max_video_mb')}))
'''
with connection() as client:print('VIDEO_SIZE_DIAGNOSTIC='+json.dumps(remote_json(client,SCRIPT)),flush=True)
