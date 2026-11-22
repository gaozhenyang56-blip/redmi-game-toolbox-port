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
timeout 12s runuser -u cgwb-browser -g cgwb-share -- env HOME=/var/lib/chatgpt-web-bridge/browser XDG_CONFIG_HOME="$temp" "$chrome"   --headless --no-first-run --disable-extensions --disable-background-networking   --user-data-dir="$temp" --dump-dom about:blank >"$temp.output" 2>"$temp.errors" || code=$?
trap 'rm -rf -- "$temp"; rm -f -- "$temp.output" "$temp.errors"' EXIT
printf '独立沙箱启动退出码 %s\n' "$code"
grep -E 'No usable sandbox|namespace|AppArmor|Permission denied|not found|failed to launch|sandbox helper|SUID sandbox|error while loading shared libraries' "$temp.errors" |   sed -E 's/(https?:\/\/)[^ ]*/[URL]/g' | head -8 || true
'''


REPAIR = r'''
set -eu
chrome_root=/opt/chatgpt-web-bridge/chrome
chrome="$chrome_root/opt/google/chrome/chrome"
socket=/run/chatgpt-web-bridge/control.sock
test "$(sed -n 's/^BRIDGE_CHROMIUM=//p' /etc/chatgpt-web-bridge/browser.env)" = "$chrome"
namei -l "$chrome"
for prefix in "$chrome_root" "$chrome_root/opt" "$chrome_root/opt/google" "$chrome_root/opt/google/chrome"; do
    test ! -L "$prefix" && test -d "$prefix" && test "$(stat -c %u "$prefix")" = 0
    if ! runuser -u cgwb-browser -g cgwb-share -- test -x "$prefix"; then
        chmod o+x "$prefix"
        printf '已为浏览器恢复目录遍历权限 %s\n' "$prefix"
    fi
done
if ! runuser -u cgwb-browser -g cgwb-share -- test -x "$chrome"; then
    echo '浏览器仍无法执行。挂载选项：'
    findmnt -no OPTIONS --target "$chrome" || true
    exit 1
fi
marker=$(date '+%Y-%m-%d %H:%M:%S')
curl -fsS --max-time 5 --unix-socket "$socket" -X POST http://localhost/restart -o /dev/null
view_status() {
    curl -fsS --max-time 3 --unix-socket "$socket" http://localhost/status |       python3 -c 'import json,sys; print(json.load(sys.stdin).get("state","unknown"))'
}
state=unknown
for turn in $(seq 1 40); do
    state=$(view_status || true)
    if [ "$state" = running ]; then
        sleep 7
        if [ "$(view_status)" = running ]; then
            echo 'Chromium 已启动并持续运行，沙箱启动参数保持默认。'
            exit 0
        fi
    fi
    case "$state" in low-memory|failed) break;; esac
    sleep 1
done
printf 'Chromium 恢复检查状态 %s\n' "$state"
journalctl -q -u chatgpt-web-bridge-browser.service --since "$marker" -o cat --no-pager |     grep -E 'Chromium 已退出|Openbox 已退出|TigerVNC 已退出|浏览器进程退出|启动超时|Fatal server error' | tail -12 || true
test "$state" = running
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
        if os.environ.get("BRIDGE_BROWSER_MODE") == "browser_repair":
            # Return the limited recovery output even when the readiness check fails.
            wrapped = "set +e; bash -c " + shlex.quote(REPAIR) + "; printf '\nrepair_exit=%s\n' $?"
            log = run(client, sudo + "bash -c " + shlex.quote(wrapped), timeout=65)
            if not log.rstrip().endswith("repair_exit=0"):
                raise RuntimeError("Chromium 未恢复。")
        else:
            run(client, sudo + "bash -c " + shlex.quote(SCRIPT), timeout=45)


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, KeyError, OSError, ValueError, paramiko.SSHException):
        print("无法获取浏览器诊断。", file=sys.stderr)
        sys.exit(1)
