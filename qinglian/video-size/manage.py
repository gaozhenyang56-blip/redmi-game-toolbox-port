"""Inspect or adjust the video parser through the pinned server SSH connection."""
import json,os,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,pathlib,re
root=pathlib.Path('/opt/astrbot/data/plugins/astrbot_plugin_hellotik_video')
pattern=re.compile(r'max.{0,16}(?:size|mb)|size.{0,16}limit|大小|过大|上传|content.length|file_size',re.I)
private=re.compile(r'cookie|token|secret|password|api_key|authorization',re.I)
files=[]
for path in sorted(root.rglob('*.py')):
 if any(p in ('__pycache__','.git','venv','.venv') for p in path.parts):continue
 lines=path.read_text(errors='replace').splitlines();indexes=set()
 for i,line in enumerate(lines):
  if pattern.search(line):indexes.update(range(max(0,i-2),min(len(lines),i+3)))
 if indexes:files.append({'path':str(path.relative_to(root)),'lines':[{'number':i+1,'code':'[private-setting line omitted]' if private.search(lines[i]) else lines[i][:400]} for i in sorted(indexes)][:160]})
settings={}
config=pathlib.Path('/opt/astrbot/data/config/astrbot_plugin_hellotik_video_config.json')
if config.exists():
 obj=json.loads(config.read_text(encoding='utf-8-sig'))
 def walk(value,prefix=''):
  if isinstance(value,dict):
   for key,item in value.items():
    name=prefix+str(key)
    if pattern.search(name) and isinstance(item,(int,float,bool)):settings[name]=item
    walk(item,name+'.')
 walk(obj)
schema=root/'_conf_schema.json'
schema_entries={}
if schema.exists():
 obj=json.loads(schema.read_text())
 for key,item in obj.items():
  if pattern.search(key+' '+json.dumps(item,ensure_ascii=False)) and not private.search(key):schema_entries[key]=item
print(json.dumps({'plugin':root.name,'size_settings':settings,'schema_entries':schema_entries,'source_matches':files}))
'''
with connection() as client:print('VIDEO_SIZE_INSPECT='+json.dumps(remote_json(client,SCRIPT)),flush=True)
