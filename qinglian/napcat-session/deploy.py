import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
    remote_json(client,"from pathlib import Path;import json;p=Path('/opt/napcat-login/session-update');p.mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
    with client.open_sftp() as sftp:
        for filename in ['portal.py','index.html','server_apply.py','prepare_music.py']:
            destination='/opt/napcat-login/session-update/'+filename
            sftp.put(str(Path(__file__).with_name(filename)),destination)
            sftp.chmod(destination,0o600)
    media=remote_json(client,Path(__file__).with_name('prepare_music.py').read_text(),timeout=240)
    print('NAPCAT_MEDIA='+json.dumps(media,ensure_ascii=False),flush=True)
    if not media.get('ok'):raise SystemExit(1)
    result=remote_json(client,Path(__file__).with_name('server_apply.py').read_text(),timeout=240)
    print('NAPCAT_SESSION='+json.dumps(result,ensure_ascii=False),flush=True)
    if not result.get('ok'):raise SystemExit(1)
