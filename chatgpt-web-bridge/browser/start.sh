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
mkdir -p "$HOME/.config" "$BRIDGE_BROWSER_HOME/profile/Default"
if [[ ! -e "$BRIDGE_BROWSER_HOME/profile/Default/Preferences" ]]; then
  printf '{"credentials_enable_service":false,"profile":{"password_manager_enabled":false}}\n' > "$BRIDGE_BROWSER_HOME/profile/Default/Preferences"
fi
printf 'XDG_DOWNLOAD_DIR="%s/downloads"\n' "$BRIDGE_FILES" > "$HOME/.config/user-dirs.dirs"
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
"$BRIDGE_CHROMIUM" --user-data-dir="$BRIDGE_BROWSER_HOME/profile" --disk-cache-size="$BRIDGE_CACHE_BYTES" \
  --kiosk --no-first-run --no-default-browser-check --disable-extensions --disable-background-networking \
  --disable-sync --disable-session-crashed-bubble --password-store=basic --ozone-platform=x11 "$BRIDGE_START_URL" \
  >/dev/null 2>&1 &
chrome_pid=$!
wait -n "$display_pid" "$wm_pid" "$chrome_pid"
