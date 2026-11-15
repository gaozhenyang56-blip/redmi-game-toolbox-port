"""Deploy through Actions Secrets using the existing pinned SSH host key."""
import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
 remote_json(client,"from pathlib import Path;import json;p=Path('/opt/astrbot-video-size-update');p.mkdir(mode=0o700,exist_ok=True);p.chmod(0o700);print(json.dumps({'ok':True}))")
 with client.open_sftp() as sftp:
  for name in ('patch.py','verify.py','apply.py'):
   target='/opt/astrbot-video-size-update/'+name;sftp.put(str(Path(__file__).with_name(name)),target);sftp.chmod(target,0o600)
 result=remote_json(client,"import runpy,sys;sys.path.insert(0,'/opt/astrbot-video-size-update');runpy.run_path('/opt/astrbot-video-size-update/apply.py',run_name='__main__')",timeout=420)
 print('VIDEO_SIZE_UPDATE='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
