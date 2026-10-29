"""Elevated fixed-purpose Wintun adapter/routing helper. No user commands/config."""
import ctypes
from ctypes import wintypes
import hashlib
import ipaddress
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import win_platform as platform
from tun_ipc import Pipe,kernel

ADAPTER='Qinglian'
TUN_HASH='a1f8ac84852ed9a9c7a50949cd0290b6f1594e118bf053416b9b55b7cd7ae414'
DLL_HASH='e5da8447dc2c320edc0fc52fa01885c103de8c118481f683643cacc3220dafce'
ROOT=Path(getattr(sys,'_MEIPASS',Path(__file__).resolve().parent))/'resources'
def powershell(script):
    api=kernel(); api.GetSystemDirectoryW.argtypes=[wintypes.LPWSTR,wintypes.UINT]
    buffer=ctypes.create_unicode_buffer(32768)
    if not api.GetSystemDirectoryW(buffer,len(buffer)): raise RuntimeError('Windows system directory unavailable')
    executable=Path(buffer.value)/'WindowsPowerShell/v1.0/powershell.exe'
    result=subprocess.run([str(executable),'-NoProfile','-NonInteractive','-Command',"$ErrorActionPreference='Stop';"+script],capture_output=True,text=True,encoding='utf-8',errors='replace',creationflags=platform.NO_WINDOW,timeout=20)
    if result.returncode: raise RuntimeError('TUN network operation failed')
    return result.stdout.strip()
def plan(isolated): return ['198.18.10.0/24','fdfe:dcba:1234::/64'] if isolated else ['0.0.0.0/1','128.0.0.0/1','::/1','8000::/1']
def server_ip():
    import urllib.parse
    value=json.loads((ROOT/'profile.json').read_text(encoding='utf-8'))
    return str(ipaddress.IPv4Address(urllib.parse.urlsplit(value['url']).hostname))
def peer_image(pid):
    api=kernel(); api.OpenProcess.argtypes=[wintypes.DWORD,wintypes.BOOL,wintypes.DWORD]; api.OpenProcess.restype=wintypes.HANDLE
    handle=api.OpenProcess(0x1000|0x100000,False,pid)
    if not handle: raise RuntimeError('TUN parent unavailable')
    api.QueryFullProcessImageNameW.argtypes=[wintypes.HANDLE,wintypes.DWORD,wintypes.LPWSTR,ctypes.POINTER(wintypes.DWORD)]
    path=ctypes.create_unicode_buffer(32768); size=wintypes.DWORD(len(path))
    if not api.QueryFullProcessImageNameW(handle,0,path,ctypes.byref(size)) or Path(path.value).resolve()!=Path(sys.executable).resolve(): api.CloseHandle(handle); raise RuntimeError('TUN parent identity mismatch')
    return handle

