"""Fresh-install PKI and refusal tests; no system services or public-network traffic."""
import ipaddress,ssl,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
import install
class FreshInstaller(unittest.TestCase):
 def test_generated_pki_has_ca_and_local_and_server_subject_names(self):
  with tempfile.TemporaryDirectory() as d,patch.object(install,'PRIVATE',Path(d)):
   install.certificates('203.0.113.10')
   ca=ssl.create_default_context(cafile=str(Path(d)/'ca.pem'));self.assertTrue(ca.get_ca_certs())
   cert=ssl._ssl._test_decode_cert(str(Path(d)/'server.pem'))
   self.assertIn(('IP Address','203.0.113.10'),cert['subjectAltName']);self.assertIn(('IP Address','127.0.0.1'),cert['subjectAltName'])
   context=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER);context.load_cert_chain(Path(d)/'server.pem',Path(d)/'server.key')
 def test_existing_install_is_rejected_before_password_or_systemctl(self):
  with tempfile.TemporaryDirectory() as d,patch.object(install,'ROOT',Path(d)),patch.object(install.getpass,'getpass') as password,patch.object(install,'run') as command,patch('sys.argv',['install.py','--server-ip','8.8.8.8','--admin-name','fixture','--check']):
   with self.assertRaisesRegex(SystemExit,'已存在'):install.main()
   password.assert_not_called();command.assert_not_called()
