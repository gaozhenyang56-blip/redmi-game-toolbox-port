import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT="""
import json,os,urllib.request
from pathlib import Path
cfg=json.loads(Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'))
credentials={'username':cfg['openlist_user'],'password':cfg['openlist_pass']}
req=urllib.request.Request('http://127.0.0.1:5244/api/auth/login',data=json.dumps(credentials).encode(),headers={'Content-Type':'application/json'})
with urllib.request.urlopen(req,timeout=20) as response:result=json.load(response)
assert result.get('code')==200 and result.get('data',{}).get('token')
target=Path('/opt/openlist-astrbot/admin-credentials.json');temporary=target.with_suffix('.sync-new')
temporary.write_text(json.dumps(credentials));temporary.chmod(0o600);os.replace(temporary,target)
print(json.dumps({'ok':True,'local_login_verified':True,'maintenance_credentials_synced':True}))
"""
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=35)
 print('OPENLIST_LOGIN_SYNC='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
