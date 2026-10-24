#!/usr/bin/python3
import fcntl
import json
import os
from pathlib import Path
import subprocess
import threading
import time
import uuid
import zipfile
import gi
gi.require_version('Gtk','3.0')
from gi.repository import Gtk, Gdk, GLib, Gio, Pango
from runtime import Api, Connection, STATE, ROOT, CONSENT, read, save, restore_proxy
from ui import CSS, Icon, Clamp, Columns, Segments, FrostedPanel, Sparkline

VERSION='1.0.0-preview4'

def label(text='',style=None):
    w=Gtk.Label(label=text,xalign=0); w.set_line_wrap(True); w.set_line_wrap_mode(Pango.WrapMode.WORD_CHAR); w.set_max_width_chars(64)
    if style: w.get_style_context().add_class(style)
    return w

def button(text,callback,primary=False):
    w=Gtk.Button(label=text); w.connect('clicked',lambda _:callback())
    if primary: w.get_style_context().add_class('suggested-action')
    return w

def row(*widgets):
    w=Gtk.Box(spacing=12,homogeneous=True)
    for x in widgets: w.pack_start(x,True,True,0)
    return w

def combo(items):
    w=Gtk.ComboBoxText()
    for item in items: w.append_text(item)
    w.set_active(0); return w

def icon_button(name,tooltip,callback):
    b=Gtk.Button(); glyph=Icon(name); b.add(glyph); glyph.show(); b.set_valign(Gtk.Align.CENTER); b.set_tooltip_text(tooltip); b.get_style_context().add_class('icon-button'); b.connect('clicked',lambda _:callback()); return b

def centered(text='',style=None):
    w=label(text,style); w.set_xalign(.5); w.set_justify(Gtk.Justification.CENTER); return w

