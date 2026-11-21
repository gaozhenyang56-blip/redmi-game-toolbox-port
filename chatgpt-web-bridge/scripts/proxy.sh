#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname -- "${BASH_SOURCE[0]}")/common.sh"
mode=$1 domain=$2 port=$3 cert=${4:-} key=${5:-}
root
domain_ok "$domain" && [[ "$port" =~ ^[0-9]+$ ]] || die '反向代理参数无效。'
if [[ "$mode" == manual ]]; then
  [[ ! -e "$NGINX" && ! -e "$CADDY" ]] || die '先卸载现有 Bridge 代理配置再切换到手动模式。'
  info "请在现有 HTTPS 代理中添加 $domain → 127.0.0.1:$port，并转发 WebSocket。"
  exit 0
fi
if [[ "$mode" == auto ]]; then
  for service in nginx caddy; do
    if systemctl is-active --quiet "$service"; then
      [[ "$mode" == auto ]] || die '同时检测到多个代理，请通过 --proxy 指定。'
      mode=$service
    fi
  done
  if [[ "$mode" == auto ]]; then
    if systemctl is-active --quiet apache2 || used_port 80 || used_port 443; then
      die '已有 Apache 或其他监听服务。请使用 --proxy manual 并配置专用 HTTPS 虚拟主机。'
    fi
    die '未检测到运行中的 Nginx 或 Caddy。可先安装代理，或使用 --proxy manual。'
  fi
fi
stage=$(mktemp -d /var/lib/chatgpt-web-bridge/proxy.XXXXXX)
path= hook_created=0 committed=0
cleanup() {
  local rc=$?
  trap - EXIT
  if ((rc && committed)); then
    if [[ -f "$stage/previous" ]]; then copy_file "$stage/previous" "$path" 0644; else rm -f -- "$path"; fi
    (( ! hook_created )) || rm -f -- "$HOOK"
    systemctl reload "$mode" >/dev/null 2>&1 || true
  fi
  if ((rc)); then
    info "代理事务副本保留在 $stage。"
  else
    rm -rf -- "$stage"
  fi
  exit "$rc"
}
trap cleanup EXIT
systemctl is-active --quiet "$mode" || die "$mode 服务未运行。"
case "$mode" in
  nginx) path=$NGINX; other=$CADDY;;
  caddy) path=$CADDY; other=$NGINX;;
  *) die '无效的代理模式。';;
esac
[[ ! -e "$other" && ! -L "$other" ]] || die '已安装另一种 Bridge 代理配置。'
if [[ -e "$path" || -L "$path" ]]; then
  owned "$path" || die '目标配置已由其他服务占用。'
  cp -p -- "$path" "$stage/previous"
fi
template="$(dirname -- "${BASH_SOURCE[0]}")/../proxy/$mode.conf.in"
if [[ "$mode" == nginx ]]; then
  nginx -T > "$stage/nginx" 2> "$stage/check" || die '现有 Nginx 配置未通过检查。'
  python3 - "$stage/nginx" "$domain" "$path" <<'PY'
import re, sys
path, domain, own = sys.argv[1:]
active = None
for line in open(path):
    if line.startswith("# configuration file "):
        active = line.strip().removeprefix("# configuration file ").removesuffix(":")
    if active != own:
        line = line.split("#", 1)[0]
        for match in re.finditer(r"\bserver_name\s+([^;]*)", line, re.I):
            names = re.findall(r'[^\s"\x27]+', match.group(1).lower())
            if domain in names or ("." + domain) in names:
                sys.exit("此域名已有 Nginx 虚拟主机，请使用现有代理配置。")
