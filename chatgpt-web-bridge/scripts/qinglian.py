"""Deploy only the verified build from this run over the existing Qinglian SSH route."""
import base64
import hashlib
import hmac
import os
from pathlib import Path
import re
import shlex
import sys

import paramiko

MODE = os.environ.get("BRIDGE_OPERATION", "probe")
PROXY = os.environ.get("BRIDGE_PROXY", "auto")
PIN_PATH = Path(__file__).resolve().parents[2] / "qinglian/server/github/server-host-key.sha256"
DOMAIN = "chat.gaozy.tech"
PROBE = r"""
. /etc/os-release
printf '系统 %s %s; 架构 %s\n' "$ID" "$VERSION_ID" "$(uname -m)"
awk '/^MemTotal:|^MemAvailable:|^SwapTotal:/{printf "%s %.0f MiB\n",$1,$2/1024}' /proc/meminfo
for name in nginx caddy apache2; do
  if systemctl is-active --quiet "$name"; then printf '%s 已运行\n' "$name"; fi
done
for port in 80 443 18642; do
  if [ -n "$(ss -H -lnt "sport = :$port")" ]; then printf '%s 端口已占用\n' "$port"; fi
done
if getent ahosts chat.gaozy.tech >/dev/null; then printf '目标域名已解析\n'; else printf '目标域名未解析\n'; fi
if [ -r /etc/letsencrypt/live/chat.gaozy.tech/fullchain.pem ]; then printf '发现同名证书\n'; fi
if command -v certbot >/dev/null; then printf '已安装 certbot\n'; fi
if [ -f /etc/chatgpt-web-bridge/config.json ]; then printf 'Bridge 已安装\n'; fi
"""


class PinnedHost(paramiko.MissingHostKeyPolicy):
    def __init__(self, fingerprint):
        self.fingerprint = fingerprint

    def missing_host_key(self, client, hostname, key):
        actual = "SHA256:" + base64.b64encode(hashlib.sha256(key.asbytes()).digest()).decode().rstrip("=")
        if not hmac.compare_digest(self.fingerprint, actual):
            raise paramiko.SSHException("Qinglian SSH 主机指纹不匹配。")


def run(client, command, secret=None, publish=True, timeout=480):
    stdin, stdout, stderr = client.exec_command(command, timeout=timeout)
    if secret:
        stdin.write(secret + "\n")
        stdin.flush()
    stdin.channel.shutdown_write()
    # The root installer can print package- and host-specific diagnostics. Keep
    # these on the server, and publish only the fixed probe output.
    data = stdout.read().decode("utf-8", errors="replace")
    stderr.read()
    if stdout.channel.recv_exit_status():
        raise RuntimeError("Qinglian 命令失败。部署时请从服务器查看 /var/log/chatgpt-web-bridge-install.log。")
    if publish:
        print(data.rstrip())
    return data.strip()


def deploy(client, username, password):
    bundle = Path("dist/chatgpt-web-bridge-linux-x86_64.tar.gz")
    checksum = bundle.with_name(bundle.name + ".sha256")
    if not bundle.is_file() or not checksum.is_file():
        raise RuntimeError("找不到已验证的部署包。")
    if run(client, 'uname -m', publish=False) != "x86_64":
        raise RuntimeError("此部署包仅支持 x86_64。")
    if PROXY != "manual":
        run(client, f"getent ahosts {DOMAIN} >/dev/null", publish=False)
    remote = run(client, "mktemp -d /tmp/cgwb-deploy.XXXXXXXX", publish=False)
    if not re.fullmatch(r"/tmp/cgwb-deploy\.[A-Za-z0-9]+", remote):
        raise RuntimeError("服务器临时目录格式无效。")
    remote_dir = shlex.quote(remote)
    root = "" if username == "root" else "sudo -n "
    try:
        with client.open_sftp() as sftp:
            sftp.put(str(bundle), f"{remote}/{bundle.name}")
            sftp.put(str(checksum), f"{remote}/{checksum.name}")
        script = f"""
set -eu
cd {remote_dir}
sha256sum -c {shlex.quote(checksum.name)}
tar xzf {shlex.quote(bundle.name)}
{root}sh -c 'umask 077; exec bash chatgpt-web-bridge/scripts/install.sh --domain {DOMAIN} --proxy {PROXY} --password-stdin >/var/log/chatgpt-web-bridge-install.log 2>&1'
"""
        run(client, "bash -c " + shlex.quote(script), secret=password, publish=False)
    finally:
        run(client, f"rm -rf -- {remote_dir}", publish=False)
    print("VPS 本地验收通过。")
    if PROXY != "manual":
        run(client, f"curl -fsS --max-time 20 https://{DOMAIN}/healthz >/dev/null", publish=False)
        print(f"HTTPS 验收通过 https://{DOMAIN}/admin")


def main():
    if MODE not in {"probe", "deploy"} or PROXY not in {"auto", "nginx", "caddy", "manual"}:
        raise RuntimeError("无效的部署参数。")
    host = os.environ.get("QINGLIAN_SSH_HOST", "")
    credential = os.environ.get("QINGLIAN_SSH_PASSWORD", "")
    username = os.environ.get("QINGLIAN_SSH_USER") or "root"
    password = os.environ.get("BRIDGE_ADMIN_PASSWORD", "")
    if not host or not credential:
        raise RuntimeError("GitHub Actions 缺少 Qinglian SSH Secret。")
    if MODE == "deploy" and (not 12 <= len(password.encode()) <= 72 or "\n" in password or "\r" in password):
        raise RuntimeError("部署需要配置 CHATGPT_BRIDGE_PASSWORD。")
    fingerprint = (os.environ.get("QINGLIAN_SSH_HOST_KEY") or PIN_PATH.read_text()).strip()
    if not re.fullmatch(r"SHA256:[A-Za-z0-9+/]{43}", fingerprint):
        raise RuntimeError("缺少有效的 Qinglian SSH 指纹。")
    with paramiko.SSHClient() as client:
        client.set_missing_host_key_policy(PinnedHost(fingerprint))
        client.connect(host, port=int(os.environ.get("QINGLIAN_SSH_PORT") or "22"),
                       username=username, password=credential, look_for_keys=False,
                       allow_agent=False, timeout=15, auth_timeout=15, banner_timeout=15)
        run(client, "sh -c " + shlex.quote(PROBE))
        if MODE == "deploy":
            deploy(client, username, password)


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, OSError, ValueError, paramiko.SSHException) as error:
        # Paramiko and socket errors can include host/user details.
        print(str(error) if type(error) is RuntimeError else "Qinglian SSH 连接、身份验证或文件传输失败。", file=sys.stderr)
        sys.exit(1)
