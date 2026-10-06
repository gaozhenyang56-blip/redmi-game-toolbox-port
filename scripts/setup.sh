#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
command -v java >/dev/null
command -v python3 >/dev/null
find tools/build-tools -maxdepth 1 -type f -exec chmod +x {} +
bash scripts/test.sh
