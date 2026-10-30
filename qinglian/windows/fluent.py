"""Fluent desktop presentation; native DWM material is optional and fails closed."""
import ctypes
from ctypes import wintypes
import os
import sys
from PySide6.QtCore import Qt,QRectF,QSize
from PySide6.QtGui import QColor,QPainter,QPainterPath,QPen
from PySide6.QtWidgets import QStyledItemDelegate,QStyle,QCheckBox

def material_available():
    return os.name=='nt' and sys.getwindowsversion().build>=22621

def transparency_enabled():
    if os.name!='nt': return False
    import winreg
    try:
        with winreg.OpenKey(winreg.HKEY_CURRENT_USER,r'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize') as key:
            return bool(winreg.QueryValueEx(key,'EnableTransparency')[0])
    except OSError: return True

def high_contrast():
    if os.name!='nt': return False
    class HIGHCONTRAST(ctypes.Structure):
        _fields_=[('size',wintypes.UINT),('flags',wintypes.DWORD),('scheme',wintypes.LPWSTR)]
    value=HIGHCONTRAST(); value.size=ctypes.sizeof(value)
    user=ctypes.WinDLL('user32',use_last_error=True)
    user.SystemParametersInfoW.argtypes=[wintypes.UINT,wintypes.UINT,ctypes.c_void_p,wintypes.UINT]
    return bool(user.SystemParametersInfoW(0x42,value.size,ctypes.byref(value),0) and value.flags&1)

def native_frame(window,dark,material):
    if os.name!='nt': return False
    try:
        dwm=ctypes.WinDLL('dwmapi',use_last_error=True)
        dwm.DwmSetWindowAttribute.argtypes=[wintypes.HWND,wintypes.DWORD,ctypes.c_void_p,wintypes.DWORD]
        dwm.DwmSetWindowAttribute.restype=ctypes.c_long
        hwnd=int(window.winId())
        def set_value(key,value):
            item=ctypes.c_int(value)
            return dwm.DwmSetWindowAttribute(hwnd,key,ctypes.byref(item),ctypes.sizeof(item))==0
        set_value(20,int(dark))
        if not material_available(): return False
        set_value(33,2) # Native rounded corners; retain standard caption/Snap controls.
        use=material and transparency_enabled() and not high_contrast()
        if not set_value(38,2 if use else 1): return False # DWMSBT_MAINWINDOW / NONE
        class MARGINS(ctypes.Structure):
            _fields_=[(name,ctypes.c_int) for name in ('left','right','top','bottom')]
        margins=MARGINS(*([-1]*4 if use else [0]*4))
        dwm.DwmExtendFrameIntoClientArea.argtypes=[wintypes.HWND,ctypes.POINTER(MARGINS)]
        dwm.DwmExtendFrameIntoClientArea.restype=ctypes.c_long
        return bool(use and dwm.DwmExtendFrameIntoClientArea(hwnd,ctypes.byref(margins))==0)
    except (OSError,AttributeError): return False

def glyph(painter,index,rect,color):
    painter.save(); painter.translate(rect.left(),rect.top()); painter.scale(rect.width()/24,rect.height()/24)
    painter.setPen(QPen(QColor(color),1.5,Qt.SolidLine,Qt.RoundCap,Qt.RoundJoin)); painter.setBrush(Qt.NoBrush)
    if index==0:
        painter.drawArc(QRectF(4,4,16,16),130*16,280*16); painter.drawLine(12,2,12,12)
    elif index==1:
        painter.drawArc(QRectF(3,4,18,18),0,180*16); painter.drawLine(5,19,19,19); painter.drawLine(12,14,17,8)
    elif index==2:
        painter.drawLine(12,7,12,12); painter.drawLine(6,12,18,12); painter.drawLine(6,12,6,17); painter.drawLine(18,12,18,17)
        for x,y in ((12,4),(6,20),(18,20)): painter.drawEllipse(QRectF(x-2.5,y-2.5,5,5))
    elif index==3:
        painter.drawEllipse(QRectF(8,3,8,8)); path=QPainterPath(); path.moveTo(4,21); path.cubicTo(4,11,20,11,20,21); painter.drawPath(path)
    elif index==4:
        path=QPainterPath(); path.moveTo(4,4); path.lineTo(20,4); path.lineTo(20,17); path.lineTo(10,17); path.lineTo(5,21); path.lineTo(5,17); path.lineTo(4,17); path.closeSubpath(); painter.drawPath(path)
        painter.drawLine(8,9,16,9); painter.drawLine(8,12,14,12)
    else:
        painter.drawEllipse(QRectF(3,3,18,18)); painter.drawLine(12,11,12,17); painter.drawPoint(12,7)
    painter.restore()

