"""Per-user Windows integration. No elevation, global WinHTTP changes or raw logs."""
import base64
import ctypes
from ctypes import wintypes
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

if os.name=='nt': import winreg
STATE=Path(os.environ.get('LOCALAPPDATA',Path.home()))/'Qinglian'
PROXY_KEY=r'Software\Microsoft\Windows\CurrentVersion\Internet Settings'
OUR_PROXY={'ProxyEnable':1,'ProxyServer':'http=127.0.0.1:10809;https=127.0.0.1:10809','ProxyOverride':'<local>;localhost;127.*;[::1]','AutoConfigURL':None,'AutoDetect':0}
NO_WINDOW=getattr(subprocess,'CREATE_NO_WINDOW',0)

def user_sid():
    import csv
    output=subprocess.check_output(['whoami','/user','/fo','csv','/nh'],creationflags=NO_WINDOW).decode('ascii',errors='ignore')
    sid=list(csv.reader(output.splitlines()))[-1][-1]
    if not sid.startswith('S-1-'): raise RuntimeError('无法读取 Windows 用户标识')
    return sid

def identity():
    with winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE,r'SOFTWARE\Microsoft\Cryptography',0,winreg.KEY_READ|winreg.KEY_WOW64_64KEY) as key:
        guid=winreg.QueryValueEx(key,'MachineGuid')[0]
    return hashlib.sha256(('qinglian-windows-v1:'+user_sid()+':'+guid).encode()).hexdigest()

def secure_directory():
    STATE.mkdir(parents=True,exist_ok=True)
    subprocess.run(['icacls',str(STATE),'/inheritance:r','/grant:r','*'+user_sid()+':(OI)(CI)F','*S-1-5-18:(OI)(CI)F','/q'],check=True,creationflags=NO_WINDOW,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)

class Blob(ctypes.Structure):
    _fields_=[('size',wintypes.DWORD),('data',ctypes.POINTER(ctypes.c_ubyte))]

def protect(data, decrypt=False):
    # DPAPI current-user scope; never LOCAL_MACHINE and never silently plaintext.
    buffer=ctypes.create_string_buffer(data)
    source=Blob(len(data),ctypes.cast(buffer,ctypes.POINTER(ctypes.c_ubyte))); target=Blob()
    crypt=ctypes.WinDLL('crypt32',use_last_error=True); kernel=ctypes.WinDLL('kernel32',use_last_error=True)
    function=crypt.CryptUnprotectData if decrypt else crypt.CryptProtectData
    function.argtypes=[ctypes.POINTER(Blob),ctypes.c_void_p,ctypes.c_void_p,ctypes.c_void_p,ctypes.c_void_p,wintypes.DWORD,ctypes.POINTER(Blob)]
    function.restype=wintypes.BOOL; kernel.LocalFree.argtypes=[ctypes.c_void_p]; kernel.LocalFree.restype=ctypes.c_void_p
    if not function(ctypes.byref(source),None,None,None,None,1,ctypes.byref(target)):
        raise RuntimeError('Windows 凭据保护失败，请使用当前 Windows 用户重新登录')
    try: return ctypes.string_at(target.data,target.size)
    finally: kernel.LocalFree(target.data)

def save(path,value):
    path=Path(path); path.parent.mkdir(parents=True,exist_ok=True)
    data=json.dumps(value,ensure_ascii=False).encode('utf-8')
    if path.name=='account.json': data=json.dumps({'dpapi':base64.b64encode(protect(data)).decode()}).encode()
    tmp=path.with_suffix('.tmp')
    with tmp.open('wb') as output: output.write(data); output.flush(); os.fsync(output.fileno())
    os.replace(tmp,path)

def read(path,default=None):
    path=Path(path)
    try: value=json.loads(path.read_text(encoding='utf-8'))
    except FileNotFoundError: return default
    if path.name=='account.json':
        if not isinstance(value,dict) or set(value)!= {'dpapi'}: raise RuntimeError('账号凭据格式无效，请退出账号后重新登录')
        value=json.loads(protect(base64.b64decode(value['dpapi'],validate=True),True))
    return value

def proxy_values(key_name=PROXY_KEY):
    values={}
    with winreg.CreateKey(winreg.HKEY_CURRENT_USER,key_name) as key:
        for name in OUR_PROXY:
            try: value,kind=winreg.QueryValueEx(key,name); values[name]=[value,kind]
            except FileNotFoundError: values[name]=None
    return values

def write_proxy(values,key_name=PROXY_KEY):
    with winreg.CreateKey(winreg.HKEY_CURRENT_USER,key_name) as key:
        for name,entry in values.items():
            if name not in OUR_PROXY: raise ValueError('Invalid proxy field')
            if entry is None:
                try: winreg.DeleteValue(key,name)
                except FileNotFoundError: pass
            else: winreg.SetValueEx(key,name,0,entry[1],entry[0])
    if key_name==PROXY_KEY:
        internet=ctypes.WinDLL('wininet',use_last_error=True)
        internet.InternetSetOptionW(None,39,None,0); internet.InternetSetOptionW(None,37,None,0)

def installed_proxy():
    return {name:None if value is None else [value,winreg.REG_DWORD if isinstance(value,int) else winreg.REG_SZ] for name,value in OUR_PROXY.items()}

def restore_proxy(path,key_name=PROXY_KEY):
    state=read(path)
    if not state: return
    # If another proxy took over, preserve its entire profile, including PAC.
    observed=proxy_values(key_name)
    if all(observed.get(name) in (state['ours'][name],state['before'][name]) for name in OUR_PROXY):
        write_proxy(state['before'],key_name)
    Path(path).unlink(missing_ok=True)

