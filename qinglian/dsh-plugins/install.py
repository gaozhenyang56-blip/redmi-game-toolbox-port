import hashlib,json,os,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
package=Path(os.environ['RUNNER_TEMP'])/'dsh-purge-1.1.71.tgz'
script=Path(__file__).with_name('install-server.py').read_text()
with connection() as client:
 with client.open_sftp() as sftp:
  sftp.put(str(package),'/root/dsh-purge-install.tgz');sftp.chmod('/root/dsh-purge-install.tgz',0o600)
 result=remote_json(client,'EXPECTED_SHA='+repr(hashlib.sha256(package.read_bytes()).hexdigest())+'\n'+script,timeout=300)
 print(json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
 with client.open_sftp() as sftp:sftp.remove('/root/dsh-purge-install.tgz')
