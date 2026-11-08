import hashlib,json,os,pwd,secrets,shutil,socket,subprocess,time,urllib.request
from pathlib import Path
BASE=Path('/opt/server-hub');DATA=Path('/var/lib/server-hub');STAGE=Path('/opt/server-hub-update')
def run(args):
 p=subprocess.run(args,capture_output=True,text=True,timeout=45)
 if p.returncode:raise RuntimeError('Setup command failed: '+args[0])
 return p.stdout.strip()
def baseline():
 units={}
 for name in ['astrbot.service','napcat-login.service','openlist-astrbot.service','openlist-progress.service','x-ui.service','qinglian-exports.service','qinglian-hy2.service','qinglian-remote.service']:
  output=run(['systemctl','show',name,'--property=MainPID,ActiveEnterTimestampMonotonic']);units[name]=output
 paths=[Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl')/n for n in ['main.py','local_download.py']]
 return {'units':units,'plugin_hashes':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in paths if p.exists()}}
try:
 before=baseline()
 try:user=pwd.getpwnam('server-hub')
 except KeyError:run(['useradd','--system','--home-dir',str(DATA),'--shell','/usr/sbin/nologin','server-hub']);user=pwd.getpwnam('server-hub')
 DATA.mkdir(mode=0o750,exist_ok=True);os.chown(DATA,0,user.pw_gid);DATA.chmod(0o750)
 port=None
 if (DATA/'config.json').exists():port=json.loads((DATA/'config.json').read_text())['port']
 else:
  for candidate in [5246,5247,5248]:
   try:
    with socket.socket() as probe:probe.bind(('0.0.0.0',candidate))
    port=candidate;break
   except OSError:continue
 assert port,'No free dashboard port'
 for filename,mode in [('collector-key',0o600),('session-key',0o640)]:
  p=DATA/filename
  if not p.exists():p.write_bytes(secrets.token_bytes(32))
  p.chmod(mode);os.chown(p,0,user.pw_gid)
 p=DATA/'config.json';p.write_text(json.dumps({'host':'107.150.7.124','port':port,'management_url':'https://gaozy.tech/xui/'}));p.chmod(0o640);os.chown(p,0,user.pw_gid)
 BASE.mkdir(mode=0o755,exist_ok=True);(BASE/'static').mkdir(mode=0o755,exist_ok=True)
 for name in ['app.py','collector.py','static/index.html','static/style.css','static/app.js']:
  target=BASE/name;temp=target.with_suffix('.new');shutil.copyfile(STAGE/name,temp);temp.chmod(0o644);os.replace(temp,target)
 common='''NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=strict
ProtectHome=true
RestrictSUIDSGID=true
LockPersonality=true
UMask=0027
TasksMax=48
Nice=10
'''
 web='''[Unit]
Description=Server Hub read-only status dashboard
After=network.target
[Service]
User=server-hub
Group=server-hub
WorkingDirectory=/opt/server-hub
ExecStart=/usr/bin/python3 /opt/server-hub/app.py
Restart=on-failure
RestartSec=5
MemoryMax=96M
CPUQuota=10%
ReadOnlyPaths=/var/lib/server-hub
'''+common+'''[Install]
WantedBy=multi-user.target
'''
 collector='''[Unit]
Description=Read-only service and port inventory collector
After=network.target
[Service]
Type=oneshot
User=root
WorkingDirectory=/opt/server-hub
ExecStart=/usr/bin/python3 /opt/server-hub/collector.py
TimeoutStartSec=40
MemoryMax=160M
CPUQuota=15%
ReadWritePaths=/var/lib/server-hub
'''+common
 timer='''[Unit]
Description=Update server status every 10 seconds
[Timer]
OnBootSec=15
OnUnitActiveSec=10
AccuracySec=1
Unit=server-hub-collector.service
[Install]
WantedBy=timers.target
'''
 for name,body in [('server-hub.service',web),('server-hub-collector.service',collector),('server-hub-collector.timer',timer)]:Path('/etc/systemd/system/'+name).write_text(body)
 run(['systemctl','daemon-reload']);run(['systemctl','start','server-hub-collector.service']);assert (DATA/'auth.json').exists(),'Login credentials were not initialized'
 run(['systemctl','enable','--now','server-hub.service','server-hub-collector.timer']);run(['systemctl','restart','server-hub.service']);run(['systemctl','start','server-hub-collector.service'])
 cfg=json.loads(Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'))
 def get(path,body=None,cookie=None):
  headers={'Content-Type':'application/json'}
  if cookie:headers['Cookie']=cookie
  req=urllib.request.Request('http://127.0.0.1:'+str(port)+path,data=json.dumps(body).encode() if body else None,headers=headers)
  return urllib.request.urlopen(req,timeout=10)
 for attempt in range(10):
  try:
   with get('/health') as r:assert json.load(r)['ok']
   break
  except Exception:
   if attempt==9:raise
   time.sleep(1)
 with get('/api/login',{'username':cfg['openlist_user'],'password':cfg['openlist_pass']}) as r:cookie=r.headers['Set-Cookie'].split(';')[0];assert json.load(r)['ok']
 with get('/api/status',cookie=cookie) as r:status=json.load(r)
 try:get('/api/status');raise AssertionError('Status API unexpectedly public')
 except urllib.error.HTTPError as e:assert e.code==401
 after=baseline();assert before==after,'Existing service identity or plugin file changed'
 print(json.dumps({'ok':True,'url':'http://107.150.7.124:'+str(port),'same_openlist_account':True,'existing_services_and_plugin_files_unchanged':True,'collector_active':run(['systemctl','is-active','server-hub-collector.timer']),'projects':[{'name':p['name'],'status':p['status'],'url':p['url']} for p in status['projects']],'ports':len(status['ports']),'containers':len(status['containers']),'no_control_endpoints':True}))
except Exception as exc:
 print(json.dumps({'ok':False,'failure_type':type(exc).__name__,'safe_error':str(exc) if isinstance(exc,(RuntimeError,AssertionError)) else 'Hub setup failed','line':__import__('traceback').extract_tb(exc.__traceback__)[-1].lineno}))
