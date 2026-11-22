"""Run on the server after uploading the reviewed deployment bundle."""
import base64,hashlib,json,os,pwd,secrets,shutil,socket,subprocess,time,urllib.request,urllib.error
from pathlib import Path
SRC=Path('/root/dsh-control-upload');DEST=Path('/opt/dsh-control')
def run(*args):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=60)
def private_hashes():
 return {str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in (Path('/var/lib/dsh/.credentials.yaml'),Path('/var/lib/dsh/profiles/web/cordis.patch.yml'))}
before=private_hashes()
backup=Path('/root/dsh-control-backup-'+time.strftime('%Y%m%d-%H%M%S'));backup.mkdir(mode=0o700)
hub=Path('/opt/server-hub/app.py');original=hub.read_text();shutil.copy2(hub,backup/'server-hub-app.py')
run('systemctl','cat','dsh.service')
(backup/'dsh-unit.txt').write_text(run('systemctl','cat','dsh.service').stdout)
try:account=pwd.getpwnam('dsh-control')
except KeyError:
 run('useradd','--system','--home-dir','/var/lib/dsh-control','--shell','/usr/sbin/nologin','dsh-control');account=pwd.getpwnam('dsh-control')
DEST.mkdir(mode=0o755,exist_ok=True)
for name in ('app.py','helper.py','index.html','app.js','style.css'):
 target=DEST/name
 if target.exists():shutil.copy2(target,backup/name)
 shutil.copy2(SRC/name,target);target.chmod(0o644)
state=Path('/var/lib/dsh-control');state.mkdir(mode=0o700,exist_ok=True);os.chown(state,account.pw_uid,account.pw_gid)
key=state/'session-key'
if not key.exists():key.write_bytes(secrets.token_bytes(32))
key.chmod(0o600);os.chown(key,account.pw_uid,account.pw_gid)
units={
'dsh-control-helper.service':'''[Unit]
Description=Restricted DSH control helper
After=local-fs.target
[Service]
ExecStart=/usr/bin/python3 /opt/dsh-control/helper.py
Restart=always
RestartSec=3
RuntimeDirectory=dsh-control-helper
RuntimeDirectoryMode=0755
NoNewPrivileges=true
ProtectSystem=strict
ProtectHome=true
PrivateTmp=true
MemoryMax=96M
CPUQuota=25%
TasksMax=32
UMask=0077
[Install]
WantedBy=multi-user.target
''',
'dsh-control.service':'''[Unit]
Description=DSH management WebUI (loopback 1378)
After=network.target dsh-control-helper.service
Wants=dsh-control-helper.service
[Service]
User=dsh-control
Group=dsh-control
ExecStart=/usr/bin/python3 /opt/dsh-control/app.py
Restart=always
RestartSec=3
NoNewPrivileges=true
ProtectSystem=strict
ProtectHome=true
PrivateTmp=true
RestrictAddressFamilies=AF_UNIX AF_INET
ReadWritePaths=/var/lib/dsh-control
MemoryHigh=64M
MemoryMax=96M
CPUQuota=20%
CPUWeight=200
TasksMax=32
UMask=0077
[Install]
WantedBy=multi-user.target
''',
'dsh-watchdog.service':'''[Unit]
Description=Check DSH backend health without starting a manually stopped service
[Service]
Type=oneshot
ExecStart=/usr/bin/python3 /opt/dsh-control/helper.py watchdog
TimeoutStartSec=25
RuntimeDirectory=dsh-watchdog
RuntimeDirectoryPreserve=yes
RuntimeDirectoryMode=0700
NoNewPrivileges=true
ProtectSystem=strict
ProtectHome=true
PrivateTmp=true
MemoryMax=64M
''',
'dsh-watchdog.timer':'''[Unit]
Description=Monitor DSH backend every 30 seconds
[Timer]
OnBootSec=90
OnUnitActiveSec=30
AccuracySec=3
Unit=dsh-watchdog.service
[Install]
WantedBy=timers.target
'''}
for name,body in units.items():
 path=Path('/etc/systemd/system')/name
 if path.exists():shutil.copy2(path,backup/name)
 path.write_text(body);path.chmod(0o644)
# Raise the heap and remove the observed soft-limit pressure while bounding total usage.
override=Path('/etc/systemd/system/dsh.service.d/80-reliability.conf');override.parent.mkdir(exist_ok=True)
if override.exists():shutil.copy2(override,backup/override.name)
override.write_text('[Service]\nRestart=always\nRestartSec=10\nEnvironment="NODE_OPTIONS=--max-old-space-size=512"\nMemoryHigh=832M\nMemoryMax=896M\n')
# Existing resource mitigation set runtime properties; update those too.
run('systemctl','daemon-reload')
run('systemctl','set-property','--runtime','dsh.service','MemoryHigh=872415232','MemoryMax=939524096')
run('systemd-analyze','verify',*[str(Path('/etc/systemd/system')/n) for n in units])
run('systemctl','enable','dsh-control-helper.service','dsh-control.service','dsh-watchdog.timer')
run('systemctl','restart','dsh-control-helper.service','dsh-control.service')
# Preserve current server-hub implementation; add only an isolated fixed upstream route.
if ' def dsh_control_proxy(self):' not in original:
 assert original.count(' def do_GET(self):\n')==1 and original.count(' def do_POST(self):\n')==1
 updated=original.replace(' def do_GET(self):\n',(SRC/'proxy_method.txt').read_text()+' def do_GET(self):\n  if self.dsh_control_proxy():return\n',1)
 updated=updated.replace(' def do_POST(self):\n',' def do_POST(self):\n  if self.dsh_control_proxy():return\n',1)
 compile(updated,str(hub),'exec')
 hub.write_text(updated)
 try:run('systemctl','restart','server-hub.service')
 except Exception:
  hub.write_text(original);run('systemctl','restart','server-hub.service');raise
run('systemctl','restart','dsh.service')
run('systemctl','start','dsh-watchdog.timer')
def request(url):
 try:
  with urllib.request.urlopen(url,timeout=4) as r:return r.status
 except urllib.error.HTTPError as e:return e.code
 except Exception:return None
ready=False
for _ in range(60):
 if request('http://127.0.0.1:3080/') in (200,401,403):ready=True;break
 time.sleep(2)
assert ready,'DSH did not become ready'
assert request('http://127.0.0.1:1378/')==200
assert request('http://127.0.0.1:1378/api/session')==401
assert request('http://127.0.0.1:9178/panel/dsh/')==200
assert request('http://127.0.0.1:9178/panel/health')==200
assert private_hashes()==before,'DSH API settings changed unexpectedly'
# Return only whitelisted deployment checks; never publish credentials or private logs.
props=run('systemctl','show','dsh.service','--property=ActiveState,Restart,MemoryHigh,MemoryMax,Environment').stdout
listeners=run('ss','-ltnH').stdout.splitlines()
manager=[x.split()[3] for x in listeners if x.split()[3].endswith(':1378')]
assert manager==['127.0.0.1:1378'], 'management port must be loopback only'
print(json.dumps({'ok':True,'dshBackendReady':ready,'managerLoopback':manager,'managerPublicPath':'https://gaozy.tech/panel/dsh/','apiSettingsPreserved':private_hashes()==before,'units':{n:run('systemctl','is-active',n).stdout.strip() for n in ('dsh.service','dsh-control.service','dsh-control-helper.service','dsh-watchdog.timer','server-hub.service')},'heapMiB':512,'memoryHighMiB':832,'memoryMaxMiB':896,'restartPolicyAlways':'Restart=always' in props,'backupCreated':True}))
