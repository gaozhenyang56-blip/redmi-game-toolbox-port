#!/bin/sh
set -eu
# User installation only; install OS dependencies separately using apt.
source_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
install_dir="$HOME/.local/share/qinglian-remote"
mkdir -p "$install_dir/static" "$HOME/.local/share/applications"
install -m 644 "$source_dir/server.py" "$source_dir/ubuntu_client.py" "$install_dir/"
install -m 644 "$source_dir/server-ca.crt" "$install_dir/"
install -m 644 "$source_dir/static/"* "$install_dir/static/"
# Desktop spec uses double quotes for paths containing spaces.
python3 - "$install_dir" "$HOME/.local/share/applications/qinglian-remote.desktop" <<'PY'
import pathlib, sys
path = sys.argv[1] + '/ubuntu_client.py'
path = path.replace('\\', '\\\\').replace('"', '\\"').replace('`', '\\`').replace('$', '\\$').replace('%', '%%')
pathlib.Path(sys.argv[2]).write_text('[Desktop Entry]\nType=Application\nName=轻连手机远控\nComment=ADB 远程控制，每次连接验证 TOTP\nExec=/usr/bin/python3 "' + path + '"\nIcon=phone\nTerminal=false\nCategories=Utility;RemoteAccess;\n')
PY
printf '%s\n' '安装完成。应用菜单打开“轻连手机远控”；默认连接本机 8765，代理服务与 SSH 隧道须先启动。'
