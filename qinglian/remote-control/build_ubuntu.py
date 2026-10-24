#!/usr/bin/env python3
"""Build a small Ubuntu GTK client package without installing it on the build host."""
import argparse
from pathlib import Path
import shutil
import subprocess
import tempfile


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,default=Path('qinglian-remote_0.2.0-preview1_all.deb'))
    output=parser.parse_args().output.resolve()
    output.parent.mkdir(parents=True,exist_ok=True)
    root=Path(__file__).resolve().parent
    with tempfile.TemporaryDirectory(prefix='qinglian-remote-deb-') as temporary:
        stage=Path(temporary)
        stage.chmod(0o755)
        (stage/'DEBIAN').mkdir()
        (stage/'DEBIAN/control').write_text('''Package: qinglian-remote
Version: 0.2.0~preview1
Section: net
Priority: optional
Architecture: all
Maintainer: Qinglian Contributors <noreply@example.invalid>
Depends: python3, python3-gi, gir1.2-gtk-3.0, gir1.2-webkit2-4.1
Description: Qinglian phone remote control client
 GTK client for the phone-initiated HTTPS relay with TOTP login.
''')
        app=stage/'usr/share/qinglian-remote'; app.mkdir(parents=True)
        for name in ('ubuntu_client.py','server-ca.crt'):
            shutil.copyfile(root/name,app/name)
        desktop=stage/'usr/share/applications'; desktop.mkdir(parents=True)
        (desktop/'qinglian-remote.desktop').write_text('''[Desktop Entry]
Type=Application
Name=轻连手机远控
Comment=手机远程控制，每次登录验证 TOTP
Exec=/usr/bin/python3 /usr/share/qinglian-remote/ubuntu_client.py
Icon=phone
Terminal=false
Categories=Utility;RemoteAccess;
''')
        for path in stage.rglob('*'): path.chmod(0o755 if path.is_dir() else 0o644)
        subprocess.run(['dpkg-deb','--root-owner-group','--build',str(stage),str(output)],check=True)
    print(output)


if __name__=='__main__': main()
