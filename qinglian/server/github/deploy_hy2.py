#!/usr/bin/env python3
"""Install pinned supervised HY2 behind the existing panel, without changing its node."""
import hashlib,json,os,sys,tempfile
from pathlib import Path
from ssh_common import connection,remote_json
INSTALL=r'''
import json,os,secrets,shutil,sqlite3,subprocess,time,urllib.request,urllib.error
from pathlib import Path
stage=Path(STAGE);base=json.loads(Path('/etc/x-ui/qinglian.json').read_text());root=Path('/usr/local/lib/qinglian');root.mkdir(mode=0o755,exist_ok=True)
config=Path('/etc/x-ui/qinglian/hy2.json');unit=Path('/etc/systemd/system/qinglian-hy2.service');existing=unit.exists()
if not existing:
 result=subprocess.check_output(['ss','-lunH','sport','=',':443'],text=True);assert not result.strip(),'UDP 443 already occupied'
backup=Path('/etc/x-ui/qinglian/hy2-before-install');backup.mkdir(mode=0o700,exist_ok=True)
managed=[config,unit,root/'hysteria',root/'hy2_manager.py'];saved=[]
for i,path in enumerate(managed):
 if path.exists():
  destination=backup/(str(i)+'-'+secrets.token_hex(4));shutil.copy2(path,destination);saved.append((path,destination))
created=[path for path in managed if not path.exists()]
def request(path,data=None):
 cfg=json.loads(config.read_text());req=urllib.request.Request('http://127.0.0.1:11453'+path,data=None if data is None else json.dumps(data).encode(),headers={'Authorization':'Bearer '+cfg['managementToken'],'Content-Type':'application/json'})
 with urllib.request.build_opener(urllib.request.ProxyHandler({})).open(req,timeout=5) as r:return json.load(r)
try:
 if not config.exists():
  cfg={'ownerId':base['ownerId'],'port':443,'serverAddress':base['serverAddress'],'certificate':base['tls']['certificate'],'privateKey':base['tls']['privateKey'],'caPem':Path('/etc/x-ui/qinglian/ca.pem').read_text(),'authSecret':secrets.token_urlsafe(48),'managementToken':secrets.token_urlsafe(48),'statsToken':secrets.token_urlsafe(48)}
  fd=os.open(config,os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600)
  with os.fdopen(fd,'w') as f:json.dump(cfg,f)
 for name in ['hysteria','hy2_manager.py']:
  replacement=root/('.'+name+'.new');shutil.copyfile(stage/name,replacement);replacement.chmod(0o755 if name=='hysteria' else 0o644);os.replace(replacement,root/name)
 unit.write_text('[Unit]\nDescription=Qinglian panel-managed Hysteria2\nAfter=network-online.target x-ui.service\nWants=network-online.target\n\n[Service]\nType=simple\nExecStart=/usr/bin/python3 /usr/local/lib/qinglian/hy2_manager.py\nRestart=on-failure\nRestartSec=5\nKillMode=control-group\nRuntimeDirectory=qinglian-hy2\nRuntimeDirectoryMode=0700\nUMask=0077\nNoNewPrivileges=true\nPrivateTmp=true\nProtectHome=true\nProtectSystem=strict\nReadWritePaths=/etc/x-ui /run/qinglian-hy2\nCapabilityBoundingSet=CAP_NET_BIND_SERVICE\nMemoryMax=512M\n\n[Install]\nWantedBy=multi-user.target\n')
 subprocess.run(['systemctl','daemon-reload'],check=True);subprocess.run(['systemctl','enable','qinglian-hy2'],check=True,capture_output=True);subprocess.run(['systemctl','restart','qinglian-hy2'],check=True)
 for i in range(30):
  try:status=request('/status');break
  except Exception:time.sleep(.3)
 else:raise RuntimeError('manager unavailable')
 with sqlite3.connect(base['statePath']) as db:row=db.execute('SELECT inbound FROM preferences WHERE id=1').fetchone()
 assert row
 if not existing:request('/configure',{'enabled':True,'boundInbound':row[0]})
 for i in range(30):
  status=request('/status')
  if status['running'] or not status['enabled']:break
  time.sleep(.3)
 assert not status['enabled'] or status['running'],'HY2 startup failed'
 if shutil.which('ufw'):
  result=subprocess.run(['ufw','status'],capture_output=True,text=True,timeout=10)
  if 'Status: active' in result.stdout:subprocess.run(['ufw','allow','443/udp','comment','Qinglian Hysteria2'],check=True,capture_output=True,timeout=15)
 assert subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()=='active'
 print(json.dumps({'installed':True,'managerLoopbackOnly':True,'udpPort':443,'running':status['running'],'originalNodeRetained':True,'backupSaved':True}))
except BaseException:
 subprocess.run(['systemctl','stop','qinglian-hy2'],capture_output=True)
 for path in created:path.unlink(missing_ok=True)
 for path,source in saved:shutil.copy2(source,path)
 subprocess.run(['systemctl','daemon-reload'],capture_output=True)
 if existing:subprocess.run(['systemctl','start','qinglian-hy2'],capture_output=True)
 else:
  try:
   with sqlite3.connect(base['statePath']) as db:db.execute('UPDATE acceleration SET enabled=0 WHERE id=1')
  except Exception:pass
 raise
'''
try:
 binary=Path(os.environ['QINGLIAN_HY2_BINARY']);assert hashlib.sha256(binary.read_bytes()).hexdigest()=='907ba8c9693edb104b20582681fb7dc15639d5b64a9cbb616a7b539190a86691'
 with connection() as ssh:
  stage=remote_json(ssh,"import tempfile,json;print(json.dumps(tempfile.mkdtemp(prefix='qinglian-hy2-')))")
  try:
   with ssh.open_sftp() as sftp:
    for source,name in [(binary,'hysteria'),(Path(__file__).parents[1]/'hy2_manager.py','hy2_manager.py')]:sftp.put(str(source),stage+'/'+name);sftp.chmod(stage+'/'+name,0o700)
   script='STAGE='+repr(stage)+'\n'+INSTALL
   wrapped="import json,traceback\ntry:\n exec(compile("+repr(script)+",'hy2-install','exec'))\nexcept Exception as error:\n print(json.dumps({'installed':False,'errorClass':type(error).__name__,'line':traceback.extract_tb(error.__traceback__)[-1].lineno}))"
   result=remote_json(ssh,wrapped,timeout=150);print(json.dumps(result));assert result.get('installed')
  finally:
   with ssh.open_sftp() as sftp:
    for name in ['hysteria','hy2_manager.py']:
     try:sftp.remove(stage+'/'+name)
     except OSError:pass
    try:sftp.rmdir(stage)
    except OSError:pass
except Exception as error:
 print('HY2 deployment failed:',type(error).__name__,'; private details suppressed. Existing VMess remains unchanged.',file=sys.stderr);sys.exit(1)
