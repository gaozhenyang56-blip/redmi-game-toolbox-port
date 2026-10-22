#!/usr/bin/env bash
set -euo pipefail
test "$(id -u)" = 0
base=/opt/astrbot
test ! -e "$base" || { echo 'Existing /opt/astrbot: refusing to overwrite'; exit 1; }
test ! -e /etc/systemd/system/astrbot.service
python3 - <<'PY'
import shutil,socket
with socket.socket() as s:
 s.bind(('127.0.0.1',6185))
assert shutil.disk_usage('/opt').free > 3*1024**3, 'Insufficient disk space'
PY
export DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=l
apt-get update -qq
apt-get install -y -qq python3.12-venv curl git
if ! id astrbot >/dev/null 2>&1; then
 useradd --system --user-group --home-dir "$base" --shell /usr/sbin/nologin astrbot
fi
install -d -m 0750 -o astrbot -g astrbot "$base"
tar -xzf /tmp/astrbot-source.tar.gz --strip-components=1 -C "$base"
python3 -m venv "$base/.bootstrap"
"$base/.bootstrap/bin/pip" --disable-pip-version-check install uv==0.13.5
"$base/.bootstrap/bin/uv" venv --python /usr/bin/python3.12 "$base/.venv"
"$base/.bootstrap/bin/uv" pip install --python "$base/.venv/bin/python" -r "$base/requirements.txt"
chown -R astrbot:astrbot "$base"
cd "$base"
"$base/.venv/bin/python" - <<'PY'
import json,os
from pathlib import Path
from astrbot.core.config.default import DEFAULT_CONFIG
from astrbot.core.utils.auth_password import hash_dashboard_password,hash_md5_dashboard_password
credentials=json.loads(Path('/tmp/astrbot-bootstrap.json').read_text())
config=DEFAULT_CONFIG
config['dashboard'].update(host='127.0.0.1',port=6185,username='astrbot',
 password=hash_md5_dashboard_password(credentials['password']),
 pbkdf2_password=hash_dashboard_password(credentials['password']),
 password_storage_upgraded=True,password_change_required=True)
data=Path('data');data.mkdir(exist_ok=True)
path=data/'cmd_config.json';path.write_text(json.dumps(config,ensure_ascii=False,indent=2));os.chmod(path,0o600)
PY
chown -R astrbot:astrbot "$base/data"
cat > /etc/systemd/system/astrbot.service <<'UNIT'
[Unit]
Description=AstrBot messaging agent
After=network-online.target
Wants=network-online.target
StartLimitIntervalSec=300
StartLimitBurst=10

[Service]
Type=simple
User=astrbot
Group=astrbot
WorkingDirectory=/opt/astrbot
Environment=HOME=/opt/astrbot
Environment=PYTHONUNBUFFERED=1
Environment=TZ=Asia/Shanghai
ExecStart=/opt/astrbot/.venv/bin/python /opt/astrbot/main.py
Restart=always
RestartSec=10
TimeoutStopSec=45
NoNewPrivileges=true
PrivateTmp=true
UMask=0077
MemoryHigh=1G
MemoryMax=1536M

[Install]
WantedBy=multi-user.target
UNIT
systemctl daemon-reload
systemctl enable --now astrbot
for attempt in $(seq 1 90); do
 if curl -fsS --max-time 3 -o /dev/null http://127.0.0.1:6185/; then
  echo 'ASTRBOT_HTTP_READY'
  exit 0
 fi
 sleep 2
done
echo 'AstrBot HTTP readiness timed out; inspect server-local journal.' >&2
exit 1
