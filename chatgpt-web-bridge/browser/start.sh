#!/usr/bin/env bash
set -euo pipefail
umask 0027
[[ $(id -u) != 0 ]] || exit 1
: "${DISPLAY:=:76}" "${BRIDGE_RUNTIME:=/run/chatgpt-web-bridge}" "${BRIDGE_FILES:=/srv/chatgpt-web-bridge}"
: "${BRIDGE_GEOMETRY:=1152x768}" "${BRIDGE_CHROMIUM:=/usr/bin/chromium}"
: "${BRIDGE_BROWSER_HOME:=/var/lib/chatgpt-web-bridge/browser}"
: "${BRIDGE_START_URL:=https://chatgpt.com/}" "${BRIDGE_CACHE_BYTES:=67108864}"
export DISPLAY XAUTHORITY="$BRIDGE_BROWSER_HOME/.Xauthority"
if [[ ! -e "$HOME/Downloads" ]]; then ln -s "$BRIDGE_FILES/downloads" "$HOME/Downloads"; fi
export XDG_CONFIG_HOME="$HOME/.config"
mkdir -p "$XDG_CONFIG_HOME" "$BRIDGE_BROWSER_HOME/profile/Default"
python3 - "$BRIDGE_BROWSER_HOME/profile/Default/Preferences" "$BRIDGE_FILES/downloads" "$BRIDGE_FILES/uploads" "$XDG_CONFIG_HOME" <<'PY_CONFIG'
import json
import os
from pathlib import Path
import sys
import tempfile

prefs = Path(sys.argv[1])
downloads = sys.argv[2]
try:
    data = json.loads(prefs.read_text()) if prefs.exists() else {}
except (OSError, ValueError):
    sys.exit("无法安全读取 Chromium 的下载配置。")
data["credentials_enable_service"] = False
data.setdefault("profile", {})["password_manager_enabled"] = False
data.setdefault("download", {}).update(default_directory=downloads, directory_upgrade=True, prompt_for_download=False)
data.setdefault("savefile", {})["default_directory"] = downloads
with tempfile.NamedTemporaryFile(mode="w", dir=prefs.parent, delete=False) as f:
    json.dump(data, f, ensure_ascii=True, separators=(",", ":"))
os.replace(f.name, prefs)
upload_uri = Path(sys.argv[3]).as_uri()
for gtk_version in ("gtk-3.0", "gtk-4.0"):
    bookmarks = Path(sys.argv[4], gtk_version, "bookmarks")
    bookmarks.parent.mkdir(parents=True, exist_ok=True)
    existing = bookmarks.read_text().splitlines() if bookmarks.exists() else []
    if not any(line.split(maxsplit=1)[0] == upload_uri for line in existing if line.strip()):
        bookmarks.write_text("\n".join([*existing, upload_uri + " Bridge 上传"]) + "\n")
PY_CONFIG
printf 'XDG_DOWNLOAD_DIR="%s/downloads"\n' "$BRIDGE_FILES" > "$XDG_CONFIG_HOME/user-dirs.dirs"
touch "$XAUTHORITY"
chmod 0600 "$XAUTHORITY"
xauth -f "$XAUTHORITY" add "$DISPLAY" MIT-MAGIC-COOKIE-1 "$(mcookie)"
rm -f -- "$BRIDGE_RUNTIME/rfb.sock"
display_pid= wm_pid= chrome_pid=
cleanup() {
  trap - EXIT TERM INT
  [[ -z "$chrome_pid" ]] || kill -TERM "$chrome_pid" 2>/dev/null || true
  if [[ -n "$chrome_pid" ]]; then
    for ((i=0;i<25;i++)); do kill -0 "$chrome_pid" 2>/dev/null || break; sleep .15; done
    kill -KILL "$chrome_pid" 2>/dev/null || true
    wait "$chrome_pid" 2>/dev/null || true
  fi
  for pid in "$wm_pid" "$display_pid"; do
    [[ -z "$pid" ]] || kill "$pid" 2>/dev/null || true
  done
  wait 2>/dev/null || true
  rm -f -- "$BRIDGE_RUNTIME/rfb.sock"
}
trap cleanup EXIT
trap 'exit 143' TERM INT
Xtigervnc "$DISPLAY" -auth "$XAUTHORITY" -nolisten tcp -geometry "$BRIDGE_GEOMETRY" -depth 24 \
  -rfbport -1 -rfbunixpath "$BRIDGE_RUNTIME/rfb.sock" -rfbunixmode 0660 \
  -SecurityTypes None -FrameRate 24 >/dev/null &
display_pid=$!
for ((i=0;i<80;i++)); do
  [[ -S "$BRIDGE_RUNTIME/rfb.sock" ]] && xdpyinfo >/dev/null 2>&1 && break
  kill -0 "$display_pid" 2>/dev/null || exit 1
  sleep .1
done
xdpyinfo >/dev/null 2>&1
openbox --config-file "$(dirname -- "$0")/openbox.xml" >/dev/null &
wm_pid=$!
for ((i=0;i<60;i++)); do
  if xprop -root _NET_SUPPORTING_WM_CHECK | grep -q 'window id'; then break; fi
  kill -0 "$wm_pid" 2>/dev/null || exit 1
  sleep .1
done
xprop -root _NET_SUPPORTING_WM_CHECK | grep -q 'window id'
"$BRIDGE_CHROMIUM" --user-data-dir="$BRIDGE_BROWSER_HOME/profile" --disk-cache-size="$BRIDGE_CACHE_BYTES" \
  --kiosk --no-first-run --no-default-browser-check --disable-extensions --disable-background-networking \
  --disable-sync --disable-session-crashed-bubble --force-device-scale-factor=1 --password-store=basic --ozone-platform=x11 --app="$BRIDGE_START_URL" \
  >/dev/null 2>&1 &
chrome_pid=$!
finished=
result=0
wait -n -p finished "$display_pid" "$wm_pid" "$chrome_pid" || result=$?
case "$finished" in
  "$chrome_pid") printf 'Chromium 已退出（%s）\n' "$result" >&2;;
  "$wm_pid") printf 'Openbox 已退出（%s）\n' "$result" >&2;;
  "$display_pid") printf 'TigerVNC 已退出（%s）\n' "$result" >&2;;
esac
exit "$result"
