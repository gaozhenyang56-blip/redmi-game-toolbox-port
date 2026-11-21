#!/usr/bin/env bash
set -euo pipefail
umask 022
cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.."
revision=${BRIDGE_REVISION:-$(git rev-parse --short=12 HEAD 2>/dev/null || printf source)}
[[ "$revision" =~ ^[a-zA-Z0-9._-]{1,64}$ ]] || exit 1
output=${1:-"$PWD/dist/chatgpt-web-bridge-linux-$(uname -m).tar.gz"}
output=$(realpath -m -- "$output")
stage=$(mktemp -d)
trap 'rm -rf -- "$stage"' EXIT
bundle=$stage/chatgpt-web-bridge
mkdir -p "$bundle" "$(dirname -- "$output")"
(cd frontend && npm ci --ignore-scripts && npm run check && npm run build)
(cd backend && CGO_ENABLED=0 GOMAXPROCS=2 go build -trimpath -ldflags "-s -w -X main.version=$revision" -o "$bundle/bridge" .)
cp -a frontend/dist "$bundle/web"
cp -a browser scripts systemd proxy docs README.md README_EN.md SECURITY.md CHANGELOG.md LICENSE "$bundle/"
cp frontend/node_modules/@novnc/novnc/LICENSE.txt "$bundle/NO-VNC-LICENSE.txt"
printf '版本 %s · UTC 构建 %s\n' "$revision" "$(date -u +%FT%TZ)" > "$bundle/release.txt"
chmod -R u=rwX,go=rX "$bundle"
tar --owner=0 --group=0 -czf "$output" -C "$stage" chatgpt-web-bridge
(cd "$(dirname -- "$output")" && sha256sum "$(basename -- "$output")" > "$(basename -- "$output").sha256")
printf '构建完成 %s\n' "$output"
