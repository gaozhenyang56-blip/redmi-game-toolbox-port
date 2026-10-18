"""Real native loopback transfers, using public fixture keys only."""
import re,copy,http.server,json,os,socket,sqlite3,subprocess,tempfile,threading,time,unittest
from pathlib import Path
from export_engine import ExportEngine,Handler
FIX=Path(__file__).resolve().parents[1]/'app/src/test/resources'
class LocalEngine(ExportEngine):
 def acl(self):return ['192.0.2.0/24'] # Loopback permitted only in tests.
 def prepare(self,cfg):
  if 'inbounds' in cfg:cfg['dns']={'hosts':{'fixture.example':'127.0.0.1'}};cfg['log']['error']=str(self.work/'native-errors.log')
  return cfg
class Origin(http.server.BaseHTTPRequestHandler):
 def do_GET(self):
  data=b'fixture'*200000;self.send_response(200);self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data)
 def log_message(self,*args):pass
@unittest.skipUnless(os.environ.get('QINGLIAN_NATIVE_TESTS')=='1','explicit native binaries required')
class NativeExports(unittest.TestCase):
 def test_five_protocols_transfer_metering_stop_and_permanent_domains(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);state=root/'state.db'
   with sqlite3.connect(state) as db:db.executescript("CREATE TABLE api_users(id TEXT,enabled INT,history_consent INT);INSERT INTO api_users VALUES('fixture',1,1);CREATE TABLE exports(id TEXT PRIMARY KEY,user_id TEXT,protocol TEXT,port INT,total INT,up INT DEFAULT 0,down INT DEFAULT 0,created INT,expires INT,status TEXT,data BLOB,kind TEXT DEFAULT 'export',parent_id INT DEFAULT 0);CREATE TABLE history(id INTEGER PRIMARY KEY,user_id TEXT,node_id TEXT,domain TEXT,bucket INT,first_seen INT,last_seen INT,hits INT,UNIQUE(user_id,node_id,domain,bucket));")
   panel=root/'panel.db'
   with sqlite3.connect(panel) as db:db.executescript('CREATE TABLE inbounds(id INT,user_id INT,enable INT,total INT,up INT,down INT,expiry_time INT);INSERT INTO inbounds VALUES(1,1,1,0,0,0,0)')
   control=ExportEngine.free_port();engine=LocalEngine({'database':str(panel),'ownerId':1,'statePath':str(state),'work':str(root/'work'),'controlPort':control,'managementToken':'fixture','certificate':str(FIX/'tls-server-cert.pem'),'privateKey':str(FIX/'tls-server-key.pem'),'xrayBinary':os.environ['QINGLIAN_XRAY'],'hy2Binary':os.environ['QINGLIAN_HY2']})
   server=http.server.ThreadingHTTPServer(('127.0.0.1',control),Handler);server.engine=engine;server.daemon_threads=True;threading.Thread(target=server.serve_forever,daemon=True).start()
   origin=http.server.ThreadingHTTPServer(('127.0.0.1',0),Origin);threading.Thread(target=origin.serve_forever,daemon=True).start()
   try:
    for protocol in ('vmess','vless','trojan','shadowsocks','hysteria2'):
     with self.subTest(protocol=protocol):self.transfer(protocol,root,engine,origin.server_port)
    with self.subTest(protocol="hysteria2-aggressive"):self.transfer("hysteria2",root,engine,origin.server_port,True)
   finally:engine.close();server.shutdown();server.server_close();origin.shutdown();origin.server_close()
 def transfer(self,protocol,root,engine,origin,experimental=False):
  p=json.loads((Path(os.environ['QINGLIAN_EXPORT_PROFILES'])/(protocol+'.json')).read_text());port=engine.free_port();ident=protocol+'fixture';p['inbound']['port']=port;p['inbound']['tag']='export-'+ident
  if experimental:ident+='lab';p['node']['hy2Performance']='aggressive-v1'
  with engine.db() as db:db.execute("INSERT INTO exports(id,user_id,protocol,port,total,created,expires,status,data) VALUES(?,?,?,?,?,?,?,'pending',?)",(ident,'fixture',protocol,port,100*1048576,int(time.time()),int(time.time())+300,json.dumps(p)))
  if experimental:
   with engine.db() as db:db.execute("UPDATE exports SET kind='main',parent_id=1 WHERE id=?",(ident,))
  engine.tick();self.assertIn(ident,engine.children,'native startup failed '+(engine.work/'native-errors.log').read_text()[-1200:])
  cfg=copy.deepcopy(p['clientConfig']);socks=engine.free_port();hy=protocol=='hysteria2'
  if experimental:
   cfg['congestion']={'type':'bbr','bbrProfile':'aggressive'};cfg['quic'].update({'initStreamReceiveWindow':8388608,'maxStreamReceiveWindow':33554432,'initConnReceiveWindow':16777216,'maxConnReceiveWindow':67108864});server_config=json.loads(engine.children[ident]['path'].read_text());self.assertEqual(server_config['congestion']['bbrProfile'],'aggressive');self.assertEqual(server_config['quic']['maxConnReceiveWindow'],67108864);self.assertTrue(server_config['ignoreClientBandwidth']);self.assertNotIn('bandwidth',server_config)
  elif hy:self.assertEqual(json.loads(engine.children[ident]['path'].read_text())['congestion']['bbrProfile'],'conservative')
  if not hy and os.environ.get('QINGLIAN_NODECONFIG_CP'):
   node=copy.deepcopy(p['node']);node['port']=port
   converted=subprocess.run([os.environ.get('QINGLIAN_JAVA','java'),'-cp',os.environ['QINGLIAN_NODECONFIG_CP'],'NodeConfigCli'],input=json.dumps(node).encode(),capture_output=True,check=True)
   cfg=json.loads(converted.stdout);cfg['inbounds'][1]['port']=engine.free_port()
  if hy:cfg['server']='127.0.0.1:'+str(port);cfg['tls']['ca']=str(FIX/'tls-ca.pem');cfg['socks5']['listen']='127.0.0.1:'+str(socks);binary=os.environ['QINGLIAN_HY2'];args=['client','--log-level','error','--disable-update-check','--config']
  else:
   cfg['inbounds'][0]['port']=socks;settings=cfg['outbounds'][0]['settings'];(settings.get('vnext') or settings.get('servers'))[0]['port']=port;binary=os.environ['QINGLIAN_V2RAY'];args=['run','-c']
  path=root/(protocol+'.json');path.write_text(json.dumps(cfg));log=open(root/(protocol+'.log'),'wb');proc=subprocess.Popen([binary,*args,str(path)],stdout=log,stderr=log)
  try:
   for _ in range(60):
    if proc.poll() is not None:self.fail((root/(protocol+'.log')).read_text()[-800:])
    try:
     with socket.create_connection(('127.0.0.1',socks),.1):break
    except OSError:time.sleep(.05)
   target='127.0.0.1' if hy else 'fixture.example'
   r=subprocess.run(['curl','-fsS','--max-time','10','--noproxy','','--socks5-hostname','127.0.0.1:'+str(socks),'http://'+target+':'+str(origin)+'/private?not-recorded'],capture_output=True)
   self.assertEqual(r.returncode,0,r.stderr.decode());self.assertEqual(len(r.stdout),1400000);engine.tick()
   with engine.db() as db:row=db.execute('SELECT * FROM exports WHERE id=?',(ident,)).fetchone();self.assertGreater(row['down'],1000000);self.assertGreater(row['up'],0)
   if not hy:
    for _ in range(20):
     with engine.db() as db:observed=db.execute('SELECT COUNT(*) FROM history WHERE node_id=? AND domain=?',(ident,'fixture.example')).fetchone()[0]
     if observed:break
     time.sleep(.05)
    self.assertGreater(observed,0,'native domain log not captured')
   engine.record(ident,'fixture.example:443');engine.record(ident,'https://secret.example/private');engine.record(ident,'127.0.0.1:443')
   with engine.db() as db:
    entries=db.execute('SELECT domain FROM history WHERE node_id=?',(ident,)).fetchall();self.assertTrue(entries);self.assertTrue(all(e[0]=='fixture.example' for e in entries));db.execute('UPDATE api_users SET history_consent=0')
   engine.record(ident,'forbidden.example:443')
   with engine.db() as db:
    self.assertEqual(db.execute("SELECT COUNT(*) FROM history WHERE domain='forbidden.example'").fetchone()[0],0);db.execute('UPDATE api_users SET history_consent=1');db.execute('UPDATE exports SET total=up+down WHERE id=?',(ident,))
   engine.tick();self.assertNotIn(ident,engine.children)
   with engine.db() as db:
    self.assertGreater(db.execute('SELECT COUNT(*) FROM history WHERE node_id=?',(ident,)).fetchone()[0],0);db.execute("UPDATE exports SET status='pending',total=100000000,expires=? WHERE id=?",(int(time.time())-1,ident))
   engine.tick();self.assertNotIn(ident,engine.children)
   with engine.db() as db:self.assertEqual(db.execute('SELECT status FROM exports WHERE id=?',(ident,)).fetchone()[0],'expired')
  finally:proc.terminate();proc.wait(timeout=5);log.close()
