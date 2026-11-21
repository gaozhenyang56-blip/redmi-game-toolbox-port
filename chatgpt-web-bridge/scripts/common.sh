#!/usr/bin/env bash
APP=/opt/chatgpt-web-bridge
ETC=/etc/chatgpt-web-bridge
LIB=/var/lib/chatgpt-web-bridge
FILES=/srv/chatgpt-web-bridge
UNITS=/etc/systemd/system
WEB=chatgpt-web-bridge.service
BROWSER=chatgpt-web-bridge-browser.service
NGINX=/etc/nginx/conf.d/chatgpt-web-bridge.conf
CADDY=/etc/caddy/conf.d/chatgpt-web-bridge.caddy
HOOK=/etc/letsencrypt/renewal-hooks/deploy/chatgpt-web-bridge
HEADER='# Managed by ChatGPT Web Bridge.'

die() { printf '错误：%s\n' "$*" >&2; exit 1; }
info() { printf '%s\n' "$*"; }
root() { [[ $EUID == 0 ]] || die '请以 root 或 sudo 运行。'; }
lock() { exec 9>/run/lock/chatgpt-web-bridge.lock; flock -n 9 || die '已有维护操作在运行。'; }
domain_ok() { [[ "${#1}" -le 253 && "$1" =~ ^([a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?\.)+[a-z][a-z0-9-]*[a-z0-9]$ ]]; }
used_port() { [[ -n $(ss -H -lnt "sport = :$1") ]]; }
owned() { [[ -f "$1" && ! -L "$1" ]] && grep -Fqx "$HEADER" "$1"; }
system_supported() {
  local ID VERSION_ID
  . /etc/os-release
  case "$ID/$VERSION_ID" in
    debian/12|debian/13|ubuntu/22.04|ubuntu/24.04) ;;
    *) die "不支持 $ID $VERSION_ID";;
  esac
}
safe_apt() {
  local plan
  plan=$(apt-get -s --no-install-recommends install "$@") || die 'APT 依赖无法解析。可单独安装缺失依赖后重试。'
  if grep -Eq '^Remv |^Inst [^ ]+ \[' <<<"$plan"; then
    die 'APT 计划修改现有软件包。请先审查依赖计划，再单独安装所需软件。'
  fi
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-remove --no-install-recommends "$@"
}
copy_file() {
  local src=$1 dst=$2 mode=$3 tmp
  tmp=$(mktemp "${dst%/*}/.chatgpt-bridge.XXXXXX")
  install -m "$mode" "$src" "$tmp"
  mv -Tf -- "$tmp" "$dst"
}
select_chromium() {
  local candidate
  for candidate in /usr/bin/chromium /usr/bin/google-chrome-stable /opt/google/chrome/chrome; do
    [[ ! -x "$candidate" ]] || { printf '%s\n' "$candidate"; return; }
  done
  [[ -x "$APP/chrome/opt/google/chrome/chrome" ]] || return 1
  printf '%s\n' "$APP/chrome/opt/google/chrome/chrome"
}
install_ubuntu_chrome() (
  set -euo pipefail
  [[ $(dpkg --print-architecture) == amd64 ]] || die 'Ubuntu 自动安装浏览器仅支持 amd64。请先准备一个支持沙箱的 Chromium 可执行文件。'
  local stage aptopt fingerprint
  stage=$(mktemp -d /var/tmp/cgwb-chrome.XXXXXX)
  trap 'rm -rf -- "$stage"' EXIT
  chmod 0755 "$stage"
  curl -fsS https://dl.google.com/linux/linux_signing_key.pub -o "$stage/key.pub"
  fingerprint=$(gpg --batch --show-keys --with-colons "$stage/key.pub" | awk -F: '$1=="pub"{p=1;next} $1=="fpr"&&p{print $10;p=0}')
  [[ "$fingerprint" == EB4C1BFD4F042F6DDDCCEC917721F63BD38B4796 ]] || die 'Google Chrome APT 签名主密钥与固定指纹不符。'
  gpg --batch --dearmor -o "$stage/google.gpg" "$stage/key.pub"
  chmod 0644 "$stage/google.gpg"
  printf 'deb [arch=amd64 signed-by=%s] https://dl.google.com/linux/chrome/deb/ stable main\n' "$stage/google.gpg" > "$stage/sources.list"
  aptopt=(-o "Dir::Etc::sourcelist=$stage/sources.list" -o Dir::Etc::sourceparts=- -o "Dir::State::lists=$stage/lists")
  mkdir -p "$stage/lists/partial" "$stage/pkg"
  apt-get "${aptopt[@]}" update
  chown _apt "$stage/pkg"
  (cd "$stage/pkg" && apt-get "${aptopt[@]}" download google-chrome-stable)
  dpkg-deb -x "$stage"/pkg/*.deb "$stage/extracted"
  chmod 4755 "$stage/extracted/opt/google/chrome/chrome-sandbox"
  [[ ! -e "$APP/chrome" ]] || mv "$APP/chrome" "$stage/previous"
  if ! mv "$stage/extracted" "$APP/chrome"; then
    [[ ! -d "$stage/previous" ]] || mv "$stage/previous" "$APP/chrome"
    die '无法发布 Google Chrome。'
  fi
)
