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
def windows_self_test(output):
 import os,queue,threading,time
 if os.name!='nt' or os.environ.get('QINGLIAN_CI_WINDOWS')!='1':raise RuntimeError('Disposable Windows CI only')
 import tun
 from browser_pac import BrowserPAC
 from browser_pins import SHA256
 before=platform.proxy_values();proxy=platform.ProxySettings();network=tun.Network();pac=BrowserPAC()
 baseline=tun.powershell("@(Get-NetRoute|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/0','::/0')}|Select-Object DestinationPrefix,InterfaceIndex,NextHop,RouteMetric|Sort-Object DestinationPrefix,InterfaceIndex,NextHop)|ConvertTo-Json -Compress")
 try:
  proxy.enable();guard=proxy.guard;proxy.enable_tun_only();assert proxy.guard is guard
  expected=platform.read(proxy.path)['ours'];assert platform.proxy_owned(platform.proxy_values(),expected)
  network.browser_direct=True;network.owner_pid=os.getpid();network.browser_pac={'port':pac.port,'token':pac.token}
  network.upstream=int(tun.powershell("(Get-NetRoute -AddressFamily IPv4 -DestinationPrefix '0.0.0.0/0'|Sort-Object RouteMetric|Select-Object -First 1).InterfaceIndex"))
  network.start_engine();deadline=time.monotonic()+20
  def until(want):
   while time.monotonic()<deadline:
    assert network.process.poll() is None
    value=network.browser_status
    if value and value['enabled'] is want:return
    time.sleep(.05)
   raise RuntimeError('Packaged browser engine status timeout')
  until(False);network.process.stdin.write(b'enable\n');network.process.stdin.flush();until(True)
  network.process.stdin.write(b'disable\n');network.process.stdin.flush();until(False)
 finally:
  network.close();pac.close();proxy.close()
 assert platform.proxy_values()==before
 assert tun.powershell("@(Get-NetRoute|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/0','::/0')}|Select-Object DestinationPrefix,InterfaceIndex,NextHop,RouteMetric|Sort-Object DestinationPrefix,InterfaceIndex,NextHop)|ConvertTo-Json -Compress")==baseline
 Path(output).write_text(json.dumps({'ok':True,'realRegistrySwitchAndRestore':True,'sameRecoveryGuard':True,'browserEngineBootAndControl':True,'globalRoutesPreserved':True}),encoding='utf-8')

if __name__=='__main__':unittest.main()
