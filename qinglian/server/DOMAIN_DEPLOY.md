# gaozy.tech 域名入口

当前目标是为后台和 App API 增加 Cloudflare 入口，保留 IP API 和原 VPN 节点。普通 CDN 不承载 HY2 UDP；不能将本改动描述为所有移动网络 VPN 传输已恢复。

## 必需凭据

Cloudflare 已托管 gaozy.tech；DNS 检查确认代理 A/AAAA 返回 Cloudflare 边缘地址。已用明确 Qinglian 客户端标识观察到 521，尚未部署域名源站。

在 https://dash.cloudflare.com/profile/api-tokens 创建令牌，区域限定 **gaozy.tech**，权限：

- Zone / DNS / Edit：DNS-01 签发与续期公开证书。
- Zone / Zone / Read：获取该区域 ID。
- Zone / Zone Settings / Edit：部署验证后开启 Full (strict)。

存入仓库 https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/settings/secrets/actions 的 `QINGLIAN_CLOUDFLARE_TOKEN`。不提交 Git、不写公开日志、不放 App。SSH 沿用已有 Secrets 和固定主机指纹。

## 部署与回滚

工作流 `.github/workflows/qinglian-domain-deploy.yml` 仅手动触发：缺失令牌立即停止；先加密备份，运行 Go race 检查并构建同一 overlay。DNS 必须为用户指定原服务器的 proxied A；存在 origin AAAA 时停止审查，不擅自删除。DNS 不做永久修改。

使用 Ubuntu 官方 certbot / DNS Cloudflare 插件，经 DNS-01 签发 `gaozy.tech` 的公开证书，不关闭 TLS 验证、不依赖原站80端口。原 IP 的私有 CA/证书保持独立。只有域名 Host 和 TLS SNI 同时匹配才开放 HTTPS 面板；IP API仍只有原白名单路由。域名 API通过真实 Cloudflare 源网段验证 CF-Connecting-IP 并归一化 RemoteAddr，移除其余转发头，不能把客户端变成loopback而绕过测速来源限制。后台和API禁止CDN缓存。

证书、私钥在 `/etc/letsencrypt/live/qinglian-gaozy-tech`；续期DNS令牌只在服务器 root 私有 `/etc/x-ui/qinglian/cloudflare-dns.ini`（0600）和 GitHub Secret，供certbot自动续期。仅本证书的deploy hook在仍配置此域名时重启x-ui加载新证书，原IP证书不旋转。已有备份脚本纳入 `/etc/letsencrypt`，备份只公开加密产物。

先验证本机域名公开证书、面板/API鉴权与IP隔离、原节点和流量计数；再设置Cloudflare严格HTTPS并验证公网。失败回滚原二进制/原始配置及原Cloudflare SSL模式，不恢复旧计数快照；已签证书和root私有续期文件可保留待重试。公开检查成功前，不发布带域名的新客户端。

## 双端配置与边界

构建资产保留原 `url`、`caAsset`，可另加仅构建时固定的 `cdnUrl`；不接受重定向或API响应下发的任意主机。CDN使用系统公网CA，IP只用原专用CA。账号/访客派生路径、APK下载继承同一入口；测速始终经当前VPN到原IP API，原IP限制仍是Ubuntu TUN的节点边界。

JSON GET 的网络或网关错误可切换；证书/权限错误不切换。POST仅在明确TCP/TLS建立前失败可切换，发送后结果未知不重放，不能重复注册或扣导出额度。

Android候选v19 / Ubuntu候选preview4。当前正式可下载仍是Android18和Ubuntu preview3，域名候选包未交付。完成源站/CDN真实检查、双端测试和公开包核验后才更新发布状态。
