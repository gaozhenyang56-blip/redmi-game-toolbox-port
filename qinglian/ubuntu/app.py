#!/usr/bin/python3
import fcntl
import json
import os
from pathlib import Path
import subprocess
import threading
import uuid
import zipfile
import gi
gi.require_version('Gtk','3.0')
from gi.repository import Gtk, Gdk, GLib, Gio
from runtime import Api, Connection, STATE, ROOT, CONSENT, read, save, restore_proxy

CSS=b'''
window { background: #f7f9fc; color: #18212e; }
headerbar { padding: 10px; } .title { font-size: 30px; font-weight: 700; }
.subtitle { color: #687588; } .card { background: alpha(#ffffff,.85); border-radius: 18px; padding: 24px; }
button { border-radius: 12px; padding: 10px 18px; } button.suggested-action { background: #176b56; color: white; }
label { padding: 2px; } entry,combobox { margin: 4px 0; } notebook > header { padding: 8px; }
window.dark { background: #171d26; color: #e4eaf2; } .dark .card { background: #242e3b; }
.dark .subtitle { color: #a9b8cb; } textview text { color: #18212e; background: #f7f9fc; }
'''

def label(text='',style=None):
    w=Gtk.Label(label=text,xalign=0); w.set_line_wrap(True); w.set_selectable(True)
    if style: w.get_style_context().add_class(style)
    return w

def button(text,callback,primary=False):
    w=Gtk.Button(label=text); w.connect('clicked',lambda _:callback())
    if primary: w.get_style_context().add_class('suggested-action')
    return w

def row(*widgets):
    w=Gtk.Box(spacing=12)
    for x in widgets: w.pack_start(x,True,True,0)
    return w

def combo(items):
    w=Gtk.ComboBoxText()
    for item in items: w.append_text(item)
    w.set_active(0); return w