def launch_self(args,**kwargs):
    command=[sys.executable]+([] if getattr(sys,'frozen',False) else [str(Path(__file__).with_name('app.py'))])+args
    return subprocess.Popen(command,creationflags=NO_WINDOW,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,**kwargs)

class ProxySettings:
    def __init__(self): self.path=STATE/'proxy-restore.json'; self.guard=None
    def enable(self):
        restore_proxy(self.path)
        state={'before':proxy_values(),'ours':installed_proxy()}; save(self.path,state)
        self.guard=launch_self(['--proxy-guard',str(self.path)],stdin=subprocess.PIPE)
        try: write_proxy(state['ours'])
        except Exception: self.close(); raise
    def close(self):
        restore_proxy(self.path)
        if self.guard:
            if self.guard.stdin: self.guard.stdin.close()
            try: self.guard.wait(timeout=5)
            except subprocess.TimeoutExpired: self.guard.terminate(); self.guard.wait(timeout=3)
            self.guard=None

class IO_COUNTERS(ctypes.Structure):
    _fields_=[(name,ctypes.c_ulonglong) for name in ('ReadOperationCount','WriteOperationCount','OtherOperationCount','ReadTransferCount','WriteTransferCount','OtherTransferCount')]
class BASIC_LIMIT(ctypes.Structure):
    _fields_=[('PerProcessUserTimeLimit',ctypes.c_longlong),('PerJobUserTimeLimit',ctypes.c_longlong),('LimitFlags',wintypes.DWORD),('MinimumWorkingSetSize',ctypes.c_size_t),('MaximumWorkingSetSize',ctypes.c_size_t),('ActiveProcessLimit',wintypes.DWORD),('Affinity',ctypes.c_size_t),('PriorityClass',wintypes.DWORD),('SchedulingClass',wintypes.DWORD)]
class EXTENDED_LIMIT(ctypes.Structure):
    _fields_=[('BasicLimitInformation',BASIC_LIMIT),('IoInfo',IO_COUNTERS),('ProcessMemoryLimit',ctypes.c_size_t),('JobMemoryLimit',ctypes.c_size_t),('PeakProcessMemoryUsed',ctypes.c_size_t),('PeakJobMemoryUsed',ctypes.c_size_t)]

class Job:
    def __init__(self,process):
        self.api=ctypes.WinDLL('kernel32',use_last_error=True)
        self.api.CreateJobObjectW.argtypes=[ctypes.c_void_p,wintypes.LPCWSTR]; self.api.CreateJobObjectW.restype=wintypes.HANDLE
        self.api.SetInformationJobObject.argtypes=[wintypes.HANDLE,ctypes.c_int,ctypes.c_void_p,wintypes.DWORD]
        self.api.AssignProcessToJobObject.argtypes=[wintypes.HANDLE,wintypes.HANDLE]; self.api.CloseHandle.argtypes=[wintypes.HANDLE]
        self.handle=self.api.CreateJobObjectW(None,None)
        limits=EXTENDED_LIMIT(); limits.BasicLimitInformation.LimitFlags=0x2000 # KILL_ON_JOB_CLOSE
        if not self.handle or not self.api.SetInformationJobObject(self.handle,9,ctypes.byref(limits),ctypes.sizeof(limits)) or not self.api.AssignProcessToJobObject(self.handle,int(process._handle)):
            self.close(); process.terminate(); process.wait(timeout=3); raise RuntimeError('Windows 无法建立核心生命周期保护')
    def close(self):
        if self.handle: self.api.CloseHandle(self.handle); self.handle=None

def spawn(args,**kwargs):
    process=subprocess.Popen(args,stdin=subprocess.PIPE,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,creationflags=NO_WINDOW,**kwargs)
    process._qinglian_job=Job(process)
    return process

def stop_process(process):
    if not process: return
    # Closing the Job kills the core and descendants, including after a GUI crash.
    job=getattr(process,'_qinglian_job',None)
    if job: job.close()
    elif process.poll() is None: process.terminate()
    if process.stdin and not process.stdin.closed: process.stdin.close()
    try: process.wait(timeout=5)
    except subprocess.TimeoutExpired: process.kill(); process.wait(timeout=3)

class InstanceLock:
    def __init__(self):
        self.api=ctypes.WinDLL('kernel32',use_last_error=True)
        self.api.CreateMutexW.argtypes=[ctypes.c_void_p,wintypes.BOOL,wintypes.LPCWSTR]; self.api.CreateMutexW.restype=wintypes.HANDLE
        self.api.CloseHandle.argtypes=[wintypes.HANDLE]
        self.handle=self.api.CreateMutexW(None,False,'Local\\Qinglian.Windows')
        if not self.handle or ctypes.get_last_error()==183:
            self.close(); raise RuntimeError('轻连已运行，请查看系统托盘')
    def close(self):
        if self.handle: self.api.CloseHandle(self.handle); self.handle=None

def guard(path):
    if Path(path).resolve()!=(STATE/'proxy-restore.json').resolve(): raise ValueError('Invalid proxy recovery path')
    # PyInstaller --windowed sets sys.stdin=None; use the inherited pipe handle.
    kernel=ctypes.WinDLL('kernel32',use_last_error=True)
    kernel.GetStdHandle.argtypes=[wintypes.DWORD]; kernel.GetStdHandle.restype=wintypes.HANDLE
    kernel.ReadFile.argtypes=[wintypes.HANDLE,ctypes.c_void_p,wintypes.DWORD,ctypes.POINTER(wintypes.DWORD),ctypes.c_void_p]
    handle=kernel.GetStdHandle(wintypes.DWORD(-10)); buffer=ctypes.create_string_buffer(1024); count=wintypes.DWORD()
    try:
        while kernel.ReadFile(handle,buffer,1024,ctypes.byref(count),None) and count.value: pass
    finally: restore_proxy(path)
