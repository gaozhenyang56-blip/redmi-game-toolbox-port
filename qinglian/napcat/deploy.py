import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
base=Path(__file__).parent
with connection() as client:
    remote_json(client,"from pathlib import Path;import json;Path('/opt/napcat-login').mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
    with client.open_sftp() as sftp:
        for filename in ['portal.py','index.html','server_install.py']:
            sftp.put(str(base/filename),'/opt/napcat-login/'+filename)
            sftp.chmod('/opt/napcat-login/'+filename,0o600)
    result=remote_json(client,(base/'server_install.py').read_text(),timeout=1500)
    print('NAPCAT_DEPLOY='+json.dumps(result),flush=True)
    if not result.get('ok'):raise SystemExit(1)