class Window(Gtk.Window):
    def __init__(self):
        super().__init__(title='轻连 Qinglian')
        self.set_default_size(960,740); self.set_position(Gtk.WindowPosition.CENTER)
        STATE.mkdir(parents=True,exist_ok=True,mode=0o700)
        self.instance=open(STATE/'gui.lock','a')
        try: fcntl.flock(self.instance,fcntl.LOCK_EX|fcntl.LOCK_NB)
        except BlockingIOError: raise RuntimeError('轻连已在运行，请使用现有窗口。')
        restore_proxy(STATE/'proxy-restore.json')
        self.api=Api(); self.conn=Connection(self.api,self.on_event); self.busy=False; self.quitting=False
        self.test_cancel=threading.Event(); self.test_running=False; self.account_busy=False
        self.settings=read(STATE/'settings.json',{})
        self.desktop_settings=Gio.Settings.new('org.gnome.desktop.interface')
        self.desktop_settings.connect('changed::color-scheme',lambda *_:self.set_theme())
        provider=Gtk.CssProvider(); provider.load_from_data(CSS)
        Gtk.StyleContext.add_provider_for_screen(Gdk.Screen.get_default(),provider,Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)
        head=Gtk.HeaderBar(title='轻连',subtitle='Ubuntu · 1.0.0-preview'); head.set_show_close_button(True); self.set_titlebar(head)
        self.theme=combo(['亮色','暗色','跟随系统']); self.theme.set_active(self.settings.get('theme',0)); self.theme.connect('changed',self.set_theme); head.pack_end(self.theme)
        outer=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=8); self.add(outer)
        self.tabs=Gtk.Notebook(); self.tabs.set_scrollable(True); outer.pack_start(self.tabs,True,True,0)
        self.status=label('就绪 · 无需登录可连接，单次 64 GiB','subtitle'); self.status.set_margin_start(24); self.status.set_margin_bottom(12); outer.pack_end(self.status,False,False,0)
        self.connection_page(); self.chatgpt_page(); self.speed_page(); self.account_page(); self.about_page()
        self.connect('delete-event',self.on_close); self.set_theme(); self.show_all()
    def page(self,title):
        sc=Gtk.ScrolledWindow(); sc.set_policy(Gtk.PolicyType.NEVER,Gtk.PolicyType.AUTOMATIC)
        box=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=16); box.set_border_width(24); sc.add(box)
        self.tabs.append_page(sc,Gtk.Label(label=title)); return box
    def card(self,parent,*children):
        box=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=10); box.get_style_context().add_class('card')
        for c in children: box.pack_start(c,False,False,0)
        parent.pack_start(box,False,False,0); return box
    def set_theme(self,*_):
        index=self.theme.get_active(); settings=Gtk.Settings.get_default()
        dark=index==1 or (index==2 and self.desktop_settings.get_string('color-scheme')=='prefer-dark')
        settings.set_property('gtk-application-prefer-dark-theme',dark)
        style=self.get_style_context()
        if dark: style.add_class('dark')
        else: style.remove_class('dark')
        self.settings['theme']=index; save(STATE/'settings.json',self.settings)
    def connection_page(self):
        p=self.page('连接'); self.card(p,label('轻连，随时连接','title'),label('节点由现有面板统一管理；支持 VMess / VLESS / Trojan / Shadowsocks / HY2。','subtitle'))
        self.channel=combo(['兼容通道','HY2 加速通道']); self.channel.set_active(self.settings.get('channel',0))
        self.performance=combo(['高性能（默认）','保守']); self.performance.set_active(self.settings.get('performance',0))
        self.route=combo(['规则：绕过大陆 / 私网','全局代理']); self.route.set_active(self.settings.get('route',0))
        self.tun=Gtk.CheckButton(label='TUN 全局接管（需系统授权，接管忽略系统代理的应用）')
        self.state_label=label('未连接','title'); self.quota_label=label('访客单次限额 64 GiB；登录后按账号统一统计。')
        self.connect_button=button('连接',self.toggle_connection,True)
        self.controls=[self.channel,self.performance,self.route,self.tun]
        self.card(p,self.state_label,row(self.channel,self.performance),self.route,self.tun,label('TUN 使用全局转发；规则绕过仅在系统代理模式生效。其他 VPN / Clash TUN 请先关闭。','subtitle'),self.connect_button,self.quota_label)
        self.card(p,label('连接提示'),label('系统代理适用于 GNOME 及支持代理的软件。已运行的 ChatGPT 可能不会读取新代理，请到“ChatGPT 优化”页重新启动，或使用 TUN。断开时恢复原代理和路由。'))
    def chatgpt_page(self):
        p=self.page('ChatGPT 优化')
        self.card(p,label('为你的 Linux ChatGPT 优化','title'),label('已适配 ubuntu-to-go 分支的 Ubuntu 24.04 amd64、.deb 安装及 chatgpt 命令。'),label('1. 先连接轻连。\n2. 完全退出原 ChatGPT（包括后台）。\n3. 使用下方入口启动，附加 HTTP 代理、代理环境变量并禁用 QUIC。\n4. 若登录子进程或应用更新器仍绕过代理，断开后勾选 TUN 再连接。'),row(button('使用代理启动 ChatGPT',lambda:self.task(self.conn.launch_chatgpt)),button('检查 ChatGPT HTTPS 路径',lambda:self.task(self.conn.probe,self.chat_result.set_text))))
        self.chat_result=label('HY2 下 ChatGPT / OpenAI 与静态资源域名走兼容通道，保持证书校验。检查结果只代表 HTTPS 可达性，不代表账号已登录。')
        self.card(p,self.chat_result,label('不强制结束进程，不禁用应用沙箱，不绕过 TLS。Snap / Flatpak 及其他安装方式建议使用 TUN；此处专用启动按钮不会修改全局启动文件。','subtitle'))
    def speed_page(self):
        p=self.page('测速'); self.speed_label=label('尚未测速','title'); self.progress=Gtk.ProgressBar()
        self.size=Gtk.SpinButton.new_with_range(1,2048,1); self.size.set_value(64)
        self.speed_start=button('开始服务器链路测速',self.start_speed,True)
        self.card(p,label('服务器链路测速','title'),label('测本机 ↔ VPN 服务器链路，所有数据经过当前代理并正常计量；不是外网网站下载速度。'),row(label('总下载大小（MiB）'),self.size),self.speed_label,self.progress,row(self.speed_start,button('停止测速',self.test_cancel.set)),label('单路分段，每段最多 32 MiB，最长 180 秒；失败后不回退直连。停止可能等待当前网络读取超时（最多约 10 秒）。','subtitle'))
    def account_page(self):
        p=self.page('账号 / 导出'); self.account_title=label('当前：'+self.api.account.get('username','访客'),'title')
        self.username=Gtk.Entry(); self.username.set_placeholder_text('用户名（3..32 字符）')
        self.password=Gtk.Entry(); self.password.set_visibility(False); self.password.set_placeholder_text('密码（8..72 UTF-8 字节）')
        self.consent=Gtk.CheckButton(label='我已阅读并同意以下永久域名记录告知')
        self.account_box=self.card(p,self.account_title,self.username,self.password,label(CONSENT),self.consent,row(button('登录',lambda:self.auth('login')),button('注册',lambda:self.auth('register')),button('退出账号',self.logout)),button('刷新账号用量',self.refresh_account))
        self.account_info=label('未登录也可连接。设备使用本安装生成的随机标识摘要绑定；不读取 IMEI 或硬盘序列号。账号凭据仅保存在本用户私有目录。')
        self.card(p,self.account_info)
        self.protocol=combo(['vmess','vless','trojan','shadowsocks','hysteria2']); self.export_size=Gtk.SpinButton.new_with_range(1,262144,1024); self.export_size.set_value(1024)
        self.remark=Gtk.Entry(); self.remark.set_placeholder_text('导出备注名称（可选）')
        self.card(p,label('独立节点导出'),label('每周 256 GiB 导出预留额度；创建时扣除，节点有效 7 天，不影响现有节点。'),row(self.protocol,self.export_size),label('上方为协议及 MiB，1024 MiB = 1 GiB。','subtitle'),self.remark,row(button('创建并保存节点 ZIP',self.export_node),button('查看现有导出节点',lambda:self.fetch_account('nodes')),button('查看本人域名记录',lambda:self.fetch_account('history'))))
        self.output=Gtk.TextView(); self.output.set_editable(False); self.output.set_wrap_mode(Gtk.WrapMode.WORD_CHAR)
        sc=Gtk.ScrolledWindow(); sc.set_min_content_height(180); sc.add(self.output); p.pack_start(sc,True,True,0)
    def about_page(self):
        p=self.page('关于'); self.card(p,label('轻连 Ubuntu','title'),label('1.0.0-preview · amd64 · Ubuntu 24.04 GNOME\n完整原生 GTK GUI；沿用面板与账号 API。\n核心：V2Ray 5.54.2 / Hysteria 2.13.0 / tun2socks 2.6.0。'),label('高性能模式只请求本设备的独立 HY2 worker，使用原版 aggressive 参数；仍受原配额和共享服务器带宽限制。\n账号域名记录需明确同意；访客不记录域名。\n桌面随机设备标识用于绑定，不是不可伪造的硬件标识。\n关闭窗口会安全断开；不提供隐藏后台连接。'),button('查看开源许可',lambda:self.task(lambda:(ROOT/'THIRD_PARTY.txt').read_text(),self.show_text)))
    def show_text(self,text):
        dialog=Gtk.MessageDialog(transient_for=self,modal=True,message_type=Gtk.MessageType.INFO,buttons=Gtk.ButtonsType.OK,text='轻连')
        dialog.format_secondary_text(text[:10000]); dialog.run(); dialog.destroy()
    def task(self,work,success=None):
        def run():
            try:
                result=work()
                if success: GLib.idle_add(lambda: (success(result),False)[1])
            except Exception as e:
                msg=str(e); GLib.idle_add(lambda:self.set_status(msg))
        threading.Thread(target=run,daemon=True).start()
    def set_status(self,text): self.status.set_text(text); return False
    def on_event(self,event,value): GLib.idle_add(self.handle_event,event,value)
    def handle_event(self,event,value):
        if event in ('state','connected'): self.state_label.set_text(value)
        if event in ('state','error','warning','connected'): self.status.set_text(value)
        if event=='connected': self.connect_button.set_label('断开连接')
        if event=='quota': self.quota_label.set_text(('账号累计用量 / 周导出额度（与主连接额度分开）\n' if self.api.account else '访客本次 64 GiB\n')+self.format_quota(value))
        if event=='stopped':
            self.busy=False; self.state_label.set_text('未连接'); self.connect_button.set_label('连接')
            for c in self.controls: c.set_sensitive(True)
            self.account_box.set_sensitive(True)
            if self.quitting: Gtk.main_quit()
        return False
    @staticmethod
    def format_quota(q):
        names={'usedBytes':'本次已用','remainingBytes':'剩余额度','weeklyBytes':'周导出限额','allocatedBytes':'周已预留','cumulativeUploadBytes':'累计上传','cumulativeDownloadBytes':'累计下载','cumulativeTotalBytes':'累计总流量','uploadBytes':'上传','downloadBytes':'下载'}
        parts=[]
        for key,name in names.items():
            if key in q and isinstance(q[key],(int,float)):
                parts.append('%s：%.2f %s'%(name,q[key]/1073741824 if key.endswith('Bytes') else q[key],'GiB' if key.endswith('Bytes') else 'MiB'))
        return '\n'.join(parts) if parts else json.dumps(q,ensure_ascii=False,indent=2)
    def toggle_connection(self):
        if self.busy:
            self.test_cancel.set(); self.conn.disconnect(); self.connect_button.set_label('正在断开…'); return
        if self.account_busy: self.set_status('账号操作进行中，请稍后连接'); return
        if not self.api.account:
            d=Gtk.MessageDialog(transient_for=self,modal=True,buttons=Gtk.ButtonsType.OK_CANCEL,text='访客连接')
            d.format_secondary_text('将向服务器提交本安装的随机设备标识摘要以分配会话；本次手动连接最多 64 GiB，自动恢复不重置额度，不记录访问域名。'); reply=d.run(); d.destroy()
            if reply!=Gtk.ResponseType.OK: return
        self.busy=True
        for c in self.controls: c.set_sensitive(False)
        self.account_box.set_sensitive(False); self.connect_button.set_label('取消连接')
        for key,c in [('channel',self.channel),('performance',self.performance),('route',self.route)]: self.settings[key]=c.get_active()
        save(STATE/'settings.json',self.settings)
        self.conn.start(self.channel.get_active()==1,self.performance.get_active()==0,self.route.get_active()==0,self.tun.get_active())
    def account_task(self,work,success=None):
        if self.busy or self.account_busy: self.set_status('请先断开连接并等待当前操作完成'); return
        self.account_busy=True; self.account_box.set_sensitive(False)
        def run():
            try:
                result=work()
                if success: GLib.idle_add(lambda:(success(result),False)[1])
            except Exception as e:
                msg=str(e); GLib.idle_add(lambda:self.set_status(msg))
            finally: GLib.idle_add(self.account_done)
        threading.Thread(target=run,daemon=True).start()
    def account_done(self): self.account_busy=False; self.account_box.set_sensitive(True); return False
    def auth(self,action):
        if not self.consent.get_active(): self.set_status('登录 / 注册前需明确同意永久域名记录告知'); return
        username=self.username.get_text().strip(); password=self.password.get_text()
        self.account_task(lambda:self.api.auth(action,username,password),self.auth_done)
    def auth_done(self,*_):
        self.password.set_text(''); self.account_title.set_text('当前：'+self.api.account.get('username','访客')); self.set_status('账号操作成功')
    def logout(self): self.account_task(self.api.logout,self.auth_done)
    def refresh_account(self):
        if not self.api.account: self.set_status('请先登录'); return
        self.task(lambda:self.api.request('exports/quota'),lambda q:self.account_info.set_text(self.format_quota(q)))
    def fetch_account(self,path):
        if not self.api.account: self.set_status('请先登录'); return
        def display(data):
            # Do not display profile passwords/session keys in history/list output.
            if path=='nodes':
                data=[{k:v for k,v in x.items() if k not in ('profile','node','uri','clientConfig','caPem')} for x in data.get('nodes',[])]
            self.output.get_buffer().set_text(json.dumps(data,ensure_ascii=False,indent=2))
        self.task(lambda:self.api.request('exports/'+path),display)
    def export_node(self):
        if not self.api.account: self.set_status('请先登录'); return
        if self.account_busy: return
        d=Gtk.FileChooserDialog(title='保存独立节点 ZIP',transient_for=self,action=Gtk.FileChooserAction.SAVE)
        d.add_buttons('取消',Gtk.ResponseType.CANCEL,'保存',Gtk.ResponseType.OK); d.set_do_overwrite_confirmation(True); d.set_current_name('Qinglian-node.zip')
        response=d.run(); path=d.get_filename(); d.destroy()
        if response!=Gtk.ResponseType.OK: return
        details=dict(protocol=self.protocol.get_active_text(),sizeMiB=self.export_size.get_value_as_int(),remark=self.remark.get_text())
        def work():
            pending=read(STATE/'pending-export.json',{})
            if any(pending.get(k)!=v for k,v in details.items()):
                pending=dict(details,requestId=str(uuid.uuid4())); save(STATE/'pending-export.json',pending)
            result=self.api.request('exports/nodes',pending)
            import time
            profile={}
            for _ in range(20):
                nodes=self.api.request('exports/nodes').get('nodes',[])
                match=next((n for n in nodes if n.get('id')==result['id']),{})
                if match.get('status')=='error': raise RuntimeError('节点启动失败；申请已保留，请勿重复创建。')
                profile=match.get('profile',{})
                if all(k in profile for k in ('node','uri','caPem','clientConfig')): break
                time.sleep(.5)
            else: raise RuntimeError('节点已创建，配置尚未就绪；稍后用同一申请重试，不会重复扣额')
            fd=os.open(path,os.O_CREAT|os.O_TRUNC|os.O_WRONLY,0o600)
            with os.fdopen(fd,'wb') as out,zipfile.ZipFile(out,'w',zipfile.ZIP_DEFLATED) as z:
                for name,value in [('node.json',profile['node']),('share-uri.txt',profile['uri']),('qinglian-ca.pem',profile['caPem']),('client-config.json',profile['clientConfig'])]: z.writestr(name,json.dumps(value,ensure_ascii=False,indent=2) if isinstance(value,dict) else value)
            (STATE/'pending-export.json').unlink(missing_ok=True)
            return '节点已保存：'+path
        self.account_task(work,self.set_status)
    def start_speed(self):
        if self.test_running or not self.conn.connected: self.set_status('请先连接，且同一时间只运行一个测速'); return
        self.test_running=True; self.test_cancel.clear(); total=self.size.get_value_as_int(); self.speed_start.set_sensitive(False)
        def progress(frac,text): GLib.idle_add(self.speed_progress,frac,text)
        def work():
            try:
                result=self.conn.speed(total,self.test_cancel,progress)
            except Exception as e: result='测速失败（不代表 VPN 断开）：'+str(e)
            GLib.idle_add(self.speed_done,result)
        threading.Thread(target=work,daemon=True).start()
    def speed_progress(self,frac,text): self.progress.set_fraction(frac); self.speed_label.set_text(text); return False
    def speed_done(self,text): self.test_running=False; self.speed_start.set_sensitive(True); self.speed_label.set_text(text); return False
    def on_close(self,*_):
        self.test_cancel.set()
        if self.busy:
            self.quitting=True; self.conn.disconnect(); self.set_sensitive(False); self.status.set_text('正在恢复网络设置后退出…'); return True
        Gtk.main_quit(); return False

if __name__=='__main__':
    try: window=Window(); Gtk.main()
    except Exception as e:
        d=Gtk.MessageDialog(message_type=Gtk.MessageType.ERROR,buttons=Gtk.ButtonsType.CLOSE,text='轻连无法启动'); d.format_secondary_text(str(e)); d.run(); d.destroy(); raise SystemExit(1)
