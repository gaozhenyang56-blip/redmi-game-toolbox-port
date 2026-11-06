import subprocess,json
PROBE=r'''
import asyncio,hashlib,json,os,pathlib,sys,urllib.parse,uuid
import aiohttp
sys.path.insert(0,'/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl')
from local_download import LocalDownloads,fetch_file,safe_name
cfg=json.loads(pathlib.Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'))
async def main():
 manager=LocalDownloads(cfg)
 async with aiohttp.ClientSession(timeout=aiohttp.ClientTimeout(total=120,connect=20,sock_read=40),cookie_jar=aiohttp.DummyCookieJar(),auto_decompress=False,headers={"Accept-Encoding":"identity"}) as session:
  auth=await manager.api(session,'/api/auth/login',{'username':cfg['openlist_user'],'password':cfg['openlist_pass']});token=auth['token']
  async with session.get(cfg['openlist_url']+'/api/admin/storage/list',headers={'Authorization':token}) as response:storage=json.loads(await response.text())
  source=next(s for s in storage['data']['content'] if s.get('driver')=='BaiduNetdisk');access=json.loads(source['addition'])['AccessToken']
  queue=['/'];chosen=None
  for _ in range(4):
   if not queue or chosen:break
   directory=queue.pop(0)
   async with session.get('https://pan.baidu.com/rest/2.0/xpan/file',params={'method':'list','dir':directory,'limit':100,'access_token':access}) as response:data=json.loads(await response.text())
   if data.get('errno')!=0:continue
   for item in data.get('list',[]):
    if item.get('isdir'):queue.append(item['path'])
    elif 0<int(item.get('size') or 0)<=256*1024 and not chosen:chosen=item
  folder=manager.root/('verification-'+uuid.uuid4().hex);folder.mkdir(mode=0o750);folder.chmod(0o750)
  try:
   if chosen:
    async with session.get('https://pan.baidu.com/rest/2.0/xpan/multimedia',params={'method':'filemetas','dlink':1,'fsids':json.dumps([chosen['fs_id']]),'access_token':access}) as response:metadata=json.loads(await response.text())
    if metadata.get('errno')!=0 or not metadata.get('list'):raise ValueError('Metadata unavailable')
    link=metadata['list'][0]['dlink']+'&access_token='+access
    cookies=dict(item.strip().split('=',1) for item in cfg['baidu_cookies'].split(';') if '=' in item)
    target=folder/safe_name(chosen['server_filename'])
    await fetch_file(session,link,target,cookies.get('BDUSS',''),max_file=256*1024,max_total=manager.max_total,reserve=manager.reserve,expected=int(chosen['size']))
    kind='real_baidu_download'
   else:
    target=folder/'probe.txt';target.write_bytes(b'AstrBot account OpenList read test\n');target.chmod(0o644);kind='local_fixture_no_small_cloud_file'
   path=manager.mount+'/'+folder.name+'/'+target.name;url=await manager.signed_link(session,path,token)
   print(json.dumps({'ok':True,'probe_kind':kind,'ran_as_uid':os.getuid(),'bytes':target.stat().st_size,'probe_url':url,'probe_sha256':hashlib.sha256(target.read_bytes()).hexdigest(),'probe_relative_path':str(target.relative_to(manager.root))}))
  except:
   import shutil;shutil.rmtree(folder,ignore_errors=True);raise
asyncio.run(main())
'''
p=subprocess.run(['runuser','-u','astrbot','--','/opt/astrbot/.venv/bin/python','-c',PROBE],cwd='/opt/astrbot',capture_output=True,text=True,timeout=180)
if p.returncode==0:print(p.stdout.strip())
else:
 # No URLs, names, account tokens or file contents in public diagnostics.
 last=p.stderr.splitlines()[-1] if p.stderr else 'ProbeError'
 kind=last.split(':',1)[0]
 print(json.dumps({'ok':False,'failure_type':kind,'private_error_suppressed':True}))
