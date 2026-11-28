"""WinINet mirror normalization must not look like proxy ownership loss."""
import json
from pathlib import Path
import sys,tempfile,unittest
from unittest.mock import MagicMock,patch
sys.path.insert(0,str(Path(__file__).resolve().parent))
import win_platform as platform
import client
class BrowserProxyTests(unittest.TestCase):
 def test_autodetect_rewrite_before_and_during_uac_keeps_single_guard(self):
  with tempfile.TemporaryDirectory() as d,patch.object(platform,'winreg',MagicMock(REG_DWORD=4,REG_SZ=1),create=True):
   before={k:None for k in platform.OUR_PROXY};before['ProxyEnable']=[0,4];before['AutoDetect']=[1,4]
   current=dict(before);guard=MagicMock();obj=platform.ProxySettings();obj.path=Path(d)/'restore.json'
   def write(value,*args):current.clear();current.update(value);current['AutoDetect']=[1,4]
   with patch.object(platform,'proxy_values',side_effect=lambda *args:dict(current)),patch.object(platform,'write_proxy',side_effect=write),patch.object(platform,'launch_self',return_value=guard) as spawn:
    obj.enable();self.assertNotEqual(current,platform.read(obj.path)['ours'])
    obj.enable_tun_only();self.assertEqual(current['ProxyEnable'],[0,4]);self.assertIsNone(current['ProxyServer']);self.assertIs(obj.guard,guard)
    obj.close();self.assertEqual(current,before);spawn.assert_called_once();guard.stdin.close.assert_called_once()
 def test_real_proxy_or_pac_changes_are_preserved(self):
  for key,new in [('ProxyServer',['other.invalid:9000',1]),('AutoConfigURL',['https://other.invalid/proxy.pac',1]),('ProxyEnable',[0,4]),('ProxyOverride',['other.invalid',1])]:
   with self.subTest(key=key),tempfile.TemporaryDirectory() as d,patch.object(platform,'winreg',MagicMock(REG_DWORD=4,REG_SZ=1),create=True):
    ours=platform.installed_proxy();before={k:None for k in ours};current={**ours,key:new};obj=platform.ProxySettings();obj.path=Path(d)/'restore.json';obj.guard=MagicMock();platform.save(obj.path,{'before':before,'ours':ours})
    with patch.object(platform,'proxy_values',return_value=current),patch.object(platform,'write_proxy') as write:
     with self.assertRaises(platform.ProxyTransitionError) as e:obj.enable_tun_only()
     self.assertEqual(e.exception.code,'S-PROXY-CHANGED');obj.close();write.assert_not_called()
 def test_fixed_startup_codes_and_probe_category_never_expose_raw_errors(self):
  bad=MagicMock();bad.start.side_effect=RuntimeError('local startup failed [S-TUN-DRIVER] private details')
  with self.assertRaises(client.StartupError) as e:client.startup_tun(bad,MagicMock())
  text=client.windows_failure(e.exception,'proxy',False);self.assertIn('[S-TUN-DRIVER]',text);self.assertNotIn('private',text)
  error=client.PostTunProbe(OSError('private network details'))
  text=client.windows_failure(error,'proxy',False);self.assertIn('[C-VERIFY]',text);self.assertNotIn('private',text)
if __name__=='__main__':unittest.main()
