"""Deploy through Actions Secrets and the existing pinned SSH host key."""
import hashlib,json,os,sys,urllib.request
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
    remote_json(client,"from pathlib import Path;import json;p=Path('/opt/server-hub-update');p.mkdir(mode=0o700,exist_ok=True);(p/'static').mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
    with client.open_sftp() as sftp:
        for name in ('app.py','collector.py','server_install.py','static/index.html','static/style.css','static/app.js'):
            destination='/opt/server-hub-update/'+name;sftp.put(str(Path(__file__).parent/name),destination);sftp.chmod(destination,0o600)
        sftp.put(os.environ['QINGLIAN_SERVER_BINARY'],'/opt/server-hub-update/x-ui');sftp.chmod('/opt/server-hub-update/x-ui',0o700)
    expected=hashlib.sha256(Path(os.environ['QINGLIAN_SERVER_BINARY']).read_bytes()).hexdigest()
    result=remote_json(client,'EXPECTED_SHA='+repr(expected)+'\n'+Path(__file__).with_name('routing_install.py').read_text(),timeout=300)
    print('SERVER_HUB_ROUTING='+json.dumps(result),flush=True)
    if not result.get('ok'):raise SystemExit(1)
# Verify the external CDN/HTTPS route as well as the origin checks above.
for path,ctype in (('/panel/','text/html'),('/panel/app.js','text/javascript'),('/panel/style.css','text/css')):
    with urllib.request.urlopen('https://gaozy.tech'+path,timeout=20) as response:
        assert response.status==200 and ctype in response.headers['Content-Type']
        assert len(response.read())>100
print('Public HTTPS page and assets verified with certificate validation.')
