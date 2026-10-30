"""Build the Windows x64 GUI, pinned native engines/JRE, portable ZIP and installer."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import urllib.parse
import urllib.request
import zipfile

HERE=Path(__file__).resolve().parent; PROJECT=HERE.parent
VERSION='1.0.0-preview4'
PINS={
 'tun2socks.zip':('https://github.com/xjasonlyu/tun2socks/releases/download/v2.6.0/tun2socks-windows-amd64.zip','1429e2e3b1ea09052da2c65e5005538b5730d63da37e304f4ad6fd2698a66695'),
 'wintun.zip':('https://www.wintun.net/builds/wintun-0.14.1.zip','07c256185d6ee3652e09fa55c0b673e2624b565e02c4b9091c79ca7d2f24ef51'),
 'v2ray.zip':('https://github.com/v2fly/v2ray-core/releases/download/v5.54.2/v2ray-windows-64.zip','f2d67c2a1d999dca80abc4b240132885e90c100b7c789b4227dc41b81e2394e0'),
 'hysteria.exe':('https://github.com/HyNetworks/hysteria/releases/download/app/v2.13.0/hysteria-windows-amd64.exe','162ef8fe55dc7ec810dda662908f8e65ec36bd6da39cb87c3bd66184ab68f067'),
 'jre.zip':('https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_windows_hotspot_17.0.20_8.zip','7fe2324cc5901a89aaa0e8dc232075c59f2aca5270c533bdb1b861a5274af834'),
 'json.jar':('https://repo.maven.apache.org/maven2/org/json/json/20240303/json-20240303.jar','3cf6cd6892e32e2b4c1c39e0f52f5248a2f5b37646fdfbb79a66b46b618414ed')}
def digest(path):
    with Path(path).open('rb') as source: return hashlib.file_digest(source,'sha256').hexdigest()
def fetch(name,cache):
    url,expected=PINS[name]; target=cache/name
    if not target.exists() or digest(target)!=expected:
        tmp=target.with_suffix('.download')
        try:
            with urllib.request.urlopen(url,timeout=180) as response,tmp.open('wb') as output: shutil.copyfileobj(response,output)
            if digest(tmp)!=expected: raise ValueError('Pinned upstream hash mismatch: '+name)
            tmp.replace(target)
        finally: tmp.unlink(missing_ok=True)
    return target
def main():
    parser=argparse.ArgumentParser(); parser.add_argument('--assets',type=Path,required=True); parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--cache',type=Path,default=HERE/'.cache'); parser.add_argument('--resources-only',action='store_true'); parser.add_argument('--fixture',action='store_true'); args=parser.parse_args()
    output=args.output.resolve(); output.mkdir(parents=True,exist_ok=True); args.cache.mkdir(parents=True,exist_ok=True)
    config=json.loads((args.assets/'profile.json').read_text(encoding='utf-8')); parsed=urllib.parse.urlsplit(config['url'])
    ca=config.get('caAsset','')
    if parsed.scheme!='https' or parsed.username or not parsed.hostname or not config.get('clientToken') or Path(ca).name!=ca or not ca.endswith('.pem'): raise ValueError('Invalid bootstrap')
    if not args.fixture and config.get('cdnUrl')!='https://gaozy.tech/api/v1/profile': raise ValueError('Production Windows release requires deployed fixed CDN')
    resources=output/'resources'; resources.mkdir(exist_ok=True)
    for name in ('profile.json',ca): shutil.copy2(args.assets/name,resources/name)
    shutil.copy2(fetch('json.jar',args.cache),resources/'json.jar'); shutil.copy2(fetch('hysteria.exe',args.cache),resources/'hysteria.exe')
    with zipfile.ZipFile(fetch('tun2socks.zip',args.cache)) as archive: (resources/'tun2socks.exe').write_bytes(archive.read('tun2socks-windows-amd64.exe'))
    with zipfile.ZipFile(fetch('wintun.zip',args.cache)) as archive: (resources/'wintun.dll').write_bytes(archive.read('wintun/bin/amd64/wintun.dll'))
    with zipfile.ZipFile(fetch('v2ray.zip',args.cache)) as archive:
        for source,target in [('v2ray.exe','v2ray.exe'),('geoip-only-cn-private.dat','geoip.dat'),('geosite.dat','geosite.dat')]: (resources/target).write_bytes(archive.read(source))
    with zipfile.ZipFile(fetch('jre.zip',args.cache)) as archive:
        for item in archive.infolist():
            parts=Path(item.filename).parts
            if len(parts)<2 or item.is_dir(): continue
            relative=Path(*parts[1:])
            if relative.is_absolute() or '..' in relative.parts: raise ValueError('Unsafe JRE archive')
            target=resources/'jre'/relative; target.parent.mkdir(parents=True,exist_ok=True); target.write_bytes(archive.read(item))
    classes=output/'classes'; classes.mkdir(exist_ok=True)
    jdk=os.environ.get('JAVA_HOME_17_X64') or os.environ.get('JAVA_HOME')
    javac=str(Path(jdk)/'bin/javac.exe') if os.name=='nt' and jdk else 'javac'
    jar=str(Path(jdk)/'bin/jar.exe') if os.name=='nt' and jdk else 'jar'
    subprocess.run([javac,'-encoding','UTF-8','--release','17','-cp',str(resources/'json.jar'),'-d',str(classes),str(PROJECT/'app/src/main/java/com/gzy/qinglian/NodeConfig.java'),str(PROJECT/'server/NodeConfigCli.java')],check=True)
    subprocess.run([jar,'--create','--file',str(resources/'node-config.jar'),'-C',str(classes),'.'],check=True)
    licenses=resources/'licenses'; licenses.mkdir(exist_ok=True)
    shutil.copy2(PROJECT/'LICENSE',licenses/'Qinglian-GPL-3.0.txt'); shutil.copy2(PROJECT/'app/src/main/assets/THIRD_PARTY.txt',licenses/'THIRD_PARTY.txt')
    for file in (PROJECT/'app/src/main/assets/licenses').glob('HYSTERIA-*.txt'): shutil.copy2(file,licenses/file.name)
    with zipfile.ZipFile(fetch('wintun.zip',args.cache)) as archive:
        for name in archive.namelist():
            if name.lower().endswith(('license.txt','copying')): (licenses/'Wintun-LICENSE.txt').write_bytes(archive.read(name))
    for name,url in [('V2Ray-MIT.txt','https://raw.githubusercontent.com/v2fly/v2ray-core/v5.54.2/LICENSE'),('tun2socks-MIT.txt','https://raw.githubusercontent.com/xjasonlyu/tun2socks/v2.6.0/LICENSE'),('JSON.txt','https://raw.githubusercontent.com/stleary/JSON-java/20240303/LICENSE')]:
        with urllib.request.urlopen(url,timeout=30) as response: (licenses/name).write_bytes(response.read(131072))
    (licenses/'Windows-components.txt').write_text('Qinglian integration: GPL-3.0, corresponding source in source/.\nPySide6 6.8.3 / Qt: LGPL-3.0 / GPL-3.0, dynamic libraries distributed with PyInstaller.\nhttps://code.qt.io/pyside/pyside-setup.git/tag/?h=v6.8.3\nhttps://code.qt.io/qt/qtbase.git/tag/?h=v6.8.3\nTemurin OpenJDK 17.0.20+8: GPLv2 with Classpath Exception, notices in jre/legal/.\nhttps://github.com/adoptium/temurin17-binaries/releases/tag/jdk-17.0.20%2B8\nPython and PyInstaller notices are included in licenses/.\n',encoding='utf-8')
    src=resources/'source'; src.mkdir(exist_ok=True)
    for file in HERE.glob('*.py'): shutil.copy2(file,src/file.name)
    shutil.copy2(HERE/'installer.iss',src/'installer.iss')
    for name in ('README.md','RELEASE_NOTES.md'): shutil.copy2(HERE/name,resources/name)
    shutil.copy2(PROJECT/'ubuntu/runtime.py',src/'shared_runtime.py'); shutil.copy2(PROJECT/'app/src/main/java/com/gzy/qinglian/NodeConfig.java',src/'NodeConfig.java'); shutil.copy2(PROJECT/'server/NodeConfigCli.java',src/'NodeConfigCli.java')
    if args.resources_only: print('Pinned Windows resources verified and prepared.'); return
    if os.name!='nt': raise RuntimeError('Executable packaging must run on Windows')
    import PySide6
    from PySide6.QtWidgets import QApplication
    sys.path.insert(0,str(HERE))
    from app import icon
    application=QApplication.instance() or QApplication([])
    icon_file=resources/'qinglian.ico'
    if not icon(256).pixmap(256,256).save(str(icon_file),'ICO'): raise RuntimeError('Windows icon generation failed')
    for directory in (Path(PySide6.__file__).parent/'LICENSES',Path(sys.base_prefix)):
        for file in directory.glob('LICENSE*'):
            if file.is_file(): shutil.copy2(file,licenses/('Python-'+file.name if directory==Path(sys.base_prefix) else file.name))
    for file in (Path(PySide6.__file__).parent/'LICENSES').glob('*'):
        if file.is_file(): shutil.copy2(file,licenses/file.name)
    staging=output/'staging'; staging.mkdir(exist_ok=True); shutil.copy2(PROJECT/'ubuntu/runtime.py',staging/'shared_runtime.py')
    subprocess.run([sys.executable,'-m','PyInstaller','--noconfirm','--clean','--windowed','--onedir','--name','Qinglian','--icon',str(icon_file),'--paths',str(HERE),'--paths',str(staging),'--distpath',str(output/'dist'),'--workpath',str(output/'pyinstaller'),'--specpath',str(staging),'--add-data',str(resources)+os.pathsep+'resources',str(HERE/'app.py')],check=True)
    app=output/'dist/Qinglian'
    (resources/'build-info.json').write_text(json.dumps({'version':VERSION,'architecture':'x64','sha256':{name:digest(resources/name) for name in ('v2ray.exe','hysteria.exe','tun2socks.exe','wintun.dll','node-config.jar','profile.json',ca)}}))
    shutil.copy2(resources/'build-info.json',app/'_internal/resources/build-info.json')
    shutil.make_archive(str(output/('Qinglian-'+VERSION+'-windows-x64-portable')),'zip',output/'dist','Qinglian')
    iscc=Path(os.environ.get('ProgramFiles(x86)',r'C:\Program Files (x86)'))/'Inno Setup 6/ISCC.exe'
    if not iscc.exists(): raise RuntimeError('Inno Setup 6 is required for the installer')
    subprocess.run([str(iscc),'/DSourceDir='+str(app),'/DOutputDir='+str(output),'/DIconFile='+str(icon_file),str(HERE/'installer.iss')],check=True)
    delivery=[output/('Qinglian-'+VERSION+'-windows-x64-setup.exe'),output/('Qinglian-'+VERSION+'-windows-x64-portable.zip')]
    (output/'SHA256SUMS.txt').write_text(''.join(digest(file)+'  '+file.name+'\n' for file in delivery),encoding='utf-8')
    print('Windows installer and portable package built; no SSH/admin/account secrets included.')
if __name__=='__main__': main()
