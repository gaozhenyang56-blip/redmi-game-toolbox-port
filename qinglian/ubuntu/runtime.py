"""Qinglian Ubuntu runtime. Panel-owned configs; credentials never enter argv/logs."""
import concurrent.futures
import fcntl
import hashlib
import http.client
import json
import os
from pathlib import Path
import secrets
import shutil
import signal
import socket
import ssl
import subprocess
import threading
import time
import urllib.error
import urllib.parse
import urllib.request
import uuid

ROOT = Path(__file__).resolve().parent
STATE = Path(os.environ.get('XDG_CONFIG_HOME', Path.home()/'.config'))/'qinglian'
SENSITIVE = ('chatgpt.com','openai.com','oaistatic.com','oaiusercontent.com')
CONSENT = '账号主连接和导出节点的连接域名、时间将永久保存在服务器，管理员和本人可查看，包含后台请求；不记录 HTTPS 路径、查询或内容，不解密 HTTPS。访客不记录域名。'

def save(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True, mode=0o700)
    tmp = path.with_suffix('.tmp')
    fd = os.open(tmp, os.O_WRONLY|os.O_CREAT|os.O_TRUNC, 0o600)
    os.fchmod(fd,0o600)
    with os.fdopen(fd, 'w') as f:
        json.dump(value, f, ensure_ascii=False); f.flush(); os.fsync(f.fileno())
    os.replace(tmp, path)

def read(path, default=None):
    try: return json.loads(Path(path).read_text())
    except FileNotFoundError: return default

def device_identity(system_id=None, uid=None):
    # Linux counterpart of Android's app/user-scoped identifier. Reinstalling
    # just this app must not make ordinary duplicate registration possible.
    if system_id is None:
        try: system_id=Path('/etc/machine-id').read_text().strip()
        except OSError: system_id=''
    if uid is None: uid=os.getuid()
    if len(system_id)==32 and all(c in '0123456789abcdef' for c in system_id) and int(system_id,16)!=0:
        return hashlib.sha256(('qinglian-ubuntu-v1:'+str(uid)+':'+system_id).encode()).hexdigest()
    fallback=read(STATE/'device.json')
    if not isinstance(fallback,str) or len(fallback)!=64 or any(c not in '0123456789abcdef' for c in fallback):
        fallback=secrets.token_hex(32); save(STATE/'device.json',fallback)
    return fallback

def spawn(args, **kwargs):
    # Do not use preexec_fn from a multithreaded GTK process: imports after fork can deadlock.
    wrapper=['/usr/bin/python3','-I',str(Path(__file__).resolve()),'--core-owner',str(os.getpid())]
    return subprocess.Popen(wrapper+args, stdin=subprocess.PIPE, stdout=subprocess.DEVNULL,
                            stderr=subprocess.DEVNULL, **kwargs)

def stop_process(p):
    if not p: return
    if p.stdin:
        try: p.stdin.close()
        except OSError: pass
    try: p.wait(timeout=3)
    except subprocess.TimeoutExpired:
        p.terminate()
        try: p.wait(timeout=2)
        except subprocess.TimeoutExpired: p.kill(); p.wait()

def gs(schema, key, value=None):
    args = ['gsettings','get' if value is None else 'set',schema,key]
    if value is not None: args.append(value)
    return subprocess.check_output(args, text=True, stderr=subprocess.DEVNULL).strip()

PROXY_VALUES = {
 ('org.gnome.system.proxy.http','host'): "'127.0.0.1'",
 ('org.gnome.system.proxy.http','port'): '10809',
 ('org.gnome.system.proxy.https','host'): "'127.0.0.1'",
 ('org.gnome.system.proxy.https','port'): '10809',
 ('org.gnome.system.proxy.socks','host'): "'127.0.0.1'",
 ('org.gnome.system.proxy.socks','port'): '10808',
 ('org.gnome.system.proxy','ignore-hosts'): "['localhost', '127.0.0.0/8', '::1']",
 ('org.gnome.system.proxy','mode'): "'manual'",
}

