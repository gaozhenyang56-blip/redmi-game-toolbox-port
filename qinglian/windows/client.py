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
    args=[str(ROOT/'jre/bin/java.exe'),'-cp',os.pathsep.join([str(ROOT/'node-config.jar'),str(ROOT/'json.jar')]),'NodeConfigCli']
    if rule: args.append('bypass-cn')
    result=subprocess.run(args,input=json.dumps(node),encoding='utf-8',capture_output=True,timeout=15,creationflags=platform.NO_WINDOW)
    if result.returncode: raise RuntimeError('面板节点配置不受支持或证书不安全')
    config=json.loads(result.stdout)
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

class Api(common.Api):
    hold_session=False
    def begin(self):
        # An automatic transport fallback must not mint a fresh 64 GiB guest.
        if not self.account and self.guest is None: super().begin()
    def end(self):
        if not self.hold_session: super().end()

def may_fallback(error):
    # Permission/quota/auth/TLS errors are never treated as a blocked UDP route.
    return any('['+code+']' in error for code in ('H-TIMEOUT','H-VERIFY','H-CORE'))

class Connection(common.Connection):
    def start(self,mode='compat',performance=True,rule=True,tun=False):
        if mode not in ('compat','hy2','auto') or tun: raise ValueError('不支持的连接模式')
        self.mode=mode
        super().start(mode!='compat',performance,rule,False)
    def run(self,accelerated,performance,rule,tun):
        notify=self.notify; self.api.hold_session=True
        try:
            choices=[accelerated]+([False] if getattr(self,'mode','compat')=='auto' else [])
            for index,choice in enumerate(choices):
                errors=[]; reached=[False]
                def capture(event,value):
                    if event=='error': errors.append(value)
                    elif event!='stopped':
                        if event=='connected': reached[0]=True
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
        finally:
            self.notify=notify; self.api.hold_session=False
            try: self.api.end()
            finally: notify('stopped','已断开')
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
