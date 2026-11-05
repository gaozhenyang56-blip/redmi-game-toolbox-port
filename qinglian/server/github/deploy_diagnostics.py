"""Install only the worker recovery fix and fixed owner diagnostic runner, with rollback."""
import hashlib,json,tempfile
from pathlib import Path
from ssh_common import connection,remote_json
PREFLIGHT=r'''
import hashlib,json,os,sqlite3,tempfile
from pathlib import Path
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text())
with sqlite3.connect('file:'+cfg['statePath']+'?mode=ro',uri=True) as db:
 assert db.execute('PRAGMA quick_check(1)').fetchone()[0]=='ok'
assert os.statvfs('/etc/x-ui').f_bavail*os.statvfs('/etc/x-ui').f_frsize>=128*1024**2
stage=tempfile.mkdtemp(prefix='qinglian-diagnostics-',dir='/tmp');os.chmod(stage,0o700)
print(json.dumps({'stage':stage}))
'''
INSTALL=r'''
import hashlib,json,os,shutil,sqlite3,subprocess,time,urllib.request
from pathlib import Path
stage=Path(STAGE);target=Path('/usr/local/lib/qinglian');names=['export_engine.py','diagnostics.py'];existed={};cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());engine=json.loads(Path('/etc/x-ui/qinglian/exports.json').read_text())
with sqlite3.connect('file:'+cfg['statePath']+'?mode=ro',uri=True) as db:before={r[0]:(r[1],r[2],r[3]) for r in db.execute('SELECT id,up,down,data FROM exports')}
configs={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path('/etc/x-ui/qinglian.json'),Path('/etc/x-ui/qinglian/exports.json')]}
def restart():subprocess.run(['systemctl','restart','qinglian-exports'],check=True,timeout=30,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
try:
 for name in names:
  src=stage/name;assert hashlib.sha256(src.read_bytes()).hexdigest()==HASHES[name];compile(src.read_bytes(),name,'exec')
  dest=target/name;existed[name]=dest.exists()
  if dest.exists():shutil.copy2(dest,stage/(name+'.old'))
 for name in names:
  dest=target/name;temp=target/(name+'.new');shutil.copyfile(stage/name,temp);os.chmod(temp,0o600);os.replace(temp,dest)
 restart();healthy=False
 for _ in range(30):
  try:
   req=urllib.request.Request('http://127.0.0.1:'+str(engine['controlPort'])+'/status',headers={'Authorization':'Bearer '+engine['managementToken']})
   with urllib.request.build_opener(urllib.request.ProxyHandler({})).open(req,timeout=2) as r:healthy=json.load(r).get('ready',False)
   if healthy:break
  except Exception:pass
  time.sleep(.5)
 assert healthy
 completed=subprocess.run(['/usr/bin/python3',str(target/'diagnostics.py'),'--mode','all'],stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,timeout=85,check=True)
 assert len(completed.stdout)<=65536;result=json.loads(completed.stdout);assert result['ok'] and result['testGuestStopped']
 with sqlite3.connect('file:'+cfg['statePath']+'?mode=ro',uri=True) as db:after={r[0]:(r[1],r[2],r[3]) for r in db.execute('SELECT id,up,down,data FROM exports')}
 assert all(k in after and after[k][0]>=v[0] and after[k][1]>=v[1] and after[k][2]==v[2] for k,v in before.items())
 assert all(hashlib.sha256(Path(p).read_bytes()).hexdigest()==v for p,v in configs.items())
 assert subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()=='active'
 print(json.dumps({'ok':True,'workerRecoveryInstalled':True,'diagnosticSteps':result['steps'],'testGuestStopped':result['testGuestStopped'],'existingCredentialsAndCountersPreserved':True}))
except Exception as error:
 for name,exists in existed.items():
  dest=target/name
  if exists and (stage/(name+'.old')).exists():shutil.copy2(stage/(name+'.old'),dest)
  elif not exists:dest.unlink(missing_ok=True)
 restart();print(json.dumps({'ok':False,'rolledBack':True,'errorType':type(error).__name__,'diagnosticSteps':result['steps'] if 'result' in locals() else []}))
finally:shutil.rmtree(stage)
'''
try:
 with connection() as ssh:
  meta=remote_json(ssh,PREFLIGHT);stage=meta['stage'];assert stage.startswith('/tmp/qinglian-diagnostics-')
  hashes={};root=Path(__file__).resolve().parent.parent
  with ssh.open_sftp() as sftp:
   for name in ['export_engine.py','diagnostics.py']:
    source=root/name;hashes[name]=hashlib.sha256(source.read_bytes()).hexdigest();sftp.put(str(source),stage+'/'+name);sftp.chmod(stage+'/'+name,0o600)
  result=remote_json(ssh,'STAGE='+repr(stage)+'\nHASHES='+repr(hashes)+'\n'+INSTALL,timeout=150);print(json.dumps(result));assert result.get('ok')
except Exception as error:print(json.dumps({'ok':False,'errorType':type(error).__name__}));raise SystemExit(1)
