import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection
with connection() as c:
 with c.open_sftp() as s:
  s.put(str(Path(__file__).with_name('server.py')),'/root/dsh-token-limits.py');s.chmod('/root/dsh-token-limits.py',0o600)
 _,out,err=c.exec_command('/opt/astrbot/.venv/bin/python /root/dsh-token-limits.py',timeout=240)
 data=out.read(65536);status=out.channel.recv_exit_status()
 if status:raise SystemExit('Output-limit operation failed; private details retained on server')
 result=json.loads(data);print(json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
 with c.open_sftp() as s:s.remove('/root/dsh-token-limits.py')
