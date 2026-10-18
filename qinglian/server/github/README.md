# GitHub SSH、备份和部署

用户已配置Actions Secrets，SSH成功，主机密钥按server-host-key.sha256固定校验。根目录仅轻连专用工作流，不修改原Redmi应用。

- qinglian-server-check.yml：只读系统/版本/架构/路径/schema。首次缺Secret失败，配置后成功。
- qinglian-server-backup.yml：部署前一致性SQLite、原二进制、服务与配置目录；AES256-GCM加密、RSA4096-OAEP封装密钥。run39047010715成功；下载后GCM/哈希/SQLite quick_check通过。
- qinglian-server-deploy.yml：匹配Ubuntu24.04构建，SDK哈希固定，精确x-ui源码及race测试。首次原子部署并校验原登录/设备页/选择保存/配置计数保留/权限隔离/外部TLS。run39048482539成功。已有配置拒绝重跑，后续升级需单独方案。
- qinglian-node-probe.yml：读取当前profile，校验官方V2Ray5.54.2包SHA256，使用Java编译App的NodeConfig生成配置，经显式代理Google204与1MiB下载，并验证SOCKS UDP DNS冷/热缓存及AAAA策略，无DIRECT回退。不会生成生产设备记录，不代替AndroidTUN测试。

必需Secrets QINGLIAN_SSH_HOST、QINGLIAN_SSH_PASSWORD；可选USER默认root，PORT默认22。集成Secrets API403不影响用户手工配置。脚本固定主机指纹，不自动信任未知主机。

备份和App资产仅以加密artifact暂存GitHub；公开Git只有封装公钥，解密私钥私有交付。凭据、节点与PKI私钥不输出日志。完整原始备份和部署后配置均已私有保存。

API专用11452HTTPS保留主机名验证；server.pem有效825天、CA10年，到期前同CA续签。App发布签名与TLS密钥不同，保留原签名。

## v7 更新通道维护

已部署界面热修复/完整APK发布，见server/API.md及HANDOFF.md。qinglian-server-upgrade.yml先备份两份SQLite一致性快照、原二进制和私有配置，构建精确0.3.2覆盖层再升级，失败自动恢复旧二进制。不要用首次部署脚本更新已有集成。qinglian-update-check.yml只读验证公开TLS下载字节、原签名和包版本。已有客户端需要先安装v7。

## 服务器 TCP 缓冲维护

performance_probe.py只读采样公开sysctl、匿名化TCP数值和有限40MiB服务器下载。不会返回IP/UUID/端口/凭据。TCP统计为已有流历史，不代表实时丢包率；服务器出站测速不代表到手机带宽。

qinglian-network-tune.yml由tune_network.py将动态缓冲上限提高至32MiB，保留原默认值、BBR、qdisc与业务进程；先备份至/etc/x-ui/qinglian/network-tuning-backup.json。workflow_dispatch mode=rollback可恢复原值。不得把每次8MiB测速差异宣传为手机性能提升；仍需同一手机/网络/下载源复测。
