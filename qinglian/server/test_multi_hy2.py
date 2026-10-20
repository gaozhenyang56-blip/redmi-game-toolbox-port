"""Actual two QUIC connections, App balancer, both lane stats and combined server quota."""
import json,os,socket,sqlite3,subprocess,tempfile,threading,time,unittest
from pathlib import Path
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from hy2_manager import Manager,Handler
@unittest.skipUnless(os.environ.get('QINGLIAN_TEST_HY2_BINARY'),'requires pinned HY2 and compiled NodeConfigCli cache')
class MultiHy2(unittest.TestCase):
 def test_both_connections_are_balanced_metered_and_stopped_together(self):
  binary=os.environ['QINGLIAN_TEST_HY2_BINARY'];project=Path(__file__).parents[1];fixtures=project/'app/src/test/resources';cache=Path(os.environ.get('QINGLIAN_TEST_CACHE','/tmp/qinglian-core-tests'))
  def free():
   with socket.socket() as s:s.bind(('127.0.0.1',0));return s.getsockname()[1]
  with tempfile.TemporaryDirectory() as tmp:
   root=Path(tmp);dbpath=root/'panel.db'
   with sqlite3.connect(dbpath) as db:db.execute('CREATE TABLE inbounds(id INTEGER PRIMARY KEY,user_id INTEGER,enable INTEGER,up INTEGER,down INTEGER,total INTEGER,expiry_time INTEGER)');db.execute('INSERT INTO inbounds VALUES(1,1,1,0,0,100000000,0)')
   server_port=free();api_port=free();http_port=free()
   cfg={'ownerId':1,'port':server_port,'serverAddress':'127.0.0.1','authSecret':'multi-fixture','statsToken':'fixture-stats','managementToken':'fixture-management','certificate':str(fixtures/'tls-server-cert.pem'),'privateKey':str(fixtures/'tls-server-key.pem'),'caPem':(fixtures/'tls-ca.pem').read_text()}
   class Local(Manager):
    def network_acl(self):return ['direct(all)']
   manager=Local(cfg,str(dbpath),str(root/'state.db'),binary,root/'run');manager.configure(True,1)
   auth=ThreadingHTTPServer(('127.0.0.1',11453),Handler);auth.manager=manager;auth.daemon_threads=True;threading.Thread(target=auth.serve_forever,daemon=True).start()
   data=b'Qinglian-two-QUIC-connections\n'*4096
   class Origin(BaseHTTPRequestHandler):
    def log_message(self,*a):pass
    def do_GET(self):self.send_response(200);self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data)
   origin=ThreadingHTTPServer(('127.0.0.1',0),Origin);threading.Thread(target=origin.serve_forever,daemon=True).start();processes=[]
   try:
    manager.tick();time.sleep(.4)
    for lane in range(2):
     client={'server':'127.0.0.1:'+str(server_port),'auth':'multi-fixture','tls':{'sni':'127.0.0.1','insecure':False,'ca':str(fixtures/'tls-ca.pem')},'lazy':True,'congestion':{'type':'bbr','bbrProfile':'aggressive'},'quic':{'initStreamReceiveWindow':8388608,'maxStreamReceiveWindow':33554432,'initConnReceiveWindow':16777216,'maxConnReceiveWindow':67108864,'keepAlivePeriod':'10s','maxIdleTimeout':'30s','disablePathMTUDiscovery':True},'socks5':{'listen':'127.0.0.1:'+str(10810+lane)}}
     path=root/('lane'+str(lane)+'.json');path.write_text(json.dumps(client));processes.append(subprocess.Popen([binary,'client','-c',str(path),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL))
    time.sleep(.4)
    node={'protocol':'hysteria2','add':'127.0.0.1','port':server_port,'auth':'multi-fixture'}
    result=subprocess.run(['java','-cp',str(cache/'json.jar')+':'+str(cache/'classes'),'NodeConfigCli','two-hy2'],input=json.dumps(node).encode(),capture_output=True,check=True);config=json.loads(result.stdout)
    for inbound in config['inbounds']:inbound['port']=http_port if inbound['protocol']=='http' else free()
    config['api']={'tag':'api','services':['StatsService']};config['inbounds'].append({'tag':'api-in','listen':'127.0.0.1','port':api_port,'protocol':'dokodemo-door','settings':{'address':'127.0.0.1'}});config['routing']['rules'].insert(0,{'type':'field','inboundTag':['api-in'],'outboundTag':'api'})
    path=root/'core.json';path.write_text(json.dumps(config));processes.append(subprocess.Popen([str(cache/'v2ray'),'run','-c',str(path)],stdout=subprocess.PIPE,stderr=subprocess.STDOUT));time.sleep(.5)
    for _ in range(100):
     if processes[-1].poll() is not None: self.fail('core startup: '+processes[-1].stdout.read().decode())
     try:
      with socket.create_connection(('127.0.0.1',http_port),.1):break
     except OSError:time.sleep(.05)
    else:self.fail('core startup timeout')
    for _ in range(24):
     result=subprocess.run(['curl','-fsS','--max-time','5','--noproxy','','--proxy','http://127.0.0.1:'+str(http_port),'http://127.0.0.1:'+str(origin.server_port)],capture_output=True,timeout=7)
     self.assertEqual(result.returncode,0,result.stderr.decode());self.assertEqual(result.stdout,data)
    stats=subprocess.run([str(cache/'v2ray'),'api','stats','--server=127.0.0.1:'+str(api_port),'-json','outbound'],capture_output=True,text=True,check=True)
    values={x['name']:int(x.get('value',0)) for x in json.loads(stats.stdout)['stat']}
    for tag in ['proxy','hy2-lane-1']:self.assertGreater(values.get('outbound>>>'+tag+'>>>traffic>>>downlink',0),0,tag+' received no traffic')
    manager.tick()
    with sqlite3.connect(dbpath) as db:
     up,down=db.execute('SELECT up,down FROM inbounds').fetchone();self.assertGreaterEqual(down,len(data)*24);self.assertGreater(up,0);db.execute('UPDATE inbounds SET total=1')
    manager.tick();self.assertIsNone(manager.child);self.assertFalse(manager.authenticate('multi-fixture')['ok'])
   finally:
    for process in reversed(processes):
     process.terminate();process.wait(timeout=5)
     if process.stdout:process.stdout.close()
    manager.stop_child();origin.shutdown();origin.server_close();auth.shutdown();auth.server_close()
if __name__=='__main__':unittest.main()
