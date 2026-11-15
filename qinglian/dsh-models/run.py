import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection
with connection() as client:
 with client.open_sftp() as sftp:
  sftp.put(str(Path(__file__).with_name('server.py')),'/root/dsh-model-migration.py');sftp.chmod('/root/dsh-model-migration.py',0o600)
 _,out,err=client.exec_command('/opt/astrbot/.venv/bin/python /root/dsh-model-migration.py',timeout=300)
 data=out.read(65536);status=out.channel.recv_exit_status()
 if status:raise SystemExit('Private server migration failed; no credentials or stderr published')
 print(json.dumps(json.loads(data)),flush=True)
