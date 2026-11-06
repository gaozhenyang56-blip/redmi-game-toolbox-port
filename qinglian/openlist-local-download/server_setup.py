import ast,hashlib,json,os,pwd,re,shutil,subprocess,sys,time,urllib.request,urllib.parse,uuid
from pathlib import Path
STAGE=Path('/opt/openlist-astrbot/local-download-update');sys.path.insert(0,str(STAGE))
from patch_plugin import patch_source,FIELDS
P=Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl');C=Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json');DATA=Path('/var/lib/openlist-astrbot');LOCAL=Path('/opt/astrbot/data/plugin_data/astrbot_plugin_baidu_curl/local_downloads');MOUNT='/本地下载';PUBLIC='http://107.150.7.124:5244'
def run(args):
 result=subprocess.run(args,capture_output=True,text=True,timeout=60)
 if result.returncode:raise RuntimeError('Service setup command failed: '+args[0])
 return result.stdout.strip()
def api(path,body=None,token=''):
 headers={'Content-Type':'application/json'}
 if token:headers['Authorization']=token
 request=urllib.request.Request('http://127.0.0.1:5244'+path,data=json.dumps(body).encode() if body is not None else None,headers=headers)
 with urllib.request.urlopen(request,timeout=30) as response:result=json.load(response)
 if result.get('code')!=200:raise RuntimeError('OpenList API failed: '+path.split('?')[0])
 return result.get('data')
