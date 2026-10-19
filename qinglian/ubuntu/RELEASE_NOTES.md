轻连 Ubuntu 1.0.0-preview1，适配 Ubuntu 24.04 amd64 GNOME（含 ubuntu-to-go 分支的系统）。这是独立桌面版，Android v16 和现有面板更新保持原状。

- 原生 GUI：连接、ChatGPT 优化、测速、账号/导出、关于；亮色/暗色/跟随系统。
- 共用现有面板：VMess、VLESS、Trojan、Shadowsocks、HY2；加速默认高性能，保守可选；免登录单次64GiB，账号累计用量和五协议节点导出。
- ChatGPT 专用启动附加显式代理与环境变量、关闭QUIC，保留本机OAuth回调；完整退出旧实例后使用。忽略代理的软件可选TUN全局接管（需系统授权，先关闭其他VPN/Clash）。系统代理模式支持大陆/私网绕过规则。
- 连接成功前验证实际代理链路，断开恢复原系统代理/自建路由；服务器链路测速大小可自定义1..2048MiB，显示Mbps。
- 系统用户范围设备应用摘要绑定，正常App重装不重置注册标识；不上传原machine-id。账号域名/时间永久记录需用户明确同意，访客不记录域名。

下载 deb 后，在安装包所在目录执行：

```sh
sudo apt install ./Qinglian-1.0.0-preview1-amd64.deb
qinglian
```

验证包含 Ubuntu24.04 实际安装/卸载、GUI、五协议原生传输及HY2高性能、隔离网络中真实IPv4/IPv6 TUN和清理、现有服务器三个通道各1MiB传输/计量。resolved调用在隔离测试中由记录shim替代；尚未在用户原桌面点击授权、登录其ChatGPT账号或完成长时间稳定性验收。

TUN仅全局；系统代理规则绕大陆，不提供Linux按应用黑白名单。TUN需Ubuntu原生systemd-resolved stub，固定面板同服务器节点；不是断网保护开关。root助手被SIGKILL/系统异常时不保证自动恢复，详见使用说明。安装包内仅含App引导token/公开CA，不含管理员、SSH、用户会话或Android签名材料；引导token与Android一样可提取，服务端权限/配额才是边界。

源码、完整说明和验证记录见分支 `codex/qinglian-routing-and-presence` 的 `qinglian/ubuntu/`、`qinglian/verification/UBUNTU_CHECKS.md`。集成源码/第三方许可证随包提供。
