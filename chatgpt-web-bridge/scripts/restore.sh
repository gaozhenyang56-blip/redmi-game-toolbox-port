#!/usr/bin/env bash
set -Eeuo pipefail
umask 077
source "$(dirname -- "${BASH_SOURCE[0]}")/common.sh"
root
lock
[[ $# == 1 && -r "$1" && -L "$APP/current" ]] || die '用法：在现有实例上运行 restore.sh 可信配置备份.tar.gz'
stage=$(mktemp -d "$LIB/restore.XXXXXX")
trap 'rm -rf -- "$stage"' EXIT
python3 - "$1" "$stage" <<'PY'
import pathlib, sys, tarfile
archive, target = sys.argv[1:]
allowed = {"etc/chatgpt-web-bridge/config.json", "etc/chatgpt-web-bridge/browser.env",
           "etc/chatgpt-web-bridge/browser-limits.conf", "var/lib/chatgpt-web-bridge/auth/password.bcrypt"}
seen = set()
with tarfile.open(archive, "r:gz") as tf:
    for member in tf:
        if member.name not in allowed or member.name in seen or not member.isfile() or not 0 < member.size <= 16384:
            sys.exit("备份文件内容不符合预期。")
        seen.add(member.name)
        pathlib.Path(target, pathlib.Path(member.name).name).write_bytes(tf.extractfile(member).read())
if seen != allowed:
    sys.exit("备份文件不完整。")
PY
"$APP/current/bridge" check "$stage/config.json"
python3 - "$ETC/config.json" "$stage/config.json" "$stage/browser.env" "$stage/browser-limits.conf" "$stage/password.bcrypt" <<'PY'
import json, re, sys
old, new = [json.load(open(p)) for p in sys.argv[1:3]]
for name in ('Origin','Listen','State','Runtime','Files','Assets'):
    if old.get(name) != new.get(name):
        sys.exit("备份绑定到不同的域名、端口或目录。请先迁移配置。")
env = open(sys.argv[3]).read()
if not re.fullmatch(r'BRIDGE_CHROMIUM=/[\w/.-]+\nBRIDGE_GEOMETRY=\d{3,4}x\d{3,4}\n(?:BRIDGE_ON_DEMAND=[01]\n)?', env):
    sys.exit("浏览器启动设置包含非标准选项，请手动恢复。")
limits = re.fullmatch(r'\[Service\]\nMemoryHigh=(\d+)M\nMemoryMax=(\d+)M\n', open(sys.argv[4]).read())
if not limits or not 288 <= int(limits[1]) <= int(limits[2]) <= 4096:
    sys.exit("资源设置无效。")
if not re.fullmatch(rb'\$2[aby]\$12\$[./A-Za-z0-9]{53}',open(sys.argv[5],"rb").read()):
    sys.exit("密码哈希无效。")
PY
paths=("$ETC/config.json" "$ETC/browser.env" "$ETC/browser-limits.conf" "$LIB/auth/password.bcrypt")
for i in "${!paths[@]}"; do cp -p -- "${paths[i]}" "$stage/old.$i"; done
apply() {
  local path source
  for i in "${!paths[@]}"; do
    path=${paths[i]}
    source="$stage/${path##*/}"
    [[ "$1" != old ]] || source="$stage/old.$i"
    if [[ "$path" == "$LIB/auth/password.bcrypt" ]]; then
      # Replace directly with the final ownership, including during rollback.
      local temp
      temp=$(mktemp "$LIB/auth/.restore.XXXXXX")
      install -m 0600 -o cgwb-web -g cgwb-web "$source" "$temp"
      mv -Tf -- "$temp" "$path"
    else
      copy_file "$source" "$path" 0644
    fi
  done
  systemctl daemon-reload
  systemctl restart "$BROWSER" "$WEB"
}
recover() {
  local rc=$?
  trap - EXIT
  if ((rc)); then info '恢复失败，正在回滚。'; apply old || true; fi
  rm -rf -- "$stage"
  exit "$rc"
}
trap recover EXIT
apply new
info '已恢复项目设置。浏览器资料目录已保留。'
