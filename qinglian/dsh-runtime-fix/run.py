import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as c:
 remote_json(c,"from pathlib import Path;import json;p=Path('/var/lib/dsh/prompt-compat-check');p.mkdir(mode=0o755,exist_ok=True);print(json.dumps({'ok':True}))")
 with c.open_sftp() as s:
  for name in ('server.py','compat.py','check.mjs'):
   s.put(str(Path(__file__).with_name(name)),'/var/lib/dsh/prompt-compat-check/'+name);s.chmod('/var/lib/dsh/prompt-compat-check/'+name,0o644)
 _,out,err=c.exec_command('python3 /var/lib/dsh/prompt-compat-check/server.py',timeout=240)
 data=out.read(65536);status=out.channel.recv_exit_status()
 if status:raise SystemExit('Runtime compatibility repair failed; private stderr withheld')
 result=json.loads(data);print(json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
