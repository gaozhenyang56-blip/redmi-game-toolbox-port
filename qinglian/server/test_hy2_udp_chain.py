"""Real UDP compatibility through the exact core -> HY2 SOCKS chain."""
import json,os,socket,sqlite3,struct,subprocess,tempfile,threading,time,unittest
from pathlib import Path
from http.server import ThreadingHTTPServer
from hy2_manager import Manager,Handler
@unittest.skipUnless(os.environ.get('QINGLIAN_TEST_HY2_BINARY'),'set pinned Linux binary')
class UDPChain(unittest.TestCase):
 def test_application_sized_datagrams_survive_the_complete_chain(self):
  binary=os.environ['QINGLIAN_TEST_HY2_BINARY'];project=Path(__file__).parents[1];fixtures=project/'app/src/test/resources';cache=Path('/tmp/qinglian-core-tests')
  with tempfile.TemporaryDirectory() as tmp:
   root=Path(tmp);dbpath=root/'main.db'
   with sqlite3.connect(dbpath) as db:db.execute('CREATE TABLE inbounds(id INTEGER PRIMARY KEY,user_id INTEGER,enable INTEGER,up INTEGER,down INTEGER,total INTEGER,expiry_time INTEGER)');db.execute('INSERT INTO inbounds VALUES(1,1,1,0,0,0,0)')
   with socket.socket(socket.AF_INET,socket.SOCK_DGRAM) as sock:sock.bind(('127.0.0.1',0));port=sock.getsockname()[1]
   cfg={'ownerId':1,'port':port,'serverAddress':'127.0.0.1','authSecret':'fixture','statsToken':'fixture-stats','managementToken':'fixture-management','certificate':str(fixtures/'tls-server-cert.pem'),'privateKey':str(fixtures/'tls-server-key.pem'),'caPem':(fixtures/'tls-ca.pem').read_text()}
   class Local(Manager):
    def network_acl(self):return ['direct(all)']
   m=Local(cfg,str(dbpath),str(root/'state.db'),binary,root/'run');m.configure(True,1)
   auth=ThreadingHTTPServer(('127.0.0.1',11453),Handler);auth.manager=m;auth.daemon_threads=True;threading.Thread(target=auth.serve_forever,daemon=True).start()
   echo=socket.socket(socket.AF_INET,socket.SOCK_DGRAM);echo.bind(('127.0.0.1',0));echo.settimeout(.2);stopped=threading.Event()
   def reflect():
    while not stopped.is_set():
     try:data,peer=echo.recvfrom(65536);echo.sendto(data,peer)
     except socket.timeout:pass
     except OSError:break
   threading.Thread(target=reflect,daemon=True).start();hy=None;core=None
   def exact(stream,n):
    data=b''
    while len(data)<n:
     part=stream.recv(n-len(data));assert part;data+=part
    return data
   def datagram(socks,size):
    with socket.create_connection(('127.0.0.1',socks),3) as tcp,socket.socket(socket.AF_INET,socket.SOCK_DGRAM) as udp:
     tcp.settimeout(3);udp.bind(('127.0.0.1',0));udp.settimeout(3);tcp.sendall(b'\x05\x01\x00');assert exact(tcp,2)==b'\x05\x00'
     tcp.sendall(b'\x05\x03\x00\x01\x7f\x00\x00\x01'+struct.pack('!H',udp.getsockname()[1]));rep=exact(tcp,4);assert rep[:2]==b'\x05\x00' and rep[3]==1
     address=socket.inet_ntoa(exact(tcp,4));relay=struct.unpack('!H',exact(tcp,2))[0];payload=os.urandom(size)
     udp.sendto(b'\x00\x00\x00\x01\x7f\x00\x00\x01'+struct.pack('!H',echo.getsockname()[1])+payload,(address,relay))
     response,_=udp.recvfrom(65536);self.assertEqual(response[10:],payload)
   try:
    m.tick();time.sleep(.3)
    path=root/'client.json';path.write_text(json.dumps({'server':'127.0.0.1:'+str(port),'auth':'fixture','tls':{'sni':'127.0.0.1','ca':str(fixtures/'tls-ca.pem'),'insecure':False},'lazy':True,'socks5':{'listen':'127.0.0.1:10810'}}))
    hy=subprocess.Popen([binary,'client','-c',str(path),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL);time.sleep(.3)
    node={'protocol':'hysteria2','add':'127.0.0.1','port':port,'auth':'fixture'}
    output=subprocess.run(['java','-cp',str(cache/'json.jar')+':'+str(cache/'classes'),'NodeConfigCli'],input=json.dumps(node).encode(),capture_output=True,check=True)
    path=root/'core.json';path.write_bytes(output.stdout);core=subprocess.Popen([str(cache/'v2ray'),'run','-c',str(path)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL);time.sleep(.3)
    for socks in [10810,10808]:
     for size in [64,1200,1350]:
      with self.subTest(socks=socks,size=size):datagram(socks,size)
   finally:
    for process in [core,hy]:
     if process:process.terminate();process.wait(timeout=5)
    m.stop_child();stopped.set();echo.close();auth.shutdown();auth.server_close()
if __name__=='__main__':unittest.main()
