"""Qinglian Windows GUI. Helpers dispatch before importing the Qt GUI."""
import os
from pathlib import Path
import sys
import win_platform as platform

if __name__=='__main__' and len(sys.argv)==3 and sys.argv[1]=='--proxy-guard':
    platform.guard(sys.argv[2]); raise SystemExit(0)
if __name__=='__main__' and len(sys.argv)==5 and sys.argv[1]=='--tun-helper':
    import tun
    tun.helper(sys.argv[2],int(sys.argv[3]),sys.argv[4]); raise SystemExit(0)

if __name__=='__main__' and len(sys.argv)==3 and sys.argv[1]=='--tun-self-test':
    import test_tun
    test_tun.run(sys.argv[2]); raise SystemExit(0)

import json
import threading
import time
import webbrowser
from PySide6.QtCore import QObject,Signal,QTimer,Qt,QPropertyAnimation,QEasingCurve
from PySide6.QtGui import QAction,QColor,QIcon,QPainter,QPixmap
from PySide6.QtWidgets import (QApplication,QMainWindow,QWidget,QVBoxLayout,QHBoxLayout,QLabel,QPushButton,QListWidget,QStackedWidget,QFrame,QComboBox,QCheckBox,QSpinBox,QLineEdit,QPlainTextEdit,QFileDialog,QMessageBox,QProgressBar,QSystemTrayIcon,QGraphicsOpacityEffect,QScrollArea)
import client
import fluent
import updater
QCheckBox=fluent.CheckBox

VERSION='1.0.0-preview5'
class Bridge(QObject):
    event=Signal(str,object)
    finished=Signal(object,object)
    progress=Signal(float,str)
    public_finished=Signal(object)
    updates_finished=Signal(object)

def label(text,kind=None):
    value=QLabel(text); value.setWordWrap(True)
    if kind: value.setObjectName(kind)
    return value
def button(text,callback):
    value=QPushButton(text); value.clicked.connect(lambda _:callback()); return value
def combo(values):
    value=QComboBox(); value.addItems(values); return value
def card(layout,*items):
    frame=QFrame(); frame.setObjectName('card'); box=QVBoxLayout(frame); box.setSpacing(16); box.setContentsMargins(24,22,24,22)
    for item in items: box.addWidget(item)
    layout.addWidget(frame); return frame

def icon(size=64):
    for path in (Path(__file__).resolve().parent/'assets/v2rayN.ico',client.ROOT/'icons/v2rayN.ico'):
        if path.is_file():
            value=QIcon(str(path))
            if not value.isNull(): return value
    raise RuntimeError('安装包缺少图标资源')

