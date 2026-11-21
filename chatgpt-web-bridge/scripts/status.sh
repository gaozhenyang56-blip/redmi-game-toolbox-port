#!/usr/bin/env bash
set -uo pipefail
source "$(dirname -- "${BASH_SOURCE[0]}")/common.sh"
if [[ "${1:-}" == --logs ]]; then
  exec journalctl -u "$WEB" -u "$BROWSER" -n 80 --no-pager
fi
systemctl status "$WEB" "$BROWSER" --no-pager || true
free -m
swapon --show
if [[ -f "$APP/current/release.txt" ]]; then cat "$APP/current/release.txt"; fi
