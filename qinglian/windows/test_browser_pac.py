import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
import urllib.error
import urllib.request
sys.path.insert(0,str(Path(__file__).resolve().parent))
import browser_pac
class PACTests(unittest.TestCase):
 def test_fixed_browser_domain_policy_in_real_javascript_engine(self):
  source="function dnsDomainIs(h,d){return h.substring(h.length-d.length)===d;}\n"+browser_pac.script()
  for host in ('chatgpt.com','auth.openai.com','CDN.OAISTATIC.COM.','images.oaiusercontent.com','login.auth0.com'):
   source+="\nif(FindProxyForURL('https://'+"+json.dumps(host)+","+json.dumps(host)+")!=='PROXY 127.0.0.1:10809')throw Error('protected URL was not proxied');"
  for host in ('message.rakuten-insight.cn','example.org','openai.com.example.org','notopenai.com'):
   source+="\nif(FindProxyForURL('https://'+"+json.dumps(host)+","+json.dumps(host)+")!=='DIRECT')throw Error('ordinary browser URL was not direct');"
  with tempfile.TemporaryDirectory() as root:
   path=Path(root)/'fixture.js';path.write_text(source,encoding='ascii')
   command=['cscript.exe','//Nologo',str(path)] if os.name=='nt' else [shutil.which('node') or 'node',str(path)]
   subprocess.run(command,check=True,timeout=10,capture_output=True)
 def test_pac_only_binds_loopback_and_exposes_no_files_or_history(self):
  pac=browser_pac.BrowserPAC()
  try:
   self.assertEqual(pac.server.server_address[0],'127.0.0.1')
   with urllib.request.build_opener(urllib.request.ProxyHandler({})).open(pac.url,timeout=3) as r:
    self.assertEqual(r.headers['Cache-Control'],'no-store');self.assertEqual(r.read().decode(),browser_pac.script())
   with self.assertRaises(urllib.error.HTTPError):urllib.request.urlopen('http://127.0.0.1:'+str(pac.port)+'/other',timeout=3)
  finally:pac.close()
if __name__=='__main__':unittest.main()
