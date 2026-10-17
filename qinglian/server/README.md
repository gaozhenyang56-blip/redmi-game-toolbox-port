# 未部署原型：不要作为最终独立后台上线

**用户后来明确要求直接修改现有 x-ui 面板。该独立 dashboard 方案已被否定。**
App 也尚未实现这里描述的心跳；本目录只是服务端协议/TTL 的参考，不是已接通的功能。正式接入须依照 ../HANDOFF.md 整合现有面板鉴权与 UI。

---

# 在线设备后台

尚未部署。部署需 SSH 连接信息和 HTTPS 域名。Python 3.10+，无第三方依赖。

管理员访问 `/admin/`，HTTP Basic 登录，仅允许通过 HTTPS 反向代理访问。环境变量：

- QINGLIAN_CLIENT_TOKEN：随机 >=32 字符，只允许 App 心跳与读取在线设备数量。
- QINGLIAN_ADMIN_USER / QINGLIAN_ADMIN_PASSWORD：单独后台账号，密码 >=16 字符。
- QINGLIAN_DB：建议 /var/lib/qinglian/devices.sqlite3。
- QINGLIAN_BIND：默认 127.0.0.1；QINGLIAN_PORT 默认 8765。

Python 进程以专用非 root 用户运行。环境文件 chmod 600，禁止对外直接开放 8765。Caddy / Nginx 代理 HTTPS 域名到 127.0.0.1:8765；不改动现有 VMess 端口和 x-ui 配置。初次部署前检查现有端口和反代配置。

App assets/telemetry.json：`{"baseUrl":"https://YOUR-DOMAIN","clientToken":"CLIENT_TOKEN"}`。App 仅内置客户端权限令牌，不存管理员密码。连接前展示上报说明，首次同意后运行；每 10 秒上报，断开立即报离线，30 秒无心跳自动离线。后台每 3 秒刷新。

随机安装 ID 区分设备；应用型号和设备昵称由客户端上报，可伪造，不用于计费或身份验证。重装会产生新 ID。统计只涵盖此 App，不识别其他客户端的设备名称。历史记录自动清理到最近 7 天，未部署时 App 不发送信息。
