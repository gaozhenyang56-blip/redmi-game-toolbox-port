# 部署自己的轻连面板

客户端连接的是轻连面板，节点、账号、额度、访客会话和统计都由该面板管理。三端不接受第三方节点或订阅。公开源码不含任何可用服务器、管理密码、签名私钥；现有发行版的默认服务器仍由私有构建输入决定。

## 全新服务器

目标：Debian 12 / Ubuntu 22.04、24.04，amd64，systemd。安装脚本**拒绝已有 x-ui、轻连配置或服务的机器**，不会覆盖现有面板。既有部署请备份并手动审阅覆盖层更新；其他版本的 x-ui/3x-ui 不能直接套用。

1. 在构建机准备 Python 3、Git、GCC、Go **1.23.12**。代码固定使用 x-ui `f335c8d39a7191883b88aac56fbaf2a6f02656be`、Xray 1.4.2、HY2 2.13.0，上游下载校验 SHA-256。

   ```bash
   python3 qinglian/selfhost/build_panel.py --output dist/panel
   ```

2. 将 `dist/panel/` 整个目录复制到自己的服务器。服务器需有 Python3、OpenSSL、systemd。先审阅 `install.py`，再预检和安装。管理密码交互输入，不出现在命令行。生产建议为自己的域名取得有效的 HTTPS 证书，并将域名解析到本机公网 IPv4。

   ```bash
   cd /path/to/panel
   sudo python3 install.py --server-ip YOUR_PUBLIC_IPV4 --admin-name YOUR_ADMIN \
     --domain vpn.example.com --tls-cert /path/fullchain.pem --tls-key /path/privkey.pem --check
   sudo python3 install.py --server-ip YOUR_PUBLIC_IPV4 --admin-name YOUR_ADMIN \
     --domain vpn.example.com --tls-cert /path/fullchain.pem --tls-key /path/privkey.pem
   ```

   不传域名和证书时，私有 CA 的 App API 仍可用；管理页面只监听本机 `127.0.0.1:11451`，通过 SSH 端口转发访问。面板 SSH 终端、连接测试和在线导出要求域名 HTTPS；本机脚本导出不受此限制。不要把没有 TLS 的管理端口暴露到公网。

3. 根据云厂商安全组和本机防火墙，开放 TCP **443、11452、22000–23999**，以及 UDP **443、22000–23999**。管理/认证端口 **11453、11456** 仅供本机服务，不应开放。脚本不自动修改防火墙、BBR、系统代理或现有网络设置。大陆客户端若直连端口不通，可选择自己的域名/CDN 兼容通道；普通 CDN 不转发 HY2 UDP。

4. 打开 `https://vpn.example.com/xui/qinglian`，查看默认父节点和 HY2 绑定，再运行“连接测试”。服务为 `x-ui`、`qinglian-hy2`、`qinglian-exports`；排查用 `systemctl status` / `journalctl -u`，不要公开原始节点、凭据或账号数据。

5. 安装生成 `/etc/x-ui/qinglian/client-server.json`（0600）。也可在“节点”页导出三端服务器配置，或在服务器运行：

   ```bash
   sudo python3 qinglian/selfhost/export_server.py --name '我的轻连面板' --output /root/my-server.json
   ```

   文件只含 API 地址、客户端接入码和公开 CA，不含管理员密码、节点 UUID 或任何私钥。接入码可用于访客/API 引导，请只分发给授权用户；勿提交 Git。

## 客户端切换面板

Android：关于 → 面板服务器。Windows/Ubuntu：关于 → 面板服务器。导入管理员导出的 JSON，确认域名/地址，先断开 VPN，保存并退出后重新打开。支持恢复安装包内置服务器。用户账号、密码和额度属于所选服务器，登录状态分服务器保存，不将旧账号凭据转发给新面板。

原有主题和分流偏好保留，内置服务器的现有账号无需重新迁移。账号连接仍需明确同意该服务器永久保存代理连接域名和时间；访客不记录域名。导入配置不会自动登录、共享或迁移其他服务器的账号及访问历史。

TUN 仅支持面板原始 API 使用字面公网 IPv4、所发节点也在同一 IPv4 的部署。自定义 TUN 助手只接受一个经校验的公网 IPv4 作为物理网卡直达豁免，保留固定程序、父进程身份、管理员授权、路由恢复和禁任意命令边界。只有域名且无原始 IPv4 的配置使用系统代理模式。

## 将自己的服务器内置到三端

同一份 `my-server.json` 生成五个 API 配置和可选的专用 CA：

```bash
python3 qinglian/scripts/embed_server.py --server /secure/my-server.json --output /secure/client-assets
```

- Android：将生成的文件复制到 `qinglian/app/src/main/assets/`，然后按项目 README 构建。
- Ubuntu：`python3 qinglian/ubuntu/build.py --assets /secure/client-assets --output dist/Qinglian.deb`。
- Windows：在 Windows x64 上运行 `python qinglian/windows/build.py --assets C:\secure\client-assets --output dist`，同时生成安装包和免安装 ZIP。

这些文件必须作为私有构建输入，不能提交公开仓库；App 内置客户端接入码可以从安装包中提取，不能把它当作面板管理凭据。运行后用户仍可导入另一台轻连面板，或恢复该内置默认。

Android 二次发行应使用维护者自己的签名，后续更新必须与已安装包的签名一致；不能覆盖原作者已签名的应用。Windows 面板包导入默认从新仓库的固定 GitHub Release 路径读取，可通过安装参数 `--release-repository owner/repo` 指定自己的发行仓库。客户端程序更新需要用户确认，不通过界面热修复执行脚本。

## 备份与升级

备份 `/etc/x-ui/x-ui.db` 和配置中的 `statePath`（SQLite backup API 一致性快照），以及 `/etc/x-ui/qinglian.json`、`/etc/x-ui/qinglian/`、自定义证书、程序及 systemd 服务。私钥和账号数据库只能私有保存。安装器是首次安装工具，不是覆盖升级器；出现异常不会删除已创建数据，也不会重置旧账号。证书续期后在确认文件权限和路径正确后重启 x-ui；私有 API 叶证书同样有有效期。

本工具链的组件和本地夹具测试不等于每家云厂商或运营商现场已验证。部署完成请在自己的面板和真实客户端分别测试，尤其是 HY2 UDP 和 TUN。
