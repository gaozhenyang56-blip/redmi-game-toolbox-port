"""Actual V2Ray decisions against pinned country databases, no Internet traffic."""
import http.server,json,os,socket,subprocess,tempfile,threading,time,unittest
from pathlib import Path
class Origin(http.server.BaseHTTPRequestHandler):
 def log_message(self,*args):pass
 def do_GET(self):
  raw=self.server.marker.encode();self.send_response(200);self.send_header('Content-Length',str(len(raw)));self.end_headers();self.wfile.write(raw)
def free_port():
 with socket.socket() as s:s.bind(('127.0.0.1',0));return s.getsockname()[1]
@unittest.skipUnless(os.environ.get('QINGLIAN_NODECONFIG_CP'),'native App converter required')
class CountryRouting(unittest.TestCase):
 def test_actual_cn_domain_cn_ip_private_foreign_and_global(self):
  origins=[]
  for name in ('direct','proxy'):
   s=http.server.ThreadingHTTPServer(('127.0.0.1',0),Origin);s.marker=name;threading.Thread(target=s.serve_forever,daemon=True).start();origins.append(s)
  try:
   for bypass in (True,False):
    node={'protocol':'vmess','id':'11111111-1111-4111-8111-111111111111','add':'192.0.2.1','port':443}
    args=[os.environ.get('QINGLIAN_JAVA','java'),'-cp',os.environ['QINGLIAN_NODECONFIG_CP'],'NodeConfigCli']+(['bypass-cn'] if bypass else [])
    c=json.loads(subprocess.run(args,input=json.dumps(node).encode(),capture_output=True,check=True).stdout)
    socks=free_port();c['inbounds'][0]['port']=socks;c['inbounds'][1]['port']=free_port()
    c['outbounds'][0]={'tag':'proxy','protocol':'freedom','settings':{'redirect':'127.0.0.1:'+str(origins[1].server_port)}}
    if bypass:
     direct=next(o for o in c['outbounds'] if o['tag']=='direct');direct['settings']={'redirect':'127.0.0.1:'+str(origins[0].server_port)}
    with tempfile.TemporaryDirectory() as temp:
     root=Path(temp);path=root/'config.json';path.write_text(json.dumps(c));log=open(root/'core.log','wb');env=dict(os.environ);env['V2RAY_LOCATION_ASSET']=str(Path(__file__).resolve().parents[1]/'app/src/main/assets')
     proc=subprocess.Popen([os.environ['QINGLIAN_V2RAY'],'run','-c',str(path)],stdout=log,stderr=log,env=env)
     try:
      for _ in range(60):
       if proc.poll() is not None:self.fail((root/'core.log').read_text())
       try:
        with socket.create_connection(('127.0.0.1',socks),.1):break
       except OSError:time.sleep(.05)
      for host,expected in [('www.baidu.com','direct'),('223.5.5.5','direct'),('127.0.0.1','direct'),('github.com','proxy'),('8.8.8.8','proxy')]:
       r=subprocess.run(['curl','-fsS','--max-time','5','--noproxy','','--socks5-hostname','127.0.0.1:'+str(socks),'http://'+host+':12345/'],capture_output=True)
       self.assertEqual(r.returncode,0,r.stderr.decode());self.assertEqual(r.stdout.decode(),expected if bypass else 'proxy',str((host,bypass)))
     finally:proc.terminate();proc.wait(timeout=5);log.close()
  finally:
   for s in origins:s.shutdown();s.server_close()
if __name__=='__main__':unittest.main()
