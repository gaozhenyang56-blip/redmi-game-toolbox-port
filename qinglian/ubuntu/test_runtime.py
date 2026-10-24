import importlib.util
import io
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import threading
import unittest
from unittest.mock import patch, MagicMock
sys.path.insert(0,str(Path(__file__).resolve().parent))
import runtime
import tun

class RuntimeTests(unittest.TestCase):
    def test_os_scoped_identity_survives_app_data_removal(self):
        ident='1234567890abcdef1234567890abcdef'
        with tempfile.TemporaryDirectory() as a,tempfile.TemporaryDirectory() as b:
            with patch.object(runtime,'STATE',Path(a)): first=runtime.device_identity(ident,1000)
            with patch.object(runtime,'STATE',Path(b)): second=runtime.device_identity(ident,1000)
        self.assertEqual(first,second); self.assertEqual(len(first),64); self.assertNotIn(ident,first)
        self.assertNotEqual(first,runtime.device_identity(ident,1001))
    def test_missing_system_id_has_persistent_random_fallback(self):
        with tempfile.TemporaryDirectory() as d,patch.object(runtime,'STATE',Path(d)):
            first=runtime.device_identity('',1000)
            self.assertEqual(first,runtime.device_identity('0'*32,1000))
    def test_private_atomic_state(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'private'/'state.json'; runtime.save(p,{'token':'not-a-real-token'})
            self.assertEqual(p.stat().st_mode&0o777,0o600)
            self.assertEqual(p.parent.stat().st_mode&0o777,0o700)
            self.assertEqual(runtime.read(p),{'token':'not-a-real-token'})
    def test_no_bearer_redirect(self):
        self.assertIsNone(runtime.NoRedirect().redirect_request(None,None,302,'',{},'https://elsewhere.invalid'))
    def test_expired_account_can_logout_locally(self):
        with tempfile.TemporaryDirectory() as d,patch.object(runtime,'STATE',Path(d)):
            api=runtime.Api.__new__(runtime.Api); api.account={'token':'expired'}
            runtime.save(Path(d)/'account.json',api.account)
            api.request=MagicMock(side_effect=RuntimeError('expired'))
            self.assertIn('撤销未确认',api.logout()); self.assertFalse(api.account)
            self.assertFalse((Path(d)/'account.json').exists())
    def test_proxy_verification_requires_exact_private_api_response(self):
        api=runtime.Api.__new__(runtime.Api); api.account={'token':'fixture'}; api.base='https://example.invalid/api/v1/'; api.device='a'*64; api.context=MagicMock()
        response=MagicMock(); response.__enter__.return_value=response
        response.headers={'X-Qinglian-Speed':'server-v1','Content-Length':'1'}; response.read.return_value=b'x'
        opener=MagicMock(); opener.open.return_value=response
        with patch.object(runtime.urllib.request,'build_opener',return_value=opener):
            api.verify_proxy()
            response.headers['X-Qinglian-Speed']='wrong'
            with self.assertRaises(RuntimeError): api.verify_proxy()
    @staticmethod
    def fallback_api():
        api=runtime.Api.__new__(runtime.Api)
        api.config={'url':'https://fixture.invalid:11452/api/v1/profile','clientToken':'fixture'}
        api.base='https://fixture.invalid:11452/api/v1/';api.device='a'*64;api.account={'token':'fixture'}
        api.opener=MagicMock()
        response=MagicMock();response.__enter__.return_value=response;response.read.return_value=b'{"ok":true}'
        return api,response
    def test_api_fallback_before_send_keeps_credentials_and_body(self):
        api,response=self.fallback_api()
        api.opener.open.side_effect=[runtime.urllib.error.URLError(runtime.BeforeSendError()),response]
        self.assertTrue(api.request('exports/register',{'username':'fixture'})['ok'])
        calls=api.opener.open.call_args_list
        self.assertIn(':443/',calls[0].args[0].full_url);self.assertIn(':11452/',calls[1].args[0].full_url)
        self.assertEqual(calls[0].args[0].data,calls[1].args[0].data)
        self.assertEqual(calls[0].args[0].get_header('Authorization'),'Bearer fixture')
        api.opener.open.side_effect=None;api.opener.open.return_value=response
        api.request('exports/quota')
        self.assertIn(':11452/',api.opener.open.call_args.args[0].full_url)
    def test_api_does_not_replay_a_possibly_sent_post(self):
        api,response=self.fallback_api();api.opener.open.side_effect=TimeoutError()
        with self.assertRaisesRegex(RuntimeError,'结果未确认'):api.request('exports/nodes',{'requestId':'fixture'})
        self.assertEqual(api.opener.open.call_count,1)
    def test_api_get_network_retry_but_no_http_certificate_or_payload_retry(self):
        api,response=self.fallback_api();api.opener.open.side_effect=[TimeoutError(),response]
        self.assertTrue(api.request('exports/quota')['ok']);self.assertEqual(api.opener.open.call_count,2)
        for error in [runtime.urllib.error.HTTPError('https://fixture.invalid',401,'',{},None),runtime.urllib.error.URLError(runtime.ssl.SSLCertVerificationError('fixture'))]:
            api,response=self.fallback_api();api.opener.open.side_effect=error
            with self.assertRaises(RuntimeError):api.request('exports/quota')
            self.assertEqual(api.opener.open.call_count,1)
        api,response=self.fallback_api();response.read.return_value=b'x'*524289;api.opener.open.return_value=response
        with self.assertRaisesRegex(RuntimeError,'响应过大'):api.request('exports/quota')
        self.assertEqual(api.opener.open.call_count,1)
    def test_real_api_handler_tls_ca_hostname_and_presend_failure(self):
        # Exercise the real urllib handler, not a mock opener. This guards
        # Ubuntu Python 3.12 compatibility and the TLS boundary in one request.
        import http.server
        import ssl
        fixture=Path(__file__).resolve().parents[1]/'app/src/test/resources'
        class Handler(http.server.BaseHTTPRequestHandler):
            def do_GET(self):
                self.send_response(200);self.send_header('Content-Length','11');self.end_headers();self.wfile.write(b'{"ok":true}')
            def log_message(self,*args):pass
        server=http.server.HTTPServer(('127.0.0.1',0),Handler)
        tls=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
        tls.load_cert_chain(str(fixture/'tls-server-cert.pem'),str(fixture/'tls-server-key.pem'))
        server.socket=tls.wrap_socket(server.socket,server_side=True)
        port=server.server_port
        thread=threading.Thread(target=server.serve_forever,daemon=True);thread.start()
        def opener(context):
            return runtime.urllib.request.build_opener(runtime.urllib.request.ProxyHandler({}),runtime.ApiHandler(context=context),runtime.NoRedirect())
        context=ssl.create_default_context(cafile=str(fixture/'tls-ca.pem'))
        try:
            with opener(context).open('https://127.0.0.1:%d/api/v1/quota'%port,timeout=3) as response:
                self.assertEqual(json.load(response),{'ok':True})
            for host,trust in [('localhost',context),('127.0.0.1',ssl.create_default_context())]:
                with self.assertRaises(runtime.urllib.error.URLError) as failure:
                    opener(trust).open('https://%s:%d/api/v1/quota'%(host,port),timeout=3)
                self.assertIsInstance(failure.exception.reason,ssl.SSLCertVerificationError)
        finally:
            server.shutdown();server.server_close();thread.join(timeout=3)
        with self.assertRaises(runtime.urllib.error.URLError) as failure:
            opener(context).open('https://127.0.0.1:%d/api/v1/quota'%port,timeout=3)
        self.assertIsInstance(failure.exception.reason,runtime.BeforeSendError)
    def test_api_routes_cannot_change_host_or_other_service_ports(self):
        self.assertEqual(runtime.api_routes('https://fixed.invalid:11452/api/v1/'),['https://fixed.invalid:443/api/v1/','https://fixed.invalid:11452/api/v1/'])
        self.assertEqual(runtime.api_routes('https://fixed.invalid:18443/'),['https://fixed.invalid:18443/'])
    def test_hy2_exact_windows_and_tls(self):
        n=dict(add='203.0.113.1',port=443,auth='fixture',sni='example.test',caPem='public',hy2Performance='aggressive-v1')
        c=runtime.hy_config(n,'/private/ca.pem')
        self.assertEqual(c['congestion'],{'type':'bbr','bbrProfile':'aggressive'})
        self.assertEqual(c['quic']['maxStreamReceiveWindow'],33554432)
        self.assertEqual(c['quic']['maxConnReceiveWindow'],67108864)
        self.assertFalse(c['tls']['insecure']); self.assertNotIn('bandwidth',c)
        n.pop('hy2Performance'); c=runtime.hy_config(n,'/private/ca.pem')
        self.assertNotIn('maxConnReceiveWindow',c['quic']); self.assertEqual(c['congestion']['bbrProfile'],'conservative')
    @staticmethod
    def profile(high=True):
        return dict(ready=True,labHy2=high,node={'protocol':'vmess'},revision='a'*64,acceleration=dict(node={'protocol':'hysteria2',**({'hy2Performance':'aggressive-v1'} if high else {})},revision='b'*64))
    def test_server_double_ack(self):
        good=self.profile(); selected=runtime.select_profile(good,True,True)
        self.assertEqual(selected[0]['compatibility'],good['node'])
        good['labHy2']=False
        with self.assertRaises(RuntimeError): runtime.select_profile(good,True,True)
        good=self.profile(); good['acceleration']['node'].pop('hy2Performance')
        with self.assertRaises(RuntimeError): runtime.select_profile(good,True,True)
        with self.assertRaises(RuntimeError): runtime.select_profile(self.profile(),True,False)
    def test_channel_retains_compatibility_and_waits(self):
        self.assertIsNone(runtime.select_profile({'ready':False},True,True))
        self.assertEqual(runtime.select_profile(self.profile(),False,False)[0]['protocol'],'vmess')
        with self.assertRaises(RuntimeError): runtime.select_profile(dict(ready=True,node={}),True,False)
    def test_restore_only_our_settings(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'restore.json'
            runtime.save(p,[dict(schema='s',key='owned',ours='ours',before='old'),dict(schema='s',key='external',ours='ours',before='old')])
            writes=[]
            def gs(s,k,v=None):
                if v is None: return 'ours' if k=='owned' else 'new-other-app'
                writes.append((k,v))
            with patch.object(runtime,'gs',side_effect=gs): runtime.restore_proxy(p)
            self.assertEqual(writes,[('owned','old')]); self.assertFalse(p.exists())
    def test_other_proxy_new_port_does_not_get_disabled(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'restore.json'
            runtime.save(p,[dict(schema='org.gnome.system.proxy.http',key='port',ours='10809',before='0'),dict(schema='org.gnome.system.proxy',key='mode',ours="'manual'",before="'none'")])
            writes=[]
            def gs(s,k,v=None):
                if v is None: return '7897' if k=='port' else "'manual'"
                writes.append((k,v))
            with patch.object(runtime,'gs',side_effect=gs): runtime.restore_proxy(p)
            self.assertEqual(writes,[]); self.assertFalse(p.exists())
    def test_missing_desktop_bus_retains_recovery_snapshot(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d)/'restore.json'; runtime.save(p,[dict(schema='s',key='k',ours='x',before='y')])
            with patch.object(runtime,'gs',side_effect=subprocess.CalledProcessError(1,'gsettings')): runtime.restore_proxy(p)
            self.assertTrue(p.exists())
    def test_tun_core_no_cn_direct_loop(self):
        source=(Path(__file__).parent/'runtime.py').read_text()
        self.assertIn('v2_config(node,rule and not tun)',source)
        self.assertIn("any(n.get('add')!=server",source)
    def test_guest_manual_session_and_recovery(self):
        api=runtime.Api.__new__(runtime.Api); api.account={}; api.guest=None
        api.request=MagicMock(return_value={})
        api.begin(); first=api.guest.copy(); api.current('profile',{'labHy2':True}); api.current('profile',{'labHy2':True})
        self.assertEqual(api.guest,first)
        self.assertEqual(len(first['sessionKey']),64)
        api.end(); self.assertIsNone(api.guest)
        api.begin(); self.assertNotEqual(api.guest['sessionKey'],first['sessionKey'])
    def test_fixed_selection_at_renewal(self):
        # No preferences are read inside the connection worker.
        import inspect
        source=inspect.getsource(runtime.Connection.run)
        self.assertNotIn('settings.json',source)
        self.assertIn("'labHy2':accelerated and performance",source)
        self.assertIn("if not self.api.account and quota.get('remainingBytes'",source)
    def test_chatgpt_no_force_kill_or_sandbox_bypass(self):
        c=runtime.Connection(MagicMock(),lambda *_:None); c.connected=True
        with patch.object(runtime.shutil,'which',return_value='/usr/bin/chatgpt'),patch.object(runtime.Path,'glob',return_value=[]),patch.object(runtime.subprocess,'Popen') as launch:
            c.launch_chatgpt()
            args,kw=launch.call_args
            self.assertIn('--proxy-server=http://127.0.0.1:10809',args[0])
            self.assertIn('--disable-quic',args[0]); self.assertNotIn('--no-sandbox',args[0])
            self.assertIn('--proxy-bypass-list=localhost;127.0.0.1;[::1]',args[0])
            self.assertEqual(kw['env']['HTTPS_PROXY'],'http://127.0.0.1:10809')
    def test_chatgpt_existing_instance_refused(self):
        c=runtime.Connection(MagicMock(),lambda *_:None); c.connected=True
        item=MagicMock(); item.read_text.return_value='chatgpt\n'
        with patch.object(runtime.shutil,'which',return_value='/usr/bin/chatgpt'),patch.object(runtime.Path,'glob',return_value=[item]),patch.object(runtime.subprocess,'Popen') as launch:
            with self.assertRaises(RuntimeError): c.launch_chatgpt()
            launch.assert_not_called()
    def test_speed_requires_active_connection_and_bounds(self):
        c=runtime.Connection(MagicMock(),lambda *_:None)
        with self.assertRaises(RuntimeError): c.speed(1,threading.Event(),lambda *_:None)
        c.connected=True
        for size in (0,2049):
            with self.assertRaises(ValueError): c.speed(size,threading.Event(),lambda *_:None)
    def test_speed_no_direct_and_exact_size(self):
        api=MagicMock(); api.account={'token':'fixture'}; api.base='https://example.invalid/api/v1/'; api.device='f'*64
        c=runtime.Connection(api,lambda *_:None); c.connected=True
        response=MagicMock(); response.__enter__.return_value=response
        response.headers={'X-Qinglian-Speed':'server-v1','Content-Length':str(1048576)}
        response.read.side_effect=[b'x'*65536]*16
        opener=MagicMock(); opener.open.return_value=response
        sizes=[]
        with patch.object(runtime.urllib.request,'build_opener',return_value=opener):
            result=c.speed(1,threading.Event(),lambda p,t:sizes.append(p))
        self.assertEqual(sizes[-1],1); self.assertIn('已完成',result)
        self.assertEqual(opener.open.call_args.args[0].full_url,'https://example.invalid/api/v1/exports/speed?bytes=1048576')
    def test_speed_failure_not_retried_direct(self):
        api=MagicMock(); api.account={'token':'fixture'}; api.base='https://example.invalid/api/v1/'
        c=runtime.Connection(api,lambda *_:None); c.connected=True
        opener=MagicMock(); opener.open.side_effect=OSError('fixture')
        with patch.object(runtime.urllib.request,'build_opener',return_value=opener):
            with self.assertRaises(OSError): c.speed(1,threading.Event(),lambda *_:None)
        self.assertEqual(opener.open.call_count,1)

class TunTests(unittest.TestCase):
    def exercise(self,fail=None,conflict=False):
        calls=[]
        def run(*args,check=True):
            calls.append(args)
            if fail and fail in args: raise subprocess.CalledProcessError(1,args)
            if '-j' in args: return subprocess.CompletedProcess(args,0,json.dumps([{'priority':11091}] if conflict else []),'')
            if args[:3]==('/usr/sbin/ip','link','show'): return subprocess.CompletedProcess(args,1,'','')
            return subprocess.CompletedProcess(args,0,'','')
        with tempfile.TemporaryDirectory() as d:
            root=Path(d); (root/'profile.json').write_text(json.dumps({'url':'https://203.0.113.1/api/v1/profile'}))
            old=Path.read_text
            def text(p,*a,**kw): return 'nameserver 127.0.0.53' if str(p)=='/etc/resolv.conf' else old(p,*a,**kw)
            p=MagicMock(); p.poll.return_value=None
            with patch.object(tun,'ROOT',root),patch.object(tun,'run',side_effect=run),patch.object(tun.os,'geteuid',return_value=0),patch.object(tun.os,'open',return_value=17),patch.object(tun.fcntl,'flock'),patch.object(tun.sys,'argv',['qinglian-tun']),patch.object(tun.Path,'read_text',text),patch.object(tun.Path,'iterdir',return_value=[]),patch.object(tun.subprocess,'Popen',return_value=p),patch.object(tun.select,'select',return_value=([1],[],[])),patch.object(tun.os,'read',return_value=b''),patch.object(tun.sys,'stdout',io.StringIO()):
                try: result=tun.main()
                except subprocess.CalledProcessError: result=-1
        return result,calls
    def test_full_cleanup_on_disconnect(self):
        result,calls=self.exercise(); self.assertEqual(result,0)
        for family in ('-4','-6'):
            self.assertIn(('/usr/sbin/ip',family,'rule','del','pref','11091'),calls)
        self.assertIn(('/usr/sbin/ip','-4','rule','del','pref','11090'),calls)
        self.assertIn(('/usr/bin/resolvectl','revert','qltun0'),calls)
        self.assertIn(('/usr/sbin/ip','link','delete','qltun0'),calls)
    def test_partial_dns_failure_rolls_back(self):
        result,calls=self.exercise(fail='dns'); self.assertEqual(result,-1)
        self.assertIn(('/usr/sbin/ip','-4','rule','del','pref','11090'),calls)
        self.assertIn(('/usr/sbin/ip','link','delete','qltun0'),calls)
    def test_existing_policy_not_overwritten(self):
        result,calls=self.exercise(conflict=True); self.assertEqual(result,1)
        self.assertFalse(any('add' in c or 'delete' in c for c in calls))

if __name__=='__main__': unittest.main()
