"""Windows desktop client; shares strict control API/probe/routing with Ubuntu."""
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys
import threading
import time
import urllib.parse
import uuid
import zipfile
import win_platform as platform
import probe

try: import shared_runtime as common
except ModuleNotFoundError:
    spec=importlib.util.spec_from_file_location('shared_runtime',Path(__file__).resolve().parents[1]/'ubuntu/runtime.py')
    common=importlib.util.module_from_spec(spec); sys.modules['shared_runtime']=common; spec.loader.exec_module(common)

ROOT=Path(getattr(sys,'_MEIPASS',Path(__file__).resolve().parent))/'resources'
common.ROOT=ROOT; common.STATE=platform.STATE
common.save=platform.save; common.read=platform.read; common.device_identity=platform.identity
common.ProxySettings=platform.ProxySettings; common.spawn=platform.spawn; common.stop_process=platform.stop_process
save=platform.save; read=platform.read; STATE=platform.STATE; CONSENT=common.CONSENT

def v2_config(node,rule):
    args=[str(ROOT/'jre/bin/java.exe'),'-Dfile.encoding=UTF-8','-cp',os.pathsep.join([str(ROOT/'node-config.jar'),str(ROOT/'json.jar')]),'NodeConfigCli']
    if rule: args.append('bypass-cn')
    result=subprocess.run(args,input=json.dumps(node),encoding='utf-8',capture_output=True,timeout=15,creationflags=platform.NO_WINDOW)
    if result.returncode: raise RuntimeError('面板节点配置不受支持或证书不安全')
    config=json.loads(result.stdout)
    # V2Fly's Windows getCertPool ignores embedded verify CAs unless this is
    # explicit. Restrict private-CA channels to their supplied CA, keeping
    # allowInsecure=false and certificate hostname validation intact.
    for outbound in config['outbounds']:
        tls=outbound.get('streamSettings',{}).get('tlsSettings',{})
        if tls.get('certificates'): tls['disableSystemRoot']=True
    for inbound in config['inbounds']: inbound['sniffing']={'enabled':True,'destOverride':['http','tls']}
    config['log']={'loglevel':'none'}
    return config
common.v2_config=v2_config

def spawn(args,**kwargs):
    # Shared runtime names are platform neutral; Windows binaries have .exe.
    args=list(args)
    if Path(args[0]).name in ('v2ray','hysteria'): args[0]+='.exe'
    return platform.spawn(args,**kwargs)
common.spawn=spawn

_port_free=common.port_free
def port_free(port):
    # Winsock SO_REUSEADDR can bind over an existing listener. Check it first;
    # never mistake another proxy's listening port for our newly started core.
    try:
        with common.socket.create_connection(('127.0.0.1',port),.2):
            raise RuntimeError('本地代理端口已被占用，请先关闭其他代理')
    except OSError: _port_free(port)
common.port_free=port_free

class Api(common.Api):
    hold_session=False
    user_agent='Qinglian/Windows-preview1'
    def begin(self):
        # An automatic transport fallback must not mint a fresh 64 GiB guest.
        if not self.account and self.guest is None: super().begin()
    def end(self):
        if not self.hold_session: super().end()
    def verify_proxy(self,cancel=None,cold_hy2=False):
        try: probe.verify(self,cancel,cold_hy2)
        except probe.Cancelled: raise common.ProbeCancelled('已取消连接') from None
    def current(self,path,body=None):
        value=super().current(path,body)
        if path=='profile' and getattr(self,'tun_required',False) and value.get('ready'):
            host=urllib.parse.urlsplit(self.config['url']).hostname
            nodes=[value.get('node',{}),value.get('acceleration',{}).get('node',{})]
            if any(node and node.get('add')!=host for node in nodes): raise RuntimeError('TUN 仅支持面板同服务器节点，请使用系统代理模式')
        return value

def may_fallback(error):
    # Permission/quota/auth/TLS errors are never treated as a blocked UDP route.
    return any('['+code+']' in error for code in ('H-TIMEOUT','H-VERIFY','H-CORE','H502','H503','H504'))

