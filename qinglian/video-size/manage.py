"""Inspect or adjust the video parser through the pinned server SSH connection."""
import json,os,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,pathlib,re,subprocess
root=pathlib.Path('/opt/astrbot/data/plugins');plugins=[]
for folder in sorted(root.iterdir()):
 if not folder.is_dir() or folder.name.startswith(('.', '__')):continue
 item={'directory':folder.name}
 metadata=folder/'metadata.yaml'
 if metadata.exists():
  text=metadata.read_text(errors='replace')
  for key in ('name','desc','description'):
   match=re.search(r'^'+key+r':\s*(.+)$',text,re.M)
   if match:item[key]=match[1].strip()[:180]
 plugins.append(item)
print(json.dumps({'plugins':plugins,'astrbot_active':subprocess.run(['systemctl','is-active','astrbot'],capture_output=True,text=True).stdout.strip()}))
'''
with connection() as client:print('VIDEO_SIZE_INSPECT='+json.dumps(remote_json(client,SCRIPT)),flush=True)