class Network:
    def __init__(self,isolated=False): self.isolated=isolated; self.process=None; self.index=None; self.exemption=None; self.stage='S-TUN-CONFLICT'
    def start(self):
        if powershell("if(Get-NetAdapter -Name 'Qinglian' -ErrorAction SilentlyContinue){'exists'}")=='exists': raise RuntimeError('TUN adapter already exists')
        if not self.isolated:
            self.stage='S-TUN-UPSTREAM'
            existing=powershell("@(Get-NetRoute -ErrorAction SilentlyContinue|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/1','128.0.0.0/1','::/1','8000::/1')}).Count")
            if existing!='0': raise RuntimeError('Another VPN owns global routes')
            result=powershell("$r=Get-NetRoute -AddressFamily IPv4 -DestinationPrefix '0.0.0.0/0'|Sort-Object @{Expression={$_.RouteMetric+(Get-NetIPInterface -InterfaceIndex $_.InterfaceIndex -AddressFamily IPv4).InterfaceMetric}}|Select-Object -First 1;if(!$r){throw 'No upstream'};@{index=$r.InterfaceIndex;gateway=$r.NextHop}|ConvertTo-Json -Compress")
            upstream=json.loads(result); index=int(upstream['index']); gateway=str(ipaddress.IPv4Address(upstream['gateway'])); address=server_ip()
            created=powershell(f"if(!(Get-NetRoute -DestinationPrefix '{address}/32' -InterfaceIndex {index} -ErrorAction SilentlyContinue|Where-Object NextHop -eq '{gateway}')){{New-NetRoute -DestinationPrefix '{address}/32' -InterfaceIndex {index} -NextHop '{gateway}' -RouteMetric 1 -PolicyStore ActiveStore|Out-Null;'created'}}")
            if created=='created': self.exemption=(address,index,gateway)
        # Verify every executable/DLL before elevated launch; DLL is adjacent.
        self.stage='S-TUN-INTEGRITY'
        with (ROOT/'wintun.dll').open('rb') as file:
            if hashlib.file_digest(file,'sha256').hexdigest()!=DLL_HASH: raise RuntimeError('Wintun hash mismatch')
        expected=TUN_HASH
        with (ROOT/'tun2socks.exe').open('rb') as file:
            if hashlib.file_digest(file,'sha256').hexdigest()!=expected: raise RuntimeError('TUN engine hash mismatch')
        self.stage='S-TUN-DRIVER'
        self.process=platform.spawn([str(ROOT/'tun2socks.exe'),'-device','tun://'+ADAPTER,'-proxy','socks5://127.0.0.1:10808','-mtu','1500','-loglevel','silent'],cwd=str(ROOT))
        for _ in range(40):
            if self.process.poll() is not None: raise RuntimeError('TUN engine exited')
            value=powershell("$a=Get-NetAdapter -Name 'Qinglian' -ErrorAction SilentlyContinue;if($a){$a.ifIndex}")
            if value: self.index=int(value); break
            time.sleep(.1)
        if self.index is None: raise RuntimeError('TUN adapter timeout')
        index=self.index
        self.stage='S-TUN-ADDRESS'
        powershell(f"Set-NetIPInterface -InterfaceIndex {index} -AddressFamily IPv4 -Dhcp Disabled -InterfaceMetric {5000 if self.isolated else 1};New-NetIPAddress -InterfaceIndex {index} -IPAddress 198.18.0.1 -PrefixLength 15 -AddressFamily IPv4|Out-Null;New-NetIPAddress -InterfaceIndex {index} -IPAddress fdfe:dcba:9876::1 -PrefixLength 64 -AddressFamily IPv6|Out-Null;Set-NetIPInterface -InterfaceIndex {index} -AddressFamily IPv6 -InterfaceMetric {5000 if self.isolated else 1}")
        for prefix in plan(self.isolated):
            self.stage='S-TUN-ROUTES'
            hop='::' if ':' in prefix else '0.0.0.0'
            powershell(f"New-NetRoute -DestinationPrefix '{prefix}' -InterfaceIndex {index} -NextHop '{hop}' -RouteMetric 1 -PolicyStore ActiveStore -ErrorAction Stop|Out-Null")
        if not self.isolated:
            self.stage='S-TUN-DNS'
            powershell(f"Set-DnsClientServerAddress -InterfaceIndex {index} -ServerAddresses @('1.1.1.1','8.8.8.8')")
    def close(self):
        errors=[]
        if self.index is not None:
            try: powershell(f"Get-NetRoute -InterfaceIndex {int(self.index)} -ErrorAction SilentlyContinue|Remove-NetRoute -Confirm:$false -ErrorAction SilentlyContinue;Set-DnsClientServerAddress -InterfaceIndex {int(self.index)} -ResetServerAddresses -ErrorAction SilentlyContinue")
            except Exception: errors.append('routes')
        if self.process:
            try: platform.stop_process(self.process)
            except Exception: errors.append('engine')
            self.process=None
        if self.exemption:
            address,index,gateway=self.exemption
            try: powershell(f"Get-NetRoute -DestinationPrefix '{address}/32' -InterfaceIndex {index} -ErrorAction SilentlyContinue|Where-Object NextHop -eq '{gateway}'|Remove-NetRoute -Confirm:$false -ErrorAction SilentlyContinue")
            except Exception: errors.append('exemption')
            self.exemption=None
        if errors: raise RuntimeError('TUN cleanup not fully confirmed')

def helper(pipe_name,parent_pid,mode):
    if mode not in ('global','isolated') or not ctypes.WinDLL('shell32').IsUserAnAdmin(): raise RuntimeError('TUN authorization required')
    pipe=Pipe(pipe_name); process_handle=None; network=Network(mode=='isolated'); api=kernel(); mutex=None
    try:
        if pipe.server_pid()!=parent_pid: raise RuntimeError('TUN pipe parent mismatch')
        process_handle=peer_image(parent_pid)
        api.CreateMutexW.argtypes=[ctypes.c_void_p,wintypes.BOOL,wintypes.LPCWSTR]; api.CreateMutexW.restype=wintypes.HANDLE
        mutex=api.CreateMutexW(None,False,'Global\\Qinglian.Tun')
        if not mutex or ctypes.get_last_error()==183: raise RuntimeError('Another Qinglian TUN is running')
        network.start(); pipe.send({'status':'ready'})
        api.WaitForSingleObject.argtypes=[wintypes.HANDLE,wintypes.DWORD]
        last_ping=time.monotonic()
        while api.WaitForSingleObject(process_handle,0)==258 and network.process.poll() is None and time.monotonic()-last_ping<8:
            value=pipe.read()
            if value and value.get('type')=='stop': break
            if value and value.get('type')=='ping': last_ping=time.monotonic()
            time.sleep(.1)
    except Exception:
        try: pipe.send({'status':'error','code':network.stage})
        except Exception: pass
    finally:
        try: network.close()
        finally:
            pipe.close()
            if process_handle: api.CloseHandle(process_handle)
            if mutex: api.CloseHandle(mutex)