class MainAccounting(unittest.TestCase):
 def test_parent_and_user_deltas_and_parent_stop_condition(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);state=root/'state.db';panel=root/'panel.db'
   with sqlite3.connect(panel) as db:db.executescript("CREATE TABLE inbounds(id INT,user_id INT,enable INT,up INT,down INT,total INT,expiry_time INT);INSERT INTO inbounds VALUES(1,7,1,10,20,1000,0);")
   with sqlite3.connect(state) as db:db.executescript("CREATE TABLE exports(id TEXT PRIMARY KEY,kind TEXT,parent_id INT,up INT,down INT);INSERT INTO exports VALUES('main','main',1,0,0);")
   engine=ExportEngine({'statePath':str(state),'database':str(panel),'ownerId':7,'work':str(root/'work')});engine.stats=lambda ident,item:(30,70);item={'cursor':(0,0)}
   engine.account('main',item);engine.account('main',item)
   with sqlite3.connect(panel) as db:self.assertEqual(db.execute('SELECT up,down FROM inbounds').fetchone(),(40,90))
   with sqlite3.connect(state) as db:self.assertEqual(db.execute('SELECT up,down FROM exports').fetchone(),(30,70))
   self.assertTrue(engine.parent_allowed({'kind':'main','parent_id':1}))
   with sqlite3.connect(panel) as db:db.execute('UPDATE inbounds SET total=up+down')
   self.assertFalse(engine.parent_allowed({'kind':'main','parent_id':1}))
