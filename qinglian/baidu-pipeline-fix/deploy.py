import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
 remote_json(client,"from pathlib import Path;import json;Path('/opt/openlist-astrbot/pipeline-fix-update').mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
 with client.open_sftp() as sftp:
  for name in ['fix_source.py','framework_check.py','server_apply.py']:
   dst='/opt/openlist-astrbot/pipeline-fix-update/'+name;sftp.put(str(Path(__file__).with_name(name)),dst);sftp.chmod(dst,0o600)
 result=remote_json(client,Path(__file__).with_name('server_apply.py').read_text(),timeout=90)
 print('BAIDU_PIPELINE_FIX='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
