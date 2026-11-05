"""Guarded recovery of an active-but-stalled account worker service only."""
import json,sys
from ssh_common import connection,remote_json
REMOTE=r'''
import hashlib,json,os,secrets,sqlite3,ssl,subprocess,time,urllib.request,uuid
from pathlib import Path
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());engine=json.loads(Path('/etc/x-ui/qinglian/exports.json').read_text())
state=cfg['statePath'];result={'scope':'qinglian-exports-only','restarted':False}
with sqlite3.connect('file:'+state+'?mode=ro',uri=True) as db:
 result['databaseHealthy']=db.execute('PRAGMA quick_check(1)').fetchone()[0]=='ok'
 before={r[0]:(r[1],r[2],r[3]) for r in db.execute('SELECT id,up,down,data FROM exports')}
with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:
 db.row_factory=sqlite3.Row;parents=[dict(r) for r in db.execute('SELECT * FROM inbounds ORDER BY id')]
 row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone();path=row[0] if row else '/'
result['diskHealthy']=os.statvfs('/etc/x-ui').f_bavail*os.statvfs('/etc/x-ui').f_frsize>=128*1024*1024
result['binariesHealthy']=all(Path(engine[k]).is_file() and os.access(engine[k],os.X_OK) for k in ['xrayBinary','hy2Binary'])
assert result['databaseHealthy'] and result['diskHealthy'] and result['binariesHealthy']
plain=urllib.request.build_opener(urllib.request.ProxyHandler({}))
def control():
 req=urllib.request.Request('http://127.0.0.1:'+str(engine['controlPort'])+'/status',headers={'Authorization':'Bearer '+engine['managementToken']})
 with plain.open(req,timeout=4) as r:return json.load(r)
result['workersBefore']=control().get('activeWorkers')
context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem');api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=context))
base='https://127.0.0.1:'+str(cfg['tls']['port'])+path+'api/v1/guest/';device=secrets.token_hex(32);key=secrets.token_hex(32)
def request(part,body):
 req=urllib.request.Request(base+part,json.dumps(body).encode(),headers={'Content-Type':'application/json','Authorization':'Bearer '+(cfg['clientToken'] if part=='start' else key),'X-Qinglian-Device':device,'User-Agent':'Qinglian/RecoveryCheck'})
 with api.open(req,timeout=6) as r:return json.load(r)
try:
 request('start',{'requestId':str(uuid.uuid4()),'sessionKey':key})
 profile={}
 for _ in range(12):
  profile=request('profile',{'labHy2':True,'cdnCompatibility':True})
  if profile.get('ready'):break
  time.sleep(.5)
 if not profile.get('ready'):
  status=control()
  with sqlite3.connect('file:'+state+'?mode=ro',uri=True) as db:
   eligible=db.execute("SELECT COUNT(*) FROM exports e JOIN api_users u ON u.id=e.user_id WHERE e.expires>? AND e.status IN ('pending','active','error') AND e.up+e.down<e.total AND u.enabled=1 AND (u.history_consent=1 OR e.kind='guest')",(int(time.time()),)).fetchone()[0]
  assert eligible>0 and status.get('activeWorkers')==0,'stalled-worker recovery guard not met'
  subprocess.run(['systemctl','restart','qinglian-exports'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30);result['restarted']=True
  for _ in range(40):
   try:profile=request('profile',{'labHy2':True,'cdnCompatibility':True})
   except Exception:profile={}
   if profile.get('ready'):break
   time.sleep(.5)
 result['profileReady']=bool(profile.get('ready'));assert result['profileReady']
 result['workersAfter']=control().get('activeWorkers')
finally:
 try:request('stop',{});result['testGuestStopped']=True
 except Exception:result['testGuestStopped']=False
with sqlite3.connect('file:'+state+'?mode=ro',uri=True) as db:
 after={r[0]:(r[1],r[2],r[3]) for r in db.execute('SELECT id,up,down,data FROM exports')}
 assert all(k in after and after[k][0]>=v[0] and after[k][1]>=v[1] and after[k][2]==v[2] for k,v in before.items())
with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:
 db.row_factory=sqlite3.Row;current=[dict(r) for r in db.execute('SELECT * FROM inbounds ORDER BY id')]
 assert len(current)==len(parents)
 for a,b in zip(parents,current):
  assert {k:v for k,v in a.items() if k not in ('up','down')}=={k:v for k,v in b.items() if k not in ('up','down')}
  assert b['up']>=a['up'] and b['down']>=a['down']
result['configurationCredentialsAndCountersPreserved']=True
result['originalServicesActive']=all(subprocess.check_output(['systemctl','is-active',s],text=True).strip()=='active' for s in ['x-ui','qinglian-hy2'])
print(json.dumps(result))
'''
try:
 with connection() as ssh:
  wrapped="import json,traceback\ntry:\n exec(compile("+repr(REMOTE)+",'worker-recovery','exec'))\nexcept Exception as error:\n print(json.dumps({'ok':False,'errorType':type(error).__name__,'line':traceback.extract_tb(error.__traceback__)[-1].lineno}))"
  value=remote_json(ssh,wrapped,timeout=150);print(json.dumps(value));assert value.get('profileReady')
except Exception as error:print(json.dumps({'ok':False,'errorType':type(error).__name__}));raise SystemExit(1)
