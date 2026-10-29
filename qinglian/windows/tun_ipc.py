"""Local, SID-restricted named pipe and explicit UAC launch for fixed TUN helper."""
import ctypes
from ctypes import wintypes
import json
import os
from pathlib import Path
import secrets
import subprocess
import sys
import threading
import time
import win_platform as platform

INVALID=ctypes.c_void_p(-1).value
class SA(ctypes.Structure):
    _fields_=[('size',wintypes.DWORD),('descriptor',ctypes.c_void_p),('inherit',wintypes.BOOL)]
def kernel():
    api=ctypes.WinDLL('kernel32',use_last_error=True)
    api.CloseHandle.argtypes=[wintypes.HANDLE]
    api.ReadFile.argtypes=[wintypes.HANDLE,ctypes.c_void_p,wintypes.DWORD,ctypes.POINTER(wintypes.DWORD),ctypes.c_void_p]
    api.WriteFile.argtypes=api.ReadFile.argtypes
    return api
class Pipe:
    def __init__(self,name=None,server=False):
        self.api=kernel(); self.handle=None; self.buffer=b''; self.write_lock=threading.Lock()
        self.name=name or r'\\.\pipe\Qinglian.Tun.'+secrets.token_hex(16)
        if not self.name.startswith(r'\\.\pipe\Qinglian.Tun.') or len(self.name)>100: raise ValueError('Invalid pipe')
        if server:
            adv=ctypes.WinDLL('advapi32',use_last_error=True); descriptor=ctypes.c_void_p()
            adv.ConvertStringSecurityDescriptorToSecurityDescriptorW.argtypes=[wintypes.LPCWSTR,wintypes.DWORD,ctypes.POINTER(ctypes.c_void_p),ctypes.c_void_p]
            if not adv.ConvertStringSecurityDescriptorToSecurityDescriptorW('D:P(A;;GA;;;SY)(A;;GA;;;BA)(A;;GA;;;'+platform.user_sid()+')',1,ctypes.byref(descriptor),None): raise RuntimeError('TUN IPC ACL failed')
            self.api.LocalFree.argtypes=[ctypes.c_void_p]
            try:
                sa=SA(ctypes.sizeof(SA),descriptor,False)
                self.api.CreateNamedPipeW.argtypes=[wintypes.LPCWSTR,wintypes.DWORD,wintypes.DWORD,wintypes.DWORD,wintypes.DWORD,wintypes.DWORD,wintypes.DWORD,ctypes.POINTER(SA)]
                self.api.CreateNamedPipeW.restype=wintypes.HANDLE
                self.handle=self.api.CreateNamedPipeW(self.name,3|0x80000,1|8,1,8192,8192,0,ctypes.byref(sa))
            finally: self.api.LocalFree(descriptor)
        else:
            self.api.CreateFileW.argtypes=[wintypes.LPCWSTR,wintypes.DWORD,wintypes.DWORD,ctypes.c_void_p,wintypes.DWORD,wintypes.DWORD,wintypes.HANDLE]; self.api.CreateFileW.restype=wintypes.HANDLE
            self.handle=self.api.CreateFileW(self.name,0xc0000000,0,None,3,0,None)
            mode=wintypes.DWORD(1)
            self.api.SetNamedPipeHandleState.argtypes=[wintypes.HANDLE,ctypes.POINTER(wintypes.DWORD),ctypes.c_void_p,ctypes.c_void_p]
            if self.handle not in (None,INVALID): self.api.SetNamedPipeHandleState(self.handle,ctypes.byref(mode),None,None)
        if self.handle in (None,INVALID): self.handle=None; raise RuntimeError('TUN IPC unavailable')
    def accept(self,process,cancel):
        self.api.ConnectNamedPipe.argtypes=[wintypes.HANDLE,ctypes.c_void_p]
        deadline=time.monotonic()+60
        while True:
            ok=self.api.ConnectNamedPipe(self.handle,None); error=ctypes.get_last_error()
            if ok or error==535: break
            if cancel.is_set() or process.poll() is not None or time.monotonic()>deadline: raise RuntimeError('TUN 授权已取消或超时')
            cancel.wait(.05)
        self.api.GetNamedPipeClientProcessId.argtypes=[wintypes.HANDLE,ctypes.POINTER(wintypes.ULONG)]
        pid=wintypes.ULONG()
        if not self.api.GetNamedPipeClientProcessId(self.handle,ctypes.byref(pid)) or pid.value!=process.pid: raise RuntimeError('TUN helper identity mismatch')
    def server_pid(self):
        self.api.GetNamedPipeServerProcessId.argtypes=[wintypes.HANDLE,ctypes.POINTER(wintypes.ULONG)]
        pid=wintypes.ULONG()
        if not self.api.GetNamedPipeServerProcessId(self.handle,ctypes.byref(pid)): raise RuntimeError('TUN parent unavailable')
        return pid.value
    def send(self,value):
        data=json.dumps(value,separators=(',',':')).encode()+b'\n'
        if len(data)>4096: raise ValueError('IPC frame too large')
        written=wintypes.DWORD(); buffer=ctypes.create_string_buffer(data)
        with self.write_lock:
            if not self.api.WriteFile(self.handle,buffer,len(data),ctypes.byref(written),None) or written.value!=len(data): raise RuntimeError('TUN IPC closed')
    def read(self):
        if b'\n' not in self.buffer:
            data=ctypes.create_string_buffer(4096); size=wintypes.DWORD()
            if not self.api.ReadFile(self.handle,data,4096,ctypes.byref(size),None):
                if ctypes.get_last_error() in (232,536): return None
                raise RuntimeError('TUN IPC closed')
            if size.value==0: return None
            self.buffer+=data.raw[:size.value]
            if len(self.buffer)>8192: raise ValueError('IPC buffer too large')
        if b'\n' not in self.buffer: return None
        value,self.buffer=self.buffer.split(b'\n',1); return json.loads(value)
    def close(self):
        if self.handle: self.api.CloseHandle(self.handle); self.handle=None

