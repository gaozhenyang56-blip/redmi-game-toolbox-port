"""Real Wintun traffic in reserved prefixes only; never capture runner defaults."""
import http.server
import json
import os
from pathlib import Path
import select
import socket
import socketserver
import struct
import sys
import threading
import time
import urllib.request
sys.path.insert(0,str(Path(__file__).resolve().parent))
import tun
from tun_ipc import TunSession

def exact(stream,size):
    data=b''
    while len(data)<size:
        chunk=stream.recv(size-len(data))
        if not chunk: raise OSError('fixture EOF')
        data+=chunk
    return data
class Origin(http.server.BaseHTTPRequestHandler):
    def log_message(self,*_): pass
    def do_GET(self):
        body=b'qinglian-wintun-fixture'*8192; self.send_response(200); self.send_header('Content-Length',str(len(body))); self.end_headers(); self.wfile.write(body)
class Socks(socketserver.BaseRequestHandler):
    def handle(self):
        try:
            version,count=exact(self.request,2); exact(self.request,count); self.request.sendall(b'\x05\x00')
            header=exact(self.request,4)
            if header[1]!=1: return
            if header[3]==1: exact(self.request,4)
            elif header[3]==4: exact(self.request,16)
            elif header[3]==3: exact(self.request,exact(self.request,1)[0])
            else: return
            exact(self.request,2)
            with socket.create_connection(('127.0.0.1',self.server.origin_port),3) as upstream:
                self.request.sendall(b'\x05\x00\x00\x01\x7f\x00\x00\x01\x00\x00')
                while True:
                    readable,_,_=select.select([self.request,upstream],[],[],10)
                    if not readable: return
                    for source in readable:
                        data=source.recv(65536)
                        if not data: return
                        (upstream if source is self.request else self.request).sendall(data)
        except OSError: pass
def defaults():
    return tun.powershell("@(Get-NetRoute|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/0','::/0')}|Select-Object DestinationPrefix,InterfaceIndex,NextHop,RouteMetric|Sort-Object DestinationPrefix,InterfaceIndex,NextHop)|ConvertTo-Json -Compress")
def run(result_path=None):
    if os.name!='nt': raise SystemExit('Windows only')
    import ctypes
    if not ctypes.WinDLL('shell32').IsUserAnAdmin(): raise SystemExit('Disposable Windows CI administrator required')
    assert tun.plan(True)==['198.18.10.0/24','fdfe:dcba:1234::/64']
    assert set(tun.plan(False))=={'0.0.0.0/1','128.0.0.0/1','::/1','8000::/1'}
    baseline=defaults(); origin=http.server.ThreadingHTTPServer(('127.0.0.1',0),Origin); threading.Thread(target=origin.serve_forever,daemon=True).start()
    class Server(socketserver.ThreadingTCPServer): allow_reuse_address=True; daemon_threads=True
    proxy=Server(('127.0.0.1',10808),Socks); proxy.origin_port=origin.server_port; threading.Thread(target=proxy.serve_forever,daemon=True).start()
    session=TunSession(isolated=True)
    try:
        session.start(threading.Event()); time.sleep(1)
        if sys.stdout is not None: print('Reserved-prefix adapter metadata:',tun.powershell("$a=Get-NetAdapter -Name Qinglian;@{adapter=($a|Select-Object Name,Status,ifIndex);address=@(Get-NetIPAddress -InterfaceIndex $a.ifIndex|Select-Object IPAddress,AddressState,AddressFamily);routes=@(Get-NetRoute -InterfaceIndex $a.ifIndex|Select-Object DestinationPrefix,NextHop)}|ConvertTo-Json -Compress -Depth 4"),flush=True)
        opener=urllib.request.build_opener(urllib.request.ProxyHandler({}))
        for host in ('198.18.10.2','[fdfe:dcba:1234::2]'):
            if sys.stdout is not None: print('Reserved-prefix traffic target:',host,'helper running:',session.poll() is None,flush=True)
            with opener.open('http://'+host+':'+str(origin.server_port)+'/',timeout=15) as response:
                assert len(response.read())==len(b'qinglian-wintun-fixture'*8192)
        assert defaults()==baseline,'isolated fixture changed default routing'
    finally:
        session.close(); proxy.shutdown(); proxy.server_close(); origin.shutdown(); origin.server_close()
    assert defaults()==baseline
    assert not tun.powershell("if(Get-NetAdapter|Where-Object Name -eq Qinglian){'exists'}")
    if result_path: Path(result_path).write_text(json.dumps({'ok':True,'ipv4':True,'ipv6':True,'defaultRoutesPreserved':True}),encoding='utf-8')
    if sys.stdout is not None: print('PASS: real Wintun IPv4/IPv6 -> SOCKS -> HTTP, helper identity, clean routes/adapter; default routes untouched, global takeover not exercised on CI.')
if __name__=='__main__': run()
