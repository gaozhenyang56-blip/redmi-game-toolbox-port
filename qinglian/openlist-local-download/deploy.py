import hashlib,json,sys,urllib.request,urllib.error,urllib.parse
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
 remote_json(client,"from pathlib import Path;import json;Path('/opt/openlist-astrbot/local-download-update').mkdir(mode=0o700,exist_ok=True);print(json.dumps({'ok':True}))")
 with client.open_sftp() as sftp:
  for name in ['server_setup.py','patch_plugin.py','local_download.py']:
   dst='/opt/openlist-astrbot/local-download-update/'+name;sftp.put(str(Path(__file__).with_name(name)),dst);sftp.chmod(dst,0o600)
 result=remote_json(client,Path(__file__).with_name('server_setup.py').read_text(),timeout=180)
 url=result.pop('probe_url',None);expected=result.pop('probe_sha256',None);relative=result.pop('probe_relative_path',None)
 if not result.get('ok'):
  print('OPENLIST_LOCAL_DEPLOY='+json.dumps(result),flush=True);raise SystemExit(1)
 assert url and urllib.parse.urlsplit(url).hostname=='107.150.7.124'
 try:
  with urllib.request.urlopen(url,timeout=30) as response:body=response.read(1024)
  assert hashlib.sha256(body).hexdigest()==expected
  result['external_signed_download_verified']=True
  unsigned=urllib.parse.urlunsplit(urllib.parse.urlsplit(url)._replace(query=''))
  try:
   with urllib.request.urlopen(unsigned,timeout=20) as response:raise AssertionError('Unsigned file unexpectedly accessible')
  except urllib.error.HTTPError as error:assert error.code in (401,403)
  result['unsigned_download_denied']=True
  request=urllib.request.Request('http://107.150.7.124:5244/api/fs/list',data=json.dumps({'path':'/百度','password':''}).encode(),headers={'Content-Type':'application/json'})
  try:
   with urllib.request.urlopen(request,timeout=20) as response:denied=json.load(response);assert denied.get('code') in (401,403)
  except urllib.error.HTTPError as error:assert error.code in (401,403)
  result['anonymous_cloud_browsing_denied']=True
 finally:
  if relative and relative.startswith('verification-') and '..' not in relative:
   script="from pathlib import Path;import json;p=Path('/opt/astrbot/data/plugin_data/astrbot_plugin_baidu_curl/local_downloads')/"+repr(relative)+";p.unlink(missing_ok=True);p.parent.rmdir();print(json.dumps({'ok':True}))"
   remote_json(client,script)
 print('OPENLIST_LOCAL_DEPLOY='+json.dumps(result),flush=True)