class Window(QMainWindow):
    def __init__(self,api=None):
        super().__init__(); self.setWindowTitle('轻连 Qinglian'); self.setWindowIcon(icon()); self.resize(1060,760); self.setMinimumSize(700,560)
        self.dark=False; self.mica=False; self.force_exit=False
        self.setAttribute(Qt.WA_TranslucentBackground,fluent.material_available())
        self.api=api or client.Api(); self.bridge=Bridge(); self.bridge.event.connect(self.on_event); self.bridge.finished.connect(self.task_done); self.bridge.progress.connect(self.speed_progress); self.bridge.public_finished.connect(self.public_done); self.bridge.updates_finished.connect(self.updates_done)
        self.conn=client.Connection(self.api,self.bridge.event.emit)
        self.busy=False; self.working=False; self.public_pending=False; self.closing=False; self.test_running=False; self.test_cancel=threading.Event(); self.started=None
        self.settings=client.read(client.STATE/'settings.json',{})
        try: self.remote_ui=updater.ui_config(self.settings.get('remoteUI',updater.DEFAULT_UI))
        except ValueError: self.remote_ui=dict(updater.DEFAULT_UI)
        self.update_pending=False; self.publication=None; self.update_package=None; self.update_file=None
        body=QWidget(); body.setObjectName('root'); self.setCentralWidget(body); main=QVBoxLayout(body); main.setContentsMargins(12,6,12,12); main.setSpacing(8)
        header=QHBoxLayout(); header.addWidget(label('轻连','title')); header.addStretch()
        self.compact=QCheckBox('简约模式'); self.compact.setChecked(bool(self.settings.get('compact',False))); header.addWidget(self.compact)
        self.material=QCheckBox('窗口材质'); self.material.setChecked(self.settings.get('material',True)); self.material.setEnabled(fluent.material_available()); self.material.setToolTip('Windows 11 支持时使用原生 Mica；关闭透明或高对比度时使用纯色'); header.addWidget(self.material)
        self.theme=combo(['浅色','深色','跟随 Windows']); self.theme.setCurrentIndex(self.settings.get('theme',2)); header.addWidget(self.theme); main.addLayout(header)
        row=QHBoxLayout(); self.nav=QListWidget(); self.nav.addItems(['连接','测速','分流','账号','ChatGPT','关于']); self.nav.setFixedWidth(200); self.nav.setItemDelegate(fluent.NavigationDelegate(self)); self.nav.setMouseTracking(True)
        for index in range(self.nav.count()): self.nav.item(index).setToolTip(self.nav.item(index).text())
        row.addWidget(self.nav)
        self.surface=QFrame(); self.surface.setObjectName('surface'); surface_layout=QVBoxLayout(self.surface); surface_layout.setContentsMargins(24,20,16,16)
        self.stack=QStackedWidget(); surface_layout.addWidget(self.stack); row.addWidget(self.surface,1); main.addLayout(row,1)
        self.notice=label('','muted'); self.notice.setTextFormat(Qt.PlainText); self.notice.hide(); main.addWidget(self.notice)
        self.message=label('准备就绪','message'); self.message.setTextInteractionFlags(Qt.TextSelectableByMouse); main.addWidget(self.message)
        self.pages=[]
        for title in ['连接','网络测速','分流规则','我的账号','ChatGPT 优化','关于轻连']:
            scroll=QScrollArea(); scroll.setWidgetResizable(True); scroll.setFrameShape(QFrame.NoFrame); content=QWidget(); content.setObjectName('page'); scroll.viewport().setObjectName('page'); layout=QVBoxLayout(content); layout.setContentsMargins(6,6,12,10); layout.setSpacing(18); layout.addWidget(label(title,'heading')); scroll.setWidget(content); self.stack.addWidget(scroll); self.pages.append(layout)
        self.build_connect(); self.build_speed(); self.build_rules(); self.build_account(); self.build_chat(); self.build_about()
        for layout in self.pages: layout.addStretch()
        self.nav.currentRowChanged.connect(self.navigate); self.nav.setCurrentRow(0)
        self.compact.toggled.connect(self.style); self.material.toggled.connect(self.style); self.theme.currentIndexChanged.connect(self.style); QApplication.styleHints().colorSchemeChanged.connect(self.style); self.style()
        self.clock=QTimer(self); self.clock.timeout.connect(self.tick); self.clock.start(1000)
        self.poll=QTimer(self); self.poll.timeout.connect(self.refresh_public); self.poll.start(10000); QTimer.singleShot(0,self.refresh_public)
        self.update_timer=QTimer(self); self.update_timer.timeout.connect(self.check_updates); self.update_timer.start(60000); QTimer.singleShot(1500,self.check_updates)
        self.tray=None
        if QSystemTrayIcon.isSystemTrayAvailable():
            from PySide6.QtWidgets import QMenu
            self.tray=QSystemTrayIcon(self.windowIcon(),self); menu=QMenu()
            menu.addAction('打开轻连',lambda:(self.showNormal(),self.activateWindow())); menu.addAction('断开连接',lambda:self.conn.disconnect() if self.busy else None)
            menu.addAction('退出',self.request_exit)
            self.tray.setContextMenu(menu); self.tray.setToolTip('轻连'); self.tray.activated.connect(lambda reason:self.showNormal() if reason==QSystemTrayIcon.Trigger else None); self.tray.show()
    def build_connect(self):
        layout=self.pages[0]; self.status=label('未连接','hero'); self.session=label('00:00:00','muted')
        self.connect_button=button('连接',self.toggle); self.connect_button.setObjectName('primary'); self.connect_button.setMinimumWidth(140)
        hero=QFrame(); hero.setObjectName('heroCard'); hero_layout=QHBoxLayout(hero); hero_layout.setContentsMargins(24,24,24,24)
        status_layout=QVBoxLayout(); status_layout.addWidget(label('轻连 VPN','muted')); status_layout.addWidget(self.status); status_layout.addWidget(self.session)
        hero_layout.addLayout(status_layout,1); hero_layout.addWidget(self.connect_button,0,Qt.AlignVCenter); layout.addWidget(hero)
        self.channel=combo(['兼容 · 推荐移动网络','HY2 加速','自动 · HY2 失败尝试兼容']); self.channel.setCurrentIndex(self.settings.get('channel',0))
        self.performance=combo(['HY2 高性能','HY2 保守']); self.performance.setCurrentIndex(self.settings.get('performance',0))
        self.route=combo(['规则 · 绕过大陆与私网','全局']); self.route.setCurrentIndex(self.settings.get('route',0))
        self.tun=QCheckBox('TUN 全局接管（需要管理员授权）'); self.tun.setChecked(self.settings.get('tun',False))
        self.tun.toggled.connect(lambda active:self.route.setEnabled(not active and not self.busy)); self.route.setEnabled(not self.tun.isChecked())
        options=QFrame(); options.setObjectName('card'); options_layout=QVBoxLayout(options); options_layout.setContentsMargins(20,12,20,16); options_layout.setSpacing(12)
        for title,description,control in [('传输通道','选择兼容通道或 HY2 加速',self.channel),('HY2 性能','仅用于 HY2 加速通道',self.performance),('分流规则','系统代理模式下生效',self.route)]:
            row=QHBoxLayout(); text=QVBoxLayout(); text.addWidget(label(title)); text.addWidget(label(description,'muted')); row.addLayout(text,1); control.setMinimumWidth(240); row.addWidget(control); options_layout.addLayout(row)
        options_layout.addWidget(self.tun); options_layout.addWidget(label('TUN 接管 IPv4/IPv6；启用时使用全局规则，并保留服务器直达路由。','muted')); layout.addWidget(options)
        self.online=label('在线设备：待获取'); self.public_quota=label('服务端流量：待获取'); self.usage=label('当前用量：待连接')
        card(layout,label('连接概览','section'),self.online,self.public_quota,self.usage)
        self.controls=[self.channel,self.performance,self.route,self.tun]
    def build_speed(self):
        self.size=QSpinBox(); self.size.setRange(1,2048); self.size.setValue(self.settings.get('testMiB',32)); self.size.setSuffix(' MiB')
        self.speed_result=label('尚未测速','hero'); self.progress=QProgressBar(); self.progress.setRange(0,1000); self.progress.setValue(0)
        self.speed_start=button('开始下载测速',self.start_speed); self.speed_stop=button('停止测速',self.test_cancel.set)
        card(self.pages[1],self.speed_result,label('测试总大小'),self.size,self.progress,self.speed_start,self.speed_stop,label('经当前 VPN 下载服务器测试数据，计入流量；Mbps ÷ 8 约为 MB/s。测试失败不等于 VPN 断开。'))
    def build_rules(self):
        card(self.pages[2],label('规则模式','section'),label('使用与手机端相同的 V2Ray 规则：大陆域名、国内 IP 和私网直连，其余通过代理。全局模式则忽略这些绕行规则。'),label('修改连接页的规则/全局选项后，重新连接生效。系统代理模式只影响遵循系统代理的程序；TUN 模式会接管更多程序的 IPv4/IPv6 流量。'),label('本版支持可选 TUN 全局接管，不提供 Windows 按应用黑白名单。ChatGPT 页提供显式代理启动与 HTTPS 路径检查。'))
    def build_account(self):
        layout=self.pages[3]; self.username=QLineEdit(); self.username.setPlaceholderText('用户名'); self.password=QLineEdit(); self.password.setPlaceholderText('密码'); self.password.setEchoMode(QLineEdit.Password)
        self.consent=QCheckBox('我已阅读并同意以下账号连接记录告知')
        self.account_name=label('当前：'+self.api.account.get('username','访客'))
        self.account_card=card(layout,self.account_name,self.username,self.password,label(client.CONSENT),self.consent,button('登录',lambda:self.auth('login')),button('注册',lambda:self.auth('register')),button('退出账号',self.logout))
        self.account_data=QPlainTextEdit(); self.account_data.setReadOnly(True); self.account_data.setMaximumHeight(220)
        card(layout,label('账号累计流量与周导出额度','section'),button('刷新账号统计',lambda:self.account_read('quota')),button('查看本人节点',lambda:self.account_read('nodes')),button('查看本人域名记录',lambda:self.account_read('history')),self.account_data)
        self.protocol=combo(['vmess','vless','trojan','shadowsocks','hysteria2']); self.export_size=QSpinBox(); self.export_size.setRange(1,262144); self.export_size.setValue(1024); self.export_size.setSuffix(' MiB'); self.remark=QLineEdit(); self.remark.setPlaceholderText('导出备注名称（可选）')
        card(layout,label('导出独立节点','section'),self.protocol,self.export_size,self.remark,button('导出节点 ZIP',self.export))
    def build_chat(self):
        self.chat_result=label('请先连接轻连'); self.chat_path=QLineEdit(self.settings.get('chatPath','')); self.chat_path.setReadOnly(True)
        card(self.pages[4],label('ChatGPT 连接路径','section'),label('先用兼容通道连接。HY2 下 OpenAI 和静态资源域名沿用兼容通道策略；可分别检查 HTTPS 响应，HTTP 403 不表示登录成功。'),button('检查 ChatGPT HTTPS',lambda:self.task(self.conn.probe,self.chat_result.setText)),self.chat_result,button('打开 ChatGPT 网页',self.open_chat_web))
        card(self.pages[4],label('显式代理启动桌面程序','section'),label('先完整退出正在运行的 ChatGPT，再选择其 exe。启动只为该进程添加代理及 WebView2 参数，不修改全局环境、不关闭 TLS 或沙箱。不同安装形式可能忽略参数，可用网页版验证。'),self.chat_path,button('选择 ChatGPT.exe',self.choose_chat),button('带代理启动',lambda:self.task(lambda:self.conn.launch_chatgpt(self.chat_path.text()),lambda _:self.message.setText('已启动，请在 ChatGPT 中确认联网'))))
    def build_about(self):
        self.background=QCheckBox('关闭窗口后驻留托盘，保持连接'); self.background.setChecked(self.settings.get('background',True)); self.background.setEnabled(QSystemTrayIcon.isSystemTrayAvailable())
        self.background.toggled.connect(self.store)
        card(self.pages[5],label('后台运行','section'),self.background,label('关闭窗口后仍保持连接；右键托盘图标可打开、断开或退出。托盘不可用时关闭窗口会正常退出。'))
        self.update_status=label('尚未检查更新'); self.remote_enabled=QCheckBox('接收面板界面配置'); self.remote_enabled.setChecked(self.settings.get('remoteEnabled',True)); self.remote_enabled.toggled.connect(self.style)
        self.update_apply=button('下载并重启更新',self.install_update); self.update_apply.setEnabled(False)
        card(self.pages[5],label('更新','section'),self.update_status,self.remote_enabled,button('检查更新',lambda:self.check_updates(True)),self.update_apply,label('界面配置无需重启；程序更新需先断开VPN并确认重启。安装版和免安装版均保留账号与设置。'))
        card(self.pages[5],label('轻连 Windows '+VERSION,'section'),label('Windows 10/11 x64 · Qt / V2Ray / Hysteria2\n与现有面板共用账号、统计和节点；无需手动导入订阅。'),label('移动网络优先使用兼容通道。控制 API 使用固定 gaozy.tech HTTPS/CDN 和原 IP 备用入口，严格验证证书；代理数据能否通过仍取决于实际网络。'),label('访客每次手动连接 64 GiB，不记录域名。账号连接须同意服务器永久域名记录。Windows 用户会话使用 DPAPI 加密，原始 MachineGuid/SID 不上传。'),label('可选 TUN 全局接管需要管理员授权，不是断网保护。退出会恢复原代理，崩溃由独立守护进程恢复；其他程序已更改的代理配置保留。'),button('查看随包许可证',lambda:os.startfile(str(client.ROOT/'licenses'))),button('查看源码与说明',lambda:webbrowser.open('https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/tree/codex/qinglian-routing-and-presence/qinglian/windows')))
    def style(self,*_):
        self.dark=self.theme.currentIndex()==1 or (self.theme.currentIndex()==2 and QApplication.styleHints().colorScheme()==Qt.ColorScheme.Dark)
        self.mica=fluent.native_frame(self,self.dark,self.material.isChecked() and (not self.remote_enabled.isChecked() or self.remote_ui['material']))
        self.setAttribute(Qt.WA_TranslucentBackground,self.mica)
        self.setStyleSheet(fluent.stylesheet(self.dark,self.mica,self.remote_ui['accent'] if self.remote_enabled.isChecked() else 'blue'))
        self.nav.setFixedWidth(56 if self.compact.isChecked() else 200); self.nav.doItemsLayout(); self.nav.viewport().update()
        for layout in self.pages: layout.setSpacing(12 if self.remote_enabled.isChecked() and self.remote_ui['density']=='compact' else 18)
        self.notice.setText(self.remote_ui['notice'] if self.remote_enabled.isChecked() else ''); self.notice.setVisible(bool(self.notice.text()))
        self.store()
    def store(self):
        self.settings.update(background=self.background.isChecked(),remoteEnabled=self.remote_enabled.isChecked(),remoteUI=self.remote_ui,compact=self.compact.isChecked(),material=self.material.isChecked(),theme=self.theme.currentIndex(),channel=self.channel.currentIndex(),performance=self.performance.currentIndex(),route=self.route.currentIndex(),tun=self.tun.isChecked(),testMiB=self.size.value(),chatPath=self.chat_path.text())
        client.save(client.STATE/'settings.json',self.settings)
    def navigate(self,index):
        self.stack.setCurrentIndex(index)
        effect=QGraphicsOpacityEffect(self.stack); self.stack.setGraphicsEffect(effect)
        self.animation=QPropertyAnimation(effect,b'opacity',self); self.animation.setDuration(160); self.animation.setStartValue(.3); self.animation.setEndValue(1.); self.animation.setEasingCurve(QEasingCurve.OutCubic); self.animation.start()
    def task(self,work,success=None):
        if self.working: self.message.setText('请等待当前操作完成'); return False
        self.working=True
        def run():
            try: value=work(); self.bridge.finished.emit(success,value)
            except Exception as error:
                # APIs use fixed public errors; never expose arbitrary OS/HTTP URLs.
                text=str(error) if isinstance(error,RuntimeError) else '操作失败，请检查连接后重试'
                self.bridge.finished.emit(None,text)
        threading.Thread(target=run,daemon=True).start(); return True
    def task_done(self,success,value):
        self.working=False
        if success: success(value)
        elif value: self.message.setText(str(value))
    def toggle(self):
        if self.busy:
            self.test_cancel.set(); self.conn.disconnect(); self.connect_button.setText('正在断开…'); return
        if self.working or self.test_running: self.message.setText('请先等待当前操作完成'); return
        if not self.api.account:
            if QMessageBox.question(self,'访客连接','将上传本 Windows 用户范围的设备摘要（不上传原 MachineGuid/SID），分配单次 64 GiB 会话；访客不记录域名。是否连接？')!=QMessageBox.Yes: return
        self.store(); self.busy=True
        for control in self.controls: control.setEnabled(False)
        self.account_card.setEnabled(False); self.connect_button.setText('取消连接')
        self.conn.start(['compat','hy2','auto'][self.channel.currentIndex()],self.performance.currentIndex()==0,self.route.currentIndex()==0,self.tun.isChecked())
    def on_event(self,event,value):
        if event=='update_failed': self.update_apply.setEnabled(True); self.update_status.setText('下载或校验失败，当前程序未改变')
        if event in ('state','warning','error'): self.message.setText(str(value))
        if event=='connected':
            self.started=time.monotonic(); self.status.setText('已连接'); self.message.setText(str(value)); self.connect_button.setText('断开连接')
        elif event=='quota': self.usage.setText(self.format_quota(value))
        elif event=='stopped':
            self.busy=False; self.started=None; self.status.setText('未连接'); self.connect_button.setText('连接'); self.session.setText('00:00:00')
            for control in self.controls: control.setEnabled(True)
            self.account_card.setEnabled(True); self.route.setEnabled(not self.tun.isChecked())
            if self.closing: QTimer.singleShot(0,self.close)
    @staticmethod
    def format_quota(value):
        names={'usedBytes':'本次已用','remainingBytes':'剩余','limitBytes':'本次上限','weeklyBytes':'周导出限额','allocatedBytes':'周已预留','cumulativeUploadBytes':'累计上传','cumulativeDownloadBytes':'累计下载','cumulativeTotalBytes':'累计流量','uploadBytes':'上传','downloadBytes':'下载'}
        if 'cumulativeTotalBytes' in value: names['remainingBytes']='本周导出剩余'
        elif 'limitBytes' in value: names['remainingBytes']='本次访客剩余'
        return '\n'.join('%s：%.2f GiB'%(title,value[key]/1024**3) for key,title in names.items() if isinstance(value.get(key),(int,float))) or '流量数据暂不可用'
    def refresh_public(self):
        # Read-only polling must never acquire or release the foreground task lock.
        # Keep one poll in flight even when a slow endpoint spans timer ticks.
        if self.public_pending or self.closing: return
        self.public_pending=True
        def work():
            try: values=self.api.request('online',bootstrap=True),self.api.request('quota',bootstrap=True)
            except Exception: values=None
            self.bridge.public_finished.emit(values)
        threading.Thread(target=work,daemon=True).start()
    def public_done(self,values):
        self.public_pending=False
        if self.closing: return
        if values is not None:
            online,quota=values
            count=online.get('online')
            self.online.setText('在线设备：'+str(count) if isinstance(count,int) else '在线设备：数据暂不可用')
            total,up,down=(quota.get(key) for key in ('total','upload','download'))
            if all(isinstance(v,int) and v>=0 for v in (total,up,down)):
                self.public_quota.setText('服务端剩余：%.2f GiB'%(max(0,total-up-down)/1024**3) if total else '服务端流量：不限额')
            else: self.public_quota.setText('服务端流量：数据暂不可用')
        else:
            self.online.setText('在线设备：数据暂不可用')
            self.public_quota.setText('服务端流量：数据暂不可用')
    def check_updates(self,manual=False):
        if self.update_pending or self.closing: return
        self.update_pending=True
        if manual: self.update_status.setText('正在检查更新…')
        def work():
            try: value=updater.manifest(self.api.request('windows/updates',bootstrap=True))
            except Exception: value=None
            self.bridge.updates_finished.emit(value)
        threading.Thread(target=work,daemon=True).start()
    def updates_done(self,value):
        self.update_pending=False
        if self.closing: return
        if value is None: self.update_status.setText('更新暂不可用；不影响连接，可稍后重试'); return
        self.publication=value; self.remote_ui=value['ui']; self.style()
        package=value['package']
        if package and updater.version_number(package['version'])>updater.version_number(VERSION):
            self.update_package=package; self.update_apply.setEnabled(True); self.update_status.setText('可更新至 '+package['version']+' · 下载后确认重启')
        else: self.update_package=None; self.update_apply.setEnabled(False); self.update_status.setText('当前已是最新程序 · 界面配置已同步' if self.remote_enabled.isChecked() else '当前已是最新程序 · 面板界面配置已关闭')
    def install_update(self):
        if self.busy or self.test_running or self.working: self.message.setText('请先断开连接并等待当前操作完成，再更新程序'); return
        if not self.update_package: return
        package=dict(self.update_package)
        self.update_apply.setEnabled(False); self.update_status.setText('正在下载并校验更新…')
        def downloaded(path):
            self.update_file=path; self.update_apply.setEnabled(True); self.update_status.setText('下载校验完成，可重启更新')
            if QMessageBox.question(self,'更新轻连','更新包已通过SHA256、版本和文件校验。现在退出并更新？账号及设置保留。')!=QMessageBox.Yes: return
            self.task(lambda:updater.launch_update(path,package,client.STATE),lambda _:self.request_exit())
        def work():
            try: return updater.download(self.api,package,client.STATE)
            except Exception:
                self.bridge.event.emit('update_failed',None); raise RuntimeError('更新包下载或校验失败，请稍后重试') from None
        self.task(work,downloaded)
    def tick(self):
        if self.started:
            seconds=int(time.monotonic()-self.started); self.session.setText('%02d:%02d:%02d'%(seconds//3600,seconds//60%60,seconds%60))
    def auth(self,action):
        if self.busy: self.message.setText('请先断开连接'); return
        if not self.consent.isChecked(): self.message.setText('请先阅读并同意账号连接记录告知'); return
        username=self.username.text().strip(); password=self.password.text()
        def done(_): self.password.clear(); self.account_name.setText('当前：'+self.api.account.get('username','访客')); self.message.setText('已登录')
        self.task(lambda:self.api.auth(action,username,password),done)
    def logout(self):
        if self.busy: self.message.setText('请先断开连接'); return
        self.task(self.api.logout,lambda result:(self.account_name.setText('当前：访客'),self.message.setText(result or '已退出账号')))
    def account_read(self,path):
        if not self.api.account: self.message.setText('请先登录账号'); return
        self.task(lambda:self.api.request('exports/'+path),lambda result:self.account_data.setPlainText(self.format_quota(result) if path=='quota' else json.dumps(result,ensure_ascii=False,indent=2)))
    def export(self):
        if not self.api.account: self.message.setText('请先登录账号'); return
        if self.busy or self.working: self.message.setText('请先断开并等待当前操作结束'); return
        path,_=QFileDialog.getSaveFileName(self,'导出节点 ZIP','Qinglian-node.zip','ZIP (*.zip)')
        if not path: return
        details=dict(protocol=self.protocol.currentText(),sizeMiB=self.export_size.value(),remark=self.remark.text())
        self.task(lambda:client.export_node(self.api,details,path),self.message.setText)
    def start_speed(self):
        if not self.conn.connected or self.test_running: self.message.setText('请先连接，同一时间只运行一个测速'); return
        self.test_running=True; self.test_cancel.clear(); self.speed_start.setEnabled(False); self.progress.setValue(0)
        size=self.size.value(); self.store()
        def work():
            try: result=self.conn.speed(size,self.test_cancel,self.bridge.progress.emit)
            except Exception: result='下载测试失败；可停止后重试，不代表 VPN 断开'
            self.bridge.event.emit('speed_done',result)
        def done(event,value):
            if event=='speed_done': self.test_running=False; self.speed_start.setEnabled(True); self.speed_result.setText(value)
        if not getattr(self,'speed_hooked',False): self.bridge.event.connect(done); self.speed_hooked=True
        threading.Thread(target=work,daemon=True).start()
    def speed_progress(self,frac,text): self.progress.setValue(int(frac*1000)); self.speed_result.setText(text)
    def open_chat_web(self):
        if not self.conn.connected: self.message.setText('请先连接轻连'); return
        webbrowser.open('https://chatgpt.com/')
    def choose_chat(self):
        path,_=QFileDialog.getOpenFileName(self,'选择 ChatGPT.exe','','Windows 程序 (*.exe)')
        if path: self.chat_path.setText(path); self.store()
    def request_exit(self):
        self.force_exit=True; self.close()
    def closeEvent(self,event):
        if not self.force_exit and self.background.isChecked() and self.tray is not None:
            self.store(); self.hide(); event.ignore(); return
        if self.busy or self.test_running or self.working:
            self.closing=True; self.poll.stop(); self.test_cancel.set(); self.conn.disconnect(); self.message.setText('正在停止连接并恢复代理…'); event.ignore()
            QTimer.singleShot(200,self.close); return
        self.store(); self.clock.stop(); self.poll.stop(); self.update_timer.stop()
        if self.tray: self.tray.hide()
        event.accept()

def main():
    application=QApplication(sys.argv); application.setApplicationName('Qinglian'); application.setOrganizationName('Qinglian'); application.setWindowIcon(icon())
    lock=None
    try:
        lock=platform.InstanceLock(); platform.secure_directory(); platform.restore_proxy(platform.STATE/'proxy-restore.json')
        if len(sys.argv)==3 and sys.argv[1]=='--smoke-test':
            class OfflineApi:
                account={}
                def request(self,*args,**kwargs): return {}
            window=Window(OfflineApi()); window.poll.stop(); window.show()
            def finish():
                ok=window.status.text()=='未连接' and window.grab().save(sys.argv[2])
                window.working=False; window.request_exit(); application.exit(0 if ok else 1)
            QTimer.singleShot(500,finish)
        else:
            ci_update=os.environ.get('QINGLIAN_CI_WINDOWS')=='1' and len(sys.argv)==3 and sys.argv[1] in ('--update-fixture','--update-checkin')
            if ci_update:
                class OfflineApi:
                    account={}
                    def request(self,*args,**kwargs): return {}
                window=Window(OfflineApi())
            else: window=Window()
            window.show()
            if len(sys.argv)==3 and sys.argv[1]=='--update-checkin': QTimer.singleShot(100,lambda:updater.checkin(client.STATE,sys.argv[2]))
            if ci_update and sys.argv[1]=='--update-fixture':
                import zipfile
                path=Path(sys.argv[2])
                with zipfile.ZipFile(path) as archive: version=json.loads(archive.read('Qinglian/_internal/resources/build-info.json'))['version']
                package={'version':version,'size':path.stat().st_size,'sha256':updater.digest(path)}
                QTimer.singleShot(200,lambda:window.task(lambda:updater.launch_update(path,package,client.STATE),lambda _:window.request_exit()))
        code=application.exec()
    except Exception:
        QMessageBox.critical(None,'轻连启动失败','请确认没有其他轻连实例，安装包完整，当前 Windows 用户可写入本地应用数据目录。'); code=1
    finally:
        if lock: lock.close()
    raise SystemExit(code)

if __name__=='__main__': main()