class GuestAccounting(unittest.TestCase):
 def test_both_channels_share_limit_without_domain_logging(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);state=root/'state.db';panel=root/'panel.db';limit=64*1024**3
   with sqlite3.connect(panel) as db:db.executescript("CREATE TABLE inbounds(id INT,user_id INT,enable INT,up INT,down INT,total INT,expiry_time INT);INSERT INTO inbounds VALUES(1,7,1,0,0,0,0);")
   with sqlite3.connect(state) as db:
    db.executescript("CREATE TABLE api_users(id TEXT,enabled INT,history_consent INT);INSERT INTO api_users VALUES('guest',1,0);CREATE TABLE exports(id TEXT PRIMARY KEY,user_id TEXT,kind TEXT,parent_id INT,up INT,down INT,total INT,expires INT,status TEXT);CREATE TABLE history(id INT);")
    for ident,up in [('tcp',limit-1000),('hy2',0)]:db.execute("INSERT INTO exports VALUES(?,'guest','guest',1,?,0,?,?,'active')",(ident,up,limit,int(time.time())+180))
   engine=ExportEngine({'statePath':str(state),'database':str(panel),'ownerId':7,'work':str(root/'work')});row={'kind':'guest','parent_id':1,'user_id':'guest'};self.assertTrue(engine.parent_allowed(row));engine.record('tcp','guest-private.example:443')
   with sqlite3.connect(state) as db:
    self.assertEqual(db.execute('SELECT COUNT(*) FROM history').fetchone()[0],0);db.execute("UPDATE exports SET down=1000 WHERE id='hy2'")
   self.assertFalse(engine.parent_allowed(row));self.assertFalse(engine.history_failed.is_set())
if __name__=='__main__':unittest.main()