class Window(Gtk.Window):
    MAIN=('connect','speed','routing','about')
    def __init__(self):
        super().__init__(title='轻连 Qinglian'); self.get_style_context().add_class('qinglian')
        self.set_icon_name('qinglian'); self.set_position(Gtk.WindowPosition.CENTER)
        STATE.mkdir(parents=True,exist_ok=True,mode=0o700)
        self.instance=open(STATE/'gui.lock','a')
        try: fcntl.flock(self.instance,fcntl.LOCK_EX|fcntl.LOCK_NB)
        except BlockingIOError: raise RuntimeError('轻连已在运行，请使用现有窗口。')
        restore_proxy(STATE/'proxy-restore.json')
        self.api=Api(); self.conn=Connection(self.api,self.on_event); self.busy=False; self.quitting=False; self.started_at=None
        self.test_cancel=threading.Event(); self.test_running=False; self.account_busy=False
        self.settings=read(STATE/'settings.json',{}); self.compact=bool(self.settings.get('compact',False))
        self.set_default_size(960 if self.compact else 1200,740 if self.compact else 860)
        self.pages={}; self.segments=[]; self.return_page='connect'; self.popover=None
        self.desktop_settings=Gio.Settings.new('org.gnome.desktop.interface')
        self.desktop_settings.connect('changed::color-scheme',lambda *_:self.set_theme())
        provider=Gtk.CssProvider(); provider.load_from_data(CSS)
        Gtk.StyleContext.add_provider_for_screen(Gdk.Screen.get_default(),provider,Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)
        chrome=Gtk.HeaderBar(title='轻连 · Ubuntu'); chrome.set_show_close_button(True); chrome.set_decoration_layout('menu:minimize,maximize,close'); self.set_titlebar(chrome)
        self.overlay=Gtk.Overlay(); self.add(self.overlay)
        self.stack=Gtk.Stack(); self.stack.get_style_context().add_class('content-stack'); self.stack.set_homogeneous(True)
        self.stack.set_transition_type(Gtk.StackTransitionType.NONE); self.stack.set_transition_duration(200); self.overlay.add(self.stack)
        self.connection_page(); self.chatgpt_page(); self.speed_page(); self.routing_page(); self.account_page(); self.about_page()
        self.build_header(); self.build_navigation(); self.build_classic_navigation()
        self.status=label('就绪 · 免登录可连接，单次 64 GiB','small'); self.status.get_style_context().add_class('status-message')
        self.message=Gtk.Revealer(); self.message.set_transition_type(Gtk.RevealerTransitionType.SLIDE_UP); self.message.add(self.status)
        self.status_layer=Clamp(self.message,760); self.status_layer.set_valign(Gtk.Align.END); self.status_layer.set_margin_start(20); self.status_layer.set_margin_end(20); self.overlay.add_overlay(self.status_layer); self.overlay.set_overlay_pass_through(self.status_layer,True)
        self.theme.connect('changed',self.set_theme)
        for c in (self.channel,self.performance,self.route): c.connect('changed',self.save_choices)
        self.tun.connect('notify::active',self.save_choices)
        self.connect('delete-event',self.on_close); self.connect('key-press-event',self.key_press)
        self.connect('size-allocate',self.adapt_layout)
        self.clock_timer=GLib.timeout_add_seconds(1,self.update_clock); self.connect('destroy',self.destroy_timers)
        self.show_all(); self.set_theme(); self.apply_compact(resize=False); self.navigate('connect')
    def page(self,title,name):
        sc=Gtk.ScrolledWindow(); sc.set_policy(Gtk.PolicyType.NEVER,Gtk.PolicyType.AUTOMATIC)
        body=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=16)
        body.set_margin_start(20); body.set_margin_end(20); body.set_margin_top(112); body.set_margin_bottom(168)
        clamp=Clamp(body,1040); sc.add(clamp); self.stack.add_named(sc,name); self.pages[name]={'scroll':sc,'body':body,'clamp':clamp}
        if title: body.pack_start(label(title,'title'),False,False,0)
        return body
    def card(self,parent,*children,style=None):
        box=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=12); box.get_style_context().add_class('card')
        if style: box.get_style_context().add_class(style)
        for c in children: box.pack_start(c,False,False,0)
        parent.pack_start(box,False,True,0); return box
    def segment(self,titles):
        s=Segments(titles); self.segments.append(s); return s
    def build_header(self):
        controls=Gtk.Box(spacing=5); controls.get_style_context().add_class('glass-controls')
        self.back_button=icon_button('back','返回',lambda:self.navigate(self.return_page)); self.back_button.set_no_show_all(True); controls.pack_start(self.back_button,False,False,0)
        controls.pack_start(label('轻连','brand'),False,False,5)
        filler=Gtk.Box(); controls.pack_start(filler,True,True,0)
        self.simple_switch=Gtk.ToggleButton(label='简约'); self.simple_switch.get_style_context().add_class('mode-switch'); self.simple_switch.set_tooltip_text('简约 / 完整界面 · Ctrl+Shift+M'); self.simple_switch.set_active(self.compact); self.simple_switch.connect('toggled',lambda *_:self.apply_compact())
        self.simple_switch.set_valign(Gtk.Align.CENTER)
        controls.pack_end(icon_button('more','更多功能与页面',self.open_menu),False,False,0)
        self.theme_button=icon_button('theme','切换亮色 / 暗色 / 系统',lambda:self.theme.set_active((self.theme.get_active()+1)%3)); controls.pack_end(self.theme_button,False,False,0)
        controls.pack_end(self.simple_switch,False,False,2)
        controls.pack_end(icon_button('account','账号 / 节点导出',lambda:self.navigate('account')),False,False,0)
        self.header_glass=FrostedPanel(self.stack,controls,76)
        self.header_layer=Clamp(self.header_glass,1040); self.header_layer.set_valign(Gtk.Align.START); self.header_layer.set_margin_top(14); self.header_layer.set_margin_start(16); self.header_layer.set_margin_end(16); self.overlay.add_overlay(self.header_layer)
    def build_navigation(self):
        self.nav=Segments(['连接','测速','分流','关于'],['connect','speed','routing','about'],height=82); self.segments.append(self.nav)
        self.nav.connect('changed',lambda *_:self.navigate(self.MAIN[self.nav.get_active()]))
        self.nav_glass=FrostedPanel(self.stack,self.nav,86)
        self.nav_layer=Clamp(self.nav_glass,660); self.nav_layer.set_valign(Gtk.Align.END); self.nav_layer.set_margin_bottom(16); self.nav_layer.set_margin_start(16); self.nav_layer.set_margin_end(16); self.nav_layer.set_no_show_all(True); self.overlay.add_overlay(self.nav_layer)
        self.nav_glass.show_all()
        rail=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=8); rail.get_style_context().add_class('rail-controls')
        rail.pack_start(label('工作空间','subtitle'),False,False,8); self.rail_buttons=[]; group=None
        for i,(title,icon) in enumerate(zip(['连接','测速','分流','关于'],['connect','speed','routing','about'])):
            b=Gtk.RadioButton.new_from_widget(group); group=group or b; b.set_mode(False); b.get_style_context().add_class('rail-option')
            content=Gtk.Box(spacing=14); content.pack_start(Icon(icon,22),False,False,0); content.pack_start(Gtk.Label(label=title),False,False,0); b.add(content)
            b.connect('toggled',lambda btn,index=i:self.navigate(self.MAIN[index]) if btn.get_active() else None); rail.pack_start(b,False,False,0); self.rail_buttons.append(b)
        rail.pack_start(Gtk.Box(),True,True,0)
        rail.pack_start(button('ChatGPT 优化',lambda:self.navigate('chatgpt')),False,False,0)
        rail.pack_start(button('我的账号',lambda:self.navigate('account')),False,False,0)
        rail.pack_start(label('轻连 · Ubuntu\n面板统一管理','subtitle'),False,False,10)
        self.sidebar=FrostedPanel(self.stack,rail,420); self.sidebar.set_size_request(174,-1); self.sidebar.set_halign(Gtk.Align.START); self.sidebar.set_valign(Gtk.Align.FILL)
        self.sidebar.set_margin_top(112); self.sidebar.set_margin_bottom(18); self.sidebar.set_margin_start(18); self.sidebar.show_all(); self.sidebar.set_no_show_all(True); self.overlay.add_overlay(self.sidebar)
    def build_classic_navigation(self):
        self.classic_bar=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=4)
        self.classic_bar.set_valign(Gtk.Align.START)
        tools=Gtk.Box(spacing=12); tools.set_border_width(8)
        tools.pack_start(label('轻连 · 简约界面','card-title'),True,True,8)
        tools.pack_end(button('切换完整界面',lambda:self.simple_switch.set_active(False)),False,False,0)
        tools.pack_end(button('亮 / 暗 / 系统',lambda:self.theme.set_active((self.theme.get_active()+1)%3)),False,False,0)
        self.classic_bar.pack_start(tools,False,False,0)
        self.classic_tabs=Gtk.Notebook(); self.classic_tabs.set_scrollable(True)
        self.classic_order=['connect','chatgpt','speed','routing','account','about']
        for title in ['连接','ChatGPT 优化','测速','分流','账号 / 导出','关于']:
            self.classic_tabs.append_page(Gtk.Box(),Gtk.Label(label=title))
        self.classic_tabs.connect('switch-page',self.classic_page_changed)
        self.classic_bar.pack_start(self.classic_tabs,False,False,0)
        self.classic_bar.show_all(); self.classic_bar.set_no_show_all(True); self.overlay.add_overlay(self.classic_bar)
    def classic_page_changed(self,_,page,index):
        if not self.compact: return
        self.syncing_classic=True
        try: self.navigate(self.classic_order[index])
        finally: self.syncing_classic=False
    def navigate(self,name):
        if name not in self.pages: return
        current=self.stack.get_visible_child_name()
        if self.compact and not getattr(self,'syncing_classic',False) and self.classic_tabs.get_current_page()!=self.classic_order.index(name): self.classic_tabs.set_current_page(self.classic_order.index(name))
        if name not in self.MAIN and current in self.MAIN: self.return_page=current
        self.stack.set_visible_child_name(name)
        if current!=name: self.animate_page()
        if name in self.MAIN:
            index=self.MAIN.index(name); self.nav.set_active(index); self.rail_buttons[index].set_active(True)
        self.back_button.set_visible(name not in self.MAIN)
    def animate_page(self):
        if getattr(self,'page_tick',0):
            self.page_widget.remove_tick_callback(self.page_tick); self.page_widget.set_opacity(1); self.page_tick=0
        if self.compact or not Gtk.Settings.get_default().get_property('gtk-enable-animations'): return
        widget=self.stack.get_visible_child(); self.page_widget=widget; widget.set_opacity(0); began=time.monotonic()
        def frame(*_):
            progress=min(1,(time.monotonic()-began)/.18); widget.set_opacity(progress)
            if progress>=1: self.page_tick=0; return False
            return True
        self.page_tick=widget.add_tick_callback(frame)
    def open_menu(self):
        if self.popover: self.popover.destroy()
        self.popover=Gtk.Popover.new(self.header_glass); box=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=5); box.set_border_width(10)
        for text,name in [('连接 · Ctrl+1','connect'),('测速 · Ctrl+2','speed'),('分流 · Ctrl+3','routing'),('关于 · Ctrl+4','about'),('账号 / 节点导出','account'),('ChatGPT 优化','chatgpt')]:
            def go(page=name): self.navigate(page); self.popover.popdown()
            box.pack_start(button(text,go),False,False,0)
        self.popover.add(box); self.popover.show_all(); self.popover.popup()
    def apply_compact(self,resize=True):
        self.compact=self.simple_switch.get_active(); self.settings['compact']=self.compact; save(STATE/'settings.json',self.settings)
        style=self.get_style_context()
        if self.compact: style.add_class('classic')
        else: style.remove_class('classic')
        self.header_layer.set_visible(not self.compact); self.classic_bar.set_visible(self.compact)
        for w in self.full_details: w.show()
        self.classic_connection_layout()
        for segment in self.segments: segment.set_classic(self.compact)
        def arrange(widget):
            if isinstance(widget,Columns): widget.single(self.compact)
            if isinstance(widget,Gtk.Container):
                for child in widget.get_children(): arrange(child)
        arrange(self.stack)
        for name,page in self.pages.items():
            page['clamp'].set_limit(1040)
            page['body'].set_margin_bottom(84 if self.compact else 168)
        self.status_layer.set_margin_bottom(18 if self.compact else 112)
        if resize and not self.is_maximized(): self.resize(960 if self.compact else 1200,740 if self.compact else 860)
        self.adapt_layout()
        self.navigate(self.stack.get_visible_child_name() or 'connect')
        self.update_summary()
    def classic_connection_layout(self):
        if not hasattr(self,'classic_connection'):
            p=self.pages['connect']['body']
            self.classic_connection=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=14)
            self.classic_connection.get_style_context().add_class('card')
            p.pack_start(self.classic_connection,False,True,0)
            self.classic_connection.pack_start(label('轻连，随时连接','title'),False,False,0)
            self.classic_connection.pack_start(label('节点由现有面板统一管理 · 单次访客 64 GiB','subtitle'),False,False,0)
            self.classic_channel_row=Gtk.Box(spacing=12,homogeneous=True)
            self.classic_tun_row=row(label('TUN 全局接管（需系统授权）'))
            self.classic_slots=[]
            for widget in [self.state_label,self.channel,self.performance,self.route,self.tun,self.connect_button,self.quota_label]:
                parent=widget.get_parent(); self.classic_slots.append((widget,parent,parent.get_children().index(widget),parent.query_child_packing(widget)))
            self.classic_connection.set_no_show_all(True)
        if self.compact and not getattr(self,'classic_reparented',False):
            for widget,parent,index,packing in self.classic_slots: parent.remove(widget)
            self.classic_connection.pack_start(self.state_label,False,False,0)
            self.classic_channel_row.pack_start(self.channel,True,True,0); self.classic_channel_row.pack_start(self.performance,True,True,0)
            self.classic_connection.pack_start(self.classic_channel_row,False,False,0)
            self.classic_connection.pack_start(self.route,False,False,0)
            self.classic_tun_row.pack_end(self.tun,False,False,0); self.classic_connection.pack_start(self.classic_tun_row,False,False,0)
            self.classic_connection.pack_start(self.connect_button,False,False,0); self.classic_connection.pack_start(self.quota_label,False,False,0)
            self.classic_connection.set_no_show_all(False); self.classic_connection.show_all(); self.classic_connection.set_no_show_all(True)
            self.classic_reparented=True
        elif not self.compact and getattr(self,'classic_reparented',False):
            for widget,parent,index,packing in self.classic_slots:
                widget.get_parent().remove(widget); parent.pack_start(widget,*packing[:3]); parent.reorder_child(widget,index)
            self.classic_connection.remove(self.classic_channel_row); self.classic_connection.remove(self.classic_tun_row)
            self.classic_reparented=False
        self.classic_connection.set_visible(self.compact)
        for widget in [self.connection_columns,self.simple_summary,self.quick_actions]: widget.set_visible(not self.compact)
    def adapt_layout(self,*_):
        if not hasattr(self,'status_layer'): return
        wide=self.get_allocated_width()>=1040 and not self.compact
        self.sidebar.set_visible(wide); self.nav_layer.set_visible(not wide and not self.compact)
        for name,page in self.pages.items():
            margin=212 if wide else 20
            if page['body'].get_margin_start()!=margin: page['body'].set_margin_start(margin)
            bottom=84 if self.compact else 72 if wide else 168
            if page['body'].get_margin_bottom()!=bottom: page['body'].set_margin_bottom(bottom)
            limit=1040 if self.compact else 1280 if wide else 1040
            if page['clamp'].limit!=limit: page['clamp'].set_limit(limit)
        self.status_layer.set_margin_bottom(18 if self.compact or wide else 112)
    def set_theme(self,*_):
        index=self.theme.get_active(); dark=index==1 or (index==2 and self.desktop_settings.get_string('color-scheme')=='prefer-dark')
        Gtk.Settings.get_default().set_property('gtk-application-prefer-dark-theme',dark)
        style=self.get_style_context()
        if dark: style.add_class('dark')
        else: style.remove_class('dark')
        self.settings['theme']=index; save(STATE/'settings.json',self.settings)
        for s in self.segments: s.set_dark(dark)
        self.header_glass.set_dark(dark); self.nav_glass.set_dark(dark); self.sidebar.set_dark(dark); self.chart.dark=dark; self.chart.queue_draw()
        self.theme_button.set_tooltip_text('当前：'+['亮色','暗色','跟随系统'][index]+' · 点击切换')
    def save_choices(self,*_):
        for key,c in [('channel',self.channel),('performance',self.performance),('route',self.route)]: self.settings[key]=c.get_active()
        self.settings['tun']=self.tun.get_active(); save(STATE/'settings.json',self.settings); self.update_summary()
    def update_summary(self):
        mode='TUN 全局' if self.tun.get_active() else ('规则分流' if self.route.get_active()==0 else '全局代理')
        channel='兼容通道' if self.channel.get_active()==0 else ('HY2 高性能' if self.performance.get_active()==0 else 'HY2 保守')
        self.simple_summary.set_text(channel+' · '+mode)
        self.route_note.set_text('规则：系统代理自动绕过大陆与私网，其余走代理。' if self.route.get_active()==0 else '全局：使用系统代理的请求均经代理转发。')
    def key_press(self,w,event):
        ctrl=bool(event.state&Gdk.ModifierType.CONTROL_MASK); shift=bool(event.state&Gdk.ModifierType.SHIFT_MASK)
        if ctrl and event.keyval in (Gdk.KEY_1,Gdk.KEY_2,Gdk.KEY_3,Gdk.KEY_4): self.navigate(self.MAIN[event.keyval-Gdk.KEY_1]); return True
        if ctrl and shift and event.keyval in (Gdk.KEY_m,Gdk.KEY_M): self.simple_switch.set_active(not self.compact); return True
        if ctrl and event.keyval in (Gdk.KEY_q,Gdk.KEY_Q): self.close(); return True
        if event.keyval==Gdk.KEY_Escape and self.stack.get_visible_child_name() not in self.MAIN: self.navigate(self.return_page); return True
        return False
    def update_clock(self):
        seconds=int(time.monotonic()-self.started_at) if self.started_at is not None else 0
        self.clock.set_text('%02d:%02d:%02d'%(seconds//3600,seconds//60%60,seconds%60)); return True
    def destroy_timers(self,*_):
        if self.clock_timer: GLib.source_remove(self.clock_timer); self.clock_timer=0
        if getattr(self,'toast_timer',0): GLib.source_remove(self.toast_timer); self.toast_timer=0
        if getattr(self,'page_tick',0): self.page_widget.remove_tick_callback(self.page_tick); self.page_tick=0
    def connection_page(self):
        p=self.page('', 'connect'); self.connection_columns=Columns(); p.pack_start(self.connection_columns,False,True,0); left,right=self.connection_columns.columns
        self.state_label=centered('未连接','hero-title'); self.caption=centered('准备就绪 · 专属通道','subtitle'); self.clock=centered('00:00:00','small')
        self.connect_button=button('连接',self.toggle_connection,True); self.connect_button.set_tooltip_text('连接 / 断开当前通道')
        self.hero=self.card(left,centered('专属连接','small'),Icon('connect',54),self.state_label,self.caption,self.connect_button,self.clock,style='hero')
        self.quota_label=label('访客单次限额 64 GiB。\n账号登录后显示服务端累计用量。','subtitle')
        self.overview=self.card(left,label('连接概览','card-title'),self.quota_label)
        self.route=self.segment(['规则','全局']); self.route.set_active(self.settings.get('route',0)); self.route_note=label('','subtitle')
        self.mode_card=self.card(right,label('连接模式','card-title'),self.route,self.route_note)
        self.channel=self.segment(['兼容','加速']); self.channel.set_active(self.settings.get('channel',0))
        self.performance=self.segment(['高性能','保守']); self.performance.set_active(self.settings.get('performance',0))
        self.performance_box=Gtk.Box(orientation=Gtk.Orientation.VERTICAL,spacing=10); self.performance_box.pack_start(label('HY2 配置','card-title'),False,False,0); self.performance_box.pack_start(self.performance,False,False,0); self.performance_box.pack_start(label('只对本设备生效，沿用已验证的高性能参数。','subtitle'),False,False,0)
        self.transport_card=self.card(right,label('传输通道','card-title'),self.channel,self.performance_box)
        self.simple_summary=centered('','subtitle'); p.pack_start(self.simple_summary,False,False,0)
        self.quick_actions=row(button('ChatGPT 优化',lambda:self.navigate('chatgpt')),button('账号 / 节点导出',lambda:self.navigate('account'))); p.pack_start(self.quick_actions,False,False,0)
        self.full_details=[self.overview,self.mode_card,self.performance_box]
    def routing_page(self):
        p=self.page('分流规则','routing'); cols=Columns(); p.pack_start(cols,False,True,0); left,right=cols.columns
        self.tun=Gtk.Switch(); self.tun.set_active(bool(self.settings.get('tun',False))); self.tun.set_halign(Gtk.Align.END); self.tun.set_valign(Gtk.Align.CENTER)
        self.card(left,label('连接接管方式','card-title'),row(label('TUN 全局接管'),self.tun),label('启用后接管忽略系统代理的软件，连接时由系统弹窗请求本机管理员授权。请先关闭其他 VPN / Clash TUN。','subtitle'))
        self.card(right,label('规则与全局','card-title'),label('规则：系统代理绕过大陆域名、IP 和私网。\n全局：使用代理的请求均经服务器。\nTUN：始终全局，不受规则模式影响。'),button('返回连接页选择模式',lambda:self.navigate('connect')))
        self.card(p,label('Ubuntu 分流说明','card-title'),label('这里对应桌面的系统代理 / TUN 接管，不提供手机版的应用黑白名单。所有选项在下次连接时生效；连接中修改界面显示模式不会改变正在运行的通道。','subtitle'))
        self.controls=[self.channel,self.performance,self.route,self.tun]
    def chatgpt_page(self):
        p=self.page('ChatGPT 优化','chatgpt'); cols=Columns(); p.pack_start(cols,False,True,0); left,right=cols.columns
        self.card(left,label('使用当前代理启动','card-title'),label('适配 Ubuntu .deb 版 ChatGPT，使用系统中的 chatgpt 命令。'),label('先连接轻连，完全退出原 ChatGPT（包括后台），再从这里启动。'),button('使用代理启动 ChatGPT',lambda:self.task(self.conn.launch_chatgpt),True),label('附加代理参数与环境变量、禁用 QUIC，保留本机 OAuth 回调；不关闭沙箱或 TLS。','subtitle'))
        self.chat_result=label('检查结果只表示 HTTPS 路径可达，不代表账号已登录。','subtitle')
        self.card(right,label('检查连接路径','card-title'),self.chat_result,button('检查 ChatGPT HTTPS',lambda:self.task(self.conn.probe,self.chat_result.set_text)),label('HY2 下 ChatGPT / OpenAI 及静态资源域名使用兼容通道。','subtitle'))
        self.card(p,label('仍然不走代理？','card-title'),label('断开轻连，在“分流”页开启 TUN 后重新连接。TUN 可接管忽略系统代理的登录子进程或更新器。Snap / Flatpak 等其他安装方式也建议使用 TUN。'),button('打开分流 / TUN 设置',lambda:self.navigate('routing')))
    def speed_page(self):
        p=self.page('网络测速','speed'); self.speed_label=label('尚未测速','hero-title'); self.progress=Gtk.ProgressBar(); self.chart=Sparkline()
        self.size=Gtk.SpinButton.new_with_range(1,2048,1); self.size.set_value(64)
        self.speed_start=button('开始下载测速',self.start_speed,True)
        self.card(p,label('下载速度','card-title'),self.speed_label,self.chart,label('平均速率变化 · Mbps','small'),self.progress,row(label('总下载大小（MiB）'),self.size),row(self.speed_start,button('停止测速',self.test_cancel.set)),style='accent')
        self.card(p,label('测速说明','card-title'),label('数据通过当前代理获取，正常计量。此源测试本机至服务器链路，不等于 GitHub 等外网站点下载速度。单路分段、最长 180 秒，不回退直连；停止最多等待当前 10 秒读超时。','subtitle'))
    def account_page(self):
        p=self.page('我的账号','account'); cols=Columns(); p.pack_start(cols,False,True,0); left,right=cols.columns
        self.account_title=label('当前：'+self.api.account.get('username','访客'),'card-title')
        self.username=Gtk.Entry(); self.username.set_placeholder_text('用户名（3..32 字符）')
        self.password=Gtk.Entry(); self.password.set_visibility(False); self.password.set_placeholder_text('密码（8..72 UTF-8 字节）')
        self.consent=Gtk.CheckButton(label='我已阅读并同意永久域名记录告知')
        self.account_box=self.card(left,self.account_title,self.username,self.password,label(CONSENT,'subtitle'),self.consent,row(button('登录',lambda:self.auth('login'),True),button('注册',lambda:self.auth('register'))),button('退出账号',self.logout))
        self.account_info=label('未登录也可连接。设备使用系统用户范围的应用摘要，仅上传摘要，不上传原 machine-id。缺少系统 ID 时使用持久随机标识。','subtitle')
        self.card(left,label('账号用量','card-title'),self.account_info,button('刷新服务端用量',self.refresh_account))
        self.protocol=combo(['vmess','vless','trojan','shadowsocks','hysteria2']); self.export_size=Gtk.SpinButton.new_with_range(1,262144,1024); self.export_size.set_value(1024)
        self.remark=Gtk.Entry(); self.remark.set_placeholder_text('导出备注名称（可选）')
        self.card(right,label('独立节点导出','card-title'),label('每周 256 GiB 预留额度，创建时扣除；节点有效 7 天，保留现有节点。','subtitle'),self.protocol,row(label('额度（MiB）'),self.export_size),self.remark,button('创建并保存节点 ZIP',self.export_node,True),button('查看现有导出节点',lambda:self.fetch_account('nodes')),button('查看本人域名记录',lambda:self.fetch_account('history')))
        self.output=Gtk.TextView(); self.output.set_editable(False); self.output.set_wrap_mode(Gtk.WrapMode.WORD_CHAR)
        sc=Gtk.ScrolledWindow(); sc.set_min_content_height(180); sc.add(self.output); self.card(p,label('节点 / 域名观察记录','card-title'),sc)
    def about_page(self):
        p=self.page('关于轻连','about'); cols=Columns(); p.pack_start(cols,False,True,0); left,right=cols.columns
        self.card(left,label('轻连','hero-title'),label(VERSION+' · Ubuntu 24.04 amd64\nV2Ray / v2fly 与 Hysteria2 核心。'),label('与手机版统一的卡片、导航与玻璃滑块。桌面宽屏双栏，窄窗口自动单栏。','subtitle'),button('账号 / 节点导出',lambda:self.navigate('account')),button('ChatGPT 优化',lambda:self.navigate('chatgpt')))
        self.theme=self.segment(['亮色','暗色','系统']); self.theme.set_active(self.settings.get('theme',0))
        self.card(right,label('界面与外观','card-title'),self.theme,label('顶部“简约”切换第一版的传统桌面标签页与表单，保留全部功能，设置自动保存。Ctrl+Shift+M 切换简约，Ctrl+1..4 切换主页面。','subtitle'),label('顶部和底部导航实时模糊本应用内容；后台隐藏或最小化时停止取样。','subtitle'))
        self.card(p,label('连接与隐私','card-title'),label('账号永久域名记录需明确同意，访客不记录域名。高性能模式仅请求本设备独立 HY2 worker，仍受原配额和共享带宽限制。关闭窗口会断开并恢复网络设置。','subtitle'),button('查看开源许可',lambda:self.task(lambda:(ROOT/'THIRD_PARTY.txt').read_text(),self.show_text)))
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
    def set_status(self,text):
        self.status.set_text(text); self.message.set_reveal_child(True)
        if getattr(self,'toast_timer',0): GLib.source_remove(self.toast_timer)
        def hide(): self.message.set_reveal_child(False); self.toast_timer=0; return False
        self.toast_timer=GLib.timeout_add_seconds(8,hide); return False
    def on_event(self,event,value): GLib.idle_add(self.handle_event,event,value)
    def handle_event(self,event,value):
        if event=='state': self.state_label.set_text('正在连接'); self.caption.set_text(value)
        if event in ('error','warning'): self.caption.set_text(value); self.set_status(value)
        if event=='connected':
            self.state_label.set_text('已连接'); self.caption.set_text(value); self.connect_button.set_label('断开连接'); self.started_at=time.monotonic()
        if event=='quota': self.quota_label.set_text(('账号累计用量 / 周导出额度（与主连接额度分开）\n' if self.api.account else '访客本次 64 GiB\n')+self.format_quota(value))
        if event=='stopped':
            self.busy=False; self.state_label.set_text('未连接'); self.connect_button.set_label('连接')
            self.started_at=None; self.update_clock()
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
            d.format_secondary_text('将向服务器提交本系统用户范围的设备应用摘要以分配会话（不上传原 machine-id，缺少时使用持久随机标识）；本次手动连接最多 64 GiB，自动恢复不重置额度，不记录访问域名。'); reply=d.run(); d.destroy()
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
    def auth_done(self,result=None):
        self.password.set_text(''); self.account_title.set_text('当前：'+self.api.account.get('username','访客')); self.set_status(result or '账号操作成功')
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
            os.fchmod(fd,0o600)
            with os.fdopen(fd,'wb') as out,zipfile.ZipFile(out,'w',zipfile.ZIP_DEFLATED) as z:
                for name,value in [('node.json',profile['node']),('share-uri.txt',profile['uri']),('qinglian-ca.pem',profile['caPem']),('client-config.json',profile['clientConfig'])]: z.writestr(name,json.dumps(value,ensure_ascii=False,indent=2) if isinstance(value,dict) else value)
            (STATE/'pending-export.json').unlink(missing_ok=True)
            return '节点已保存：'+path
        self.account_task(work,self.set_status)
    def start_speed(self):
        if self.test_running or not self.conn.connected: self.set_status('请先连接，且同一时间只运行一个测速'); return
        self.test_running=True; self.test_cancel.clear(); total=self.size.get_value_as_int(); self.speed_start.set_sensitive(False)
        self.chart.clear(); last=[0.]
        def progress(frac,text):
            now=time.monotonic()
            if now-last[0]>=.2 or frac>=1:
                last[0]=now; GLib.idle_add(self.speed_progress,frac,text)
        def work():
            try:
                result=self.conn.speed(total,self.test_cancel,progress)
            except Exception as e: result='测速失败（不代表 VPN 断开）：'+str(e)
            GLib.idle_add(self.speed_done,result)
        threading.Thread(target=work,daemon=True).start()
    def speed_progress(self,frac,text):
        self.progress.set_fraction(frac); self.speed_label.set_text(text)
        try: self.chart.append(float(text.split()[0]))
        except (ValueError,IndexError): pass
        return False
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
