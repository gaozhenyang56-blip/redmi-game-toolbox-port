import base64,hashlib,http.client,json,tempfile,threading,unittest
from pathlib import Path
from unittest.mock import patch
import app,helper
class ControlTests(unittest.TestCase):
 def setUp(self):
  self.temp=tempfile.TemporaryDirectory();self.key=Path(self.temp.name)/'key';self.key.write_bytes(b'x'*32)
  self.keypatch=patch.object(app,'KEY',self.key);self.keypatch.start()
  self.server=app.Server(('127.0.0.1',0),app.Handler)
  self.thread=threading.Thread(target=self.server.serve_forever,daemon=True);self.thread.start()
 def tearDown(self):
  self.server.shutdown();self.server.server_close();self.keypatch.stop();self.temp.cleanup()
 def request(self,path,data=None,headers=None):
  conn=http.client.HTTPConnection(*self.server.server_address,timeout=5)
  headers={'Origin':'https://gaozy.tech',**(headers or {})}
  conn.request('POST' if data is not None else 'GET',path,json.dumps(data) if data is not None else None,headers)
  result=conn.getresponse();body=json.loads(result.read());cookie=result.getheader('Set-Cookie');status=result.status;conn.close();return status,body,cookie
 def test_auth_csrf_and_fixed_operation_boundary(self):
  self.assertEqual(self.request('/api/session')[0],401)
  self.assertEqual(self.request('/api/command',{'op':'restart'})[0],401)
  with patch.object(app,'helper',return_value={'ok':True}) as mocked:
   status,_,cookie=self.request('/api/login',{'username':'owner','password':'example'})
   self.assertEqual(status,200);self.assertIn('Secure; HttpOnly; SameSite=Strict',cookie)
   self.assertIn('Path=/panel/dsh/',cookie)
   headers={'Cookie':cookie.split(';')[0]}
   status,session,_=self.request('/api/session',headers=headers);self.assertEqual(status,200)
   self.assertEqual(self.request('/api/command',{'op':'restart'},headers)[0],403)
   headers['X-CSRF-Token']=session['csrf']
   self.assertEqual(self.request('/api/command',{'op':'shell','unit':'x-ui'},headers)[0],400)
   self.assertEqual(self.request('/api/command',{'op':'restart','unit':'x-ui'},headers)[0],200)
   mocked.assert_called_with({'op':'restart'})
   self.assertEqual(self.request('/api/command',{'op':'restart'},{**headers,'Origin':'https://evil.example'})[0],403)
 def test_login_rate_limit(self):
  with patch.object(app,'helper',return_value={'ok':False}):
   for _ in range(12):self.assertEqual(self.request('/api/login',{'password':'wrong'})[0],401)
   self.assertEqual(self.request('/api/login',{'password':'wrong'})[0],429)
 def test_native_auth_hash_and_invalid_password(self):
  salt=b'12345678';auth=Path(self.temp.name)/'auth'
  auth.write_text(json.dumps({'username':'owner','salt':base64.b64encode(salt).decode(),'hash':base64.b64encode(hashlib.pbkdf2_hmac('sha256',b'correct',salt,600000)).decode()}))
  with patch.object(helper,'AUTH',auth):
   self.assertTrue(helper.dispatch({'op':'auth','username':'owner','password':'correct'})['ok'])
   self.assertFalse(helper.dispatch({'op':'auth','username':'owner','password':'wrong'})['ok'])
 def test_log_redaction_and_command_rejection(self):
  raw='https://host/?token=private-token Bearer private-key sk-1234567890123456 api_key: secretvalue'
  cleaned=helper.redact(raw)
  for secret in ('private-token','private-key','sk-1234567890123456','secretvalue'):self.assertNotIn(secret,cleaned)
  with self.assertRaises(ValueError):helper.dispatch({'op':'shell'})
  with self.assertRaises(ValueError):helper.logs('/etc/shadow',100)
 def test_watchdog_preserves_manual_stop(self):
  original=helper.Path
  def path(value):return original(self.temp.name)/'state.json' if value=='/run/dsh-watchdog/state.json' else original(value)
  with patch.object(helper,'Path',side_effect=path),patch.object(helper,'properties',return_value={'ActiveState':'inactive'}),patch.object(helper,'command') as command:
   for _ in range(4):helper.watchdog()
   command.assert_not_called()
 def test_watchdog_recovers_only_after_three_failures(self):
  original=helper.Path
  def path(value):return original(self.temp.name)/'state.json' if value=='/run/dsh-watchdog/state.json' else original(value)
  with patch.object(helper.time,'monotonic',return_value=10000),patch.object(helper,'Path',side_effect=path),patch.object(helper,'properties',return_value={'ActiveState':'active','ActiveEnterTimestampMonotonic':'1'}),patch.object(helper,'backend',return_value=False),patch.object(helper,'command') as command:
   helper.watchdog();helper.watchdog();command.assert_not_called();helper.watchdog()
   command.assert_called_once_with('systemctl','--no-block','try-restart','dsh.service')
if __name__=='__main__':unittest.main()
