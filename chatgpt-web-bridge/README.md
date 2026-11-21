# ChatGPT Web Bridge

供个人使用的远程 Chromium。部署在 Ubuntu 或 Debian VPS 后，通过本机浏览器登录独立的 Web Bridge，然后在远程画面中使用真实的 [ChatGPT](https://chatgpt.com/)。聊天、历史搜索、归档、模型、账号登录和跨设备同步均由官方网页及账号处理。项目无需 OpenAI API 密钥。

## 安装

从 GitHub Actions 的 ChatGPT Web Bridge 工作流下载 `chatgpt-web-bridge-linux-x86_64` 构建产物，解开 Actions ZIP 后，在 Linux VPS 上执行以下命令。

```bash
sha256sum -c chatgpt-web-bridge-linux-x86_64.tar.gz.sha256
tar xzf chatgpt-web-bridge-linux-x86_64.tar.gz
cd chatgpt-web-bridge
sudo bash scripts/install.sh --domain chat.gaozy.tech --proxy auto
```

先为域名设置指向 VPS 的 DNS A 记录。需要 IPv6 时，请在现有代理配置同时完成 IPv6 TLS 监听，再发布 AAAA 记录。安装前请检查 80 和 443 端口的归属。

- `auto` 选择正在运行的 Nginx 或 Caddy。如两个都在运行，传入 `--proxy nginx` 或 `--proxy caddy`。
- Nginx 复用 `/etc/letsencrypt/live/<域名>/` 中覆盖该域名的证书，或使用 `--cert /绝对路径/fullchain.pem --key /绝对路径/privkey.pem`。没有证书时，安装前准备 certbot，脚本用单独的 webroot vhost 申请证书。已有同名 vhost 时请使用手动模式。
- Caddy 需要现有 Caddyfile 导入 `/etc/caddy/conf.d/*.caddy`。脚本检查 Caddy 实际加载的路由。
- Apache、已有同名站点或非标准入口使用 `--proxy manual`。按[部署手册](docs/deploy.md)接入独立 HTTPS 虚拟主机。
- Debian 12/13 使用发行版 Chromium 和沙箱包。Ubuntu 22.04/24.04 优先使用已有的受支持 Chromium/Chrome，amd64 可自动使用经 Google APT 签名校验的 Chrome。可通过 `--chromium /path/to/executable` 指定其他受信任的 Chromium。
- 首次安装用 `--admin-user <登录名>` 设置 Bridge 登录名，默认 `admin`。设置独立的 Web Bridge 密码，长度为 12–72 字节。非交互安装通过 `--password-stdin` 接收一行密码。
- 默认上游端口为 `18642`，可通过 `--port` 修改。指定 `--memory-max-mib` 可选择更小的浏览器内存上限，但须满足脚本的可用内存检查。内存紧张时加 `--on-demand`，只启动待机后台。连接时检测内存，空闲十分钟后释放 Chromium。

安装成功后打开 `https://chat.gaozy.tech/admin`。输入 Web Bridge 登录名和访问密码，点击 **打开官方页面 · 登录 ChatGPT**，在远程画面中点击 ChatGPT 的官方“登录”，自行完成验证码或第二步验证。登录后，可在远程工具或后台打开 ChatGPT 聊天和 Codex 官方网页。切换页面会重新打开 Chromium，两者共用同一份官方账号登录和浏览器资料。Codex 功能由账号和工作区权限决定。Chromium 配置保存在 `/var/lib/chatgpt-web-bridge/browser/profile`。

## 日常操作

- **聊天和历史**。在 ChatGPT 画面中使用原生侧栏、搜索、新建、重命名、删除、归档和继续对话。可用模型与历史范围取决于账号。
- **上传**。展开画面右侧工具，打开文件传输，选择本地文件并上传。再在 ChatGPT 中选择添加文件，进入文件面板显示的服务器上传目录。GTK 文件对话框可点左侧「Bridge 上传」书签，也可按 `Ctrl+L` 输入绝对路径。默认限制每文件 64 MiB、上传目录共 384 MiB，默认保留 24 小时。官方网页单独决定文件接收条件。
- **下载**。在远程 ChatGPT 中触发下载，文件完成后会出现在 Bridge 的“远程下载”。点击“保存到本机”，可以随后删除服务器临时副本。带 `.crdownload` 的文件显示下载中。
- **触屏和中文**。使用鼠标、触控和物理键盘直接操作。手机先点远程输入框，再点右边的键盘按钮，用本机输入法编辑文字并输入到远程。ASCII 登录字段可切换为按键输入。远程复制后在输入面板取回文字，可手动复制，或授权浏览器写入剪贴板。图片可走文件上传。
- **布局**。默认按窗口尺寸协商远程分辨率。工具面板可切换竖屏、宽屏、原始尺寸和低带宽画质。原始尺寸支持拖动画面。系统全屏取决于本机浏览器。
- **管理**。可访问 `/admin` 查看服务、活动连接、浏览器 cgroup 资源、版本、错误和文件，也可重启 Chromium 或更改访问密码。改密会撤销所有 Bridge 会话。单个浏览器只接受一条控制连接。

## 运维和测试

```bash
sudo /opt/chatgpt-web-bridge/current/scripts/status.sh
sudo /opt/chatgpt-web-bridge/current/scripts/status.sh --logs
sudo /opt/chatgpt-web-bridge/current/scripts/backup.sh
sudo /opt/chatgpt-web-bridge/current/scripts/restore.sh /root/bridge-config.tar.gz
sudo /opt/chatgpt-web-bridge/current/scripts/uninstall.sh
```

从新安装包运行 `sudo bash scripts/update.sh --domain chat.gaozy.tech --proxy auto`。脚本保留配置、浏览器资料和密码哈希，遇到启动或代理验证失败时回滚项目发布和服务设置。备份只包含 Bridge 配置和密码哈希。卸载默认保留浏览器和文件，`--purge-data` 要求输入确认短语。

从源码构建需 Go 1.24+、Node.js 20+、npm 及网络访问。2 GB VPS 建议在本地或 Actions 构建后上传产物。

```bash
go -C backend test -race ./...
go -C backend vet ./...
bash scripts/build.sh
(cd frontend && npx --no-install playwright install chromium)
bash tests/web.sh
BRIDGE_LIVE_TEST=1 bash tests/web.sh
```

真实桌面测试需以非 root 用户运行，预装 Chromium、Xtigervnc、Openbox、xauth、xdpyinfo、xprop、xdotool 和 xclip。它在本机离线测试页验证端到端交互，真实 ChatGPT 账号需用户自行登录验收。更多说明见[部署与故障排查](docs/deploy.md)、[安全说明](SECURITY.md)及[英文说明](README_EN.md)。
