#!/usr/bin/env python3
"""Deploy isolated, consent-gated account workers after the panel schema upgrade."""
import json,sys
from pathlib import Path
from ssh_common import connection,remote_json
INSTALL=r'''
import json,os,secrets,shutil,sqlite3,subprocess,time,urllib.request,urllib.error,ssl
from pathlib import Path
stage=Path(STAGE);base=json.loads(Path('/etc/x-ui/qinglian.json').read_text());root=Path('/usr/local/lib/qinglian');root.mkdir(exist_ok=True)
with sqlite3.connect(base['statePath']) as db:
 columns={r[1] for r in db.execute('PRAGMA table_info(exports)')};assert {'kind','parent_id','data'}.issubset(columns),'panel upgrade required'
config=Path('/etc/x-ui/qinglian/exports.json');unit=Path('/etc/systemd/system/qinglian-exports.service');engine=root/'export_engine.py';existing=unit.exists();backup=Path('/etc/x-ui/qinglian/export-before-install');backup.mkdir(mode=0o700,exist_ok=True)
managed=[config,unit,engine];saved=[];created=[]
for path in managed:
 if path.exists():
  destination=backup/(path.name+'-'+secrets.token_hex(6));shutil.copy2(path,destination);saved.append((path,destination))
 else:created.append(path)
def control(auth=True):
 cfg=json.loads(config.read_text());r=urllib.request.Request('http://127.0.0.1:11456/status',headers={'Authorization':'Bearer '+cfg['managementToken']} if auth else {})
 with urllib.request.build_opener(urllib.request.ProxyHandler({})).open(r,timeout=4) as response:return json.load(response)
try:
 if not existing:
  output=subprocess.check_output(['ss','-ltnH','sport','=',':11456'],text=True);assert not output.strip(),'control port already in use'
  cfg={'statePath':base['statePath'],'database':'/etc/x-ui/x-ui.db','ownerId':base['ownerId'],'certificate':base['tls']['certificate'],'privateKey':base['tls']['privateKey'],'xrayBinary':'/usr/local/x-ui/bin/xray-linux-amd64','hy2Binary':str(root/'hysteria'),'work':'/run/qinglian-exports','controlPort':11456,'managementToken':secrets.token_hex(32)}
  fd=os.open(config,os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600)
  with os.fdopen(fd,'w') as f:json.dump(cfg,f)
 replacement=engine.with_name('.export_engine.py.new');shutil.copyfile(stage/'export_engine.py',replacement);replacement.chmod(0o644);os.replace(replacement,engine)
 unit.write_text('[Unit]\nDescription=Qinglian consent-gated per-account VPN and exports\nAfter=network-online.target x-ui.service\nWants=network-online.target\n\n[Service]\nType=simple\nExecStart=/usr/bin/python3 /usr/local/lib/qinglian/export_engine.py\nRestart=on-failure\nRestartSec=5\nKillMode=control-group\nRuntimeDirectory=qinglian-exports\nRuntimeDirectoryMode=0700\nUMask=0077\nNoNewPrivileges=true\nPrivateTmp=true\nProtectHome=true\nProtectSystem=strict\nReadWritePaths=/etc/x-ui /run/qinglian-exports\nCapabilityBoundingSet=CAP_DAC_OVERRIDE\nMemoryMax=768M\n\n[Install]\nWantedBy=multi-user.target\n')
 subprocess.run(['systemctl','daemon-reload'],check=True);subprocess.run(['systemctl','enable','qinglian-exports'],check=True,capture_output=True);subprocess.run(['systemctl','restart','qinglian-exports'],check=True)
 for i in range(30):
  try:assert control()['running'];break
  except Exception:time.sleep(.3)
 else:raise RuntimeError('account engine unavailable')
 try:control(False);raise AssertionError('anonymous control access')
 except urllib.error.HTTPError as e:assert e.code==401
 if shutil.which('ufw'):
  status=subprocess.run(['ufw','status'],capture_output=True,text=True,timeout=10)
  if 'Status: active' in status.stdout:
   for proto in ['tcp','udp']:subprocess.run(['ufw','allow','22000:23999/'+proto,'comment','Qinglian per-account nodes'],check=True,capture_output=True,timeout=15)
 tls=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem');api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=tls))
 req=urllib.request.Request('https://'+base['serverAddress']+':'+str(base['tls']['port'])+'/api/v1/profile',headers={'Authorization':'Bearer '+base['clientToken']})
 with api.open(req,timeout=5) as response:assert json.load(response)['node']
 assert subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()=='active'
 assert subprocess.check_output(['systemctl','is-active','qinglian-hy2'],text=True).strip()=='active'
 print(json.dumps({'installed':True,'controlLoopbackOnly':True,'anonymousControlRejected':True,'originalServicesRetained':True,'backupSaved':True,'activeWorkers':control()['activeWorkers']}))
except BaseException:
 subprocess.run(['systemctl','stop','qinglian-exports'],capture_output=True)
 for path in created:path.unlink(missing_ok=True)
 for path,source in saved:shutil.copy2(source,path)
 subprocess.run(['systemctl','daemon-reload'],capture_output=True)
 if existing:subprocess.run(['systemctl','start','qinglian-exports'],capture_output=True)
 raise
'''
try:
 with connection() as ssh:
  stage=remote_json(ssh,"import tempfile,json;print(json.dumps(tempfile.mkdtemp(prefix='qinglian-exports-')))")
  try:
   with ssh.open_sftp() as sftp:sftp.put(str(Path(__file__).parents[1]/'export_engine.py'),stage+'/export_engine.py');sftp.chmod(stage+'/export_engine.py',0o600)
   script='STAGE='+repr(stage)+'\n'+INSTALL
   wrapped="import json,traceback\ntry:\n exec(compile("+repr(script)+",'account-install','exec'))\nexcept Exception as error:\n print(json.dumps({'installed':False,'errorClass':type(error).__name__,'line':traceback.extract_tb(error.__traceback__)[-1].lineno}))"
   result=remote_json(ssh,wrapped,timeout=150);print(json.dumps(result));assert result.get('installed')
  finally:
   with ssh.open_sftp() as sftp:
    try:sftp.remove(stage+'/export_engine.py');sftp.rmdir(stage)
    except OSError:pass
except Exception as error:
 print('Account engine deployment failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
