# 域名443兼容数据通道

入口为现有gaozy.tech的HTTPS/WSS 443，不新增公网端口。原域名已通过Cloudflare Full(strict)部署；本功能让兼容数据也可经CDN，区别于之前仅API/面板经CDN。HY2仍使用原UDP入口，不把普通CDN声称为UDP代理。

## 配置和客户端

已有域名配置的新面板二进制默认启用。可在root私有qinglian.json显式设置 `cdnCompatibility:false` 并重启x-ui禁用；不会重置节点/账号/配额。Android21已内置WS转换器，其原API User-Agent携带(Android)，因此账号/访客重新取节点即可得到域名443/WS，无需重新签APK。连接信息显示VMESS/WS、VLESS/WS或所选协议。

Windows/Ubuntu preview6系统代理模式在主连接及续租请求中明确发送 `cdnCompatibility:true`；TUN发送false，保留固定原服务器路由和同服务器限制。preview5桌面版未请求此选项，仍使用原直连，Windows可通过已有面板程序更新升级6。TUN当前不经CDN，不能宣称其中国移动线路同步恢复。

选项只改变返回的节点副本和revision，不改变数据库中的原节点/独立协议凭据或导出URI。不同设备可同时通过CDN和原直连访问同一账号worker，计量仍合并。原公开导出节点不改写成CDN节点。

## 数据与权限边界

服务端将 `/transport/ws/<32位节点ID>` 的二进制流转给该节点原worker的127.0.0.1端口。对VMess/VLESS/Trojan后端继续用原私有CA和主机名验证TLS；Shadowsocks后端保持原协议加密。原worker负责协议认证、父节点/账号/访客64GiB配额、续租、停用和已告知的域名统计。桥接层不记录数据或域名，不读取命令或任意转发目标；访客继续无域名历史。

外部客户端只信平台公共根，返回节点移除原私有caPem；桥接后端仍只信原私有CA。两个信任域独立，未关闭证书/主机名校验。入口必须真实TLS、Host/SNI匹配固定域名、有效main/guest节点、原账号启用和告知/访客资格、未过期和未耗尽；端口只允许原22000..23999范围的127.0.0.1节点。HTTP及原IP TLS API不暴露该路径。Cookie和App只读token不是数据通道认证，节点ID也不替代VMess等原生认证。

每节点最多64条活动/待建立连接，全局256条，WS消息最大4MiB，流按32KiB缓冲转发。25秒Ping，90秒无Pong关闭；写入20秒截止。节点撤销/额度/租约到期仍由原worker关连接，面板关闭也关闭桥接连接。未增加early-data或任意URL/脚本功能。

## 验证和回滚

Go race覆盖TLS二进制流完整性、后端主机名拒绝、过期/额度/告知/关闭功能的拒绝、每节点并发上限、原生凭据相同/原始节点副本不被修改。部署41146024522先加密一致性备份，再原子替换x-ui；配置、节点与计数保留。通过精确Android NodeConfig和固定V2Fly/HY2核心，从公网经WSS到原worker，再以原私有CA访问原服务器测速接口：CDN真实传输、原额度/访客停止、独立原HY2传输均通过。失败门禁会恢复旧二进制；原workers/证书/配置没有改写。

禁用配置或回滚对应 `/usr/local/x-ui/x-ui.before-ssh-<旧SHA前12位>` 可恢复原返回节点格式；先核对完整SHA，再停止/原子替换/启动x-ui，勿覆盖数据库、计数或账户。细节沿用SSH_TERMINAL.md。客户端应断开后重连以取新格式。

独立公网测试不能替代中国移动现场验证，也不能定性所有运营商封锁或保证HY2/TUN可用。用户此前报告Android C-TIMEOUT/H-TIMEOUT，API/配额正常；当前手机现场结果仍待用户确认。
