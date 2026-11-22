"""Diagnose the Bridge browser without accessing its user profile."""
import os
import re
import shlex
import sys

import paramiko

from qinglian import PIN_PATH, PinnedHost, run

SCRIPT = r'''
set -eu
unit=chatgpt-web-bridge-browser.service
systemctl show "$unit" -p ActiveState -p SubState -p MemoryCurrent -p MemoryMax -p NRestarts
cg=$(systemctl show "$unit" -p ControlGroup --value)
if [ -n "$cg" ] && [ -r "/sys/fs/cgroup$cg/memory.events" ]; then
    grep -E '^oom(_kill)? ' "/sys/fs/cgroup$cg/memory.events"
fi
awk '/^MemAvailable:/{printf "MemAvailable %.0f MiB\n",$2/1024}' /proc/meminfo
if [ -r /proc/sys/kernel/apparmor_restrict_unprivileged_userns ]; then
    printf 'AppArmor userns restriction: '
    cat /proc/sys/kernel/apparmor_restrict_unprivileged_userns
fi
journalctl -q -u "$unit" --since '-3 hours' -o cat --no-pager |   grep -E 'Chromium 已退出|Openbox 已退出|TigerVNC 已退出|浏览器进程退出|启动超时|Fatal server error|not available|X connection|rfbunix|not a valid|Permission denied|symbol lookup error' |   sed -E 's/(https?:\/\/)[^ ]*/[URL]/g' | tail -20 || true
chrome=$(sed -n 's/^BRIDGE_CHROMIUM=//p' /etc/chatgpt-web-bridge/browser.env | head -1)
case "$chrome" in
  /opt/chatgpt-web-bridge/chrome/opt/google/chrome/chrome|/usr/bin/chromium|/usr/bin/google-chrome-stable|/opt/google/chrome/chrome) ;;
  *) echo '浏览器路径需单独检查'; exit 0 ;;
esac
stat -c 'Chromium %a UID=%u GID=%g %n' "$chrome"
sibling="$(dirname "$chrome")/chrome-sandbox"
if [ -f "$sibling" ]; then stat -c 'Sandbox %a UID=%u GID=%g %n' "$sibling"; fi
if command -v ldd >/dev/null; then ldd "$chrome" 2>/dev/null | grep 'not found' || true; fi
available=$(awk '/^MemAvailable:/{print int($2/1024)}' /proc/meminfo)
if [ "$available" -lt 650 ]; then echo '可用内存不足，省略独立启动检查'; exit 0; fi
temp=$(mktemp -d /var/lib/chatgpt-web-bridge/browser/.probe.XXXXXXXX)
trap 'rm -rf -- "$temp"' EXIT
chown cgwb-browser:cgwb-share "$temp"
code=0
timeout 12s runuser -u cgwb-browser -g cgwb-share -- "$chrome"   --headless --no-first-run --disable-extensions --disable-background-networking   --user-data-dir="$temp" --dump-dom about:blank >"$temp.output" 2>"$temp.errors" || code=$?
trap 'rm -rf -- "$temp"; rm -f -- "$temp.output" "$temp.errors"' EXIT
printf '独立沙箱启动退出码 %s\n' "$code"
grep -E 'No usable sandbox|namespace|AppArmor|Permission denied|not found|failed to launch|sandbox helper|SUID sandbox|error while loading shared libraries' "$temp.errors" |   sed -E 's/(https?:\/\/)[^ ]*/[URL]/g' | head -8 || true
'''


def main():
    pin = (os.environ.get("QINGLIAN_SSH_HOST_KEY") or PIN_PATH.read_text()).strip()
    if not re.fullmatch(r"SHA256:[A-Za-z0-9+/]{43}", pin):
        raise RuntimeError("缺少有效的 SSH 主机指纹。")
    user = os.environ.get("QINGLIAN_SSH_USER") or "root"
    sudo = "" if user == "root" else "sudo -n "
    with paramiko.SSHClient() as client:
        client.set_missing_host_key_policy(PinnedHost(pin))
        client.connect(os.environ["QINGLIAN_SSH_HOST"], username=user,
                       port=int(os.environ.get("QINGLIAN_SSH_PORT") or "22"),
                       password=os.environ["QINGLIAN_SSH_PASSWORD"],
                       timeout=15, auth_timeout=15, look_for_keys=False, allow_agent=False)
        run(client, sudo + "bash -c " + shlex.quote(SCRIPT), timeout=45)


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, KeyError, OSError, ValueError, paramiko.SSHException):
        print("无法获取浏览器诊断。", file=sys.stderr)
        sys.exit(1)
