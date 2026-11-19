"""Guarded repair through normal owner panel API; never restart the HTTPS frontend."""
import json,os,traceback
from pathlib import Path
from ssh_common import connection,remote_json
POLICY=Path(__file__).with_name('parent_expiry_policy.py').read_text()
REMOTE=r'''
import hashlib,http.cookiejar,json,os,secrets,shutil,socket,sqlite3,ssl,subprocess,time,urllib.request,urllib.parse,uuid
from pathlib import Path
os.umask(0o077);cfg_path=Path('/etc/x-ui/qinglian.json');cfg=json.loads(cfg_path.read_text());cfg_hash=hashlib.sha256(cfg_path.read_bytes()).hexdigest();state=cfg['statePath']
def read_parents():
 with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:
  db.row_factory=sqlite3.Row;assert db.execute('PRAGMA quick_check(1)').fetchone()[0]=='ok';return {r['id']:dict(r) for r in db.execute('SELECT * FROM inbounds ORDER BY id')}
before=read_parents()
with sqlite3.connect('file:'+state+'?mode=ro',uri=True) as db:
 assert db.execute('PRAGMA quick_check(1)').fetchone()[0]=='ok';selected=db.execute('SELECT inbound FROM preferences WHERE id=1').fetchone()[0]
 acceleration=db.execute('SELECT enabled,boundInbound FROM acceleration WHERE id=1').fetchone()
 exports_before={r[0]:(r[1],r[2],r[3],r[4]) for r in db.execute('SELECT id,up,down,total,data FROM exports')}
plan=plan_expiry_repair(list(before.values()),selected,cfg['ownerId'],cfg['nodeUuid'],int(time.time()*1000))
result={'scope':'app-selected-and-original-bootstrap-only','selectedInbound':selected,'plan':plan,'applied':False,'noQuotaOrCounterReset':True}
assert os.statvfs('/etc/x-ui').f_bavail*os.statvfs('/etc/x-ui').f_frsize>=64*1024**2
if APPLY:
 assert plan,'no expired linked nodes to repair'
 backup=Path('/root')/('qinglian-parent-expiry-'+time.strftime('%Y%m%dT%H%M%SZ',time.gmtime())+'-'+secrets.token_hex(4));backup.mkdir(mode=0o700)
 for source,name in [('/etc/x-ui/x-ui.db','panel-consistent.db'),(state,'state-consistent.db')]:
  with sqlite3.connect('file:'+source+'?mode=ro',uri=True) as db,sqlite3.connect(backup/name) as dest:db.backup(dest)
 shutil.copy2(cfg_path,backup/'qinglian.json');(backup/'plan.json').write_text(json.dumps(result))
 with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:
  db.row_factory=sqlite3.Row;settings={r[0]:r[1] for r in db.execute('SELECT key,value FROM settings')};user=dict(db.execute('SELECT username,password FROM users WHERE id=?',(cfg['ownerId'],)).fetchone())
 path=settings.get('webBasePath','/');assert path.startswith('/') and path.endswith('/') and not any(c in path for c in '\r\n?#')
 assert not settings.get('webCertFile'),'local panel TLS configuration needs explicit support'
 base='http://127.0.0.1:'+str(int(settings.get('webPort','11451')))+path
 jar=http.cookiejar.CookieJar()
 class NoRedirect(urllib.request.HTTPRedirectHandler):
  def redirect_request(self,*args,**kwargs):return None
 panel=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPCookieProcessor(jar),NoRedirect())
 with panel.open(urllib.request.Request(base+'login',urllib.parse.urlencode(user).encode(),headers={'User-Agent':'Qinglian/ExpiryRecovery'}),timeout=5) as response:assert json.load(response)['success']
 main_pid=subprocess.check_output(['systemctl','show','x-ui','-p','MainPID','--value'],text=True).strip();attempted=[]
 def update(row,enabled,expiry):
  fields={'id':row['id'],'up':row['up'],'down':row['down'],'total':row['total'],'remark':row['remark'],'enable':enabled,'expiryTime':expiry,'listen':row['listen'],'port':row['port'],'protocol':row['protocol'],'settings':row['settings'],'streamSettings':row['stream_settings'],'tag':row['tag'],'sniffing':row['sniffing']}
  request=urllib.request.Request(base+'xui/inbound/update/'+str(row['id']),json.dumps(fields).encode(),headers={'Content-Type':'application/json','Origin':base.rstrip('/'),'X-Requested-With':'XMLHttpRequest','User-Agent':'Qinglian/ExpiryRecovery'})
  with panel.open(request,timeout=6) as response:assert json.load(response)['success']
 def verify_rows():
  current=read_parents();assert set(current)==set(before)
  changed={v['id'] for v in plan}
  for ident,old in before.items():
   new=current[ident]
   keys=set(old)-{'up','down'}-({'enable','expiry_time'} if ident in changed else set())
   assert all(old[k]==new[k] for k in keys),'node configuration changed'
   assert new['up']>=old['up'] and new['down']>=old['down'],'counter decreased'
   if ident in changed:assert new['enable'] and new['expiry_time']==0
  assert hashlib.sha256(cfg_path.read_bytes()).hexdigest()==cfg_hash
  with sqlite3.connect('file:'+state+'?mode=ro',uri=True) as db:after={r[0]:(r[1],r[2],r[3],r[4]) for r in db.execute('SELECT id,up,down,total,data FROM exports')}
  assert all(k in after and after[k][0]>=v[0] and after[k][1]>=v[1] and after[k][2:]==v[2:] for k,v in exports_before.items()),'existing export credentials or quotas changed'
 try:
  for item in plan:
   ident=item['id'];current=read_parents()[ident];assert current==before[ident],'pre-update snapshot changed'
   attempted.append(ident);update(current,True,0)
  verify_rows();result['applied']=True
  context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem');api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=context),NoRedirect());device=secrets.token_hex(32);key=secrets.token_hex(32);started=False
  def guest(part,body):
   request=urllib.request.Request('https://127.0.0.1:'+str(cfg['tls']['port'])+path+'api/v1/guest/'+part,json.dumps(body).encode(),headers={'Authorization':'Bearer '+(cfg['clientToken'] if part=='start' else key),'X-Qinglian-Device':device,'Content-Type':'application/json','User-Agent':'Qinglian/ExpiryRecovery'})
   with api.open(request,timeout=5) as response:return json.load(response)
  try:
   guest('start',{'requestId':str(uuid.uuid4()),'sessionKey':key});started=True;profile={};expect_hy=bool(acceleration and acceleration[0] and acceleration[1]==selected)
   for _ in range(40):
    profile=guest('profile',{'labHy2':True,'cdnCompatibility':True})
    if profile.get('ready') and (not expect_hy or (profile.get('acceleration') or {}).get('node')):break
    time.sleep(.5)
   result['profileReady']=bool(profile.get('ready'));result['hy2Ready']=bool((profile.get('acceleration') or {}).get('node'));assert result['profileReady'] and (not expect_hy or result['hy2Ready'])
  finally:
   if started:
    try:guest('stop',{});result['testGuestStopped']=True
    except Exception:result['testGuestStopped']=False
  listeners_ready=False
  for _ in range(25):
   try:
    for item in plan:
     row=before[item['id']];host=row['listen'] if row['listen'] not in ('','0.0.0.0') else '127.0.0.1'
     with socket.create_connection((host,row['port']),timeout=1):pass
    listeners_ready=True;break
   except OSError:time.sleep(.5)
  result['originalListenersReady']=listeners_ready;assert listeners_ready
  verify_rows();result['configurationCredentialsAndCountersPreserved']=True
  result['httpsFrontendNotRestarted']=subprocess.check_output(['systemctl','show','x-ui','-p','MainPID','--value'],text=True).strip()==main_pid;assert result['httpsFrontendNotRestarted']
  result['parentExpiryNow']='unlimited';result['exportExpiryPolicyUnchanged']=True
 except Exception as error:
  rollback_ok=True
  for ident in reversed(attempted):
   try:update(read_parents()[ident],bool(before[ident]['enable']),before[ident]['expiry_time'])
   except Exception:rollback_ok=False
  result.update(ok=False,applied=False,rollbackSucceeded=rollback_ok,errorType=type(error).__name__)
result.setdefault('ok',True);print(json.dumps(result))
'''
def main():
 apply=os.environ.get('QINGLIAN_APPLY_EXPIRY_REPAIR')=='1'
 try:
  with connection() as ssh:
   source='APPLY='+repr(apply)+'\n'+POLICY+'\n'+REMOTE
   wrapped="import json,traceback\ntry:\n exec(compile("+repr(source)+",'parent-expiry-recovery','exec'))\nexcept Exception as error:\n print(json.dumps({'ok':False,'errorType':type(error).__name__,'line':traceback.extract_tb(error.__traceback__)[-1].lineno}))"
   result=remote_json(ssh,wrapped,timeout=150);print(json.dumps(result));assert result.get('ok')
 except Exception as error:print(json.dumps({'ok':False,'errorType':type(error).__name__}));raise SystemExit(1)
if __name__=='__main__':main()
