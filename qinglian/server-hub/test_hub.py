import hashlib,json,secrets,tempfile,threading,time,unittest,urllib.request,urllib.error
from pathlib import Path
import app,collector
class HubTests(unittest.TestCase):
 @classmethod
 def setUpClass(cls):
  cls.temp=tempfile.TemporaryDirectory();app.DATA=Path(cls.temp.name);salt=secrets.token_bytes(16);password='test-only';(app.DATA/'auth.json').write_text(json.dumps({'username':'tester','salt':salt.hex(),'iterations':10000,'hash':hashlib.pbkdf2_hmac('sha256',password.encode(),salt,10000).hex()}));(app.DATA/'session-key').write_bytes(secrets.token_bytes(32));(app.DATA/'status.json').write_text(json.dumps({'sampled_at':time.time(),'read_only':True}));cls.server=app.Server(('127.0.0.1',0),app.Handler);threading.Thread(target=cls.server.serve_forever,daemon=True).start();cls.base='http://127.0.0.1:'+str(cls.server.server_port)
 @classmethod
 def tearDownClass(cls):cls.server.shutdown();cls.server.server_close();cls.temp.cleanup()
 def request(self,path,body=None,cookie=None,origin=None):
  headers={'Content-Type':'application/json'}
  if cookie:headers['Cookie']=cookie
  if origin:headers['Origin']=origin
  return urllib.request.urlopen(urllib.request.Request(self.base+path,data=json.dumps(body).encode() if body is not None else None,headers=headers))
 def test_auth_and_tamper(self):
  with self.assertRaises(urllib.error.HTTPError) as e:self.request('/api/status')
  self.assertEqual(e.exception.code,401)
  with self.request('/api/login',{'username':'tester','password':'test-only'}) as r:cookie=r.headers['Set-Cookie'].split(';')[0];self.assertIn('HttpOnly',r.headers['Set-Cookie'])
  with self.request('/api/status',cookie=cookie) as r:self.assertTrue(json.load(r)['read_only'])
  with self.assertRaises(urllib.error.HTTPError):self.request('/api/status',cookie=cookie+'x')
 def test_wrong_password_and_origin(self):
  with self.assertRaises(urllib.error.HTTPError) as e:self.request('/api/login',{'username':'tester','password':'wrong'})
  self.assertEqual(e.exception.code,401)
  with self.assertRaises(urllib.error.HTTPError) as e:self.request('/api/login',{},origin='https://evil.example')
  self.assertEqual(e.exception.code,403)
 def test_no_controls(self):
  with self.assertRaises(urllib.error.HTTPError) as e:self.request('/api/restart',{})
  self.assertEqual(e.exception.code,404)
 def test_scope_and_listener(self):
  self.assertEqual(collector.scope('127.0.0.53'),'local');self.assertEqual(collector.scope('[::1]'),'local')
  rows=collector.listeners('tcp LISTEN 0 128 0.0.0.0:6185 0.0.0.0:* users:(("python",pid=123,fd=5))',Path(self.temp.name));self.assertEqual(rows[0]['port'],6185);self.assertEqual(rows[0]['process'],'python')
 def test_bom_config(self):
  p=app.DATA/'bom.json';p.write_text('\ufeff{"ok":true}');self.assertTrue(collector.read_json(p,{})['ok'])
if __name__=='__main__':unittest.main()
