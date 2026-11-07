import hashlib,json,os,pwd,shutil,socket,subprocess,time,urllib.request
from pathlib import Path
BASE=Path('/opt/openlist-progress');DATA=Path('/var/lib/openlist-progress');STAGE=Path('/opt/openlist-progress-update');SERVICE='openlist-progress.service'
def run(args):
 p=subprocess.run(args,capture_output=True,text=True,timeout=30)
 if p.returncode:raise RuntimeError('Progress service setup command failed')
 return p.stdout.strip()
def baseline():
 units={}
 for name in ['astrbot.service','openlist-astrbot.service']:
  output=run(['systemctl','show',name,'--property=MainPID','--property=ActiveEnterTimestampMonotonic']);units[name]=dict(line.split('=',1) for line in output.splitlines() if '=' in line)
  assert int(units[name]['MainPID'])>0,'Existing service is not active'
 paths=[Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl')/name for name in ['main.py','local_download.py']]
 return {'units':units,'plugin_hashes':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}}
try:
 before=baseline();cfg=json.loads(Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'));root=Path(cfg['openlist_local_download_dir'])
 before_parts=len(list(root.glob('*/*.part')))
 user=pwd.getpwnam('astrbot');DATA.mkdir(mode=0o700,exist_ok=True);os.chown(DATA,user.pw_uid,user.pw_gid);DATA.chmod(0o700)
 config_path=DATA/'config.json';port=None
 if config_path.exists():port=json.loads(config_path.read_text())['port']
 else:
  for candidate in [5245,5246,5247]:
   try:
    with socket.socket() as probe:probe.bind(('0.0.0.0',candidate))
    port=candidate;break
   except OSError:continue
 if port is None:raise RuntimeError('No free progress port available')
 BASE.mkdir(mode=0o755,exist_ok=True);(BASE/'static').mkdir(mode=0o755,exist_ok=True)
 for name in ['app.py','static/index.html','static/style.css','static/app.js']:
  destination=BASE/name;temp=destination.with_suffix(destination.suffix+'.new');shutil.copyfile(STAGE/name,temp);temp.chmod(0o644);os.replace(temp,destination)
 config={'bind':'0.0.0.0','port':port,'database':str(DATA/'state.sqlite3'),'download_root':str(root),'openlist_api':cfg['openlist_url'],'mount':cfg['openlist_local_mount'],'public_openlist':cfg['openlist_public_url'],'source_path':cfg['openlist_pan_path'].rstrip('/')+'/'+cfg['save_dir'].lstrip('/'),'cache_limit_bytes':int(cfg.get('openlist_local_max_total_mb',4096))*1024**2,'reserve_bytes':int(cfg.get('openlist_local_reserve_mb',2048))*1024**2}
 config_path.write_text(json.dumps(config,ensure_ascii=False));config_path.chmod(0o600);os.chown(config_path,user.pw_uid,user.pw_gid)
 unit='''[Unit]
Description=Read-only OpenList download progress dashboard
After=network.target
[Service]
User=astrbot
Group=astrbot
WorkingDirectory=/opt/openlist-progress
ExecStart=/usr/bin/python3 /opt/openlist-progress/app.py --config /var/lib/openlist-progress/config.json
Restart=on-failure
RestartSec=5
UMask=0077
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=strict
ProtectHome=true
ReadOnlyPaths=/opt/astrbot
ReadWritePaths=/var/lib/openlist-progress
MemoryMax=96M
CPUQuota=10%
TasksMax=48
LimitNOFILE=256
Nice=10
[Install]
WantedBy=multi-user.target
'''
 Path('/etc/systemd/system/'+SERVICE).write_text(unit);run(['systemctl','daemon-reload']);run(['systemctl','enable',SERVICE]);run(['systemctl','restart',SERVICE])
 for attempt in range(15):
  try:
   with urllib.request.urlopen('http://127.0.0.1:'+str(port)+'/',timeout=4) as response:assert response.status==200
   break
  except Exception:
   if attempt==14:raise
   time.sleep(1)
 after=baseline();assert before==after,'An existing process or plugin file changed during deployment'
 after_parts=len(list(root.glob('*/*.part')))
 print(json.dumps({'ok':True,'url':'http://107.150.7.124:'+str(port),'port':port,'existing_service_pids_and_start_times_unchanged':True,'plugin_files_unchanged':True,'no_download_controls':True,'partial_files_before':before_parts,'partial_files_after':after_parts,'progress_service_active':run(['systemctl','is-active',SERVICE])=='active'}))
except Exception as exc:
 print(json.dumps({'ok':False,'failure_type':type(exc).__name__,'safe_error':str(exc) if isinstance(exc,(RuntimeError,AssertionError)) else 'Progress setup failed','line':__import__('traceback').extract_tb(exc.__traceback__)[-1].lineno}))
