# 部署与维护

## Qinglian GitHub Actions

源码位于 Redmi Game Toolbox 仓库的 `codex/chatgpt-web-bridge` 分支，基于已有 Qinglian 服务器分支。工作流复用 `QINGLIAN_SSH_HOST`、`QINGLIAN_SSH_PASSWORD` 及可选的 `QINGLIAN_SSH_USER`、`QINGLIAN_SSH_PORT`、`QINGLIAN_SSH_HOST_KEY`。若未单独提供主机指纹，使用仓库中原有的固定 Qinglian 主机指纹。

分支推送构建产物并进行只读预检。待生产域名和 TLS 入口就绪，在仓库 Secrets 中配置 `CHATGPT_BRIDGE_PASSWORD`，并在 Variables 设置 `CHATGPT_BRIDGE_ADMIN_USER`（可选，默认 `admin`），然后执行工作流的 `deploy` 模式。默认按需启动。手动触发的可见性取决于 GitHub 工作流注册及调用权限。

```bash
gh workflow run chatgpt-web-bridge.yml --ref codex/chatgpt-web-bridge -f mode=deploy -f proxy=auto
```

部署模式通过 SSH 上传当次通过测试的构建产物和 SHA-256 校验文件。服务器检查构建、只修改 Bridge 专用文件，并在最终检查 HTTPS。首次部署读取配置的密码。以后在后台改密，更新会保留新的哈希。可在服务器查看 `/var/log/chatgpt-web-bridge-install.log`。如果 GitHub 未注册该分支工作流的手动入口，可下载构建产物，按 README 通过 SSH 安装。

## 手动接入现有代理

保持后端在 `127.0.0.1:18642`。如果 443 已被现有服务占用，可用已有 Cloudflare Tunnel 添加专用主机名，或让现有 HTTPS 网关接入上游，两者都不需要额外绑定 VPS 的 443 端口。Tunnel 公开主机名应当使用 HTTPS，并保留与 `Origin` 相同的请求 Host。独立域名站点转发 HTTP/1.1、WebSocket Upgrade 与 Connection，请求 Host 保留为 `chat.gaozy.tech`。关闭上传请求缓冲，并将主体上限设为与 Bridge 一致的值。现有 HTTPS 站点可参考 [Nginx 模板](../proxy/nginx.conf.in) 或 [Caddy 模板](../proxy/caddy.conf.in)。配置应先校验，再平滑重载。上游 `/healthz` 在 Web 服务在线时返回 204，浏览器进程的状态可通过管理后台查看。

Cloudflare 等 DNS/CDN 的代理配置应确保 VPS 的源站 TLS 校验和 WebSocket 正常工作。域名已被其他虚拟主机精确占用时，使用现有站点配置并由管理员完成该域名的路由。脚本不会改动主配置文件、DNS、AstrBot、V2Ray、系统 swap 或其他服务的配置。

## 本地设置

| 文件 | 设置 |
| --- | --- |
| `/etc/chatgpt-web-bridge/config.json` | `AdminUser`、`Origin`、`Listen`、`UploadMiB`、`UploadQuotaMiB`、`FileHours`、`SessionHours` |
| `/etc/chatgpt-web-bridge/browser.env` | `BRIDGE_CHROMIUM`、`BRIDGE_GEOMETRY`、`BRIDGE_CACHE_BYTES`、`BRIDGE_ON_DEMAND` |
| `/etc/chatgpt-web-bridge/browser-limits.conf` | 浏览器 `MemoryHigh`、`MemoryMax` |

更改其他数据目录时，同时更新两个 systemd unit 的权限与浏览器环境变量，建议通过本机 systemd override 管理。迁移域名或端口可先卸载已启用的专用代理并保留数据，修改 config 的 `Origin` 和 `Listen` 后，用新参数重装。更新会保留 Chromium 目录，Ubuntu 采用项目内置 Chrome 时需在浏览器安全更新后重新获取相应官方 APT 包，或改用管理员维护的 Chromium 路径。

## 故障定位

- **看不到画面**。用 `status.sh --logs` 检查所缺依赖、沙箱和 X 显示是否启动。Ubuntu 发行版限制了某些构建的非特权用户命名空间时，安装与供应商匹配的沙箱帮助程序或安全策略。不要关闭浏览器沙箱。
- **出现内存事件**。后台显示浏览器 cgroup 的 memory.current、memory.max、memory.events 与单核基准 CPU。浏览器多次连续退出会停止自动循环，可在后台手动恢复。浏览器的内存上限初始值基于当前 MemAvailable，范围最少 384 MiB；内存不足时安装失败并给出原因。资源指标受 ChatGPT 页面、分辨率、浏览器版本与容器环境影响。
- **手机画面或中文**。连接后可用竖屏布局，先点击远程输入框，再打开键盘面板。按键模式用于较短的 ASCII 文本，中文采用 UTF-8 剪贴板。Chromium 的系统证书选择、WebAuthn、USB 安全密钥和本地摄像头没有透传。
- **登录页或安全挑战**。在远程 Chromium 按照网页提示完成验证。某些 VPS 出口和地区可能无法使用官方服务。会话也可能由官方主动过期。
- **占用提示**。从之前的设备退出控制或关闭页面，等待连接释放。后台重启会中断远程临时状态。
- **文件下载**。Chromium 默认下载到项目专用下载目录。脚本在 Chromium 启动时设置该路径。如果系统浏览器管理策略指定了其他下载目录，请改用专用于 Bridge 的 Chromium，或由系统管理员调整相关策略。自动清理只处理项目目录内到期的普通文件。

## 验收范围

Go 测试验证身份、文件和 WebSocket。前端 Playwright 测试使用真实后端。可选桌面测试覆盖真实浏览器画面、Unicode 剪贴板、下载及本地资料重启持久化。另需在生产实例亲自检查官方登录、读写聊天历史、同步、官方文件上传、Android/iOS 输入法及真实 2 GB 主机上的内存峰值。
