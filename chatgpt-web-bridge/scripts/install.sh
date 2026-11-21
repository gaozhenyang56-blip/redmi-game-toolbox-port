#!/usr/bin/env bash
set -Eeuo pipefail
umask 022
source "$(dirname -- "${BASH_SOURCE[0]}")/common.sh"
root
lock
system_supported
bundle=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
[[ -x "$bundle/bridge" && -f "$bundle/web/index.html" ]] || die '请从已构建的 Linux 安装包运行此脚本。'
domain=chat.gaozy.tech base_path= port=18642 proxy=auto cert= key= chromium= memory= admin_user=admin on_demand= password_init=password-init min_password_bytes=12 password_stdin=0 skip_deps=0
while (($#)); do
  case "$1" in
    --domain) domain=${2:?}; shift;;
    --base-path) base_path=${2:?}; shift;;
    --port) port=${2:?}; shift;;
    --proxy) proxy=${2:?}; shift;;
    --cert) cert=${2:?}; shift;;
    --key) key=${2:?}; shift;;
    --chromium) chromium=${2:?}; shift;;
    --memory-max-mib) memory=${2:?}; shift;;
    --admin-user) admin_user=${2:?}; shift;;
    --on-demand) on_demand=1;;
    --always-on) on_demand=0;;
    --accept-11-byte-password) min_password_bytes=11; password_init=password-init-explicit;;
    --password-stdin) password_stdin=1;;
    --skip-dependencies) skip_deps=1;;
    *) die "未知参数 $1";;
  esac
  shift
