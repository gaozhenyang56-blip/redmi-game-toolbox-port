# Windows preview8 浏览器 PID 直连（2026-11-28，北京时间）

用户授权“开发并推送”，原正式发布 preview6，源码 preview7 未发布。本次正式预发布 preview8 的安装版和免安装版均已发布并通过原面板程序更新通道推送。

- 发布代码：维护分支 `b7f4a6a`，公开 main `e4f7891`；Release tag `qinglian-windows-v1.0.0-preview8`。
- Windows 完整发布工作流：46093062948，全部成功。
- 面板导入及完整 CDN 下载验证：46093598448，成功，确认 owner 登录、manifest、大小/SHA256、包内资源哈希。仅更新 Windows 发布记录，沿用原 UI 配置；未替换服务器二进制、节点或账号。
- 公开 CI：46093037091 的 Windows/Ubuntu 均成功；46093036964 的 Android/面板均成功。此前旧提交 Android Maven 下载遭遇 429，最终提交已通过，未修改 Android。

## 用户使用

轻连“关于 → 检查更新 → 下载并重启更新”（先断开 VPN）。连接页开启 TUN；ChatGPT 页勾选浏览器 PID 直连并重连。完全退出旧 Codex，选择截图中的 WindowsApps `ChatGPT.exe`，点击“为 TUN 浏览器直连启动”。已有实例可能忽略参数，不会被软件强杀。无需手动填写 PID；网络服务重启后重新识别。

默认关闭。浏览器原生 PAC 将 OpenAI/ChatGPT/oaistatic/oaiusercontent/Auth0 及登录验证、ChatGPT LiveKit 信令域名固定送往 127.0.0.1:10809（无 DIRECT 兜底），普通网页 DIRECT。先保持系统代理，TUN 就绪后才临时停用本用户系统代理/PAC，并沿用同一个恢复守护。TUN 初始全部代理，等本地 PAC 已加载，且网络服务进程四元组、用户、WindowsApps 安装路径、同映像父进程的精确 PAC 启动参数匹配后才直连。未匹配进程/其他 UDP 仍代理，选中浏览器 UDP443 回退 TCP。保留 ECH/TLS/沙箱，不解密或读取网页首包。

“恢复全部代理”关闭已存在的直连 socket，新连接恢复代理，不重启整个 VPN；授权等待期间点击也不会被后续启动覆盖。进程和聚合连接计数仅本机显示，不记录或上传浏览历史。直连网页不消耗 VPN 服务端流量。只有 WindowsApps OpenAI Codex/ChatGPT 路径受支持，不是任意应用/PID 白名单，也不是断网保护。

## 验证范围

Go race、Windows 真实 socket owner/命令行/同映像父进程链、PAC 参数精确匹配；真实 JavaScript PAC 域名选择与 loopback nonce/no-store 服务；保留 runner 默认路由的隔离 TUN 中四元组 PID 识别、绑定物理网卡直连、不同 PID 代理、未知进程代理、恢复代理及显式测试路由清理；Windows 平台/DPAPI/恢复、五协议与 HY2、高低主题 GUI；原 Wintun IPv4/IPv6；真实生产 CDN 控制面和四条 1MiB 计量路径；打包窗口、守护、TUN helper、完整程序更新、安装/卸载全部通过。

原始尝试的 ECH 开关可能被新版 Chromium 忽略，已改为 PAC 方案，不依赖关闭 ECH。中间 PowerShell 参数及测试路由清理失败均已修正；未发布这些中间程序包。最终不删除系统自动连接路由，只清理 fixture 自建保留前缀。未在用户本机专有 Codex 安装或中国移动现场验收，也未在共享 CI 修改全局默认路由。

## 固定构建与文件

Go1.23.12 windows-amd64-v1 CGO0，tun2socks2.6.0、Wintun0.14.1，trimpath/no VCS/empty buildid；Go 引擎摘要 `8ed2a605accf20acf7ff5ccfd6f18b2fa15e7cee7116c6ec5744ca92295ffe4c`，构建和提权前均校验。命名管道 ACL、父进程映像/身份、heartbeat、Job Object、同服务器节点及原 CA 验证均保留。更新仍需用户下载/重启确认，不向提权助手传更新命令。

- setup：117109342 字节，SHA256 `b5618d496dcce46779e4562c9e0230a41fa703324b92931bfb2b93ce6ec67ff4`。
- portable：135838222 字节，SHA256 `e3b4317fd9a50a8e759289af8ece99de0a1331cd3fdc683e7f0e9ec3a544877f`。
- https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/releases/tag/qinglian-windows-v1.0.0-preview8

代码与说明保留 AI 开发署名，生产接入资产不进入公开 Git 源码；不新增发布私钥。