class NavigationDelegate(QStyledItemDelegate):
    def __init__(self,window): super().__init__(window); self.window=window
    def sizeHint(self,option,index): return QSize(50,36 if getattr(self.window,'remote_enabled',None) and self.window.remote_enabled.isChecked() and getattr(self.window,'remote_ui',{}).get('density')=='compact' else 42)
    def paint(self,painter,option,index):
        painter.save(); painter.setRenderHint(QPainter.Antialiasing)
        dark=self.window.dark; selected=bool(option.state&QStyle.State_Selected); hovered=bool(option.state&QStyle.State_MouseOver)
        rect=QRectF(option.rect).adjusted(4,2,-4,-2)
        if selected or hovered:
            painter.setPen(Qt.NoPen); painter.setBrush(QColor('#343434' if dark else '#e7e7e7') if selected else QColor('#303030' if dark else '#ededed')); painter.drawRoundedRect(rect,4,4)
        if selected:
            painter.setBrush(QColor(accent_color(dark,getattr(self.window,'remote_ui',{}).get('accent','blue')))); painter.drawRoundedRect(QRectF(rect.left(),rect.center().y()-8,3,16),1.5,1.5)
        color='#ffffff' if dark else '#202020'
        glyph(painter,index.row(),QRectF(rect.left()+13,rect.center().y()-10,20,20),color)
        if not self.window.compact.isChecked():
            painter.setPen(QColor(color)); painter.drawText(QRectF(rect.left()+47,rect.top(),rect.width()-55,rect.height()),Qt.AlignVCenter,index.data())
        if option.state&QStyle.State_HasFocus:
            painter.setPen(QPen(QColor(accent_color(dark,getattr(self.window,'remote_ui',{}).get('accent','blue'))),1)); painter.setBrush(Qt.NoBrush); painter.drawRoundedRect(rect.adjusted(1,1,-1,-1),4,4)
        painter.restore()

class CheckBox(QCheckBox):
    """Draw the Fluent check state while retaining Qt accessibility/keyboard behavior."""
    def paintEvent(self,event):
        painter=QPainter(self);painter.setRenderHint(QPainter.Antialiasing)
        dark=getattr(self.window(),'dark',False)
        accent=accent_color(dark,getattr(self.window(),'remote_ui',{}).get('accent','blue')); foreground='#ffffff' if dark else '#202020'
        if not self.isEnabled(): painter.setOpacity(.45)
        rect=QRectF(2,(self.height()-18)/2,18,18)
        painter.setPen(QPen(QColor(accent if self.isChecked() else '#999999'),1))
        painter.setBrush(QColor(accent if self.isChecked() else '#292929' if dark else '#ffffff'))
        painter.drawRoundedRect(rect,3,3)
        if self.isChecked():
            painter.setPen(QPen(QColor('#00354b' if dark else '#ffffff'),2,Qt.SolidLine,Qt.RoundCap,Qt.RoundJoin))
            path=QPainterPath();path.moveTo(rect.left()+4,rect.top()+9);path.lineTo(rect.left()+7.5,rect.top()+12.5);path.lineTo(rect.left()+14,rect.top()+5.5);painter.drawPath(path)
        painter.setPen(QColor(foreground));painter.drawText(QRectF(30,0,self.width()-30,self.height()),Qt.AlignVCenter,self.text())
        if self.hasFocus():
            painter.setPen(QPen(QColor(accent),1,Qt.DotLine));painter.setBrush(Qt.NoBrush);painter.drawRoundedRect(QRectF(self.rect()).adjusted(0,0,-1,-1),3,3)