done
domain_ok "$domain" || die '域名无效。'
if [[ -n "$base_path" ]]; then
  [[ "$base_path" =~ ^(/[a-zA-Z0-9_-]+)+$ && ${#base_path} -le 128 ]] || die 'URL 子路径无效。'
  [[ "$proxy" == manual ]] || die '共享域名的子路径需要使用 --proxy manual。'
fi
[[ "$admin_user" =~ ^[a-zA-Z0-9_.-]{2,48}$ ]] || die '管理员登录名需要 2–48 个字母、数字、句点、下划线或连字符。'
[[ "$port" =~ ^[1-9][0-9]{3,4}$ ]] && ((port<=65535)) || die '上游端口无效。'
[[ "$proxy" =~ ^(auto|nginx|caddy|manual)$ ]] || die '反向代理选项无效。'
[[ -z "$cert$key" || ( "$cert" =~ ^/[a-zA-Z0-9/_.-]+$ && "$key" =~ ^/[a-zA-Z0-9/_.-]+$ ) ]] || die '请同时给出规范的证书、密钥绝对路径。'
if [[ -f "$ETC/config.json" ]]; then
  read -r old_domain old_port old_path < <(python3 - "$ETC/config.json" <<'PY'
import json, sys, urllib.parse
c = json.load(open(sys.argv[1]))
print(urllib.parse.urlsplit(c["Origin"]).netloc, c["Listen"].rsplit(":", 1)[1], c.get("BasePath", ""))
PY
)
  [[ "$old_domain/$old_port$old_path" == "$domain/$port$base_path" ]] || die '已有实例的域名或端口不同。更新时请使用原设置，迁移步骤见文档。'
else
  used_port "$port" && die "端口 $port 已被占用，请换用其他上游端口。"
fi
[[ $(df -Pm /opt | awk 'END {print $4}') -ge 1536 ]] || die '可用磁盘少于 1.5 GiB。'
info "80 端口占用：$(used_port 80 && printf '有' || printf '无')，443 端口占用：$(used_port 443 && printf '有' || printf '无')"
[[ -n $(swapon --show=NAME --noheadings) ]] || info '未检测到 swap。若资源紧张，可按需要自行配置。'
available=$(awk '/^MemAvailable:/{print int($2/1024)}' /proc/meminfo)
if [[ -z "$on_demand" ]]; then
  if grep -Fqx 'BRIDGE_ON_DEMAND=1' "$ETC/browser.env" 2>/dev/null; then on_demand=1; else on_demand=0; fi
fi
total=$(awk '/^MemTotal:/{print int($2/1024)}' /proc/meminfo)
if [[ -z "$memory" && -f "$ETC/browser-limits.conf" ]]; then
  memory=$(sed -nE 's/^MemoryMax=([0-9]+)M$/\1/p' "$ETC/browser-limits.conf")
fi
if [[ -z "$memory" ]]; then
  memory=$((available*2/3))
  ((memory<=1024)) || memory=1024
  ((memory<=total/2)) || memory=$((total/2))
  if ((on_demand && memory<512)); then memory=512; fi
fi
[[ "$memory" =~ ^[1-9][0-9]{2,3}$ ]] && ((memory>=384 && memory<=4096 && memory<=total*3/4)) || die "可用内存约 ${available} MiB，无法给浏览器安全分配所需内存。"
if [[ ! -f "$ETC/config.json" ]]; then
  if ((on_demand)); then
    ((available>=220)) || die '可用内存低于 220 MiB，无法安全安装待机后台。'
    info '按需启动已启用。打开聊天或 Codex 时，Chromium 会重新检查可用内存。'
  elif ((available < memory + 220)); then
    die '当前可用内存不足以安全启动 Chromium。可用 --on-demand 安装待机后台。'
  fi
fi
info "当前可用内存约 ${available} MiB，Chromium 上限 ${memory} MiB。"
if [[ ! -f "$LIB/auth/password.bcrypt" ]]; then
  if ((password_stdin)); then
    IFS= read -r password || [[ -n "$password" ]] || die '需要从标准输入提供访问密码。'
  else
    [[ -t 0 ]] || die '非交互首次安装请使用 --password-stdin。'
    IFS= read -rsp '设置独立访问密码（12–72 字节）: ' password
    printf '\n'
    IFS= read -rsp '再次输入: ' repeated
    printf '\n'
    [[ "$password" == "$repeated" ]] || die '两次密码不同。'
    unset repeated
  fi
  bytes=$(printf %s "$password" | wc -c)
  ((bytes>=min_password_bytes && bytes<=72)) || die "访问密码需要 $min_password_bytes–72 字节。"
fi
if (( ! skip_deps )); then
  apt-get update
  deps=(tigervnc-standalone-server openbox xauth x11-utils xclip xdotool fonts-noto-cjk ca-certificates curl iproute2 python3 openssl)
  if [[ -z "$chromium" ]] && ! select_chromium >/dev/null; then
    . /etc/os-release
    if [[ "$ID" == debian ]]; then deps+=(chromium chromium-sandbox)
    else
      deps+=(gnupg libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libasound2 libgtk-3-0)
      if [[ "$VERSION_ID" == 24.04 ]]; then
        for i in "${!deps[@]}"; do
          case "${deps[i]}" in libatk1.0-0|libatk-bridge2.0-0|libcups2|libasound2|libgtk-3-0) deps[i]+='t64';; esac
        done
      fi
    fi
  fi
  pending=()
  for dependency in "${deps[@]}"; do
    if ! dpkg-query -W -f='${db:Status-Abbrev}' "$dependency" 2>/dev/null | grep -q '^ii'; then
      pending+=("$dependency")
    fi
  done
  if ((${#pending[@]})); then safe_apt "${pending[@]}"; fi
fi
install -d -m 0755 "$APP" "$APP/releases"
if [[ -z "$chromium" ]]; then
  if ! chromium=$(select_chromium) && ((!skip_deps)); then
    . /etc/os-release
    [[ "$ID" == ubuntu ]] || die 'Chromium 未安装。'
    install_ubuntu_chrome
    chromium=$(select_chromium)
  fi
fi
[[ "$chromium" =~ ^/[a-zA-Z0-9/_.-]+$ && -x "$chromium" ]] || die 'Chromium 可执行文件不存在。'
for cmd in Xtigervnc openbox xauth xdpyinfo xprop xclip xdotool; do command -v "$cmd" >/dev/null || die "缺少 $cmd"; done
if ! getent group cgwb-share >/dev/null; then groupadd --system cgwb-share; fi
for account in cgwb-web cgwb-browser; do
  if ! id "$account" >/dev/null 2>&1; then useradd --system --user-group --no-create-home --shell /usr/sbin/nologin "$account"; fi
done
install -d -m 0755 "$LIB" "$FILES" "$ETC"
install -d -m 0700 -o cgwb-web -g cgwb-web "$LIB/auth"
install -d -m 0700 -o cgwb-browser -g cgwb-share "$LIB/browser" "$LIB/browser/runtime"
install -d -m 2750 -o cgwb-web -g cgwb-share "$FILES/uploads"
install -d -m 2770 -o cgwb-browser -g cgwb-share "$FILES/downloads"

for unit in "$WEB" "$BROWSER"; do
  if [[ -L "$UNITS/$unit" ]] || { [[ -e "$UNITS/$unit" ]] && ! grep -Fq 'ExecStart=/opt/chatgpt-web-bridge/current/bridge ' "$UNITS/$unit"; }; then
    die "拒绝覆盖外部 unit：$unit"
  fi
done
if [[ -e "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf" || -L "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf" ]]; then
  [[ $(readlink "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf" || true) == "$ETC/browser-limits.conf" ]] || die '浏览器资源 drop-in 路径已占用。'
fi
if [[ -e "$APP/current" ]] && [[ ! -L "$APP/current" ]]; then die '发布路径已由其他服务占用。'; fi
snap=$(mktemp -d "$LIB/rollback.XXXXXX")
release=$(mktemp -d "$APP/releases/release.XXXXXX")
chmod 0755 "$release"
[ ! -L "$APP/current" ] || readlink -- "$APP/current" > "$snap/current"
track=("$ETC/config.json" "$ETC/browser.env" "$ETC/browser-limits.conf" "$UNITS/$WEB" "$UNITS/$BROWSER" "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf")
for i in "${!track[@]}"; do
  path=${track[i]}
  if [[ -L "$path" && "$path" != "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf" ]]; then die "配置路径是外部符号链接：$path"; fi
  [[ ! -e "$path" && ! -L "$path" ]] || cp -a -- "$path" "$snap/$i"
done
web_active=0 browser_active=0 web_enabled=0 browser_enabled=0 auth_created=0
systemctl is-enabled --quiet "$WEB" && web_enabled=1
systemctl is-enabled --quiet "$BROWSER" && browser_enabled=1
systemctl is-active --quiet "$WEB" && web_active=1
systemctl is-active --quiet "$BROWSER" && browser_active=1
rollback() {
  local rc=$?
  trap - EXIT
  if ((rc)); then
    info '安装失败。正在恢复本项目配置。'
    systemctl stop "$WEB" "$BROWSER" 2>/dev/null || true
    for i in "${!track[@]}"; do
      if [[ -e "$snap/$i" || -L "$snap/$i" ]]; then cp -aT --remove-destination "$snap/$i" "${track[i]}"; else rm -f -- "${track[i]}"; fi
    done
    rm -f -- "$APP/current"
    [[ ! -f "$snap/current" ]] || ln -s -- "$(cat "$snap/current")" "$APP/current"
    (( ! auth_created )) || rm -f -- "$LIB/auth/password.bcrypt"
    systemctl daemon-reload || true
    (( web_enabled )) || systemctl disable "$WEB" 2>/dev/null || true
    (( browser_enabled )) || systemctl disable "$BROWSER" 2>/dev/null || true
    (( ! browser_active )) || systemctl start "$BROWSER" || true
    (( ! web_active )) || systemctl start "$WEB" || true
    rm -rf -- "$release"
    info "回滚副本保留在 $snap。"
  else
    rm -rf -- "$snap"
  fi
  exit "$rc"
}
trap rollback EXIT
cp -a "$bundle"/{bridge,web,browser,scripts,systemd,proxy,docs,release.txt,README.md,README_EN.md,SECURITY.md,CHANGELOG.md,LICENSE,NO-VNC-LICENSE.txt} "$release/"
chown -R root:root "$release"
chmod -R u=rwX,go=rX "$release"
if [[ ! -e "$ETC/config.json" ]]; then
  printf '{"Listen":"127.0.0.1:%s","Origin":"https://%s","AdminUser":"%s","BasePath":"%s"}\n' "$port" "$domain" "$admin_user" "$base_path" > "$snap/config"
  copy_file "$snap/config" "$ETC/config.json" 0644
fi
"$release/bridge" check "$ETC/config.json"
if [[ ! -e "$ETC/browser.env" ]]; then
  printf 'BRIDGE_CHROMIUM=%s\nBRIDGE_GEOMETRY=1152x768\n' "$chromium" > "$snap/env"
else
  sed '/^BRIDGE_ON_DEMAND=/d' "$ETC/browser.env" > "$snap/env"
fi
printf 'BRIDGE_ON_DEMAND=%s\n' "$on_demand" >> "$snap/env"
copy_file "$snap/env" "$ETC/browser.env" 0644
printf '[Service]\nMemoryHigh=%sM\nMemoryMax=%sM\n' "$((memory*3/4))" "$memory" > "$snap/limit"
copy_file "$snap/limit" "$ETC/browser-limits.conf" 0644
if [[ ! -e "$LIB/auth/password.bcrypt" ]]; then
  auth_created=1
  printf '%s' "$password" | runuser -u cgwb-web -- "$release/bridge" "$password_init" "$ETC/config.json"
  unset password
fi
for unit in "$WEB" "$BROWSER"; do
  copy_file "$release/systemd/$unit" "$UNITS/$unit" 0644
done
install -d -m 0755 "$UNITS/$BROWSER.d"
ln -sfn -- "$ETC/browser-limits.conf" "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf"
ln -s -- "$release" "$APP/.current.$$"
mv -Tf -- "$APP/.current.$$" "$APP/current"
systemd-analyze verify "$UNITS/$WEB" "$UNITS/$BROWSER"
systemctl daemon-reload
systemctl restart "$BROWSER" "$WEB"
ready=0
expected=running
(( ! on_demand )) || expected=idle
for ((i=0;i<35;i++)); do
  if curl -fsS --max-time 2 -H "Host: $domain" "http://127.0.0.1:$port$base_path/healthz" >/dev/null 2>&1 &&
      curl -fsS --max-time 2 --unix-socket /run/chatgpt-web-bridge/control.sock http://localhost/status 2>/dev/null | grep -q "\"state\":\"$expected\""; then
    ready=1
    break
  fi
  sleep 1
done
((ready)) || die '本地浏览器或后端未通过启动检查。请查看本项目 journal。'
systemctl enable "$BROWSER" "$WEB"
bash "$release/scripts/proxy.sh" "$proxy" "$domain" "$port" "$cert" "$key"
info "服务已启动。管理后台 https://$domain$base_path/admin"
