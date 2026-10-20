#!/usr/bin/env python3
"""Build an amd64 deb without root. Assets are private build input, not source."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import urllib.parse
import urllib.request
import zipfile

HERE=Path(__file__).resolve().parent
PROJECT=HERE.parent
PINS={
 'v2ray.zip':('https://github.com/v2fly/v2ray-core/releases/download/v5.54.2/v2ray-linux-64.zip','595f22e9f56936c8f4c471b3e81a9fe35d356dae9342fd71d1caf8dc99ac8378'),
 'hysteria':('https://github.com/apernet/hysteria/releases/download/app%2Fv2.13.0/hysteria-linux-amd64','907ba8c9693edb104b20582681fb7dc15639d5b64a9cbb616a7b539190a86691'),
 'tun2socks.zip':('https://github.com/xjasonlyu/tun2socks/releases/download/v2.6.0/tun2socks-linux-amd64.zip','2c4d9891ca898ecb2b582d158612d44c66793008328852b3465b77828c867e77'),
 'json.jar':('https://repo.maven.apache.org/maven2/org/json/json/20240303/json-20240303.jar','3cf6cd6892e32e2b4c1c39e0f52f5248a2f5b37646fdfbb79a66b46b618414ed')}

def digest(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()

def fetch(name,cache):
    url,expected=PINS[name]; path=cache/name
    if not path.exists() or digest(path)!=expected:
        tmp=path.with_suffix('.download')
        try:
            with urllib.request.urlopen(url,timeout=180) as r,tmp.open('wb') as out: shutil.copyfileobj(r,out)
            if digest(tmp)!=expected: raise ValueError('Upstream hash mismatch: '+name)
            tmp.replace(path)
        finally: tmp.unlink(missing_ok=True)
    return path

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--assets',required=True,type=Path,help='Private profile.json and its CA')
    parser.add_argument('--cache',type=Path,default=HERE/'.cache')
    parser.add_argument('--output',type=Path,required=True)
    a=parser.parse_args(); a.cache.mkdir(parents=True,exist_ok=True); a.output.parent.mkdir(parents=True,exist_ok=True)
    config=json.loads((a.assets/'profile.json').read_text())
    url=urllib.parse.urlsplit(config['url'])
    if url.scheme!='https' or url.username or not url.hostname or not config.get('clientToken'): raise ValueError('Invalid private API config')
    ca=config.get('caAsset','')
    if Path(ca).name!=ca or not ca.endswith('.pem'): raise ValueError('Invalid CA asset')
    with tempfile.TemporaryDirectory(prefix='qinglian-deb-') as tmp:
        root=Path(tmp)/'package'; lib=root/'usr/lib/qinglian'; lib.mkdir(parents=True)
        for name in ('app.py','runtime.py','ui.py','README.md'): shutil.copy2(HERE/name,lib/name)
        shutil.copy2(HERE/'tun.py',lib/'qinglian-tun'); (lib/'qinglian-tun').chmod(0o755)
        for name in ('profile.json',ca): shutil.copy2(a.assets/name,lib/name)
        for name in ('json.jar','hysteria'): shutil.copy2(fetch(name,a.cache),lib/name)
        with zipfile.ZipFile(fetch('v2ray.zip',a.cache)) as z:
            for src,dest in [('v2ray','v2ray'),('geoip-only-cn-private.dat','geoip.dat'),('geosite.dat','geosite.dat')]: (lib/dest).write_bytes(z.read(src))
        with zipfile.ZipFile(fetch('tun2socks.zip',a.cache)) as z: (lib/'tun2socks').write_bytes(z.read('tun2socks-linux-amd64'))
        for name in ('v2ray','hysteria','tun2socks'): (lib/name).chmod(0o755)
        classes=Path(tmp)/'classes'; classes.mkdir()
        subprocess.run(['javac','--release','17','-cp',str(lib/'json.jar'),'-d',str(classes),str(PROJECT/'app/src/main/java/com/gzy/qinglian/NodeConfig.java'),str(PROJECT/'server/NodeConfigCli.java')],check=True)
        subprocess.run(['jar','--create','--file',str(lib/'node-config.jar'),'-C',str(classes),'.'],check=True)
        # Ship corresponding integration source and licenses. Never include private assets in source archives.
        src=lib/'source'; src.mkdir()
        for name in ('app.py','runtime.py','ui.py','tun.py','build.py','test_runtime.py','test_native.py','test_gui.py','test_tun_namespace.py','README.md'): shutil.copy2(HERE/name,src/name)
        shutil.copy2(PROJECT/'app/src/main/java/com/gzy/qinglian/NodeConfig.java',src/'NodeConfig.java')
        shutil.copy2(PROJECT/'server/NodeConfigCli.java',src/'NodeConfigCli.java')
        shutil.copy2(PROJECT/'app/src/main/assets/THIRD_PARTY.txt',lib/'THIRD_PARTY.txt')
        with (lib/'THIRD_PARTY.txt').open('a') as out:
            out.write('\nUbuntu integration GPL-3.0: source/\nV2Ray 5.54.2 MIT: https://github.com/v2fly/v2ray-core/tree/v5.54.2\nHysteria 2.13.0 MIT: https://github.com/apernet/hysteria/tree/app/v2.13.0\ntun2socks 2.6.0 MIT: https://github.com/xjasonlyu/tun2socks/tree/v2.6.0\norg.json 20240303 public domain: https://github.com/stleary/JSON-java/tree/20240303\n')
        licenses=lib/'licenses'; licenses.mkdir()
        for name,repo,ref in [('v2ray','v2fly/v2ray-core','v5.54.2'),('tun2socks','xjasonlyu/tun2socks','v2.6.0'),('json','stleary/JSON-java','20240303')]:
            filename='LICENSE' if name!='json' else 'LICENSE'
            with urllib.request.urlopen('https://raw.githubusercontent.com/'+repo+'/'+ref+'/'+filename,timeout=30) as r: (licenses/(name+'.txt')).write_bytes(r.read(131072))
        for item in (PROJECT/'app/src/main/assets/licenses').glob('HYSTERIA-*.txt'): shutil.copy2(item,licenses/item.name)
        shutil.copy2(PROJECT/'LICENSE',licenses/'QINGLIAN-GPL-3.0.txt')
        binpath=root/'usr/bin'; binpath.mkdir(parents=True)
        (binpath/'qinglian').write_text('#!/bin/sh\nexec /usr/bin/python3 -I /usr/lib/qinglian/launcher.py "$@"\n'); (binpath/'qinglian').chmod(0o755)
        # Isolated Python disables user site/PYTHONPATH; trusted root-owned import directory only.
        (lib/'launcher.py').write_text('import sys\nsys.path.insert(0,"/usr/lib/qinglian")\nimport runpy\nrunpy.run_path("/usr/lib/qinglian/app.py",run_name="__main__")\n')
        desktop=root/'usr/share/applications'; desktop.mkdir(parents=True)
        (desktop/'qinglian.desktop').write_text('[Desktop Entry]\nType=Application\nName=轻连 Qinglian\nComment=VPN and ChatGPT proxy\nExec=qinglian\nIcon=qinglian\nTerminal=false\nCategories=Network;\nStartupWMClass=Qinglian\n')
        icons=root/'usr/share/icons/hicolor/scalable/apps'; icons.mkdir(parents=True)
        (icons/'qinglian.svg').write_text('<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 128"><rect x="4" y="4" width="120" height="120" rx="32" fill="#a6f1ce"/><path d="M64 22 99 37v28c0 22-19 35-35 42-16-7-35-20-35-42V37Z" fill="#176b56"/><path d="m46 64 12 12 25-28" fill="none" stroke="white" stroke-width="9" stroke-linecap="round" stroke-linejoin="round"/></svg>')
        policy=root/'usr/share/polkit-1/actions'; policy.mkdir(parents=True)
        (policy/'com.qinglian.tun.policy').write_text('''<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE policyconfig PUBLIC "-//freedesktop//DTD PolicyKit Policy Configuration 1.0//EN" "http://www.freedesktop.org/standards/PolicyKit/1/policyconfig.dtd">
<policyconfig><action id="com.qinglian.tun"><description>Enable Qinglian TUN</description><message>轻连需要管理员授权，以创建 TUN 并临时接管路由和 DNS。</message><defaults><allow_any>no</allow_any><allow_inactive>no</allow_inactive><allow_active>auth_admin</allow_active></defaults><annotate key="org.freedesktop.policykit.exec.path">/usr/lib/qinglian/qinglian-tun</annotate></action></policyconfig>''')
        control=root/'DEBIAN'; control.mkdir()
        size=sum(p.stat().st_size for p in root.rglob('*') if p.is_file())//1024
        (control/'control').write_text(f'''Package: qinglian
Version: 1.0.0~preview2
Section: net
Priority: optional
Architecture: amd64
Maintainer: Qinglian contributors
Installed-Size: {size}
Depends: python3 (>= 3.10), python3-gi, python3-gi-cairo, python3-cairo, python3-pil, gir1.2-gtk-3.0, default-jre-headless (>= 2:1.17), iproute2, polkitd, pkexec, systemd-resolved, gsettings-desktop-schemas, dconf-gsettings-backend, ca-certificates
Description: Qinglian native Ubuntu VPN GUI
 Panel-managed multi-protocol client with ChatGPT launch integration and TUN.
''')
        (control/'md5sums').write_text(''.join(hashlib.md5(p.read_bytes()).hexdigest()+'  '+str(p.relative_to(root))+'\n' for p in sorted(root.rglob('*')) if p.is_file() and control not in p.parents))
        # The managed builder has umask 077. Installed program/data must be readable by desktop users.
        for path in [root]+list(root.rglob('*')):
            path.chmod(0o755 if path.is_dir() or path.name in ('qinglian','qinglian-tun','v2ray','hysteria','tun2socks') else 0o644)
        subprocess.run(['dpkg-deb','--root-owner-group','-Zxz','--build',str(root),str(a.output)],check=True)
    print('SHA256 '+digest(a.output)); print('Bytes '+str(a.output.stat().st_size))

if __name__=='__main__': main()
