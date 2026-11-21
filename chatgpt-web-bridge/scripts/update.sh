#!/usr/bin/env bash
set -euo pipefail
source "$(dirname -- "${BASH_SOURCE[0]}")/common.sh"
root
[[ -L "$APP/current" ]] || die '没有现有安装，请使用 install.sh。'
exec bash "$(dirname -- "${BASH_SOURCE[0]}")/install.sh" "$@"
