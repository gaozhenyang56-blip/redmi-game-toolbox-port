import hashlib,json,sys,tempfile,urllib.request
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
URL='https://github.com/OpenListTeam/OpenList/releases/download/v4.2.9/openlist-linux-amd64.tar.gz'
SHA='1f41b64c61f66bc632490a0e17ee8769454fe093f03a68d22ffb4aa8a9b23187'
with tempfile.TemporaryDirectory() as temp:
 archive=Path(temp)/'release.tar.gz'
 with urllib.request.urlopen(URL,timeout=120) as response,open(archive,'wb') as dst:
  import shutil;shutil.copyfileobj(response,dst)
 assert hashlib.sha256(archive.read_bytes()).hexdigest()==SHA,'Invalid release archive'
 with connection() as client:
  remote_json(client,"from pathlib import Path;import json;Path('/opt/openlist-astrbot').mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
  with client.open_sftp() as sftp:sftp.put(str(archive),'/opt/openlist-astrbot/release.tar.gz');sftp.chmod('/opt/openlist-astrbot/release.tar.gz',0o600)
  result=remote_json(client,Path(__file__).with_name('server_apply.py').read_text(),timeout=240)
  print('OPENLIST_DEPLOY='+json.dumps(result),flush=True)
  if not result.get('ok'):raise SystemExit(1)
