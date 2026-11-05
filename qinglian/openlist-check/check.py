import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import subprocess,json
probe=r"""
import ast,asyncio,json,logging,pathlib,time,types,urllib.parse
import aiohttp
from curl_cffi import requests as cffi_requests
logging.disable(logging.CRITICAL)
config=json.loads(pathlib.Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'))
source=ast.parse(pathlib.Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl/main.py').read_text())
cls=next(x for x in source.body if isinstance(x,ast.ClassDef))
methods=[x for x in cls.body if isinstance(x,(ast.FunctionDef,ast.AsyncFunctionDef)) and x.name in ('_refresh_access_token','_get_dlinks_sync')]
assert len(methods)==2
ns={'aiohttp':aiohttp,'time':time,'json':json,'logger':logging.getLogger('probe'),'cffi_requests':cffi_requests,'urllib':__import__('urllib')}
for method in methods:
 method.decorator_list=[]
 exec(compile(ast.fix_missing_locations(ast.Module(body=[method],type_ignores=[])),'installed_plugin_probe','exec'),ns)
obj=types.SimpleNamespace(openlist_url=config['openlist_url'],openlist_user=config['openlist_user'],openlist_pass=config['openlist_pass'],_access_token='',_token_expire=0,_TOKEN_CACHE_TTL=3600)
obj._refresh_access_token=types.MethodType(ns['_refresh_access_token'],obj);obj._get_dlinks_sync=types.MethodType(ns['_get_dlinks_sync'],obj)
async def main():
 loaded=await obj._refresh_access_token();assert loaded and obj._access_token
 result={'plugin_token_load_verified':True,'cached_token_verified':await obj._refresh_access_token(),'direct_link_verified':False,'download_byte_verified':False}
 # Read-only search for one existing file; do not create transfers or shares.
 async with aiohttp.ClientSession() as session:
  queue=['/'];chosen=None
  for count in range(8):
   if not queue or chosen:break
   directory=queue.pop(0)
   async with session.get('https://pan.baidu.com/rest/2.0/xpan/file',params={'method':'list','dir':directory,'limit':'100','access_token':obj._access_token},timeout=aiohttp.ClientTimeout(total=20)) as response:data=await response.json(content_type=None)
   if data.get('errno')!=0:continue
   for item in data.get('list',[]):
    if item.get('isdir'):queue.append(item['path'])
    elif not chosen:chosen=(directory,item['server_filename'])
  if chosen:
   links=await asyncio.to_thread(obj._get_dlinks_sync,[chosen[0]],[chosen[1]])
   result['direct_link_verified']=bool(links)
   # No URL, path, filename, credentials or private file content is printed.
  else:result['file_probe_skipped']='No file found within read-only probe budget'
 print(json.dumps(result))
asyncio.run(main())
"""
p=subprocess.run(['/opt/astrbot/.venv/bin/python','-c',probe],capture_output=True,text=True,timeout=180)
if p.returncode==0:
 result=json.loads(p.stdout);print(json.dumps({'ok':True,**result}))
else:
 lines=p.stderr.splitlines();kind=next((line.split(':',1)[0] for line in reversed(lines) if 'Error' in line),'ProbeError');print(json.dumps({'ok':False,'failure_type':kind,'private_error_suppressed':True}))
'''
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=200)
 print('OPENLIST_PLUGIN_CHECK='+json.dumps(result),flush=True)
 if not result.get('ok'):raise SystemExit(1)
