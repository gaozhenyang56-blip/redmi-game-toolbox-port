"""Inspect or adjust the video parser through the pinned server SSH connection."""
import json,os,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,pathlib,re
root=pathlib.Path('/opt/astrbot/data/plugins/astrbot_plugin_hellotik_video')
private=re.compile(r'cookie|token|secret|password|api_key|authorization',re.I)
files=[]
for filename,start,end in [('client.py',350,450),('quality.py',1,140),('main.py',60,146)]:
 path=root/filename;lines=path.read_text().splitlines()
 files.append({'path':filename,'lines':[{'number':i+1,'code':'[private-setting line omitted]' if private.search(lines[i]) else lines[i]} for i in range(start-1,min(len(lines),end))]})
print(json.dumps({'source':files}))
'''
with connection() as client:print('VIDEO_SIZE_INSPECT='+json.dumps(remote_json(client,SCRIPT)),flush=True)
