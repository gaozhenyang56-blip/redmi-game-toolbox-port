#!/usr/bin/env python3
"""Isolated export workers. Existing App/Xray/HY2 services are never reconfigured."""
import hashlib,hmac,ipaddress,json,os,re,signal,socket,sqlite3,subprocess,threading,time,urllib.request
from pathlib import Path
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer

class ExportEngine:
 def __init__(self,config):
  self.cfg=config;self.lock=threading.RLock();self.children={};self.failures={};self.stopping=False;self.history_failed=threading.Event()
  self.work=Path(config['work']);self.work.mkdir(mode=0o700,parents=True,exist_ok=True)
 def db(self):
  db=sqlite3.connect(self.cfg['statePath'],timeout=5);db.row_factory=sqlite3.Row;return db
 def rows(self):
  with self.db() as db:return [dict(r) for r in db.execute('SELECT e.*,u.enabled,u.history_consent FROM exports e JOIN api_users u ON e.user_id=u.id WHERE e.status IN (\'pending\',\'active\',\'error\')')]
 @staticmethod
 def allowed(row):return row and row['enabled'] and (row['history_consent'] or row['kind']=='guest') and row['expires']>int(time.time()) and row['up']+row['down']<row['total'] and row['status'] in ('active','pending','error')
 def authenticate(self,ident,secret):
  with self.lock:
   with self.db() as db:r=db.execute('SELECT e.*,u.enabled,u.history_consent FROM exports e JOIN api_users u ON e.user_id=u.id WHERE e.id=?',(ident,)).fetchone()
   ok=bool(self.allowed(r) and self.parent_allowed(dict(r)) and r['status']=='active' and ident in self.children and hmac.compare_digest(json.loads(r['data'])['node'].get('auth',''),str(secret)))
   return {'ok':ok,'id':ident if ok else ''}
 @staticmethod
 def free_port():
  with socket.socket() as sock:sock.bind(('127.0.0.1',0));return sock.getsockname()[1]
 def acl(self):return ['127.0.0.0/8','10.0.0.0/8','172.16.0.0/12','192.168.0.0/16','169.254.0.0/16','::1/128','fc00::/7','fe80::/10']
 def parent_allowed(self,row):
  if row.get('kind','export') not in ('main','guest'):return True
  if row.get('kind')=='guest':
   with self.db() as db:used=db.execute("SELECT COALESCE(SUM(up+down),0) FROM exports WHERE user_id=? AND kind='guest'",(row['user_id'],)).fetchone()[0]
   if used>=64*1024**3:return False
  with sqlite3.connect(self.cfg['database'],timeout=5) as db:
   db.row_factory=sqlite3.Row;p=db.execute('SELECT * FROM inbounds WHERE id=? AND user_id=?',(row['parent_id'],self.cfg['ownerId'])).fetchone()
  return bool(p and p['enable'] and (p['total']==0 or p['up']+p['down']<p['total']) and (p['expiry_time']==0 or p['expiry_time']>int(time.time()*1000)))
 def prepare(self,cfg):return cfg
 def start(self,row):
  ident=row['id'];profile=json.loads(row['data']);port=self.free_port();secret=os.urandom(32).hex();hy=row['protocol']=='hysteria2'
  if hy:
   cfg={'listen':':'+str(row['port']),'tls':{'cert':self.cfg['certificate'],'key':self.cfg['privateKey']},'auth':{'type':'http','http':{'url':'http://127.0.0.1:'+str(self.cfg['controlPort'])+'/auth/'+ident}},'trafficStats':{'listen':'127.0.0.1:'+str(port),'secret':secret},'resolver':{'type':'tcp','tcp':{'addr':'1.1.1.1:53','timeout':'4s'}},'outbounds':[{'name':'direct','type':'direct','direct':{'mode':'4'}}],'acl':{'inline':['reject('+x+')' for x in self.acl()]+['direct(all)']},'congestion':{'type':'bbr','bbrProfile':'conservative'},'quic':{'disablePathMTUDiscovery':True},'sniff':{'enable':True,'timeout':'1s','rewriteDomain':True,'tcpPorts':'80,443','udpPorts':'443'}}
   if profile.get('node',{}).get('hy2Performance')=='aggressive-v1' and row['kind'] in ('main','guest'):
    cfg['congestion']['bbrProfile']='aggressive';cfg['ignoreClientBandwidth']=True
    cfg['quic'].update({'initStreamReceiveWindow':8*1024*1024,'maxStreamReceiveWindow':32*1024*1024,'initConnReceiveWindow':16*1024*1024,'maxConnReceiveWindow':64*1024*1024})
   binary=self.cfg['hy2Binary'];args=['server','--log-level','error','--disable-update-check']
  else:
   cfg={'log':{'loglevel':'none'},'api':{'tag':'api','services':['StatsService']},'stats':{},'policy':{'system':{'statsInboundUplink':True,'statsInboundDownlink':True}},'inbounds':[profile['inbound'],{'tag':'api','listen':'127.0.0.1','port':port,'protocol':'dokodemo-door','settings':{'address':'127.0.0.1'}}],'outbounds':[{'tag':'proxy','protocol':'freedom','settings':{'domainStrategy':'UseIPv4'}},{'tag':'block','protocol':'blackhole','settings':{}}],'routing':{'domainStrategy':'IPIfNonMatch','rules':[{'type':'field','inboundTag':['api'],'outboundTag':'api'},{'type':'field','ip':self.acl(),'outboundTag':'block'}]}}
   binary=self.cfg['xrayBinary'];args=['run']
  fifo=None;keeper=None
  if not hy:
   fifo=self.work/(ident+'.access');fifo.unlink(missing_ok=True);os.mkfifo(fifo,0o600);keeper=os.open(fifo,os.O_RDWR|os.O_NONBLOCK);cfg['log']={'loglevel':'info','access':str(fifo),'error':str(fifo)};cfg['inbounds'][0]['sniffing']={'enabled':True,'destOverride':['http','tls']}
   threading.Thread(target=self.read_native,args=(ident,fifo),daemon=True).start()
  else:args=['server','--log-level','debug','--log-format','json','--disable-update-check']
  path=self.work/(ident+'.json');fd=os.open(path,os.O_CREAT|os.O_TRUNC|os.O_WRONLY,0o600)
  with os.fdopen(fd,'w') as f:json.dump(self.prepare(cfg),f)
  try:process=subprocess.Popen([binary,*args,'--config',str(path)],stdout=subprocess.PIPE if hy else subprocess.DEVNULL,stderr=subprocess.STDOUT if hy else subprocess.DEVNULL)
  except BaseException:
   if keeper is not None:os.close(keeper)
   path.unlink(missing_ok=True)
   if fifo:fifo.unlink(missing_ok=True)
   raise
  item={'process':process,'port':port,'secret':secret,'hy':hy,'cursor':(0,0),'path':path,'fifo':fifo,'keeper':keeper};self.children[ident]=item
  if hy:threading.Thread(target=self.read_hy,args=(ident,process.stdout),daemon=True).start()
  for attempt in range(30):
   if process.poll() is not None:raise RuntimeError('worker exited')
   try:
    with socket.create_connection(('127.0.0.1',port),.1):break
   except OSError:time.sleep(.05)
  else:raise RuntimeError('worker did not start')
  with self.db() as db:db.execute("UPDATE exports SET status='active' WHERE id=? AND status IN ('pending','error','active')",(ident,))
 def stats(self,ident,item):
  if item['hy']:
   request=urllib.request.Request('http://127.0.0.1:'+str(item['port'])+'/traffic',headers={'Authorization':item['secret']})
   with urllib.request.build_opener(urllib.request.ProxyHandler({})).open(request,timeout=2) as response:data=json.loads(response.read(65537))
   stats=data.get(ident,{'tx':0,'rx':0});return stats['tx'],stats['rx']
  result=subprocess.run([self.cfg['xrayBinary'],'api','statsquery','--server=127.0.0.1:'+str(item['port']),'-timeout=2','-pattern','inbound>>>export-'+ident+'>>>traffic>>>'],capture_output=True,timeout=3)
  if result.returncode!=0:raise RuntimeError('accounting unavailable')
  data=json.loads(result.stdout);stats={s['name']:int(s.get('value',0)) for s in data.get('stat',[])}
  return stats.get('inbound>>>export-'+ident+'>>>traffic>>>uplink',0),stats.get('inbound>>>export-'+ident+'>>>traffic>>>downlink',0)
 def account(self,ident,item):
  up,down=self.stats(ident,item)
  if type(up) is not int or type(down) is not int or min(up,down)<0 or max(up,down)>2**63-1:raise ValueError('counter invalid')
  previous=item['cursor'];delta=(up-previous[0],down-previous[1]);assert min(delta)>=0
  with self.db() as db:
   row=db.execute('SELECT kind,parent_id FROM exports WHERE id=?',(ident,)).fetchone()
   if row['kind'] in ('main','guest'):
    # Commit normal-operation parent and account deltas together; abrupt crash durability depends on SQLite journal modes.
    db.execute('ATTACH DATABASE ? AS panel',(self.cfg['database'],))
    db.execute('BEGIN IMMEDIATE')
    updated=db.execute('UPDATE panel.inbounds SET up=up+?,down=down+? WHERE id=? AND user_id=? AND up<=? AND down<=?',(*delta,row['parent_id'],self.cfg['ownerId'],2**63-1-delta[0],2**63-1-delta[1]));assert updated.rowcount==1
   result=db.execute('UPDATE exports SET up=up+?,down=down+? WHERE id=? AND up<=? AND down<=?',(*delta,ident,2**63-1-delta[0],2**63-1-delta[1]));assert result.rowcount==1
  item['cursor']=(up,down)
 def stop(self,ident,collect=True):
  item=self.children.pop(ident,None)
  if item is None:return
  if collect and item['process'].poll() is None:
   try:self.account(ident,item)
   except Exception:pass
  item['process'].terminate()
  try:item['process'].wait(timeout=2)
  except subprocess.TimeoutExpired:item['process'].kill();item['process'].wait(timeout=2)
  if item['process'].stdout:item['process'].stdout.close()
  item['path'].unlink(missing_ok=True)
  if item.get('keeper') is not None:os.close(item['keeper'])
  fifo=item.get('fifo')
  if fifo:
   try:fd=os.open(fifo,os.O_WRONLY|os.O_NONBLOCK);os.close(fd)
   except OSError:pass
   fifo.unlink(missing_ok=True)
 def tick(self):
  with self.lock:
   if self.history_failed.is_set():self.close();return
   rows={r['id']:r for r in self.rows()}
   for ident in list(self.children):
    row=rows.get(ident)
    if not self.allowed(row) or not self.parent_allowed(row):self.stop(ident)
   for ident,row in rows.items():
    if not self.allowed(row) or not self.parent_allowed(row):
     status='revoked' if not row['enabled'] else 'expired' if row['expires']<=int(time.time()) else 'exhausted'
     with self.db() as db:db.execute('UPDATE exports SET status=? WHERE id=?',(status,ident))
     continue
    try:
     if ident not in self.children:
      failures=[t for t in self.failures.get(ident,[]) if time.monotonic()-t<60];self.failures[ident]=failures
      if len(failures)>=3:continue
      if len(self.children)>=16:continue
      self.start(row)
     item=self.children[ident]
     if item['process'].poll() is not None:raise RuntimeError('worker exited')
     self.account(ident,item)
     with self.db() as db:current=dict(db.execute('SELECT e.*,u.enabled,u.history_consent FROM exports e JOIN api_users u ON e.user_id=u.id WHERE e.id=?',(ident,)).fetchone())
     if not self.allowed(current) or not self.parent_allowed(current):self.stop(ident,False)
    except Exception:
     self.stop(ident,False);self.failures.setdefault(ident,[]).append(time.monotonic())
     with self.db() as db:db.execute("UPDATE exports SET status='error' WHERE id=? AND status IN ('pending','active','error')",(ident,))
 def record(self,ident,target):
  try:
   target=str(target).strip().lower().rstrip('.')
   if target.startswith('['):return
   if ':' in target:target=target.rsplit(':',1)[0]
   try:ipaddress.ip_address(target);return
   except ValueError:pass
   if len(target)>253 or not re.fullmatch(r'(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?',target):return
   now=int(time.time())
   with self.db() as db:
    row=db.execute('SELECT e.*,u.enabled,u.history_consent FROM exports e JOIN api_users u ON e.user_id=u.id WHERE e.id=?',(ident,)).fetchone()
    if not self.allowed(row) or not row['history_consent']:return
    db.execute('INSERT INTO history(user_id,node_id,domain,bucket,first_seen,last_seen,hits) VALUES(?,?,?,?,?,?,1) ON CONFLICT(user_id,node_id,domain,bucket) DO UPDATE SET last_seen=excluded.last_seen,hits=hits+1',(row['user_id'],ident,target,now//30,now,now))
  except Exception:self.history_failed.set()
 def read_native(self,ident,path):
  try:
   with open(path,'r',encoding='utf-8',errors='replace') as stream:
    for line in stream:
     match=re.search(r'accepted (?:tcp|udp):([^\s]+)',line) or re.search(r'sniffed domain: ([^\s]+)',line)
     if match:self.record(ident,match[1])
  except OSError:pass
 def read_hy(self,ident,stream):
  try:
   for line in stream:
    try:
     data=json.loads(line)
     if data.get('msg') in ('TCP request','UDP request'):self.record(ident,data.get('reqAddr',''))
    except (ValueError,TypeError):pass
  except OSError:pass
 def close(self):
  with self.lock:
   for ident in list(self.children):self.stop(ident)
class Handler(BaseHTTPRequestHandler):
 def log_message(self,*args):pass
 def reply(self,code,data):
  raw=json.dumps(data).encode();self.send_response(code);self.send_header('Content-Type','application/json');self.send_header('Content-Length',str(len(raw)));self.send_header('Cache-Control','no-store');self.end_headers();self.wfile.write(raw)
 def do_GET(self):
  engine=self.server.engine
  if not hmac.compare_digest(self.headers.get('Authorization',''),'Bearer '+engine.cfg['managementToken']):self.reply(401,{});return
  self.reply(200,{'running':True,'activeWorkers':len(engine.children)})
 def do_POST(self):
  self.connection.settimeout(4);engine=self.server.engine
  if not self.path.startswith('/auth/'):self.reply(404,{});return
  try:
   size=int(self.headers.get('Content-Length','0'))
   if size<1 or size>8192:self.reply(400,{});return
   data=json.loads(self.rfile.read(size));self.reply(200,engine.authenticate(self.path[len('/auth/'):],data.get('auth','')))
  except Exception:self.reply(503,{'ok':False})
def main():
 os.umask(0o077);config=json.loads(Path('/etc/x-ui/qinglian/exports.json').read_text());engine=ExportEngine(config)
 server=ThreadingHTTPServer(('127.0.0.1',config['controlPort']),Handler);server.engine=engine;server.daemon_threads=True
 threading.Thread(target=server.serve_forever,daemon=True).start()
 def stop(*args):engine.stopping=True
 signal.signal(signal.SIGTERM,stop);signal.signal(signal.SIGINT,stop)
 try:
  while not engine.stopping:
   try:engine.tick()
   except Exception:engine.close() # Fail closed on database/accounting failures.
   time.sleep(.5)
 finally:engine.close();server.shutdown();server.server_close()
if __name__=='__main__':main()
