"""Read-only Cloudflare checks for the Bridge hostname."""

import http.client
import json
import os
import re
from urllib import parse

ZONE = "gaozy.tech"
HOSTNAME = f"chat.{ZONE}"


class ProbeError(Exception):
    pass


def client_get(token, path, **filters):
    if filters:
        path += "?" + parse.urlencode(filters)
    conn = http.client.HTTPSConnection("api.cloudflare.com", timeout=15)
    try:
        conn.request("GET", "/client/v4" + path, headers={"Authorization": f"Bearer {token}"})
        response = conn.getresponse()
        if response.status >= 400:
            raise ProbeError(f"HTTP {response.status}")
        body = json.load(response)
        if not body.get("success"):
            raise ProbeError("Cloudflare 拒绝查询")
        return body
    except (OSError, ValueError, http.client.HTTPException) as error:
        raise ProbeError("Cloudflare 连接或响应异常") from error
    finally:
        conn.close()


def identifier(data, key):
    value = data.get(key, "")
    if not re.fullmatch("[a-f0-9]{32}", value):
        raise ProbeError("Cloudflare 返回的标识符无效")
    return value


def inspect(token):
    zones = client_get(token, "/zones", name=ZONE)["result"]
    matches = [zone for zone in zones if zone.get("name") == ZONE]
    if len(matches) != 1:
        raise ProbeError("Token 无法定位 gaozy.tech 域区")
    zone = matches[0]
    zone_id = identifier(zone, "id")
    account_id = identifier(zone.get("account", {}), "id")
    print("gha-cloudflare: gaozy.tech 区域可读取")

    try:
        records = client_get(token, f"/zones/{zone_id}/dns_records", name=HOSTNAME)["result"]
        allowed_types = {"A", "AAAA", "CNAME", "TXT", "HTTPS", "SVCB", "CAA", "MX", "NS"}
        types = sorted({record["type"] for record in records if record.get("name") == HOSTNAME
                        and record.get("type") in allowed_types})
        print(f"gha-cloudflare: {HOSTNAME} DNS 可读取，记录类型 " + (", ".join(types) or "无"))
    except ProbeError as error:
        print(f"gha-cloudflare: DNS 查询失败（{error}）")

    try:
        domains = client_get(token, f"/zones/{zone_id}/dns_records", name=ZONE)["result"]
        proxied = sum(entry.get("proxied") is True and entry.get("name") == ZONE and
                      entry.get("type") in {"A", "AAAA", "CNAME"} for entry in domains)
        print(f"gha-cloudflare: 主站有 {proxied} 条启用代理的源站记录")
    except ProbeError as error:
        print(f"gha-cloudflare: 主站代理查询失败（{error}）")

    try:
        rulesets = client_get(token, f"/zones/{zone_id}/rulesets")["result"]
        phase_present = any(item.get("phase") == "http_request_origin" and item.get("kind") == "zone"
                            for item in rulesets)
        print("gha-cloudflare: 规则集可读取，Origin Rules " + ("已有配置" if phase_present else "暂无配置"))
    except ProbeError as error:
        print(f"gha-cloudflare: Origin Rules 查询失败（{error}）")

    try:
        result = client_get(token, f"/accounts/{account_id}/cfd_tunnel", is_deleted="false", per_page=100)
        tunnels = result["result"]
        healthy = sum(tunnel.get("status") == "healthy" for tunnel in tunnels)
        print(f"gha-cloudflare: Tunnel 可读取，首批返回 {len(tunnels)} 个，其中 {healthy} 个健康")
    except ProbeError as error:
        print(f"gha-cloudflare: Tunnel 查询失败（{error}）")


def main():
    token = os.environ.get("QINGLIAN_CLOUDFLARE_TOKEN", "")
    if not re.fullmatch(r"[A-Za-z0-9_-]{20,1024}", token):
        raise SystemExit("gha-cloudflare: 缺少可用的 QINGLIAN_CLOUDFLARE_TOKEN Secret")
    try:
        inspect(token)
    except (ProbeError, KeyError, TypeError) as error:
        reason = str(error) if isinstance(error, ProbeError) else "Cloudflare 响应缺少所需字段"
        raise SystemExit(f"gha-cloudflare: {reason}") from None


if __name__ == "__main__":
    main()
