import hashlib,json,os,sys,time
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection,remote_json
root=Path(__file__).resolve().parent;temp=Path(os.environ['RUNNER_TEMP'])
files={name:root/name for name in ('server_install.py','launch.py','dsh.service','login.sealed')}
files.update({'node.tar.xz':temp/'node.tar.xz','runtime.tar.gz':temp/'runtime.tar.gz','x-ui':temp/'qinglian-x-ui'})
manifest={name:hashlib.sha256(p.read_bytes()).hexdigest() for name,p in files.items()}
with connection() as client:
 remote_json(client,"import json;from pathlib import Path;p=Path('/opt/dsh-update');p.mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
 with client.open_sftp() as sftp:
  for name,local in files.items():
   print('Transferring',name,flush=True);sftp.put(str(local),'/opt/dsh-update/'+name);sftp.chmod('/opt/dsh-update/'+name,0o600)
  with sftp.open('/opt/dsh-update/manifest.json','w') as f:f.write(json.dumps(manifest))
  sftp.chmod('/opt/dsh-update/manifest.json',0o600)
 result=remote_json(client,(root/'server_install.py').read_text(),timeout=600)
 print('DSH_DEPLOYMENT='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
 # Remove only the known upload files; retain the private rollback directory.
 with client.open_sftp() as sftp:
  for name in [*files,'manifest.json']:sftp.remove('/opt/dsh-update/'+name)
  sftp.rmdir('/opt/dsh-update')
