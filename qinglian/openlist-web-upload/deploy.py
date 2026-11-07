import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,os,pwd,shutil,urllib.request
from pathlib import Path
ROOT=Path('/var/lib/openlist-astrbot/web-uploads')
try:
 user=pwd.getpwnam('openlist-astrbot');ROOT.mkdir(mode=0o750,exist_ok=True);os.chown(ROOT,user.pw_uid,user.pw_gid);ROOT.chmod(0o750)
 cfg=json.loads(Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'))
 def api(path,body=None,token=''):
  headers={'Content-Type':'application/json'}
  if token:headers['Authorization']=token
  request=urllib.request.Request('http://127.0.0.1:5244'+path,data=json.dumps(body).encode() if body is not None else None,headers=headers)
  with urllib.request.urlopen(request,timeout=25) as response:result=json.load(response)
  if result.get('code')!=200:raise RuntimeError('OpenList API failed: '+path)
  return result.get('data')
 token=api('/api/auth/login',{'username':cfg['openlist_user'],'password':cfg['openlist_pass']})['token']
 before=api('/api/admin/storage/list',token=token).get('content',[])
 existing=[s for s in before if s.get('mount_path')=='/']
 if existing:
  assert existing[0]['driver']=='Local' and json.loads(existing[0]['addition'])['root_folder_path']==str(ROOT),'Another root mount already exists; left unchanged'
 else:
  addition={'root_folder_path':str(ROOT),'directory_size':False,'thumbnail':False,'pdf_thumbnail':False,'show_hidden':False,'mkdir_perm':'750','recycle_bin_path':'delete permanently'}
  api('/api/admin/storage/create',{'mount_path':'/','driver':'Local','order':-1,'cache_expiration':0,'addition':json.dumps(addition),'remark':'网页上传独立本地存储','disabled':False},token)
 listing=api('/api/fs/list',{'path':'/','password':'','page':1,'per_page':100,'refresh':True},token)
 submounts={s['mount_path'] for s in api('/api/admin/storage/list',token=token).get('content',[])}
 assert {'/','/百度','/本地下载'}.issubset(submounts)
 assert api('/api/admin/setting/get?key=sign_all',token=token)['value']=='true'
 assert any(u.get('role')==1 and u.get('disabled') for u in api('/api/admin/user/list',token=token).get('content',[]))
 print(json.dumps({'ok':True,'writable_root_added':True,'existing_mounts_preserved':True,'signature_requirement_preserved':True,'guest_still_disabled':True,'free_disk_mb':shutil.disk_usage(ROOT).free//1024**2}))
except Exception as exc:
 print(json.dumps({'ok':False,'failure_type':type(exc).__name__,'safe_error':str(exc) if isinstance(exc,(RuntimeError,AssertionError)) else 'Web upload setup failed'}))
'''
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=90)
 print('OPENLIST_WEB_UPLOAD='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
