# DSH 管理界面

入口 https://gaozy.tech/panel/dsh/ ，后端只监听 `127.0.0.1:1378`。沿用 `/etc/dsh/web-auth.json` 中现有 DSH 账户的 PBKDF2 校验，不保存明文密码。支持状态、内存、运行时间、最近运行/系统日志，以及启动、停止、重启固定 `dsh.service`。停止与重启有任务中断提示。

`dsh-control.service` 使用独立无特权账号运行，通过限定权限的 Unix socket 调用 `dsh-control-helper.service`；助手检查对端 UID，只允许固定操作与日志来源，不接受命令、路径或服务名称。浏览器会话 12 小时，使用 Secure/HttpOnly/SameSite cookie、来源校验和 CSRF 校验，登录失败限流；日志隐藏已登记的 API 值、常见密钥和启动令牌。DSH 停止不影响管理界面。

现有 server-hub 的 `/panel/dsh/` 固定转发至本机 1378；保留原 `/panel/` 页面及登录。安装前在 `/root/dsh-control-backup-*` 保存服务器原文件，不重启共享 x-ui 或其他应用。

## 故障恢复

本次诊断观察到 V8 堆耗尽、MemoryHigh 大量触发以及服务 active 但 3080 无响应。DSH 改为 `Restart=always`、Node 堆 512 MiB、MemoryHigh 832 MiB、MemoryMax 896 MiB；主机为 2 GiB RAM，未取消总内存限制。原模型设置、API 凭据、插件保持。

`dsh-watchdog.timer` 每 30 秒检测 3080。在启动宽限 120 秒后，连续三次失败才请求 `try-restart dsh.service`，恢复操作间隔至少五分钟。人工停止的服务不会被看门狗启动。看门狗检测失去响应，不保证所有模型或插件运行都不会耗尽内存。

## 验证及维护

部署工作流 `.github/workflows/qinglian-dsh-control.yml` 使用原服务器 SSH Secrets 和固定主机指纹；只输出白名单检查结果。再次部署会重启 DSH 与管理界面。

2026-11-23（北京时间）部署 Actions `45078878687` 成功：六项权限/认证/限流/脱敏/健康检查测试通过；1378 仅监听本机；所有相关新服务及 DSH active，API 配置哈希一致。Chromium 实测 HTTPS 登录、状态、运行/系统日志、对已运行服务执行启动、重启确认取消、退出、手机无横向溢出；DSH HTTP 200、收到 7 个 WebSocket 帧。没有为了验收强制停止或再次重启恢复后的 DSH。

本地验证：`python3 -m unittest discover -s qinglian/dsh-control -p 'test_*.py' -v`。