PY
  if [[ -z "$cert$key" && -r /etc/letsencrypt/live/$domain/fullchain.pem && -r /etc/letsencrypt/live/$domain/privkey.pem ]]; then
    cert=/etc/letsencrypt/live/$domain/fullchain.pem key=/etc/letsencrypt/live/$domain/privkey.pem
  fi
  install -d -m 0755 "$LIB/acme" "$LIB/acme/.well-known" "$LIB/acme/.well-known/acme-challenge"
  if [[ -z "$cert$key" ]]; then
    command -v certbot >/dev/null || die 'Nginx 缺少此域名的证书。可安装 certbot 后配置 DNS，或传入 --cert 和 --key。'
    getent ahosts "$domain" >/dev/null || die '域名尚未解析，无法使用 ACME。'
    awk 'NR==1 {print; next} {if ($0=="") exit; print}' "$template" |
      sed -e "s|@DOMAIN@|$domain|g" > "$stage/http.conf"
    committed=1
    copy_file "$stage/http.conf" "$path" 0644
    nginx -T > "$stage/nginx" 2> "$stage/check" && grep -Fqx "# configuration file $path:" "$stage/nginx" &&
      ! grep -qi "conflicting server name" "$stage/check" || die 'Nginx 未成功载入专用 ACME 虚拟主机。'
    systemctl reload nginx
    certbot certonly --webroot -w "$LIB/acme" --cert-name "$domain" -d "$domain" --non-interactive --agree-tos --register-unsafely-without-email --keep-until-expiring
    cert=/etc/letsencrypt/live/$domain/fullchain.pem key=/etc/letsencrypt/live/$domain/privkey.pem
    install -d -m 0755 "${HOOK%/*}"
    if [[ -e "$HOOK" ]]; then
      owned "$HOOK" || die '续签 hook 已被其他程序占用。'
    else
      cat > "$stage/renew" <<EOT
#!/bin/sh
$HEADER
[ "\${RENEWED_LINEAGE:-}" = "/etc/letsencrypt/live/$domain" ] || exit 0
nginx -t && systemctl reload nginx
EOT
      copy_file "$stage/renew" "$HOOK" 0755
      hook_created=1
    fi
  fi
  [[ -r "$cert" && -r "$key" ]] || die '无法读取 HTTPS 证书或密钥。'
  openssl x509 -in "$cert" -checkend 0 -noout >/dev/null &&
    openssl x509 -in "$cert" -checkhost "$domain" -noout | grep -Eq ' does match certificate$' || die '证书已过期或未覆盖当前域名。'
  sed -e "s|@DOMAIN@|$domain|g" -e "s|@PORT@|$port|g" -e "s|@CERT@|$cert|g" -e "s|@KEY@|$key|g" "$template" > "$stage/config"
  committed=1
  copy_file "$stage/config" "$path" 0644
  nginx -T > "$stage/nginx" 2> "$stage/check" && grep -Fqx "# configuration file $path:" "$stage/nginx" &&
    ! grep -qi "conflicting server name" "$stage/check" || die 'Nginx 配置校验失败或专用配置未包含。'
  systemctl reload nginx
else
  [[ -z "$cert$key" ]] || die 'Caddy 使用自动签发。已有证书可通过手动代理配置使用。'
  [[ -d ${path%/*} ]] || die 'Caddy 未配置独立导入目录，请使用 --proxy manual。'
  getent ahosts "$domain" >/dev/null || die '域名尚未解析，Caddy 无法签发。'
  sed -e "s|@DOMAIN@|$domain|g" -e "s|@PORT@|$port|g" "$template" > "$stage/config"
  committed=1
  copy_file "$stage/config" "$path" 0644
  caddy adapt --config /etc/caddy/Caddyfile --adapter caddyfile > "$stage/caddy.json" 2> "$stage/check" ||
    die 'Caddy 配置解析失败。'
  python3 - "$stage/caddy.json" "$domain" "$port" <<'PY'
import json, sys
with open(sys.argv[1]) as f:
    data = json.load(f)
target = '127.0.0.1:' + sys.argv[3]
for server in data.get('apps', {}).get('http', {}).get('servers', {}).values():
    for route in server.get('routes', []):
        if any(sys.argv[2] in match.get('host', []) for match in route.get('match', [])):
            if '"dial": "'+target+'"' in json.dumps(route):
                break
    else:
        continue
    break
else:
    sys.exit("Caddy 主配置未导入 Bridge 虚拟主机。")
PY
  caddy validate --config /etc/caddy/Caddyfile --adapter caddyfile > "$stage/check" 2>&1 || die 'Caddy 校验失败。'
  systemctl reload caddy
fi
info "已载入 $mode 专用虚拟主机。"