class ElevatedProcess:
    stdin=None
    def __init__(self,args):
        command=[sys.executable]+([] if getattr(sys,'frozen',False) else [str(Path(__file__).with_name('app.py'))])+args
        self.child=None; self.handle=None; self.code=None; self.api=kernel()
        self.api.GetExitCodeProcess.argtypes=[wintypes.HANDLE,ctypes.POINTER(wintypes.DWORD)]
        self.api.GetProcessId.argtypes=[wintypes.HANDLE]; self.api.GetProcessId.restype=wintypes.DWORD
        if ctypes.WinDLL('shell32').IsUserAnAdmin():
            self.child=subprocess.Popen(command,creationflags=platform.NO_WINDOW,stdin=subprocess.DEVNULL,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL); self.pid=self.child.pid
            return
        class EXEC(ctypes.Structure):
            _fields_=[('size',wintypes.DWORD),('mask',ctypes.c_ulong),('hwnd',wintypes.HWND),('verb',wintypes.LPCWSTR),('file',wintypes.LPCWSTR),('parameters',wintypes.LPCWSTR),('directory',wintypes.LPCWSTR),('show',ctypes.c_int),('instance',wintypes.HINSTANCE),('idlist',ctypes.c_void_p),('className',wintypes.LPCWSTR),('classKey',wintypes.HKEY),('hotkey',wintypes.DWORD),('icon',wintypes.HANDLE),('process',wintypes.HANDLE)]
        shell=ctypes.WinDLL('shell32',use_last_error=True); shell.ShellExecuteExW.argtypes=[ctypes.POINTER(EXEC)]
        info=EXEC(); info.size=ctypes.sizeof(info); info.mask=0x40; info.verb='runas'; info.file=command[0]; info.parameters=subprocess.list2cmdline(command[1:]); info.show=0
        if not shell.ShellExecuteExW(ctypes.byref(info)) or not info.process: raise RuntimeError('TUN 需要管理员授权 [S-TUN-AUTH]')
        self.handle=info.process; self.pid=self.api.GetProcessId(self.handle)
    def poll(self):
        if self.child: return self.child.poll()
        if self.code is not None: return self.code
        value=wintypes.DWORD()
        if self.api.GetExitCodeProcess(self.handle,ctypes.byref(value)) and value.value!=259:
            self.code=value.value; self.api.CloseHandle(self.handle); self.handle=None
        return self.code
    def wait(self,timeout=20):
        deadline=time.monotonic()+timeout
        while self.poll() is None:
            if time.monotonic()>deadline: raise subprocess.TimeoutExpired('Qinglian TUN',timeout)
            time.sleep(.05)
        return self.poll()

class TunSession:
    stdin=None
    def __init__(self,isolated=False): self.pipe=None; self.process=None; self.isolated=isolated; self.stop=threading.Event(); self.heartbeat=None
    def start(self,cancel):
        self.pipe=Pipe(server=True)
        try:
            self.process=ElevatedProcess(['--tun-helper',self.pipe.name,str(os.getpid()),'isolated' if self.isolated else 'global'])
            self.pipe.accept(self.process,cancel); deadline=time.monotonic()+45
            while True:
                if cancel.is_set() or self.process.poll() is not None or time.monotonic()>deadline: raise RuntimeError('TUN 启动取消、失败或超时 [S-TUN]')
                value=self.pipe.read()
                if value:
                    if value.get('status')=='ready':
                        def ping():
                            while not self.stop.wait(2):
                                try: self.pipe.send({'type':'ping'})
                                except Exception: return
                        self.heartbeat=threading.Thread(target=ping,daemon=True); self.heartbeat.start(); return self
                    raise RuntimeError('TUN 启动失败，请关闭其他 VPN 并检查管理员授权 ['+value.get('code','S-TUN')+']')
                cancel.wait(.05)
        except Exception: self.close(); raise
    def poll(self): return self.process.poll() if self.process else 1
    def terminate(self): self.close()
    def kill(self): self.close()
    def wait(self,timeout=20): return self.process.wait(timeout) if self.process else 1
    def close(self):
        self.stop.set()
        if self.heartbeat and self.heartbeat is not threading.current_thread(): self.heartbeat.join(timeout=1)
        if self.pipe:
            try: self.pipe.send({'type':'stop'})
            except Exception: pass
            self.pipe.close(); self.pipe=None
        if self.process: self.process.wait(timeout=25)
