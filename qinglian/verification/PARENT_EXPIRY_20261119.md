# 2026-11-19 原节点过期导致 App 配置503与原始客户端连接失败

用户报告轻连取不到节点、v2rayNG出现read/io closed pipe，并确认未更换原服务器。只读检查44545056035：API200、exports ready/historyFailed=false、SQLite quick_check=ok、无近期OOM/重启、磁盘余量约3.6GB，原两个父节点均disabled且到期。首次真实App流程44545538788在guest/profile返回HTTP503，临时访客已正常停止。

修复预检44547060427确认当前App选择inbound1，且其凭据匹配原bootstrap节点；其到期时间为2026-11-17 14:15:18 UTC / 北京时间22:15:18，总额度1TiB，已有用量74,013,049,551字节，未耗尽。另一个父节点不属于App选择/原内置角色，不恢复。节点到期停用会阻止面板下发可用配置，并关闭原入站；closed pipe本身是泛化连接关闭错误，这里的归因有到期/停用状态、配置503和恢复后原生传输验证支持。

新增私有维护工作流qinglian-parent-expiry-repair.yml，默认仅预检，显式apply才能修改。修复策略只处理配置owner的App-selected与原bootstrap角色、已过期且未耗尽流量的节点；拒绝未到期/手动无到期停用、其他用户和非标准tag，以免上游更新接口改动无关配置。三项本地策略测试通过。服务器/root/qinglian-parent-expiry-*先保存root私有SQLite一致性快照和配置备份，然后通过正常owner本机面板API修改enable=true、expiryTime=0。完整保留原协议/地址/端口/UUID/伪装/标签/总额及累计计数；其他父节点与独立导出7天过期规则不变。失败按当前计数恢复原启停/日期，不回滚整库或计数。

实际修复44547290854成功：仅inbound1恢复为长期有效，App profile/独立HY2均ready、原入站监听恢复、测试访客停止、配置/凭据/计数保留；x-ui主进程PID保持，未重启HTTPS前端和其他项目。原生Xray仅由面板正常更新调度重载入站。

44547519452验证成功：原签名v22冻结APK配置，CDN443/WSS兼容通道256KiB、独立HY2 256KiB、冻结APK原始内置VMess节点256KiB均实际传输成功（显式代理且严格原API CA）；访客原生计量、64GiB/无域名记录策略及停止均通过。脚本仅输出聚合结果，不输出URI、UUID、密码、原始日志或响应正文。服务器端/独立公网检查不等于用户手机网络现场验收，请用户重连轻连并重测原v2rayNG节点。无新APK、无订阅或凭据更换。
