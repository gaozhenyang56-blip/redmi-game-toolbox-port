"""Real packaged binaries, TLS, five protocols, HY2 high and worker lifecycle; loopback only."""
import http.server
import json
import os
from pathlib import Path
import socket
import subprocess
import sys
import tempfile
import threading
import time
import unittest
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).resolve().parent))
import runtime
LIB=Path(os.environ.get('QINGLIAN_TEST_LIB','/nonexistent'))
FIX=Path(__file__).resolve().parents[1]/'app/src/test/resources'

def port():
    with socket.socket() as s: s.bind(('127.0.0.1',0)); return s.getsockname()[1]

class Origin(http.server.BaseHTTPRequestHandler):
    def log_message(self,*_): pass
    def do_GET(self):
        body=b'qinglian-native-fixture'*8192
        self.send_response(200); self.send_header('Content-Length',str(len(body))); self.end_headers(); self.wfile.write(body)

@unittest.skipUnless((LIB/'v2ray').exists(),'QINGLIAN_TEST_LIB must point at unpacked package')
class NativeTests(unittest.TestCase):
    def test_all_protocols_and_chatgpt_domain(self):
        self.assertTrue(FIX.exists())
        origin=http.server.ThreadingHTTPServer(('127.0.0.1',0),Origin)
        threading.Thread(target=origin.serve_forever,daemon=True).start()
        with tempfile.TemporaryDirectory() as d:
            root=Path(d); ca=(FIX/'tls-ca.pem').read_text()
            nodes={}; inbounds=[]; uid='11111111-1111-4111-8111-111111111111'
            for protocol in ('vmess','vless','trojan','shadowsocks'):
                p=port(); node=dict(protocol=protocol,add='127.0.0.1',port=p,tls='tls',net='tcp',sni='127.0.0.1',caPem=ca)
                settings={}
                if protocol in ('vmess','vless'):
                    node['id']=uid; settings={'clients':[{'id':uid}]}
                    if protocol=='vless': settings['decryption']='none'
                else:
                    node['password']='public-native-fixture-only'
                    if protocol=='shadowsocks':
                        node.update(method='aes-128-gcm',tls='none'); settings={'method':node['method'],'password':node['password'],'network':'tcp,udp'}
                    else: settings={'clients':[{'password':node['password']}]}
                stream={'network':'tcp','security':node['tls']}
                if node['tls']=='tls': stream['tlsSettings']={'certificates':[{'certificateFile':str(FIX/'tls-server-cert.pem'),'keyFile':str(FIX/'tls-server-key.pem')}]}
                inbounds.append(dict(listen='127.0.0.1',port=p,protocol=protocol,settings=settings,streamSettings=stream)); nodes[protocol]=node
            config={'log':{'loglevel':'none'},'dns':{'hosts':{'chatgpt.com':'127.0.0.1'}},'inbounds':inbounds,'outbounds':[{'protocol':'freedom','settings':{'domainStrategy':'UseIP'}}]}
            runtime.save(root/'server.json',config)
            server=subprocess.Popen([str(LIB/'v2ray'),'run','-c',str(root/'server.json')],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
            hyservers=[]
            try:
                runtime.wait_port(nodes['vmess']['port'],server,threading.Event())
                for protocol,high in [('vmess',False),('vless',False),('trojan',False),('shadowsocks',False),('hysteria2',False),('hysteria2',True)]:
                    with self.subTest(protocol=protocol,high=high):
                        hy=protocol=='hysteria2'; primary=nodes['vmess'] if hy else nodes[protocol]
                        response={'ready':True,'node':primary,'revision':'a'*64,'labHy2':high}
                        if hy:
                            hp=port(); hn=dict(protocol='hysteria2',add='127.0.0.1',port=hp,auth='public-native-fixture-only',sni='127.0.0.1',caPem=ca)
                            if high: hn['hy2Performance']='aggressive-v1'
                            cfg={'listen':'127.0.0.1:'+str(hp),'tls':{'cert':str(FIX/'tls-server-cert.pem'),'key':str(FIX/'tls-server-key.pem')},'auth':{'type':'password','password':hn['auth']},'ignoreClientBandwidth':True,'congestion':{'type':'bbr','bbrProfile':'aggressive' if high else 'conservative'},'quic':runtime.hy_config(hn,root/'ca.pem')['quic']}
                            runtime.save(root/'hyserver.json',cfg)
                            hs=subprocess.Popen([str(LIB/'hysteria'),'server','-c',str(root/'hyserver.json'),'--disable-update-check','--log-level','error'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL); hyservers.append(hs)
                            response['acceleration']={'node':hn,'revision':'b'*64}
                            time.sleep(.15); self.assertIsNone(hs.poll())
                        class Api:
                            account={'token':'public-fixture'}; guest=None
                            def begin(self): pass
                            def end(self): pass
                            def current(self,path,body=None):
                                if path=='profile': return response
                                return {'remainingBytes':0,'cumulativeTotalBytes':1} # Empty export budget must not stop account VPN.
                        events=[]
                        c=runtime.Connection(Api(),lambda e,v:events.append((e,v)))
                        with patch.object(runtime,'ROOT',LIB),patch.object(runtime,'STATE',root/'state'),patch.object(runtime.ProxySettings,'enable'),patch.object(runtime.ProxySettings,'close'):
                            (root/'state').mkdir(exist_ok=True)
                            c.start(hy,high,False,False)
                            try:
                                for _ in range(160):
                                    if c.connected: break
                                    if any(e=='error' for e,v in events): break
                                    time.sleep(.05)
                                self.assertTrue(c.connected,events)
                                for target in (['127.0.0.1','chatgpt.com'] if hy else ['127.0.0.1']):
                                    r=subprocess.run(['curl','-fsS','--max-time','10','--noproxy','','--proxy','http://127.0.0.1:10809','http://'+target+':'+str(origin.server_port)+'/'],capture_output=True)
                                    self.assertEqual(r.returncode,0,r.stderr.decode()); self.assertEqual(len(r.stdout),len(b'qinglian-native-fixture'*8192))
                                time.sleep(1.1); self.assertTrue(c.connected,events)
                            finally:
                                c.disconnect(); c.thread.join(timeout=20)
                                self.assertFalse(c.thread.is_alive()); self.assertFalse(c.procs)
                                self.assertFalse((root/'state/run/core.json').exists())
                        if hy: hs.terminate(); hs.wait(timeout=5); hyservers.remove(hs)
            finally:
                server.terminate(); server.wait(timeout=5)
                for hs in hyservers: hs.terminate(); hs.wait(timeout=5)
                origin.shutdown(); origin.server_close()

if __name__=='__main__': unittest.main()
