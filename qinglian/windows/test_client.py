import os
from pathlib import Path
import sys
import tempfile
import threading
import unittest
from unittest.mock import MagicMock,patch
sys.path.insert(0,str(Path(__file__).resolve().parent))
import client
import win_platform as platform

class ClientTests(unittest.TestCase):
    def test_fallback_preserves_guest_identity_and_stops_once(self):
        api=client.Api.__new__(client.Api); api.account={}; api.guest=None; api.config={}; api.request=MagicMock(return_value={})
        events=[]; keys=[]; choices=[]
        with patch.object(client.common.ProxySettings,'__init__',return_value=None): c=client.Connection(api,lambda *event:events.append(event))
        def run(connection,accelerated,*args):
            choices.append(accelerated); api.begin(); keys.append(dict(api.guest)); api.end()
            if accelerated: connection.notify('error','连接失败 [H-TIMEOUT]')
            else: connection.notify('connected','VLESS · 系统代理')
            connection.notify('stopped','已断开')
        c.mode='auto'
        with patch.object(client.common.Connection,'run',run): c.run(True,True,True,False)
        self.assertEqual(choices,[True,False]); self.assertEqual(keys[0],keys[1]); self.assertIsNone(api.guest)
        self.assertEqual(sum(call.args[0]=='guest/start' for call in api.request.call_args_list),1)
        self.assertEqual(sum(call.args[0]=='guest/stop' for call in api.request.call_args_list),1)
        self.assertFalse(any(event=='error' for event,value in events)); self.assertEqual(sum(event=='stopped' for event,value in events),1)
    def test_fallback_never_hides_permission_tls_or_profile_failure(self):
        for code in ('H401','H403','H429','H-TLS','P-PROFILE','C-VERIFY','S-RUNNING'):
            self.assertFalse(client.may_fallback('连接失败 ['+code+']'))
        self.assertTrue(client.may_fallback('连接失败 [H-VERIFY]'))
    def test_auto_does_not_fallback_after_cancel(self):
        api=MagicMock(); events=[]
        with patch.object(client.common.ProxySettings,'__init__',return_value=None): c=client.Connection(api,lambda *event:events.append(event))
        c.mode='auto'; choices=[]
        def run(connection,accelerated,*args): choices.append(accelerated); connection.cancel.set(); connection.notify('error','连接失败 [H-TIMEOUT]')
        with patch.object(client.common.Connection,'run',run): c.run(True,True,True,False)
        self.assertEqual(choices,[True]); self.assertFalse(any(event=='error' for event,value in events))
    def test_manual_channel_never_silently_falls_back(self):
        api=MagicMock(); events=[]
        with patch.object(client.common.ProxySettings,'__init__',return_value=None): c=client.Connection(api,lambda *event:events.append(event))
        c.mode='hy2'; choices=[]
        def run(connection,accelerated,*args): choices.append(accelerated); connection.notify('error','连接失败 [H-TIMEOUT]')
        with patch.object(client.common.Connection,'run',run): c.run(True,True,True,False)
        self.assertEqual(choices,[True]); self.assertTrue(any(event=='error' for event,value in events))
    def test_chatgpt_only_child_env_has_explicit_proxy_and_no_tls_bypass(self):
        with tempfile.TemporaryDirectory() as directory:
            exe=Path(directory)/'ChatGPT.exe'; exe.write_bytes(b'fixture')
            with patch.object(client.common.ProxySettings,'__init__',return_value=None): c=client.Connection(MagicMock(),MagicMock())
            c.connected=True
            with patch.object(client.subprocess,'Popen') as launch: c.launch_chatgpt(exe)
            args,env=launch.call_args.args[0],launch.call_args.kwargs['env']
            self.assertTrue(any('--proxy-server=' in value for value in args))
            self.assertIn('127.0.0.1',env['NO_PROXY']); self.assertIn('--proxy-server=',env['WEBVIEW2_ADDITIONAL_BROWSER_ARGUMENTS'])
            self.assertNotIn('--no-sandbox',args); self.assertNotIn('--ignore-certificate-errors',args)

@unittest.skipUnless(os.name=='nt','Windows integration')
class PlatformTests(unittest.TestCase):
    def test_dpapi_at_rest_and_fail_closed_plaintext(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'account.json'; value={'token':'fixture-not-real','username':'test'}
            platform.save(path,value); self.assertNotIn(value['token'],path.read_text()); self.assertEqual(platform.read(path),value)
            path.write_text('{"token":"plain"}')
            with self.assertRaises(RuntimeError): platform.read(path)
    def test_machine_user_identity_is_fixed_and_scoped(self):
        baseline=platform.identity()
        self.assertEqual(baseline,platform.identity()); self.assertEqual(len(baseline),64)
        with patch.object(platform,'user_sid',return_value='S-1-5-21-fixture'): self.assertNotEqual(baseline,platform.identity())
    def test_proxy_restore_partial_enable_and_foreign_profile(self):
        import uuid
        key='Software\\Qinglian\\Tests\\'+uuid.uuid4().hex
        original={name:None for name in platform.OUR_PROXY}; ours=platform.installed_proxy()
        try:
            with tempfile.TemporaryDirectory() as directory:
                path=Path(directory)/'restore.json'; platform.save(path,{'before':original,'ours':ours})
                platform.write_proxy({'ProxyEnable':ours['ProxyEnable']},key)
                platform.restore_proxy(path,key); self.assertEqual(platform.proxy_values(key),original)
                platform.save(path,{'before':original,'ours':ours}); foreign=dict(ours,ProxyServer=['http=127.0.0.1:9988',platform.winreg.REG_SZ])
                platform.write_proxy(foreign,key); platform.restore_proxy(path,key); self.assertEqual(platform.proxy_values(key),foreign)
        finally:
            platform.winreg.DeleteKey(platform.winreg.HKEY_CURRENT_USER,key)
    def test_job_close_terminates_native_child(self):
        process=platform.spawn([sys.executable,'-c','import time;time.sleep(60)'])
        job=process._qinglian_job; job.close(); process.wait(timeout=5); self.assertIsNotNone(process.poll())
        if process.stdin: process.stdin.close()
    @unittest.skipUnless(os.environ.get('QINGLIAN_TEST_APP') and os.environ.get('QINGLIAN_CI_WINDOWS')=='1','packaged recovery only on disposable CI Windows user')
    def test_packaged_windowless_guard_restores_after_pipe_eof(self):
        import subprocess
        before=platform.proxy_values(); ours=platform.installed_proxy(); process=None
        try:
            with tempfile.TemporaryDirectory() as directory:
                state=Path(directory)/'Qinglian'; state.mkdir(); path=state/'proxy-restore.json'
                platform.save(path,{'before':before,'ours':ours}); platform.write_proxy(ours)
                process=subprocess.Popen([os.environ['QINGLIAN_TEST_APP'],'--proxy-guard',str(path)],stdin=subprocess.PIPE,env=dict(os.environ,LOCALAPPDATA=directory),creationflags=platform.NO_WINDOW)
                process.stdin.close(); self.assertEqual(process.wait(timeout=20),0)
                self.assertEqual(platform.proxy_values(),before); self.assertFalse(path.exists())
        finally:
            platform.write_proxy(before)
            if process and process.poll() is None: process.kill(); process.wait()
if __name__=='__main__': unittest.main()
