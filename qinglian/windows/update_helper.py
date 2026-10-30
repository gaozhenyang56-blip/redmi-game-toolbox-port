"""Non-elevated one-file update helper; no network or arbitrary command input."""
import ctypes
from ctypes import wintypes
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import time
import zipfile
import updater

status_path=None
phase='startup'
def mark(value,error=None):
    global phase
    phase=value
    if status_path is not None:status_path.write_text(json.dumps({'phase':value,'failed':error is not None,'errorType':type(error).__name__ if error else None}),encoding='utf-8')

class ParentOpenError(RuntimeError): pass
class ParentQueryError(RuntimeError): pass
class ParentImageError(RuntimeError): pass

def parent_handle(pid,target):
    kernel=ctypes.WinDLL('kernel32',use_last_error=True)
    kernel.OpenProcess.argtypes=[wintypes.DWORD,wintypes.BOOL,wintypes.DWORD];kernel.OpenProcess.restype=wintypes.HANDLE
    kernel.QueryFullProcessImageNameW.argtypes=[wintypes.HANDLE,wintypes.DWORD,wintypes.LPWSTR,ctypes.POINTER(wintypes.DWORD)]
    handle=kernel.OpenProcess(0x100000|0x1000,False,pid)
    if not handle:raise ParentOpenError('Parent unavailable')
    length=wintypes.DWORD(32768);image=ctypes.create_unicode_buffer(length.value)
    kernel.CloseHandle.argtypes=[wintypes.HANDLE]
    if not kernel.QueryFullProcessImageNameW(handle,0,image,ctypes.byref(length)):
        kernel.CloseHandle(handle);raise ParentQueryError('Parent image unavailable')
    try: same=os.path.samefile(image.value,target/'Qinglian.exe')
    except OSError: same=False
    # Compare file identity, not the spelling of the path: Win32 may report an
    # 8.3 name while pathlib resolved a long name or a directory junction.
    if not same:
        kernel.CloseHandle(handle);raise ParentImageError('Parent mismatch')
    return kernel,handle

def apply(plan_path):
    state=Path(os.environ['LOCALAPPDATA'])/'Qinglian';root=state/'updates';plan_path=Path(plan_path).resolve();job=plan_path.parent
    if plan_path.name!='plan.json' or job.parent!=root.resolve() or not re.fullmatch('[0-9a-f]{32}',job.name):raise ValueError('Invalid job')
    global status_path
    status_path=job/'status.json'; mark('plan')
    plan=json.loads(plan_path.read_text(encoding='utf-8'))
    if set(plan)!={'parent','target','package','token'} or plan['token']!=job.name or type(plan['parent']) is not int:raise ValueError('Invalid plan')
    mark('archive')
    target=Path(plan['target']);package=updater.inspect_archive(job/'package.zip',plan['package'])
    if not target.is_absolute() or str(target).startswith('\\\\') or target.is_symlink() or (target/'_internal').is_symlink() or (target/'Qinglian.exe').is_symlink():raise ValueError('Invalid destination')
    mark('parent')
    kernel,handle=parent_handle(plan['parent'],target)
    kernel.WaitForSingleObject.argtypes=[wintypes.HANDLE,wintypes.DWORD];kernel.WaitForSingleObject.restype=wintypes.DWORD;kernel.CloseHandle.argtypes=[wintypes.HANDLE]
    try:
        mark('waiting')
        (job/'waiting').write_text('ready',encoding='ascii')
        if kernel.WaitForSingleObject(handle,60000)!=0:raise RuntimeError('Parent did not exit')
    finally:kernel.CloseHandle(handle)
    mark('staging')
    stage=Path(tempfile.mkdtemp(prefix='.qinglian-stage-',dir=target.parent));backup=Path(tempfile.mkdtemp(prefix='.qinglian-backup-',dir=target.parent));backup.rmdir()
    swapped=False;child=None
    try:
        mark('extract')
        with zipfile.ZipFile(job/'package.zip') as archive:archive.extractall(stage)
        mark('swap')
        updater.swap_payload(target,stage/'Qinglian',backup);swapped=True
        mark('launch')
        child=subprocess.Popen([str(target/'Qinglian.exe'),'--update-checkin',job.name],cwd=target,env=dict(os.environ,PYINSTALLER_RESET_ENVIRONMENT='1'))
        deadline=time.monotonic()+30
        while time.monotonic()<deadline:
            if (job/'ready').exists():
                mark('ready')
                (state/'update-result.json').write_text(json.dumps({'ok':True,'version':package['version'],'pid':child.pid}),encoding='utf-8')
                shutil.rmtree(backup,ignore_errors=True);return
            if child.poll() is not None:break
            time.sleep(.1)
        raise RuntimeError('Updated GUI did not become ready')
    except Exception:
        if child is not None and child.poll() is None:child.terminate();child.wait(timeout=10)
        if swapped:updater.restore_payload(target,backup)
        (state/'update-result.json').write_text(json.dumps({'ok':False,'rolledBack':True}),encoding='utf-8')
        subprocess.Popen([str(target/'Qinglian.exe')],cwd=target,env=dict(os.environ,PYINSTALLER_RESET_ENVIRONMENT='1'))
        raise
    finally:shutil.rmtree(stage,ignore_errors=True)

def main():
    try:
        if len(sys.argv)!=3 or sys.argv[1]!='--apply':return 2
        apply(sys.argv[2]);return 0
    except Exception as error:
        if status_path is not None:mark(phase,error)
        return 1 # Only a fixed phase and exception class, never raw details.
if __name__=='__main__':raise SystemExit(main())