try:
 cfg=json.loads(C.read_text(encoding='utf-8-sig'));credentials={'username':cfg['openlist_user'],'password':cfg['openlist_pass']};token=api('/api/auth/login',credentials)['token']
 astro=pwd.getpwnam('astrbot');oplist=pwd.getpwnam('openlist-astrbot')
 LOCAL.parent.mkdir(mode=0o700,parents=True,exist_ok=True);os.chown(LOCAL.parent,astro.pw_uid,astro.pw_gid)
 LOCAL.mkdir(mode=0o2750,exist_ok=True);os.chown(LOCAL,astro.pw_uid,oplist.pw_gid);LOCAL.chmod(0o2750)
 if shutil.disk_usage(LOCAL).free<2*1024**3:raise RuntimeError('Less than 2 GiB free disk space; download deployment paused')
 # Sign every /d route before enabling the public listener; keep guest browsing disabled.
 settings=[]
 for key,value in [('sign_all','true'),('link_expiration','24')]:
  item=api('/api/admin/setting/get?key='+key,token=token);item['value']=value;settings.append(item)
 api('/api/admin/setting/save',settings,token)
 for user in api('/api/admin/user/list',token=token).get('content',[]):
  if user.get('role')==1:user['disabled']=True;api('/api/admin/user/update',user,token)
 bind_target=DATA/'local-downloads';bind_target.mkdir(mode=0o750,exist_ok=True);os.chown(bind_target,oplist.pw_uid,oplist.pw_gid)
 dropin=Path('/etc/systemd/system/openlist-astrbot.service.d');dropin.mkdir(exist_ok=True)
 (dropin/'local-downloads.conf').write_text('[Service]\nBindReadOnlyPaths='+str(LOCAL)+':'+str(bind_target)+'\n')
 config_path=DATA/'config.json';original_config=config_path.read_bytes();backup=Path('/opt/openlist-astrbot/local-download-backup');backup.mkdir(mode=0o700,exist_ok=True)
 if not (backup/'openlist-config.json').exists():(backup/'openlist-config.json').write_bytes(original_config)
 opconfig=json.loads(original_config);opconfig['scheme']['address']='0.0.0.0';opconfig['site_url']=PUBLIC;config_path.write_text(json.dumps(opconfig,indent=2));os.chown(config_path,oplist.pw_uid,oplist.pw_gid);config_path.chmod(0o600)
 run(['systemctl','daemon-reload']);run(['systemctl','restart','openlist-astrbot.service'])
 for attempt in range(12):
  try:token=api('/api/auth/login',credentials)['token'];break
  except Exception:
   if attempt==11:raise
   time.sleep(1)
 existing=api('/api/admin/storage/list',token=token).get('content',[])
 if not any(s.get('mount_path')==MOUNT for s in existing):
  addition={'root_folder_path':str(bind_target),'directory_size':False,'thumbnail':False,'show_hidden':False,'mkdir_perm':'750','recycle_bin_path':'delete permanently'}
  api('/api/admin/storage/create',{'mount_path':MOUNT,'driver':'Local','order':1,'cache_expiration':0,'addition':json.dumps(addition),'remark':'AstrBot本地下载；只读绑定，24小时签名链接','disabled':False},token)
 # Back up only plugin source/configuration files, never publish them to GitHub.
 for name in ['main.py','metadata.yaml','_conf_schema.json']:
  if not (backup/name).exists():shutil.copy2(P/name,backup/name)
 source=patch_source((P/'main.py').read_text(encoding='utf-8-sig'));ast.parse(source)
 owner=(P/'main.py').stat()
 for name,content in [('main.py',source),('local_download.py',(STAGE/'local_download.py').read_text())]:
  path=P/name;temp=path.with_suffix('.download-new');temp.write_text(content);temp.chmod(0o644);os.chown(temp,owner.st_uid,owner.st_gid);os.replace(temp,path)
 schema=json.loads((P/'_conf_schema.json').read_text(encoding='utf-8-sig'));schema.update(FIELDS);(P/'_conf_schema.json').write_text(json.dumps(schema,ensure_ascii=False,indent=2))
 metadata=P/'metadata.yaml';metadata.write_text(re.sub(r'^version:.*$','version: v8.6.0+localdownload.1',metadata.read_text(),flags=re.M))
 cfg.update({key:value['default'] for key,value in FIELDS.items() if key not in cfg});cfg['openlist_local_download_enable']=True
 temp=C.with_suffix('.download-new');temp.write_text(json.dumps(cfg,ensure_ascii=False,indent=2));temp.chmod(0o600);st=C.stat();os.chown(temp,st.st_uid,st.st_gid);os.replace(temp,C)
 # A benign fixture validates native Local serving, signatures and external access.
 test_dir=LOCAL/('verification-'+uuid.uuid4().hex);test_dir.mkdir(mode=0o2750);os.chown(test_dir,astro.pw_uid,oplist.pw_gid);test_dir.chmod(0o2750)
 test_file=test_dir/'probe.txt';body=b'AstrBot OpenList local download verification\n';test_file.write_bytes(body);os.chown(test_file,astro.pw_uid,oplist.pw_gid);test_file.chmod(0o640)
 path=MOUNT+'/'+test_dir.name+'/probe.txt';item=api('/api/fs/get',{'path':path,'password':''},token)
 sign=item.get('sign') or urllib.parse.parse_qs(urllib.parse.urlsplit(item.get('raw_url','')).query).get('sign',[''])[0]
 if not sign:raise RuntimeError('OpenList did not return a download signature')
 url=PUBLIC+'/d'+urllib.parse.quote(path,safe='/')+'?'+urllib.parse.urlencode({'sign':sign})
 # Returned to the Actions process in memory; it removes the URL before printing.
 print(json.dumps({'ok':True,'service_active':run(['systemctl','is-active','openlist-astrbot.service'])=='active','public_url':PUBLIC,'signed_downloads_required':True,'guest_disabled':True,'readonly_local_mount':True,'plugin_patched':True,'probe_url':url,'probe_sha256':hashlib.sha256(body).hexdigest(),'probe_relative_path':test_dir.name+'/probe.txt'}))
except Exception as exc:
 print(json.dumps({'ok':False,'failure_type':type(exc).__name__,'safe_error':str(exc) if isinstance(exc,RuntimeError) else 'Local download deployment failed','line':__import__('traceback').extract_tb(exc.__traceback__)[-1].lineno}))
