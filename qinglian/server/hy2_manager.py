#!/usr/bin/env python3
"""Loopback-only Hysteria supervisor, original-panel quota enforcement and accounting."""
import hmac,json,os,signal,sqlite3,subprocess,threading,time,urllib.request
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from pathlib import Path

class Manager:
 def __init__(self,config,database,state,binary,work):
  self.config=config;self.database=database;self.state=state;self.binary=binary;self.work=Path(work);self.work.mkdir(mode=0o700,parents=True,exist_ok=True)
  self.lock=threading.RLock();self.child=None;self.binding=None;self.cursor=(0,0);self.error='';self.stopping=False;self.failures=[]
  with self.connect(self.state) as db:db.execute('CREATE TABLE IF NOT EXISTS acceleration(id INTEGER PRIMARY KEY,enabled INTEGER NOT NULL,boundInbound INTEGER NOT NULL)')
 def connect(self,path):
  db=sqlite3.connect(path,timeout=10);db.row_factory=sqlite3.Row;return db
 def selection(self):
  with self.connect(self.state) as db:row=db.execute('SELECT enabled,boundInbound FROM acceleration WHERE id=1').fetchone()
  return dict(row) if row else {'enabled':0,'boundInbound':0}
 def row(self,ident):
  with self.connect(self.database) as db:row=db.execute('SELECT * FROM inbounds WHERE id=? AND user_id=?',(ident,self.config['ownerId'])).fetchone()
  return dict(row) if row else None
 @staticmethod
 def allowed(row):
  return bool(row and row['enable'] and row['up']>=0 and row['down']>=0 and (row['total']==0 or row['up']+row['down']<row['total']) and (row['expiry_time']==0 or row['expiry_time']>int(time.time()*1000)))
 def configure(self,enabled,bound):
  if not isinstance(enabled,bool) or not isinstance(bound,int) or bound<1 or not self.row(bound):raise ValueError('invalid binding')
  with self.lock:
   with self.connect(self.state) as db:db.execute('INSERT OR REPLACE INTO acceleration VALUES(1,?,?)',(int(enabled),bound))
  return self.status()
 def status(self):
  state=self.selection();return {'installed':True,'enabled':bool(state['enabled']),'boundInbound':state['boundInbound'],'running':self.child is not None and self.child.poll() is None,'port':self.config['port'],'protocol':'hysteria2','error':self.error}
 def profile(self):
  with self.lock:
   state=self.selection()
   if not state['enabled'] or not self.allowed(self.row(state['boundInbound'])) or self.binding!=state['boundInbound'] or self.child is None or self.child.poll() is not None:raise ValueError('inactive')
   return {'boundInbound':state['boundInbound'],'node':{'protocol':'hysteria2','add':self.config['serverAddress'],'port':self.config['port'],'auth':self.config['authSecret'],'sni':self.config['serverAddress'],'caPem':self.config['caPem']}}
 def authenticate(self,secret):
  with self.lock:
   state=self.selection();bound=state['boundInbound'];ok=hmac.compare_digest(str(secret),self.config['authSecret']) and bool(state['enabled']) and bound==self.binding and self.allowed(self.row(bound))
   return {'ok':ok,'id':str(bound) if ok else ''}
 def stats(self):
  req=urllib.request.Request('http://127.0.0.1:11454/traffic',headers={'Authorization':self.config['statsToken']})
  with urllib.request.build_opener(urllib.request.ProxyHandler({})).open(req,timeout=2) as response:raw=response.read(65537)
  if len(raw)>65536:raise ValueError('invalid stats')
  return json.loads(raw)
 def account(self,stats):
  if not self.binding:return
  entry=stats.get(str(self.binding),{'tx':0,'rx':0});tx=entry['tx'];rx=entry['rx']
  if type(tx) is not int or type(rx) is not int or min(tx,rx)<0 or max(tx,rx)>2**63-1:raise ValueError('invalid counters')
  if tx<self.cursor[0] or rx<self.cursor[1]:raise ValueError('counter reset without process restart')
  up=tx-self.cursor[0];down=rx-self.cursor[1]
  with self.connect(self.database) as db:
   updated=db.execute('UPDATE inbounds SET up=up+?,down=down+? WHERE id=? AND user_id=? AND up<=? AND down<=?',(up,down,self.binding,self.config['ownerId'],2**63-1-up,2**63-1-down))
   if updated.rowcount!=1:raise ValueError('account unavailable')
  self.cursor=(tx,rx)
 def stop_child(self,collect=True):
  if self.child is None:return
  if collect and self.child.poll() is None:
   try:self.account(self.stats())
   except Exception:self.error='流量记账异常，已停止加速通道'
  self.child.terminate()
  try:self.child.wait(timeout=3)
  except subprocess.TimeoutExpired:self.child.kill();self.child.wait(timeout=3)
  self.child=None;self.binding=None;self.cursor=(0,0)
 def network_acl(self):
  return ['reject(127.0.0.0/8)','reject(10.0.0.0/8)','reject(172.16.0.0/12)','reject(192.168.0.0/16)','reject(169.254.0.0/16)','reject(::1/128)','reject(fc00::/7)','reject(fe80::/10)','direct(all)']
 def start_child(self,bound):
  self.failures=[t for t in self.failures if time.monotonic()-t<60]
  if len(self.failures)>=3:self.error='加速服务反复失败，稍后重试';return
  self.binding=bound;self.cursor=(0,0)
  cfg={'listen':':'+str(self.config['port']),'tls':{'cert':self.config['certificate'],'key':self.config['privateKey']},'auth':{'type':'http','http':{'url':'http://127.0.0.1:11453/auth'}},'trafficStats':{'listen':'127.0.0.1:11454','secret':self.config['statsToken']},'resolver':{'type':'tcp','tcp':{'addr':'1.1.1.1:53','timeout':'4s'}},'outbounds':[{'name':'direct','type':'direct','direct':{'mode':'4'}}]}
  cfg['acl']={'inline':self.network_acl()}
  path=self.work/'hy2-server.json';fd=os.open(path,os.O_WRONLY|os.O_CREAT|os.O_TRUNC,0o600)
  with os.fdopen(fd,'w') as out:json.dump(cfg,out)
  self.child=subprocess.Popen([self.binary,'server','--config',str(path),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
  self.error=''
 def tick(self):
  with self.lock:
   state=self.selection();bound=state['boundInbound']
   if not state['enabled'] or not self.allowed(self.row(bound)):
    self.stop_child();return
   if self.child is not None and (self.child.poll() is not None or self.binding!=bound):
    if self.child.poll() is not None:self.failures.append(time.monotonic())
    self.stop_child()
   if self.child is None:self.start_child(bound);return
   try:self.account(self.stats())
   except Exception:
    self.error='记账接口不可用，已停止加速通道';self.failures.append(time.monotonic());self.stop_child(False)

class Handler(BaseHTTPRequestHandler):
 def log_message(self,*args):pass
 def response(self,code,data):
  raw=json.dumps(data).encode();self.send_response(code);self.send_header('Content-Type','application/json');self.send_header('Cache-Control','no-store');self.send_header('Content-Length',str(len(raw)));self.end_headers();self.wfile.write(raw)
 def do_GET(self):self.dispatch()
 def do_POST(self):self.dispatch()
 def dispatch(self):
  self.connection.settimeout(5);manager=self.server.manager
  try:
   if self.path!='/auth' and not hmac.compare_digest(self.headers.get('Authorization',''),'Bearer '+manager.config['managementToken']):self.response(401,{});return
   if self.command=='GET' and self.path=='/status':self.response(200,manager.status());return
   if self.command=='GET' and self.path=='/profile':self.response(200,manager.profile());return
   if self.command!='POST':self.response(404,{});return
   length=int(self.headers.get('Content-Length','0'))
   if length<1 or length>8192:self.response(400,{});return
   data=json.loads(self.rfile.read(length))
   if self.path=='/auth':self.response(200,manager.authenticate(data.get('auth','')))
   elif self.path=='/configure':self.response(200,manager.configure(data['enabled'],data['boundInbound']))
   else:self.response(404,{})
  except Exception:
   try:self.response(503,{'error':'channel unavailable'})
   except OSError:pass

def main():
 os.umask(0o077);config=json.loads(Path('/etc/x-ui/qinglian/hy2.json').read_text());base=json.loads(Path('/etc/x-ui/qinglian.json').read_text())
 manager=Manager(config,'/etc/x-ui/x-ui.db',base['statePath'],'/usr/local/lib/qinglian/hysteria','/run/qinglian-hy2')
 server=ThreadingHTTPServer(('127.0.0.1',11453),Handler);server.daemon_threads=True;server.manager=manager
 thread=threading.Thread(target=server.serve_forever,daemon=True);thread.start()
 def stop(*args):manager.stopping=True
 signal.signal(signal.SIGTERM,stop);signal.signal(signal.SIGINT,stop)
 try:
  while not manager.stopping:
   try:manager.tick()
   except Exception:
    with manager.lock:manager.error='配置或配额不可用，通道已关闭';manager.stop_child(False)
   time.sleep(1)
 finally:
  with manager.lock:manager.stop_child()
  server.shutdown();server.server_close()
if __name__=='__main__':main()
