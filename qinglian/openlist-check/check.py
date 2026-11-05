import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
 remote_json(client,"from pathlib import Path;import json;Path('/opt/openlist-astrbot/share-fix-update').mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
 with client.open_sftp() as sftp:
  for name in ['share_page.py','apply_share_fix.py']:
   dst='/opt/openlist-astrbot/share-fix-update/'+name;sftp.put(str(Path(__file__).with_name(name)),dst);sftp.chmod(dst,0o600)
 result=remote_json(client,Path(__file__).with_name('apply_share_fix.py').read_text(),timeout=180)
 print('BAIDU_SHARE_FIX='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