def restore_proxy(path):
    state = read(path)
    if not state: return
    # Treat host/port/mode as one profile. Another proxy often changes its port
    # while keeping mode=manual: restoring just mode would disable that proxy.
    try: observed={(e['schema'],e['key']):gs(e['schema'],e['key']) for e in state}
    except subprocess.CalledProcessError: return  # Keep the snapshot for the next desktop session.
    foreign=any(e['schema'].startswith('org.gnome.system.proxy') and e['key'] in ('host','port','mode') and observed[(e['schema'],e['key'])]!=e['ours'] for e in state)
    failed=False
    for entry in state:
        if foreign and entry['schema'].startswith('org.gnome.system.proxy'): continue
        try:
            if observed[(entry['schema'],entry['key'])] == entry['ours']:
                gs(entry['schema'], entry['key'], entry['before'])
        except subprocess.CalledProcessError: failed=True
    if not failed: Path(path).unlink(missing_ok=True)

class ProxySettings:
    def __init__(self): self.guard = None; self.path = STATE/'proxy-restore.json'
    def enable(self):
        restore_proxy(self.path)
        entries = [dict(schema=s,key=k,before=gs(s,k),ours=v) for (s,k),v in PROXY_VALUES.items()]
        save(self.path, entries)
        # Separate watcher survives a GUI crash and restores the user's settings.
        self.guard = subprocess.Popen(['/usr/bin/python3','-I',str(ROOT/'runtime.py'),'--proxy-guard',str(self.path)], stdin=subprocess.PIPE, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        try:
            for e in entries: gs(e['schema'],e['key'],e['ours'])
        except Exception: self.close(); raise
    def close(self):
        stop_process(self.guard); self.guard = None
        restore_proxy(self.path)

class BeforeSendError(OSError):
    """TCP/TLS setup failed before HTTP headers or a POST body could be sent."""

class ApiConnection(http.client.HTTPSConnection):
    def connect(self):
        try:
            super().connect()
        except (ssl.SSLCertVerificationError, ssl.CertificateError):
            raise
        except OSError as error:
            raise BeforeSendError('HTTPS连接尚未建立') from error

class ApiHandler(urllib.request.HTTPSHandler):
    def https_open(self, request):
        return self.do_open(ApiConnection, request, context=self._context)

def api_routes(base):
    parsed=urllib.parse.urlsplit(base)
    if parsed.port != 11452:
        return [base]
    # The only alternate authority is the exact same host on standard HTTPS.
    host='['+parsed.hostname+']' if ':' in parsed.hostname else parsed.hostname
    return [urllib.parse.urlunsplit(parsed._replace(netloc=host+':443')),base]

class Api:
    def __init__(self):
        config = read(ROOT/'profile.json')
        if not config: raise RuntimeError('安装包缺少面板配置，请重新安装正式构建。')
        self.config = config
        parsed = urllib.parse.urlsplit(config['url'])
        if parsed.scheme != 'https' or parsed.username or parsed.fragment: raise ValueError('无效接口配置')
        self.base = urllib.parse.urljoin(config['url'], './')
        self.context = ssl.create_default_context(cafile=str(ROOT/config['caAsset']))
        self.opener = urllib.request.build_opener(urllib.request.ProxyHandler({}), ApiHandler(context=self.context), NoRedirect())
        STATE.mkdir(parents=True, exist_ok=True, mode=0o700)
        self.device = device_identity()
        self.account = read(STATE/'account.json', {})
        self.guest = None
    def request(self, path, body=None, token=None, bootstrap=False):
        headers = {'Content-Type':'application/json','Accept':'application/json','X-Qinglian-Device':self.device}
        token = self.config['clientToken'] if bootstrap else (token or self.account.get('token'))
        if token: headers['Authorization'] = 'Bearer '+token
        bases=api_routes(urllib.parse.urljoin(self.config['url'],'./'))
        if self.base in bases:
            # Remember the working port across polling and guest/account requests.
            if getattr(self,'route_ready',False): bases.remove(self.base); bases.insert(0,self.base)
        for index,base in enumerate(bases):
            request = urllib.request.Request(urllib.parse.urljoin(base,path), data=None if body is None else json.dumps(body).encode(), headers=headers)
            try:
                with self.opener.open(request, timeout=5) as r:
                    data = r.read(524289)
                    if len(data)>524288: raise RuntimeError('接口响应过大')
                    result=json.loads(data)
                    self.base=base; self.route_ready=True
                    return result
            except urllib.error.HTTPError as e:
                messages = {401:'登录已失效，请重新登录',403:'权限或配额不足',409:'设备已注册、请求冲突或资源忙',429:'请求过快或并发已满，请稍后重试'}
                raise RuntimeError(messages.get(e.code, '面板请求失败（HTTP %d）'%e.code)) from None
            except (urllib.error.URLError, TimeoutError, OSError) as error:
                reason=error.reason if isinstance(error,urllib.error.URLError) else error
                if isinstance(reason,(ssl.SSLCertVerificationError,ssl.CertificateError)):
                    raise RuntimeError('面板证书校验失败，请检查系统时间或更新安装包；未关闭证书验证。') from None
                # Never replay a POST after a possible send (registration, export,
                # login, logout). Pre-send failures can safely try the other port.
                if body is not None and not isinstance(reason,BeforeSendError):
                    self.route_ready=False
                    raise RuntimeError('面板连接中断，操作结果未确认；请刷新状态后重试。') from None
                if index+1 == len(bases):
                    raise RuntimeError('面板HTTPS入口均无法连接，请检查网络；未回退到直连代理节点。') from None
    def auth(self, action, username, password):
        result = self.request('exports/'+action, {'username':username,'password':password,'historyConsent':'domains-permanent-v1'})
        if not isinstance(result.get('token'),str) or len(result['token'])!=64: raise RuntimeError('面板未返回有效会话')
        self.account = {'token':result['token'],'username':username}
        save(STATE/'account.json', self.account)
    def begin(self):
        if not self.account:
            self.guest = dict(requestId=str(uuid.uuid4()), sessionKey=secrets.token_hex(32))
            self.request('guest/start',self.guest,bootstrap=True)
    def current(self, path, body=None):
        if self.account: return self.request('exports/'+path,body)
        if not self.guest: raise RuntimeError('请先连接')
        return self.request('guest/'+path,body,self.guest['sessionKey'])
    def end(self):
        if self.guest:
            try: self.current('stop',{})
            except Exception: pass
            self.guest = None
    def logout(self):
        warning=''
        try: self.request('exports/logout',{})
        except Exception: warning='已退出本机账号；服务端会话撤销未确认，旧会话将按服务端期限失效。'
        self.account = {}; (STATE/'account.json').unlink(missing_ok=True)
        return warning
    def verify_proxy(self):
        token=self.account.get('token') or self.guest['sessionKey']
        group='exports' if self.account else 'guest'
        request=urllib.request.Request(urllib.parse.urljoin(self.base,group+'/speed?bytes=1'),headers={'Authorization':'Bearer '+token,'X-Qinglian-Device':self.device,'Accept-Encoding':'identity'})
        opener=urllib.request.build_opener(urllib.request.ProxyHandler({'https':'http://127.0.0.1:10809'}),urllib.request.HTTPSHandler(context=self.context),NoRedirect())
        try:
            with opener.open(request,timeout=10) as r:
                if r.headers.get('X-Qinglian-Speed')!='server-v1' or r.headers.get('Content-Length')!='1' or len(r.read(2))!=1:
                    raise RuntimeError('代理链路验证响应无效')
        except Exception:
            raise RuntimeError('代理链路验证失败，未显示连接成功；请切换兼容通道或检查网络。') from None

class NoRedirect(urllib.request.HTTPRedirectHandler):
    def redirect_request(self, *args): return None

def select_profile(response, accelerated, performance):
    if not response.get('ready'): return None
    if accelerated:
        part = response.get('acceleration')
        if not part: raise RuntimeError('面板未启用 HY2 加速')
        node = dict(part['node']); node['compatibility'] = response['node']
        aggressive = node.get('hy2Performance') == 'aggressive-v1'
        if aggressive != performance or bool(response.get('labHy2')) != performance:
            raise RuntimeError('面板未确认所选 HY2 性能配置')
        revision = (response['revision'],part['revision'])
    else: node = response['node']; revision = (response['revision'],)
    return node, revision

def v2_config(node, rule):
    args = ['java','-cp',str(ROOT/'node-config.jar')+':'+str(ROOT/'json.jar'),'NodeConfigCli']
    if rule: args.append('bypass-cn')
    p = subprocess.run(args,input=json.dumps(node),text=True,capture_output=True,timeout=12)
    if p.returncode: raise RuntimeError('面板节点配置不受支持或证书不安全')
    config = json.loads(p.stdout)
    for inbound in config['inbounds']:
        inbound['sniffing'] = {'enabled':True,'destOverride':['http','tls']}
    config['log'] = {'loglevel':'none'}
    return config

def hy_config(n, ca):
    high = n.get('hy2Performance')=='aggressive-v1'
    q = {'disablePathMTUDiscovery':True,'keepAlivePeriod':'10s','maxIdleTimeout':'30s'}
    if high: q.update(initStreamReceiveWindow=8388608,maxStreamReceiveWindow=33554432,initConnReceiveWindow=16777216,maxConnReceiveWindow=67108864)
    tls = {'sni':n.get('sni',n['add']),'insecure':False}
    if n.get('caPem'): tls['ca']=str(ca)
    return dict(server=n['add']+':'+str(n['port']),auth=n['auth'],tls=tls,lazy=True,congestion={'type':'bbr','bbrProfile':'aggressive' if high else 'conservative'},quic=q,socks5={'listen':'127.0.0.1:10810','disableUDP':False})

def port_free(port):
    with socket.socket() as s:
        # A previous core can leave TIME_WAIT sockets after a clean disconnect.
        # Listening daemons still conflict; stale TCP state must not prevent reconnect.
        s.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
        try: s.bind(('127.0.0.1',port))
        except OSError: raise RuntimeError('本地端口 %d 已被占用，请关闭其他代理。'%port)

def wait_port(port, process, cancel):
    for _ in range(100):
        if cancel.is_set(): raise RuntimeError('已取消连接')
        if process.poll() is not None: raise RuntimeError('代理核心启动失败')
        try:
            with socket.create_connection(('127.0.0.1',port),0.1): return
        except OSError: cancel.wait(.05)
    raise RuntimeError('代理核心启动超时')

class Connection:
    def __init__(self, api, notify):
        self.api=api; self.notify=notify; self.cancel=threading.Event(); self.thread=None
        self.lock=threading.Lock(); self.procs=[]; self.proxy=ProxySettings(); self.connected=False; self.tun=False
    def start(self, accelerated, performance, rule, tun):
        if self.thread and self.thread.is_alive(): raise RuntimeError('请等待当前连接操作完成')
        self.cancel.clear(); self.tun=tun
        self.thread=threading.Thread(target=self.run,args=(accelerated,performance,rule,tun),daemon=True); self.thread.start()
    def disconnect(self): self.cancel.set()
    def run(self, accelerated, performance, rule, tun):
        try:
            self.notify('state','正在获取专属节点…')
            for port in (10808,10809,10810): port_free(port)
            self.api.begin()
            node=None
            for _ in range(12):
                if self.cancel.is_set(): raise RuntimeError('已取消连接')
                response=self.api.current('profile',{'labHy2':accelerated and performance})
                chosen=select_profile(response,accelerated,performance)
                if chosen: node,revision=chosen; break
                if self.cancel.wait(.5): raise RuntimeError('已取消连接')
            if node is None: raise RuntimeError('专属节点仍在启动，请稍后重试')
            if tun:
                server=urllib.parse.urlsplit(self.api.base).hostname
                nodes=[node]+([node['compatibility']] if 'compatibility' in node else [])
                if any(n.get('add')!=server for n in nodes):
                    raise RuntimeError('TUN 仅支持面板同服务器节点，当前节点地址不匹配；可使用系统代理模式。')
            # TUN takes all traffic; no direct core egress that could loop back into TUN.
            config=v2_config(node,rule and not tun)
            work=STATE/'run'; work.mkdir(exist_ok=True,mode=0o700)
            if accelerated:
                ca=work/'hy2-ca.pem'; ca.write_text(node.get('caPem','')); ca.chmod(0o600)
                save(work/'hy2.json',hy_config(node,ca))
                h=spawn([str(ROOT/'hysteria'),'client','--config',str(work/'hy2.json'),'--log-level','error','--disable-update-check']); self.procs.append(h)
                wait_port(10810,h,self.cancel)
            save(work/'core.json',config)
            env=os.environ.copy(); env['V2RAY_LOCATION_ASSET']=str(ROOT)
            p=spawn([str(ROOT/'v2ray'),'run','-c',str(work/'core.json')],env=env); self.procs.append(p)
            wait_port(10809,p,self.cancel)
            if tun:
                self.notify('state','请在系统授权窗口允许 TUN 接管…')
                # Helper only knows the compiled server IP and accepts no executable config.
                helper=subprocess.Popen(['pkexec','/usr/lib/qinglian/qinglian-tun'],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,text=True)
                self.procs.append(helper)
                import select
                for _ in range(120):
                    if self.cancel.is_set(): raise RuntimeError('已取消连接')
                    if helper.poll() is not None: raise RuntimeError('TUN 授权被取消、与其他 VPN 冲突或系统不支持')
                    if select.select([helper.stdout],[],[],.25)[0]:
                        if helper.stdout.readline().strip()!='READY': raise RuntimeError('TUN 接管失败')
                        break
                else: raise RuntimeError('TUN 授权超时')
            self.notify('state','正在验证代理链路…')
            self.api.verify_proxy()
            # Also replace stale GNOME proxies in TUN mode: traffic to a dead local
            # Clash port cannot be rescued by an IP tunnel. Restore the old values on exit.
            self.proxy.enable()
            if self.cancel.is_set(): raise RuntimeError('已取消连接')
            self.connected=True; self.notify('connected',('HY2 高性能' if accelerated and performance else 'HY2 保守' if accelerated else node.get('protocol','VMess').upper())+' · '+('TUN 全局' if tun else '系统代理 / '+('规则' if rule else '全局')))
            failures=0
            while not self.cancel.wait(1):
                if any(p.poll() is not None for p in self.procs): raise RuntimeError('核心已退出，连接已安全停止，请重新连接')
                if time.monotonic()-getattr(self,'last_renew',0)>=15:
                    self.last_renew=time.monotonic()
                    try:
                        new=self.api.current('profile',{'labHy2':accelerated and performance})
                        selected=select_profile(new,accelerated,performance)
                        if not selected or selected[1]!=revision: raise RuntimeError('面板节点已变化，请重连')
                        quota=self.api.current('quota'); self.notify('quota',quota)
                        # Account remainingBytes is weekly *export* allowance, not VPN balance.
                        if not self.api.account and quota.get('remainingBytes',1)<=0: raise RuntimeError('可用流量已耗尽')
                        failures=0
                    except Exception:
                        failures+=1
                        if failures>=3: raise RuntimeError('续租或配额连续读取失败，请检查面板后重连')
                        self.notify('warning','面板同步暂时失败，正在重试（不重置额度）')
        except Exception as e: self.notify('error',str(e))
        finally:
            self.connected=False
            self.proxy.close()
            # TUN helper is last; remove routes before terminating core.
            for p in reversed(self.procs): stop_process(p)
            self.procs.clear()
            self.api.end()
            for name in ('core.json','hy2.json','hy2-ca.pem'): (STATE/'run'/name).unlink(missing_ok=True)
            self.notify('stopped','已断开')

    def launch_chatgpt(self):
        if not self.connected: raise RuntimeError('请先连接轻连')
        command=shutil.which('chatgpt')
        if not command: raise RuntimeError('未找到 chatgpt 命令；此入口针对 ubuntu-to-go 的 .deb 版，其他安装方式请使用 TUN。')
        # Electron singleton can silently ignore new flags. Do not kill a user's app.
        for path in Path('/proc').glob('[0-9]*/comm'):
            try:
                if path.read_text().strip().lower() in ('chatgpt','chatgpt-bin'):
                    raise RuntimeError('请先完全退出正在运行的 ChatGPT（含后台），再从此入口启动；不会强制终止你的会话。')
            except (FileNotFoundError,PermissionError,ProcessLookupError): pass
        env=os.environ.copy()
        for key in ('http_proxy','https_proxy','HTTP_PROXY','HTTPS_PROXY'): env[key]='http://127.0.0.1:10809'
        for key in ('all_proxy','ALL_PROXY'): env[key]='socks5h://127.0.0.1:10808'
        env['no_proxy']=env['NO_PROXY']='localhost,127.0.0.1,::1'
        # Keep local OAuth callbacks local; only remote service traffic uses the proxy.
        subprocess.Popen([command,'--proxy-server=http://127.0.0.1:10809','--proxy-bypass-list=localhost;127.0.0.1;[::1]','--disable-quic'],env=env,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,start_new_session=True)

    def probe(self):
        if not self.connected: raise RuntimeError('请先连接')
        # Target access probe, not ICMP latency and not account session validation.
        opener=urllib.request.build_opener(urllib.request.ProxyHandler({'https':'http://127.0.0.1:10809'}), NoRedirect())
        rows=[]
        for host,path in [('chatgpt.com','/'),('auth.openai.com','/'),('cdn.oaistatic.com','/')]:
            start=time.monotonic()
            try:
                with opener.open('https://'+host+path,timeout=10) as r: code=r.status
            except urllib.error.HTTPError as e: code=e.code
            except Exception: rows.append(host+'：连接或 TLS 失败'); continue
            rows.append('%s：HTTPS %d / %d ms%s'%(host,code,(time.monotonic()-start)*1000,'（服务拒绝访问，并非登录成功）' if code>=400 else ''))
        return '\n'.join(rows)

    def speed(self, total_mib, cancel, progress):
        if not self.connected: raise RuntimeError('请先连接')
        if not 1<=total_mib<=2048: raise ValueError('测速大小必须为 1..2048 MiB')
        token=self.api.account.get('token') or self.api.guest['sessionKey']
        group='exports' if self.api.account else 'guest'
        opener=urllib.request.build_opener(urllib.request.ProxyHandler({'https':'http://127.0.0.1:10809'}),urllib.request.HTTPSHandler(context=self.api.context),NoRedirect())
        total=total_mib*1048576; done=0; start=time.monotonic()
        while done<total and not cancel.is_set() and time.monotonic()-start<180:
            size=min(33554432,total-done)
            url=urllib.parse.urljoin(self.api.base,group+'/speed?bytes='+str(size))
            req=urllib.request.Request(url,headers={'Authorization':'Bearer '+token,'X-Qinglian-Device':self.api.device,'Accept-Encoding':'identity'})
            with opener.open(req,timeout=10) as r:
                if r.headers.get('X-Qinglian-Speed')!='server-v1' or r.headers.get('Content-Length')!=str(size): raise RuntimeError('测速响应标识或长度不匹配')
                count=0
                while count<size and not cancel.is_set() and time.monotonic()-start<180:
                    chunk=r.read(min(65536,size-count))
                    if not chunk: raise RuntimeError('测速响应提前结束，已接收 %.1f MiB'%(done/1048576))
                    count+=len(chunk); done+=len(chunk)
                    progress(done/total, '%.2f Mbps · %.1f / %d MiB'%(done*8/(time.monotonic()-start)/1000000,done/1048576,total_mib))
        return '已%s：%.2f Mbps · %.1f MiB（服务器链路，含起始等待）'%('完成' if done==total else '停止 / 未达所选大小',done*8/max(.001,time.monotonic()-start)/1000000,done/1048576)

if __name__=='__main__' and len(os.sys.argv)==3 and os.sys.argv[1]=='--proxy-guard':
    try: os.sys.stdin.buffer.read()
    finally: restore_proxy(Path(os.sys.argv[2]))
elif __name__=='__main__' and len(os.sys.argv)>4 and os.sys.argv[1]=='--core-owner':
    import ctypes
    owner=int(os.sys.argv[2])
    if os.getppid()!=owner: raise SystemExit(1)
    if ctypes.CDLL(None).prctl(1,signal.SIGTERM)!=0: raise SystemExit(1)
    if os.getppid()!=owner: raise SystemExit(1)
    os.execv(os.sys.argv[3],os.sys.argv[3:])
