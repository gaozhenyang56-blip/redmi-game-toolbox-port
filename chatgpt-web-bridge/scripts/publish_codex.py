"""Add a path-specific Cloudflare origin route without restarting x-ui."""
import http.client
import json
import os
from pathlib import Path
import re
import shlex
import sys
import time
from urllib import request

import paramiko

from cloudflare_probe import client_get, identifier, ProbeError
from qinglian import PinnedHost, PIN_PATH, run

HOST = "gaozy.tech"
PHASE = "http_request_origin"
NAME = "ChatGPT Web Bridge /codex origin"
EXPRESSION = '(http.host eq "gaozy.tech" and (http.request.uri.path eq "/codex" or starts_with(http.request.uri.path, "/codex/")))'
RULE = {"action": "route", "action_parameters": {"origin": {"port": 8443}}, "expression": EXPRESSION,
        "description": NAME, "enabled": True}
SERVICE = "chatgpt-web-bridge-ingress.service"
RENEW = '''#!/bin/sh
# Managed by ChatGPT Web Bridge
set -eu
if [ "${RENEWED_LINEAGE:-}" = /etc/letsencrypt/live/qinglian-gaozy-tech ]; then
    systemctl try-restart chatgpt-web-bridge-ingress.service
fi
'''


def change(token, method, path, body=None):
    conn = http.client.HTTPSConnection("api.cloudflare.com", timeout=20)
    try:
        conn.request(method, "/client/v4" + path, body=None if body is None else json.dumps(body),
                     headers={"Authorization": "Bearer " + token, "Content-Type": "application/json"})
        response = conn.getresponse()
        if not 200 <= response.status < 300:
            raise RuntimeError(f"Cloudflare Origin Rules {method} 被拒绝（HTTP {response.status}）。")
        payload = json.load(response)
        if not payload.get("success"):
            raise RuntimeError("Cloudflare 未确认 Origin Rules 操作。")
        return payload["result"]
    finally:
        conn.close()


def fetch_json(url):
    with request.urlopen(url, timeout=15) as response:
        return json.load(response)


def check(url):
    try:
        with request.urlopen(request.Request(url, headers={"Cache-Control": "no-cache"}), timeout=10) as response:
            return response.status, response.read(65536)
    except OSError as error:
        return getattr(error, "code", 0), b""


def verify_public(before):
    for _ in range(10):
        status, _ = check("https://" + HOST + "/codex/healthz")
        if status == 204:
            admin, body = check("https://" + HOST + "/codex/admin")
            protected, _ = check("https://" + HOST + "/codex/api/session")
            if admin == 200 and b"ChatGPT Web Bridge" in body and protected == 401:
                if all(check("https://" + HOST + path)[0] == status for path, status in before.items()):
                    return
                raise RuntimeError("原站路径响应已变化，正在回滚本次发布。")
        time.sleep(4)
    raise RuntimeError("公网 /codex 健康检查未通过，正在回滚本次发布。")


def install_ingress(client, sudo, existing):
    if existing:
        return
    ranges = fetch_json("https://api.cloudflare.com/client/v4/ips")
    if not ranges.get("success"):
        raise RuntimeError("无法读取 Cloudflare 官方源站地址范围。")
    private = run(client, "mktemp -d /tmp/cgwb-ingress.XXXXXXXX", publish=False)
    if not re.fullmatch(r"/tmp/cgwb-ingress\.[A-Za-z0-9]+", private):
        raise RuntimeError("临时路径无效。")
    src = shlex.quote(private)
    try:
        with client.open_sftp() as sftp:
            sftp.put("dist/codex-ingress", private + "/codex-ingress")
            sftp.put("systemd/" + SERVICE, private + "/" + SERVICE)
            with sftp.open(private + "/cloudflare-ranges", "w") as file:
                file.write("\n".join(ranges["result"]["ipv4_cidrs"] + ranges["result"]["ipv6_cidrs"]) + "\n")
            with sftp.open(private + "/renew", "w") as file:
                file.write(RENEW)
        cmd = f'''set -eu
test ! -e /etc/systemd/system/{SERVICE}
test ! -e /opt/chatgpt-web-bridge/ingress
test ! -e /etc/letsencrypt/renewal-hooks/deploy/chatgpt-web-bridge-ingress
test -z "$(ss -H -lnt 'sport = :8443')"
openssl x509 -in /etc/letsencrypt/live/qinglian-gaozy-tech/fullchain.pem -checkend 86400 -noout >/dev/null
install -d -m 0755 /opt/chatgpt-web-bridge/ingress
install -m 0755 {src}/codex-ingress /opt/chatgpt-web-bridge/ingress/codex-ingress
install -m 0644 {src}/cloudflare-ranges /opt/chatgpt-web-bridge/ingress/cloudflare-ranges
install -m 0644 {src}/{SERVICE} /etc/systemd/system/{SERVICE}
install -d -m 0755 /etc/letsencrypt/renewal-hooks/deploy
install -m 0755 {src}/renew /etc/letsencrypt/renewal-hooks/deploy/chatgpt-web-bridge-ingress
systemctl daemon-reload
systemctl start {SERVICE}
'''
        run(client, sudo + "bash -c " + shlex.quote(cmd), publish=False)
    finally:
        run(client, "rm -rf -- " + src, publish=False)


