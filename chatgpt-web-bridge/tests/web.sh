#!/usr/bin/env bash
set -euo pipefail
umask 077
cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.."
dir=$(mktemp -d /tmp/cgwb-test.XXXXXX)
proxy= web= browser= fixture=
finish() {
  local rc=$?
  trap - EXIT
  for pid in "$browser" "$web" "$proxy" "$fixture"; do
    if [[ -n "$pid" ]]; then kill "$pid" 2>/dev/null || true; wait "$pid" 2>/dev/null || true; fi
  done
  if ((rc)); then
    tail -n 25 "$dir"/*.log 2>/dev/null || true
    find "$dir/files" -maxdepth 2 -type f -printf '%P\n'
    if [[ ${BRIDGE_TEST_DIAGNOSTICS:-0} == 1 && -f "$dir/home/profile/Default/History" ]]; then
      python3 - "$dir/home/profile/Default/History" <<'PY_SQL'
import sqlite3, sys
with sqlite3.connect("file:" + sys.argv[1] + "?mode=ro", uri=True) as database:
    print("Fixture download metadata:", database.execute(
        "select target_path, current_path, state, danger_type, interrupt_reason from downloads").fetchall())
PY_SQL
    fi
  fi
  rm -rf -- "$dir"
  exit "$rc"
}
trap finish EXIT
mkdir -p "$dir"/{files/uploads,files/downloads,auth,runtime,home}
port=${BRIDGE_TEST_PORT:-18443}
upstream=$((port + 1))
export BRIDGE_TEST_URL="https://127.0.0.1:$port"
export BRIDGE_TEST_DIR="$dir"
export BRIDGE_TEST_PASSWORD='local bridge integration fixture'
printf '{"Listen":"127.0.0.1:%s","Origin":"%s","State":"%s/auth","Runtime":"%s/runtime","Assets":"%s/frontend/dist","Files":"%s/files","UploadMiB":1,"UploadQuotaMiB":2}\n' \
  "$upstream" "$BRIDGE_TEST_URL" "$dir" "$dir" "$PWD" "$dir" > "$dir/config.json"
openssl req -new -newkey rsa:2048 -x509 -days 1 -nodes -subj '/CN=127.0.0.1' \
  -addext 'subjectAltName=IP:127.0.0.1' -keyout "$dir/tls.key" -out "$dir/tls.crt" 2>/dev/null
go -C backend build -o "$dir/bridge" .
go build -o "$dir/proxy" tests/tls-proxy.go
printf '%s' "$BRIDGE_TEST_PASSWORD" | "$dir/bridge" password-init "$dir/config.json"
printf '本机下载夹具' > "$dir/files/downloads/fixture.txt"
chmod 0640 "$dir/files/downloads/fixture.txt"
"$dir/bridge" serve "$dir/config.json" > "$dir/web.log" 2>&1 & web=$!
"$dir/proxy" "127.0.0.1:$port" "http://127.0.0.1:$upstream" "$dir/tls.crt" "$dir/tls.key" > "$dir/proxy.log" 2>&1 & proxy=$!
if [[ ${BRIDGE_LIVE_TEST:-0} == 1 ]]; then
  export BRIDGE_ON_DEMAND="${BRIDGE_TEST_ON_DEMAND:-0}"
  export DISPLAY=:89 HOME="$dir/home" XAUTHORITY="$dir/home/.Xauthority"
  export BRIDGE_RUNTIME="$dir/runtime" BRIDGE_FILES="$dir/files" BRIDGE_BROWSER_HOME="$HOME"
  export BRIDGE_BROWSER_SCRIPT="$PWD/browser/start.sh"
  # The fixture never receives credentials. Chromium still runs with its normal sandbox.
  export BRIDGE_START_URL="http://127.0.0.1:$((upstream+1))/fixture"
  python3 tests/fixture-server.py "$((upstream+1))" &
  fixture=$!
  "$dir/bridge" browser "$dir/config.json" > "$dir/browser.log" 2>&1 & browser=$!
fi
browser_expected=running
[[ ${BRIDGE_TEST_ON_DEMAND:-0} != 1 ]] || browser_expected=idle
for ((i=0;i<35;i++)); do
  if curl -kfsS "$BRIDGE_TEST_URL/healthz" >/dev/null 2>&1 &&
      { [[ ${BRIDGE_LIVE_TEST:-0} != 1 ]] || curl -fsS --unix-socket "$dir/runtime/control.sock" http://localhost/status 2>/dev/null | grep -q "\"state\":\"$browser_expected\""; }; then
    (cd frontend && npm test)
    exit
  fi
  sleep 1
done
exit 1