def accent_color(dark,name='blue'):
    return {'blue':('#0067c0','#60cdff'),'teal':('#006f70','#58d7d2'),'purple':('#7444bd','#d0b3ff')}.get(name,('#0067c0','#60cdff'))[int(dark)]

def stylesheet(dark,mica,accent_name='blue'):
    bg,fg,panel,card,stroke,muted,hover,accent,accent_text=(
        ('#202020','#ffffff','#272727','#2d2d2d','#424242','#c5c5c5','#383838','#60cdff','#00354b') if dark else
        ('#f3f3f3','#1b1b1b','#fafafa','#ffffff','#e5e5e5','#5d5d5d','#f5f5f5','#0067c0','#ffffff'))
    accent=accent_color(dark,accent_name)
    backdrop='transparent' if mica else bg
    return f'''
    QMainWindow,QWidget#root{{background:{backdrop};color:{fg}}}
    QWidget{{font-family:"Segoe UI Variable Text","Segoe UI","Microsoft YaHei UI";font-size:14px;color:{fg}}}
    QFrame#surface{{background:{panel};border:1px solid {stroke};border-radius:8px}}
    QScrollArea,QStackedWidget,QWidget#page{{background:transparent;border:0}}
    QFrame#card,QFrame#heroCard{{background:{card};border:1px solid {stroke};border-radius:8px}}
    QLabel{{background:transparent;border:0}}
    QLabel#title{{font-size:14px;font-weight:600}}
    QLabel#heading{{font-family:"Segoe UI Variable Display","Segoe UI";font-size:28px;font-weight:600;padding:6px 0 14px}}
    QLabel#hero{{font-size:30px;font-weight:600}}
    QLabel#section{{font-size:17px;font-weight:600}}
    QLabel#muted,QLabel#message{{color:{muted};font-size:12px}}
    QListWidget{{background:transparent;border:0;outline:0;padding:0}}
    QPushButton,QComboBox,QLineEdit,QSpinBox{{background:{card};border:1px solid {stroke};border-bottom:1px solid {muted};border-radius:4px;padding:6px 12px;min-height:20px}}
    QPushButton:hover,QComboBox:hover,QSpinBox:hover{{background:{hover}}}
    QPushButton:pressed{{background:{stroke}}}
    QPushButton:focus,QLineEdit:focus,QComboBox:focus,QSpinBox:focus{{border-bottom:2px solid {accent}}}
    QPushButton#primary{{background:{accent};color:{accent_text};border:0;font-weight:600;padding:8px 24px;min-height:22px}}
    QPushButton#primary:hover{{background:{accent}}}
    QPushButton:disabled,QComboBox:disabled,QLineEdit:disabled,QSpinBox:disabled{{color:{muted};background:{panel};border-color:{stroke}}}
    QComboBox::drop-down{{border:0;width:26px}}
    QComboBox QAbstractItemView{{background:{card};color:{fg};border:1px solid {stroke};selection-background-color:{hover};selection-color:{fg};padding:6px}}
    QCheckBox{{spacing:8px;padding:4px 2px;background:transparent}}
    QCheckBox::indicator{{width:18px;height:18px}}
    QPlainTextEdit{{background:{card};border:1px solid {stroke};border-radius:4px;padding:10px;selection-background-color:{accent}}}
    QProgressBar{{border:0;background:{stroke};border-radius:2px;height:4px;max-height:4px;color:transparent}}
    QProgressBar::chunk{{background:{accent};border-radius:2px}}
    QScrollBar:vertical{{background:transparent;width:10px;margin:2px}}
    QScrollBar::handle:vertical{{background:{stroke};border-radius:3px;min-height:30px;margin:2px}}
    QScrollBar::add-line:vertical,QScrollBar::sub-line:vertical{{height:0}}
    QScrollBar::add-page:vertical,QScrollBar::sub-page:vertical{{background:transparent}}
    QToolTip{{background:{card};color:{fg};border:1px solid {stroke};padding:6px}}
    '''
