#!/usr/bin/env bash
set -Eeuo pipefail
source "$(dirname -- "${BASH_SOURCE[0]}")/common.sh"
root
lock
[[ $# == 0 || ( $# == 1 && "$1" == --purge-data ) ]] || die '用法：uninstall.sh [--purge-data]'
purge=0
if [[ ${1:-} == --purge-data ]]; then
  read -r -p '永久删除浏览器资料和文件。请输入 DELETE CHATGPT BRIDGE 确认: ' confirm
  [[ "$confirm" == 'DELETE CHATGPT BRIDGE' ]] || die '未确认删除。'
  purge=1
fi
for unit in "$WEB" "$BROWSER"; do
  if [[ -e "$UNITS/$unit" ]] && ! grep -Fq 'ExecStart=/opt/chatgpt-web-bridge/current/bridge ' "$UNITS/$unit"; then
    die "同名 unit 不属于本项目：$unit"
  fi
done
for pair in "nginx:$NGINX" "caddy:$CADDY"; do
  service=${pair%%:*} path=${pair#*:}
  owned "$path" || continue
  stage=$(mktemp "${path%/*}/.cgwb-removal.XXXXXX")
  mv -T -- "$path" "$stage"
  if [[ "$service" == nginx ]]; then verify=(nginx -t)
  else verify=(caddy validate --config /etc/caddy/Caddyfile --adapter caddyfile); fi
  if ! "${verify[@]}" || { systemctl is-active -q "$service" && ! systemctl reload "$service"; }; then
    mv -T -- "$stage" "$path"
    die "代理卸载失败，已还原 $path。"
  fi
  rm -f -- "$stage"
done
for unit in "$WEB" "$BROWSER"; do
  if [[ -f "$UNITS/$unit" ]]; then
    systemctl disable --now "$unit"
    rm -f -- "$UNITS/$unit"
  fi
done
if [[ $(readlink "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf" 2>/dev/null || true) == "$ETC/browser-limits.conf" ]]; then
  rm -f -- "$UNITS/$BROWSER.d/25-chatgpt-web-bridge.conf"
  rmdir "$UNITS/$BROWSER.d" 2>/dev/null || true
fi
if owned "$HOOK"; then rm -f -- "$HOOK"; fi
systemctl daemon-reload
if [[ -L "$APP/current" && -f "$APP/current/release.txt" ]]; then rm -rf -- "$APP"; fi
if ((purge)); then rm -rf -- "$ETC" "$LIB" "$FILES"; fi
info '卸载完成。依赖和现有证书由系统管理员管理。'
