import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
root=Path(__file__).parent
with connection() as client:
 client.exec_command('mkdir -p /root/dsh-control-upload && chmod 700 /root/dsh-control-upload')[1].channel.recv_exit_status()
 with client.open_sftp() as sftp:
  for name in ('app.py','helper.py','index.html','app.js','style.css','proxy_method.txt'):sftp.put(str(root/name),'/root/dsh-control-upload/'+name)
 try:
  result=remote_json(client,(root/'install.py').read_text(),timeout=300)
  print(json.dumps(result),flush=True)
  if not result.get('ok'):raise SystemExit(1)
 finally:client.exec_command('rm -rf /root/dsh-control-upload')[1].channel.recv_exit_status()
