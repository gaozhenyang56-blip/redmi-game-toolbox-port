"""Cancellable Windows HTTPS-over-local-proxy verification without blocking SSL files.
CPython/Winsock blocking file reads need not wake on another thread's shutdown.
Use nonblocking TLS and bounded select waits; certificate/hostname checks stay on.
"""
import re
import select
import socket
import ssl
import threading
import time
import urllib.error
import urllib.parse

class Cancelled(RuntimeError): pass

def verify(api,cancel=None,cold_hy2=False,proxy=('127.0.0.1',10809),total_budget=None):
    cancel=cancel or threading.Event()
    deadline=time.monotonic()+(total_budget if total_budget is not None else 15 if cold_hy2 else 8)
    read_budget=12 if cold_hy2 else 3
    base=getattr(api,'origin_base',api.base); parsed=urllib.parse.urlsplit(base)
    if parsed.scheme!='https' or not parsed.hostname or parsed.username or parsed.fragment or parsed.query: raise ValueError('Invalid fixed speed origin')
    token=api.account.get('token') or api.guest['sessionKey']
    if not re.fullmatch('[0-9a-fA-F]{64}',token) or not re.fullmatch('[0-9a-fA-F]{64}',api.device): raise ValueError('Invalid verification credential')
    host=parsed.hostname; authority=('['+host+']' if ':' in host else host)+':'+str(parsed.port or 443)
    path=urllib.parse.urlsplit(urllib.parse.urljoin(base,('exports' if api.account else 'guest')+'/speed?bytes=1')).path+'?bytes=1'
    raw=None; stream=None; phase_deadline=deadline
    def check():
        if cancel.is_set(): raise Cancelled('已取消连接')
        if time.monotonic()>=min(deadline,phase_deadline): raise TimeoutError('代理链路验证超时')
    def io(action,writing=False):
        while True:
            check()
            try: return action()
            except ssl.SSLWantReadError: want_write=False
            except ssl.SSLWantWriteError: want_write=True
            except BlockingIOError: want_write=writing
            select.select([] if want_write else [stream],[stream] if want_write else [],[],.05)
    def send(data):
        offset=0
        while offset<len(data):
            amount=io(lambda:stream.send(data[offset:]),True)
            if amount<=0: raise OSError('代理连接提前结束')
            offset+=amount
    def headers():
        data=b''
        while b'\r\n\r\n' not in data:
            chunk=io(lambda:stream.recv(4096))
            if not chunk: raise OSError('代理响应提前结束')
            data+=chunk
            if len(data)>16384: raise RuntimeError('代理响应头过大')
        head,body=data.split(b'\r\n\r\n',1); lines=head.decode('iso-8859-1').split('\r\n'); status=lines[0].split(' ',2)
        if len(status)<2 or status[0] not in ('HTTP/1.0','HTTP/1.1') or not re.fullmatch('[0-9]{3}',status[1]): raise RuntimeError('代理响应无效')
        fields={}
        for line in lines[1:]:
            key,separator,value=line.partition(':'); key=key.strip().lower()
            if not separator or key in fields: raise RuntimeError('代理响应头无效')
            fields[key]=value.strip()
        return int(status[1]),fields,body
    try:
        check(); raw=socket.create_connection(proxy,min(3,max(.01,deadline-time.monotonic()))); stream=raw; raw.setblocking(False)
        phase_deadline=min(deadline,time.monotonic()+read_budget)
        send(('CONNECT '+authority+' HTTP/1.1\r\nHost: '+authority+'\r\n\r\n').encode('ascii'))
        code,_,extra=headers()
        if code!=200: raise urllib.error.HTTPError('',code,'',{},None)
        if extra: raise RuntimeError('代理隧道响应无效')
        check(); stream=api.context.wrap_socket(raw,server_hostname=host,do_handshake_on_connect=False); stream.setblocking(False)
        phase_deadline=min(deadline,time.monotonic()+read_budget); io(stream.do_handshake)
        phase_deadline=min(deadline,time.monotonic()+read_budget)
        send(('GET '+path+' HTTP/1.1\r\nHost: '+authority+'\r\nAuthorization: Bearer '+token+'\r\nX-Qinglian-Device: '+api.device+'\r\nAccept-Encoding: identity\r\nConnection: close\r\n\r\n').encode('ascii'))
        code,fields,body=headers()
        if code!=200: raise urllib.error.HTTPError('',code,'',{},None)
        if fields.get('x-qinglian-speed')!='server-v1' or fields.get('content-length')!='1' or 'transfer-encoding' in fields: raise RuntimeError('代理链路验证响应无效')
        while len(body)<1:
            chunk=io(lambda:stream.recv(2))
            if not chunk: raise RuntimeError('代理链路响应提前结束')
            body+=chunk
        if len(body)!=1: raise RuntimeError('代理链路响应长度无效')
        check()
    finally:
        if stream: stream.close()
        if raw: raw.close()
