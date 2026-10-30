"""Data-only panel settings and bounded, hash-checked Windows package updates."""
import hashlib
import json
import os
from pathlib import Path,PurePosixPath
import re
import shutil
import stat
import sys
import tempfile
import time
import urllib.request
import uuid
import zipfile

MAX_PACKAGE=256*1024**2
VERSION=re.compile(r'^1\.0\.0-preview([1-9][0-9]{0,5})$')
DEFAULT_UI={'accent':'blue','density':'comfortable','notice':'','material':True}
def version_number(value):
    match=VERSION.fullmatch(value) if isinstance(value,str) else None
    if not match: raise ValueError('Invalid Windows version')
    return int(match[1])
def ui_config(value):
    if not isinstance(value,dict) or set(value)!=set(DEFAULT_UI): raise ValueError('Invalid UI settings')
    if value['accent'] not in ('blue','teal','purple') or value['density'] not in ('comfortable','compact') or not isinstance(value['notice'],str) or len(value['notice'])>300 or type(value['material']) is not bool: raise ValueError('Invalid UI settings')
    return dict(value)
def descriptor(value):
    if not isinstance(value,dict) or set(value)!={'version','sha256','size'}: raise ValueError('Invalid package')
    version_number(value['version'])
    if not isinstance(value['sha256'],str) or not re.fullmatch('[0-9a-f]{64}',value['sha256']) or type(value['size']) is not int or not 0<value['size']<=MAX_PACKAGE: raise ValueError('Invalid package')
    return dict(value)
def manifest(value):
    if not isinstance(value,dict) or set(value)!={'schema','revision','ui','package'} or type(value['schema']) is not int or value['schema']!=1 or type(value['revision']) is not int or not 0<=value['revision']<=2147483647: raise ValueError('Invalid publication')
    return {**value,'ui':ui_config(value['ui']),'package':descriptor(value['package']) if value['package'] is not None else None}
def digest(path):
    with Path(path).open('rb') as source:return hashlib.file_digest(source,'sha256').hexdigest()
def inspect_archive(path,package):
    package=descriptor(package)
    if Path(path).stat().st_size!=package['size'] or digest(path)!=package['sha256']: raise ValueError('Package hash/size mismatch')
    with zipfile.ZipFile(path) as archive:
        if len(archive.infolist())>6000: raise ValueError('Too many files')
        seen=set();size=0
        for item in archive.infolist():
            name=item.filename;parts=PurePosixPath(name).parts
            if not name.startswith('Qinglian/') or '\\' in name or ':' in name or '\x00' in name or any(p in ('.','..') or p.endswith((' ','.')) or p.split('.')[0].upper() in {'CON','PRN','AUX','NUL',*(f'COM{i}' for i in range(1,10)),*(f'LPT{i}' for i in range(1,10))} for p in parts) or '/'.join(parts)!=name.rstrip('/') or stat.S_ISLNK(item.external_attr>>16): raise ValueError('Unsafe archive path')
            if len(parts)>1 and parts[1] not in ('Qinglian.exe','_internal'): raise ValueError('Unexpected package entry')
            key=name.rstrip('/').casefold()
            if key in seen: raise ValueError('Duplicate archive path')
            seen.add(key);size+=item.file_size
            if size>1024**3 or item.file_size>MAX_PACKAGE: raise ValueError('Expanded package too large')
        if archive.read('Qinglian/Qinglian.exe')[:2]!=b'MZ': raise ValueError('Missing executable')
        info=json.loads(archive.read('Qinglian/_internal/resources/build-info.json'))
        if info.get('version')!=package['version'] or info.get('architecture')!='x64': raise ValueError('Package version mismatch')
        for name,sha in info.get('sha256',{}).items():
            if not isinstance(name,str) or Path(name).name!=name or not re.fullmatch('[0-9a-f]{64}',sha): raise ValueError('Invalid build manifest')
            if hashlib.sha256(archive.read('Qinglian/_internal/resources/'+name)).hexdigest()!=sha: raise ValueError('Native resource mismatch')
        if not info.get('sha256'): raise ValueError('Missing native manifest')
    return package