class Connection(common.Connection):
    def start(self,mode='compat',performance=True,rule=True,tun=False):
        if mode not in ('compat','hy2','auto'): raise ValueError('不支持的连接模式')
        self.mode=mode; self.tun_requested=tun; self.api.tun_required=tun
        super().start(mode!='compat',performance,False if tun else rule,False)
    def run(self,accelerated,performance,rule,tun):
        notify=self.notify; self.api.hold_session=True
        try:
            choices=[accelerated]+([False] if getattr(self,'mode','compat')=='auto' else [])
            for index,choice in enumerate(choices):
                errors=[]; reached=[False]
                def capture(event,value):
                    if event=='error': errors.append(value)
                    elif event!='stopped':
                        if event=='connected':
                            if getattr(self,'tun_requested',False):
                                from tun_ipc import TunSession
                                self.connected=False; notify('state','正在请求管理员授权并建立 TUN…')
                                helper=TunSession().start(self.cancel); self.procs.append(helper)
                                self.api.verify_proxy(self.cancel,cold_hy2=choice)
                                if self.cancel.is_set(): raise common.ProbeCancelled('已取消连接')
                                self.connected=True; value=value.split(' · ')[0]+' · TUN 全局'
                            reached[0]=True
                        notify(event,value)
                self.notify=capture
                super().run(choice,performance,rule,False)
                if self.cancel.is_set() or reached[0]:
                    if errors and not self.cancel.is_set(): notify('error',errors[-1])
                    break
                if index+1<len(choices) and errors and may_fallback(errors[-1]):
                    notify('warning','HY2 验证未通过，正在用同一会话尝试兼容通道…')
                    continue
                if errors: notify('error',errors[-1])
                break
        except Exception:
            if not self.cancel.is_set(): notify('error','连接已停止 [S-CLEANUP]，请检查 Windows 代理设置')
        finally:
            self.notify=notify; self.api.hold_session=False
            # Registry recovery must not prevent native cleanup if it fails.
            failed=False
            for process in reversed(self.procs):
                try: platform.stop_process(process)
                except Exception: failed=True
            self.procs.clear()
            try: self.proxy.close()
            except Exception: failed=True
            try: self.api.end()
            except Exception: failed=True
            self.connected=False
            if failed: notify('error','连接已停止，但清理未全部确认 [S-CLEANUP]，请检查 Windows 代理设置')
            notify('stopped','已断开')
    def launch_chatgpt(self,path):
        if not self.connected: raise RuntimeError('请先连接轻连')
        path=Path(path)
        if not path.is_file() or path.suffix.lower()!='.exe': raise RuntimeError('请选择 ChatGPT 的可执行文件')
        env=os.environ.copy()
        for key in ('http_proxy','https_proxy','HTTP_PROXY','HTTPS_PROXY'): env[key]='http://127.0.0.1:10809'
        env['ALL_PROXY']=env['all_proxy']='socks5h://127.0.0.1:10808'
        env['NO_PROXY']=env['no_proxy']='localhost,127.0.0.1,::1'
        env['WEBVIEW2_ADDITIONAL_BROWSER_ARGUMENTS']='--proxy-server=http://127.0.0.1:10809 --proxy-bypass-list=localhost;127.0.0.1;[::1] --disable-quic'
        subprocess.Popen([str(path),'--proxy-server=http://127.0.0.1:10809','--proxy-bypass-list=localhost;127.0.0.1;[::1]','--disable-quic'],env=env,creationflags=platform.NO_WINDOW,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)

def export_node(api,details,path):
    pending=read(STATE/'pending-export.json',{})
    if any(pending.get(k)!=v for k,v in details.items()):
        pending=dict(details,requestId=str(uuid.uuid4())); save(STATE/'pending-export.json',pending)
    result=api.request('exports/nodes',pending)
    for _ in range(20):
        match=next((n for n in api.request('exports/nodes').get('nodes',[]) if n.get('id')==result['id']),{})
        if match.get('status')=='error': raise RuntimeError('节点启动失败，申请已保留，请勿重复创建')
        profile=match.get('profile',{})
        if all(k in profile for k in ('node','uri','caPem','clientConfig')): break
        time.sleep(.5)
    else: raise RuntimeError('配置尚未就绪，请稍后用相同参数重试，不会重复扣额')
    with zipfile.ZipFile(path,'w',zipfile.ZIP_DEFLATED) as output:
        for name,value in [('node.json',profile['node']),('share-uri.txt',profile['uri']),('qinglian-ca.pem',profile['caPem']),('client-config.json',profile['clientConfig'])]:
            output.writestr(name,json.dumps(value,ensure_ascii=False,indent=2) if isinstance(value,dict) else value)
    (STATE/'pending-export.json').unlink(missing_ok=True)
    return '节点已保存；导出文件含节点凭据，请妥善保存。'