def uninstall_ingress(client, sudo):
    cmd = f'''set -eu
unit=/etc/systemd/system/{SERVICE}
if [ -f "$unit" ] && grep -Fxq '# Managed by ChatGPT Web Bridge' "$unit"; then
    systemctl disable --now {SERVICE} >/dev/null 2>&1 || true
    rm -- "$unit"
    rm -f -- /opt/chatgpt-web-bridge/ingress/codex-ingress /opt/chatgpt-web-bridge/ingress/cloudflare-ranges
    rmdir /opt/chatgpt-web-bridge/ingress 2>/dev/null || true
    hook=/etc/letsencrypt/renewal-hooks/deploy/chatgpt-web-bridge-ingress
    if [ -f "$hook" ] && grep -Fxq '# Managed by ChatGPT Web Bridge' "$hook"; then rm -- "$hook"; fi
    systemctl daemon-reload
fi
'''
    run(client, sudo + "bash -c " + shlex.quote(cmd), publish=False)


def publish(client, sudo, token, zone_id):
    path = f"/zones/{zone_id}/rulesets"
    current = [item for item in client_get(token,path)["result"]
               if item.get("kind") == "zone" and item.get("phase") == PHASE]
    if current:
        if len(current) != 1 or current[0].get("name") != NAME:
            raise RuntimeError("已存在其他 Origin Rules 配置，需要检查后再接入。")
        rules = client_get(token,path + "/" + identifier(current[0], "id"))["result"]["rules"]
        if len(rules) != 1 or any(rules[0].get(key) != value for key, value in RULE.items()):
            raise RuntimeError("现有规则与 Bridge 路由不匹配。")

    run(client, '''test "$(curl -fsS -o /dev/null -w '%{http_code}' --max-time 5 -H 'Host: gaozy.tech' http://127.0.0.1:18642/codex/healthz)" = 204''', publish=False)
    before = {path: check("https://" + HOST + path)[0] for path in ("/", "/panel/")}
    if any(value != 200 for value in before.values()):
        raise RuntimeError("原站或面板未通过发布前检查。")
    existing = run(client, f"if systemctl is-active --quiet {SERVICE}; then printf active; fi", publish=False) == "active"
    if existing != bool(current):
        raise RuntimeError("现有 ingress 服务和 Cloudflare 路由状态不一致。")
    if not existing:
        run(client, f"test ! -e /etc/systemd/system/{SERVICE} && "
            "test ! -e /etc/letsencrypt/renewal-hooks/deploy/chatgpt-web-bridge-ingress && "
            "test ! -e /opt/chatgpt-web-bridge/ingress", publish=False)
    new_ruleset = None
    try:
        install_ingress(client, sudo, existing)
        run(client, '''for n in 1 2 3 4 5; do
  if test "$(curl -sS -o /dev/null -w '%{http_code}' --max-time 3 --resolve gaozy.tech:8443:127.0.0.1 https://gaozy.tech:8443/codex/healthz)" = 204; then exit 0; fi
  sleep 1
done
exit 1''', publish=False)
        if not current:
            previous, _ = check("https://" + HOST + "/codex/healthz")
            if previous != 404:
                raise RuntimeError("现有 /codex 健康检查路径需要先确认归属。")
            result = change(token,"POST",path,{"name":NAME,"kind":"zone","phase":PHASE,"rules":[RULE]})
            new_ruleset = identifier(result,"id")
        verify_public(before)
        run(client, sudo + f"systemctl enable {SERVICE}", publish=False)
    except Exception:
        if new_ruleset:
            change(token,"DELETE",path + "/" + new_ruleset)
        if not existing:
            uninstall_ingress(client,sudo)
        raise
    print("已验证 https://gaozy.tech/codex/，原站和 /panel/ 正常。")


def main():
    token = os.environ.get("QINGLIAN_CLOUDFLARE_TOKEN", "")
    if not re.fullmatch(r"[A-Za-z0-9_-]{20,1024}",token):
        raise RuntimeError("缺少 Cloudflare Secret。")
    zones = client_get(token,"/zones",name=HOST)["result"]
    if len(zones) != 1 or zones[0].get("name") != HOST:
        raise RuntimeError("Cloudflare 域区无法唯一确认。")
    pin = (os.environ.get("QINGLIAN_SSH_HOST_KEY") or PIN_PATH.read_text()).strip()
    if not re.fullmatch(r"SHA256:[A-Za-z0-9+/]{43}",pin):
        raise RuntimeError("缺少有效的 SSH 主机指纹。")
    name = os.environ.get("QINGLIAN_SSH_USER") or "root"
    with paramiko.SSHClient() as client:
        client.set_missing_host_key_policy(PinnedHost(pin))
        client.connect(os.environ["QINGLIAN_SSH_HOST"],
                       port=int(os.environ.get("QINGLIAN_SSH_PORT") or "22"), username=name,
                       password=os.environ["QINGLIAN_SSH_PASSWORD"], look_for_keys=False,
                       allow_agent=False, timeout=15, auth_timeout=15, banner_timeout=15)
        publish(client, "" if name == "root" else "sudo -n ", token, identifier(zones[0],"id"))


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, ProbeError, KeyError, OSError, ValueError, paramiko.SSHException) as error:
        print(str(error) if type(error) in {RuntimeError, ProbeError} else "入口部署失败，请检查 SSH、证书和规则配置。", file=sys.stderr)
        sys.exit(1)
