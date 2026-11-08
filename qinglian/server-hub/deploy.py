import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
 remote_json(client,"from pathlib import Path;import json;p=Path('/opt/server-hub-update');p.mkdir(mode=0o700,exist_ok=True);(p/'static').mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
 with client.open_sftp() as sftp:
  for name in ['app.py','collector.py','server_install.py','static/index.html','static/style.css','static/app.js']:
   destination='/opt/server-hub-update/'+name;sftp.put(str(Path(__file__).parent/name),destination);sftp.chmod(destination,0o600)
 result=remote_json(client,Path(__file__).with_name('server_install.py').read_text(),timeout=180)
 print('SERVER_HUB_DEPLOY='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
