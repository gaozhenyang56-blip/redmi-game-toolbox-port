import hashlib,json,os,pwd,secrets,shutil,socket,subprocess,tarfile,time,urllib.request
from pathlib import Path
BASE=Path('/opt/openlist-astrbot');DATA=Path('/var/lib/openlist-astrbot');SERVICE='openlist-astrbot.service';PORT=5244
EXPECTED='1f41b64c61f66bc632490a0e17ee8769454fe093f03a68d22ffb4aa8a9b23187'
def run(args,timeout=40):
 p=subprocess.run(args,capture_output=True,text=True,timeout=timeout)
 if p.returncode:raise RuntimeError('command failed: '+args[0])
 return p.stdout
try:
 assert os.uname().machine=='x86_64','Unsupported architecture'
 plugin_paths=list(Path('/opt/astrbot/data/config').glob('*baidu_curl*config.json'))
 assert len(plugin_paths)==1,'Cannot identify plugin config'
 plugin_path=plugin_paths[0];plugin=json.loads(plugin_path.read_text(encoding="utf-8-sig"));plugin_stat=plugin_path.stat()
 assert plugin.get('baidu_cookies'),'Missing Baidu cookie'
 existing=(BASE/'bin/openlist').exists()
 if not existing:
  with socket.socket() as probe:probe.bind(('127.0.0.1',PORT))
 if not BASE.exists():BASE.mkdir(mode=0o700)
 archive=BASE/'release.tar.gz';assert hashlib.sha256(archive.read_bytes()).hexdigest()==EXPECTED,'Archive digest mismatch'
 try:account=pwd.getpwnam('openlist-astrbot')
 except KeyError:
  run(['useradd','--system','--home-dir',str(DATA),'--shell','/usr/sbin/nologin','openlist-astrbot']);account=pwd.getpwnam('openlist-astrbot')
 DATA.mkdir(mode=0o700,parents=True,exist_ok=True);os.chown(DATA,account.pw_uid,account.pw_gid)
 (BASE/'bin').mkdir(mode=0o755,exist_ok=True)
 BASE.chmod(0o755)
 with tarfile.open(archive,'r:gz') as tf:
  member=next(m for m in tf.getmembers() if Path(m.name).name=='openlist' and m.isfile())
  executable=BASE/'bin/openlist'
  with tf.extractfile(member) as src,open(executable.with_suffix('.new'),'wb') as dst:shutil.copyfileobj(src,dst)
  executable.with_suffix('.new').chmod(0o755);os.replace(executable.with_suffix('.new'),executable)
 credential_path=BASE/'admin-credentials.json'
 if credential_path.exists():credentials=json.loads(credential_path.read_text())
 else:
  credentials={'username':'admin','password':secrets.token_urlsafe(24)}
  credential_path.write_text(json.dumps(credentials));credential_path.chmod(0o600)
 if not (DATA/'config.json').exists():
  run(['runuser','-u','openlist-astrbot','--',str(executable),'admin','set',credentials['password'],'--data',str(DATA)],timeout=60)
 config_path=DATA/'config.json';config=json.loads(config_path.read_text());config['scheme']['address']='127.0.0.1';config['scheme']['http_port']=PORT
 config['max_concurrency']=4;config['max_connections']=32;config['log'].update({'max_size':5,'max_backups':2,'max_age':7})
 for task in config.get('tasks',{}).values():
  if isinstance(task,dict) and 'workers' in task:task['workers']=1
 config_path.write_text(json.dumps(config,indent=2));config_path.chmod(0o600);os.chown(config_path,account.pw_uid,account.pw_gid)
 unit='''[Unit]
Description=OpenList for AstrBot Baidu plugin
After=network-online.target
Wants=network-online.target
[Service]
User=openlist-astrbot
Group=openlist-astrbot
WorkingDirectory=/var/lib/openlist-astrbot
ExecStart=/opt/openlist-astrbot/bin/openlist server --data /var/lib/openlist-astrbot
Restart=on-failure
RestartSec=5
Environment=GOMEMLIMIT=128MiB
MemoryMax=256M
CPUQuota=50%
TasksMax=128
UMask=0077
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=strict
ProtectHome=true
ReadWritePaths=/var/lib/openlist-astrbot
StandardOutput=null
StandardError=journal
[Install]
WantedBy=multi-user.target
'''
 Path('/etc/systemd/system/'+SERVICE).write_text(unit)
 run(['systemctl','daemon-reload']);run(['systemctl','enable',SERVICE]);run(['systemctl','restart',SERVICE])
 def api(path,body=None,token=None):
  headers={'Content-Type':'application/json'}
  if token:headers['Authorization']=token
  request=urllib.request.Request('http://127.0.0.1:5244'+path,data=json.dumps(body).encode() if body is not None else None,headers=headers)
  with urllib.request.urlopen(request,timeout=20) as response:result=json.load(response)
  if result.get('code')!=200:raise RuntimeError('OpenList API failed: '+path)
  return result.get('data')
 for n in range(25):
  try:token=api('/api/auth/login',credentials)['token'];break
  except Exception:
   if n==24:raise
   time.sleep(1)
 users=api('/api/admin/user/list',token=token)
 for user in users.get('content',[]):
  if user.get('role')==2 or user.get('username')=='guest':
   user['disabled']=True;api('/api/admin/user/update',user,token)
 storages=api('/api/admin/storage/list',token=token).get('content',[])
 baidu=[s for s in storages if s.get('driver')=='BaiduNetdisk']
 if not baidu:
  addition={'root_folder_path':'/','order_by':'name','order_direction':'asc','download_api':'official','use_online_api':True,'api_url_address':'https://api.oplist.org/baiduyun/renewapi','refresh_token':'','upload_thread':'1','upload_timeout':60,'upload_api':'https://d.pcs.baidu.com','use_dynamic_upload_api':True,'custom_crack_ua':'netdisk'}
  api('/api/admin/storage/create',{'mount_path':'/百度','order':0,'driver':'BaiduNetdisk','cache_expiration':30,'addition':json.dumps(addition),'remark':'AstrBot 百度网盘；等待用户 OAuth 授权','disabled':True},token)
 plugin_backup=BASE/'plugin-config-before.json'
 if not plugin_backup.exists():shutil.copy2(plugin_path,plugin_backup);plugin_backup.chmod(0o600)
 # The existing cookie and session allowlist are preserved. OAuth must finish first.
 plugin.update({'openlist_url':'http://127.0.0.1:5244','openlist_user':credentials['username'],'openlist_pass':credentials['password'],'openlist_pan_path':'/百度','file_retention_hours':0})
 temp=plugin_path.with_suffix('.openlist-new');temp.write_text(json.dumps(plugin,ensure_ascii=False,indent=2));os.chmod(temp,0o600);os.chown(temp,plugin_stat.st_uid,plugin_stat.st_gid);os.replace(temp,plugin_path)
 stats={'service_active':run(['systemctl','is-active',SERVICE]).strip()=='active','service_enabled':run(['systemctl','is-enabled',SERVICE]).strip()=='enabled','openlist_version':'v4.2.9','local_only':True,'plugin_link_configured':True,'cookie_preserved':True,'mount_prepared':True,'oauth_required':not any(json.loads(s.get('addition') or '{}').get('refresh_token') for s in baidu),'guest_disabled':True}
 print(json.dumps({'ok':True,**stats}),flush=True)
except Exception as exc:
 print(json.dumps({'ok':False,'failure_type':type(exc).__name__,'step':'openlist deployment','line':__import__('traceback').extract_tb(exc.__traceback__)[-1].lineno}),flush=True)
