"""Real TLS-over-CONNECT test of the Windows nonblocking verification path."""
import http.server
from pathlib import Path
import select
import socket
import socketserver
import ssl
import sys
import threading
import time
from types import SimpleNamespace
import unittest
import urllib.error
sys.path.insert(0,str(Path(__file__).resolve().parent))
import probe

class ProbeTests(unittest.TestCase):
    def test_slow_headers_tunnel_cancellation_deadline_and_strict_response(self):
        fixture=Path(__file__).resolve().parents[1]/'app/src/test/resources'
        mode=['ok']; entered=threading.Event(); release=threading.Event(); stopped=threading.Event(); tunnel_delay=[0.]
        class Origin(http.server.BaseHTTPRequestHandler):
            def log_message(self,*_): pass
            def do_GET(self):
                part=mode[0]
                def head():
                    self.send_response(403 if part=='denied' else 200)
                    self.send_header('Content-Length','1'); self.send_header('X-Qinglian-Speed','invalid' if part=='marker' else 'server-v1'); self.end_headers(); self.wfile.flush()
                try:
                    if part=='body': head()
                    entered.set()
                    if part=='slow': release.wait(3.4)
                    elif part in ('headers','body'): release.wait(5)
                    if part!='body': head()
                    self.wfile.write(b'x')
                except OSError: pass
        server=http.server.ThreadingHTTPServer(('127.0.0.1',0),Origin)
        tls=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER); tls.load_cert_chain(str(fixture/'tls-server-cert.pem'),str(fixture/'tls-server-key.pem')); server.socket=tls.wrap_socket(server.socket,server_side=True)
        origin_thread=threading.Thread(target=server.serve_forever,daemon=True); origin_thread.start()
        class Proxy(socketserver.BaseRequestHandler):
            def handle(self):
                try:
                    data=b''
                    while b'\r\n\r\n' not in data:
                        chunk=self.request.recv(4096)
                        if not chunk: return
                        data+=chunk
                    if not data.startswith(b'CONNECT '): return
                    if tunnel_delay[0]: stopped.wait(tunnel_delay[0])
                    with socket.create_connection(('127.0.0.1',server.server_port),2) as upstream:
                        self.request.sendall(b'HTTP/1.1 200 Connection established\r\n\r\n')
                        while not stopped.is_set():
                            ready,_,_=select.select([self.request,upstream],[],[],.1)
                            for source in ready:
                                chunk=source.recv(16384)
                                if not chunk: return
                                (upstream if source is self.request else self.request).sendall(chunk)
                except OSError: pass
        proxy=socketserver.ThreadingTCPServer(('127.0.0.1',0),Proxy); proxy.daemon_threads=True
        proxy_thread=threading.Thread(target=proxy.serve_forever,daemon=True); proxy_thread.start()
        api=SimpleNamespace(base='https://127.0.0.1:%d/api/v1/'%server.server_port,account={},guest={'sessionKey':'a'*64},device='b'*64,context=ssl.create_default_context(cafile=str(fixture/'tls-ca.pem')))
        def verify(cold=True,cancel=None,budget=None): return probe.verify(api,cancel,cold,proxy.server_address,budget)
        try:
            verify(); mode[0]='slow'; verify()
            with self.assertRaises(TimeoutError): verify(False)
            for part in ('headers','body'):
                mode[0]=part; entered.clear(); cancel=threading.Event(); errors=[]
                def work():
                    try: verify(cancel=cancel)
                    except Exception as error: errors.append(error)
                worker=threading.Thread(target=work); worker.start(); self.assertTrue(entered.wait(3))
                start=time.monotonic(); cancel.set(); worker.join(1)
                self.assertFalse(worker.is_alive(),part+' cancellation'); self.assertLess(time.monotonic()-start,1)
                self.assertIsInstance(errors[0],probe.Cancelled)
            mode[0]='headers'; start=time.monotonic()
            with self.assertRaises(TimeoutError): verify(budget=.25)
            self.assertLess(time.monotonic()-start,1)
            mode[0]='marker'
            with self.assertRaises(RuntimeError): verify()
            mode[0]='denied'
            with self.assertRaises(urllib.error.HTTPError) as failure: verify()
            self.assertEqual(failure.exception.code,403)
            mode[0]='ok'; api.context=ssl.create_default_context()
            with self.assertRaises(ssl.SSLCertVerificationError): verify()
            api.context=ssl.create_default_context(cafile=str(fixture/'tls-ca.pem'))
            # Slow CONNECT must get the same cold-HY2 budget as remote TLS/HTTP.
            tunnel_delay[0]=3.4; verify()
            with self.assertRaises(TimeoutError): verify(False)
        finally:
            release.set(); stopped.set(); proxy.shutdown(); proxy.server_close(); server.shutdown(); server.server_close(); proxy_thread.join(2); origin_thread.join(2)
if __name__=='__main__': unittest.main(verbosity=2)
