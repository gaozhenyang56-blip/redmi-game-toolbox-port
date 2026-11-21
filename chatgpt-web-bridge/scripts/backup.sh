#!/usr/bin/env bash
set -euo pipefail
umask 077
source "$(dirname -- "${BASH_SOURCE[0]}")/common.sh"
root
lock
target=${1:-/root/chatgpt-web-bridge-config-$(date -u +%Y%m%d-%H%M%S).tar.gz}
[[ ! -e "$target" && ! -L "$target" ]] || die '目标备份已存在。'
tar -czf "$target" -C / etc/chatgpt-web-bridge/config.json etc/chatgpt-web-bridge/browser.env \
  etc/chatgpt-web-bridge/browser-limits.conf var/lib/chatgpt-web-bridge/auth/password.bcrypt
info "已备份项目设置和访问密码哈希：$target。Chromium 账号数据继续留在本机专用目录。"
