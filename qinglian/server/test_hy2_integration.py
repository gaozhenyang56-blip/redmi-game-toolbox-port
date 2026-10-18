"""Optional real QUIC/SOCKS integration with public test-only keys and loopback origin."""
import json,os,socket,sqlite3,subprocess,tempfile,threading,time,unittest
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from pathlib import Path
from hy2_manager import Manager,Handler
@unittest.skipUnless(os.environ.get('QINGLIAN_TEST_HY2_BINARY'),'set pinned Linux binary to run real QUIC test')
class Integration(unittest.TestCase):
 def test_real_quic_auth_download_accounting_and_quota_stop(self):
  binary=os.environ['QINGLIAN_TEST_HY2_BINARY'];fixtures=Path(__file__).parents[1]/'app/src/test/resources'
  with tempfile.TemporaryDirectory() as tmp:
   root=Path(tmp);database=root/'main.db';state=root/'state.db'
   with sqlite3.connect(database) as db:
    db.execute('CREATE TABLE inbounds(id INTEGER PRIMARY KEY,user_id INTEGER,enable INTEGER,up INTEGER,down INTEGER,total INTEGER,expiry_time INTEGER)');db.execute('INSERT INTO inbounds VALUES(1,1,1,0,0,10000000,0)')
   with socket.socket(socket.AF_INET,socket.SOCK_DGRAM) as sock:sock.bind(('127.0.0.1',0));port=sock.getsockname()[1]
   config={'ownerId':1,'port':port,'serverAddress':'127.0.0.1','authSecret':'test-auth-only','managementToken':'test-manager-only','statsToken':'test-stats-only','certificate':str(fixtures/'tls-server-cert.pem'),'privateKey':str(fixtures/'tls-server-key.pem'),'caPem':(fixtures/'tls-ca.pem').read_text()}
   class LocalManager(Manager):
    def network_acl(self):return ['direct(all)'] # Only this isolated test allows a loopback target.
   manager=LocalManager(config,str(database),str(state),binary,root/'run');manager.configure(True,1)
   server=ThreadingHTTPServer(('127.0.0.1',11453),Handler);server.daemon_threads=True;server.manager=manager
   threading.Thread(target=server.serve_forever,daemon=True).start()
   data=b'Qinglian-QUIC-fixture\n'*8192
   class Origin(BaseHTTPRequestHandler):
    def log_message(self,*a):pass
    def do_GET(self):self.send_response(200);self.send_header('Content-Length',str(len(data)));self.end_headers();self.wfile.write(data)
   origin=ThreadingHTTPServer(('127.0.0.1',0),Origin);threading.Thread(target=origin.serve_forever,daemon=True).start()
   client=None
   try:
    manager.tick();time.sleep(.4);self.assertIsNone(manager.child.poll(),'QUIC server failed to start')
    cfg={'server':'127.0.0.1:'+str(port),'auth':'test-auth-only','tls':{'sni':'127.0.0.1','insecure':False,'ca':str(fixtures/'tls-ca.pem')},'lazy':True,'socks5':{'listen':'127.0.0.1:10810'}}
    path=root/'client.json';path.write_text(json.dumps(cfg));client=subprocess.Popen([binary,'client','-c',str(path),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
    time.sleep(.5)
    result=subprocess.run(['curl','-fsS','--max-time','10','--noproxy','','--socks5-hostname','127.0.0.1:10810','http://127.0.0.1:'+str(origin.server_port)],capture_output=True,timeout=12)
    self.assertEqual(result.returncode,0,result.stderr.decode());self.assertEqual(result.stdout,data)
    manager.tick()
    with sqlite3.connect(database) as db:
     up,down=db.execute('SELECT up,down FROM inbounds').fetchone();self.assertGreater(up,0);self.assertGreaterEqual(down,len(data));self.assertGreater(down,up)
     db.execute('UPDATE inbounds SET total=1')
    manager.tick();self.assertIsNone(manager.child);self.assertFalse(manager.authenticate('test-auth-only')['ok'])
   finally:
    if client:client.terminate();client.wait(timeout=5)
    manager.stop_child();origin.shutdown();origin.server_close();server.shutdown();server.server_close()
if __name__=='__main__':unittest.main()