def download(api,value,state):
    package=descriptor(value);directory=Path(state)/'updates';directory.mkdir(exist_ok=True)
    target=directory/(package['sha256']+'.zip')
    if target.exists():
        try:inspect_archive(target,package);return target
        except Exception:target.unlink(missing_ok=True)
    # Download only from the same fixed, strictly verified API origins. No URLs
    # from a remote manifest, redirects, shell commands or third-party tokens.
    bases=api.config.get('cdnUrl'),api.config['url']
    last=None
    for base in bases:
        if not base:continue
        import urllib.parse
        root=urllib.parse.urljoin(base,'./');is_cdn=base==api.config.get('cdnUrl')
        url=urllib.parse.urljoin(root,'windows/package/'+package['sha256'])
        request=urllib.request.Request(url,headers={'Authorization':'Bearer '+api.config['clientToken'],'User-Agent':'Qinglian/WindowsUpdater'})
        temporary=directory/(uuid.uuid4().hex+'.part')
        try:
            started=time.monotonic();total=0
            with (api.cdn_opener if is_cdn else api.opener).open(request,timeout=10) as response,temporary.open('xb') as output:
                if response.status!=200:raise ValueError('Download refused')
                while True:
                    chunk=response.read1(256*1024)
                    if not chunk:break
                    total+=len(chunk)
                    if total>package['size'] or time.monotonic()-started>180:raise ValueError('Download limit')
                    output.write(chunk)
            inspect_archive(temporary,package);os.replace(temporary,target);return target
        except Exception as error:last=error
        finally:temporary.unlink(missing_ok=True)
    raise RuntimeError('更新包下载或校验失败，请稍后重试') from None

def swap_payload(target,stage,backup):
    """Replace only owned app files; preserve uninstaller and unrelated files."""
    target=Path(target);stage=Path(stage);backup=Path(backup);backup.mkdir()
    moved=[];installed=[]
    try:
        for name in ('Qinglian.exe','_internal'):
            os.replace(target/name,backup/name);moved.append(name)
        for name in ('_internal','Qinglian.exe'):
            os.replace(stage/name,target/name);installed.append(name)
    except Exception:
        restore_payload(target,backup,moved,installed);raise
    return moved,installed

def restore_payload(target,backup,moved=('Qinglian.exe','_internal'),installed=('_internal','Qinglian.exe')):
    for name in reversed(installed):
        path=Path(target)/name
        if path.is_dir():shutil.rmtree(path)
        else:path.unlink(missing_ok=True)
    for name in reversed(moved):os.replace(Path(backup)/name,Path(target)/name)

def launch_update(path,package,state):
    import subprocess
    if not getattr(sys,'frozen',False):raise RuntimeError('源码运行不支持替换，请使用正式Windows安装包')
    state=Path(state);root=state/'updates';token=uuid.uuid4().hex;job=root/token;job.mkdir()
    helper=Path(sys._MEIPASS)/'resources/updater.exe'
    shutil.copy2(helper,job/'updater.exe')
    plan={'parent':os.getpid(),'target':str(Path(sys.executable).resolve().parent),'package':descriptor(package),'token':token}
    # Each update has a private directory inherited from the per-user state ACL.
    shutil.copy2(path,job/'package.zip');(job/'plan.json').write_text(json.dumps(plan),encoding='utf-8')
    process=subprocess.Popen([str(job/'updater.exe'),'--apply',str(job/'plan.json')],creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0))
    # Wait for the helper's parent attestation before asking the GUI to exit.
    deadline=time.monotonic()+8
    while not (job/'waiting').exists():
        if process.poll() is not None or time.monotonic()>deadline:raise RuntimeError('更新助手启动失败，当前程序未被替换')
        time.sleep(.05)
    return token

def checkin(state,token):
    if re.fullmatch('[0-9a-f]{32}',token or ''):
        path=Path(state)/'updates'/token
        if (path/'plan.json').is_file():(path/'ready').write_text('ready',encoding='ascii')
