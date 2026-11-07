import copy,importlib.util,json,sys,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
import runtime,server_config
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'scripts'))
from embed_server import generate
class ServerBootstrap(unittest.TestCase):
 def fixture(self,host='203.0.113.10',token='a'*64):return {'schema':1,'kind':'qinglian-server','name':'Fixture','profile':{'url':f'https://{host}:11452/custom/api/v1/profile','clientToken':token,'cdnUrl':'https://panel.example/custom/api/v1/profile'}}
 def test_reject_node_http_credentials_unknown_private_and_oversize(self):
  for value in [{'protocol':'vmess'},dict(self.fixture(),kind='node'),dict(self.fixture(),password='secret')]:
   with self.assertRaises(ValueError):server_config.validate(value)
  for url in ['http://panel.example/api/v1/profile','https://user:pass@panel.example/api/v1/profile','https://panel.example/api/v1/profile?token=a','https://panel.example/api/v1/profile#x']:
   v=self.fixture();v['profile']['url']=url
   with self.assertRaises(ValueError):server_config.validate(v)
  with self.assertRaises(ValueError):server_config.loads(b'x'*65537)
 def test_embed_five_services_and_runtime_scope_account_credentials(self):
  with tempfile.TemporaryDirectory() as d:
   root=Path(d);assets=root/'assets';state=root/'state';value=self.fixture();generate(value,assets)
   for name,part in [('profile','profile'),('telemetry','heartbeat'),('updates','updates')]:self.assertTrue(json.loads((assets/(name+'.json')).read_text())['url'].endswith('/custom/api/v1/'+part))
   with patch.object(runtime,'ROOT',assets),patch.object(runtime,'STATE',state),patch.object(runtime,'device_identity',return_value='fixture'):
    runtime.save(state/'account.json',{'token':'embedded-only'})
    original=runtime.Api();self.assertEqual(original.account['token'],'embedded-only');self.assertEqual(original.pending_path,state/'pending-export.json')
    runtime.Api.select_server(value);first=runtime.Api();self.assertFalse(first.account);self.assertNotEqual(original.account_path,first.account_path);self.assertNotEqual(original.pending_path,first.pending_path)
    runtime.save(first.account_path,{'token':'first-server'})
    other=self.fixture(token='b'*64);runtime.Api.select_server(other);second=runtime.Api();self.assertFalse(second.account)
    # Existing API instances keep their original authority/token, including requests completing during a switch.
    self.assertEqual(first.config['clientToken'],'a'*64);self.assertNotEqual(first.server_id,second.server_id)
    runtime.Api.select_server(value);self.assertEqual(runtime.Api().account['token'],'first-server')
    runtime.Api.select_server(None);self.assertEqual(runtime.Api().account['token'],'embedded-only')
 def test_custom_tun_exemption_is_one_public_ipv4(self):
  self.assertEqual(server_config.public_tun_address('8.8.8.8'),'8.8.8.8')
  for address in ['127.0.0.1','10.0.0.1','169.254.1.1','8.8.8.8;id','::1']:
   with self.assertRaises(ValueError):server_config.public_tun_address(address)
  self.assertEqual(server_config.public_tun_address('127.0.0.1','127.0.0.1'),'127.0.0.1')
