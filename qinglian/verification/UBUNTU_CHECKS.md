# 移动网络443兼容入口与桌面preview6（2026-10-30 UTC，已上线，手机现场待确认）

用户恢复GitHub SSH凭据后，41144725838检查成功：x-ui/exports/HY2均active，原配额未满，无OOM/重启/异常记录。用户给出Android C-TIMEOUT/H-TIMEOUT，均为建立TUN之前的链路验证超时；独立公网原直连仍成功，不能把此结果当作移动运营商现场可达或封锁定论。

新增域名443/WSS数据桥接：复用现有gaozy.tech/Cloudflare Full(strict)，只将原生协议二进制流转交同一独立worker的127.0.0.1端口，原TLS后端继续私有CA/主机名验证，外部改为公共TLS根；原账号认证、父节点/账号流量、访客64GiB、续租/撤销和告知后的域名历史由原worker继续执行。没有新worker、数据库节点、端口/防火墙/BBR参数修改或额度重置。Go race覆盖完整流、TLS拒绝、失效/告知/额度拒绝、并发上限、复制节点及原生凭据不变；详见server/CDN_TRANSPORT.md。

既有域名部署默认启用，配置cdnCompatibility:false可关闭。Android21的User-Agent自动选择WSS，现有APK的NodeConfig已支持WS，断开后选择兼容即可取新入口，显示VMESS/WS或所选协议；不需新签APK，Android仍code21。Windows/Ubuntu preview6系统代理明确申请该数据通道；TUN明确申请原直连，保留同服务器/物理路由限制，不能宣称移动网络TUN已恢复。HY2仍是原UDP，普通CDN不能修复UDP受限。

服务器部署41146024522（源码cf54e110）加密备份后成功，配置/节点/计数保留；原HTTPS面板/WSS SSH PTY及Windows更新API保持。回滚门禁用精确Android转换器、固定V2Fly/HY2真实经CDN -> 原worker -> 原私有CA测速接口传输，验证CDN WSS、原额度/访客停止、独立原HY2均成功；不是只测试API或把直连测速冒充VPN。测试访客按正常API停止，未宣称删除无SSH测试的数据库行。

Windows工作流41146667091、Ubuntu41146669968均完整成功并发布各自1.0.0-preview6，含新接口的真实通道/原计量，原生协议、GUI、隔离/保留前缀TUN、安装卸载，Windows打包助手重启升级。公开重下核对SHA256SUMS、包内app/runtime/helper与源码、manifest和版本通过。Windows面板发布41147133154成功，真实owner导入官方Release与严格CDN完整ZIP下载/资源验证通过；preview5可在关于页检测并升级6。

- Qinglian-1.0.0-preview6-windows-x64-setup.exe：113,684,114字节，SHA256 `00593857da959d07f235037aecd65b7a5924481662121163e40399677527e53c`。
- Qinglian-1.0.0-preview6-windows-x64-portable.zip：131,812,501字节，SHA256 `b96389f9f29582ca13bca140023cbc5f16ed6d017f432c25b295e4ee0d2e2d72`。
- Qinglian-1.0.0-preview6-amd64.deb：20,869,132字节，SHA256 `40ba7174fdb12d577ae5a93406efe3f9874b6a355c847275e8f2fcbde2c3c1f8`。

下一Windows/Ubuntu至少preview7，Android下一版至少22；不得覆写已发布资产。已请求用户用移动数据重连手机兼容，目前尚未收到现场结果，不能记录为用户网络已恢复。电脑此前仅推测失败，不记录为实测复现。

# Ubuntu preview5 同步 Android v21（2026-10-27，已发布）

本次仅Ubuntu：HY2首次真实代理验证读取预算12秒、总15秒（含HTTP CONNECT及远端TLS）；兼容3秒/总8秒，连接本地代理TCP仍3秒。watchdog在取消/到期时shutdown验证套接字，取消不报连接失败且不启用系统代理。固定阶段/HTTP/证书/超时错误码不含原始异常或凭据，CA/主机名/响应标记/1字节长度要求保留；不修改服务端HY2参数、账号/访客额度、原UI/ChatGPT/TUN安全边界。域名/CDN入口沿用preview4。

本地34项运行测试，包括真实TLS响应延迟3.4秒、延迟CONNECT冷启动成功/普通超时、阻塞读头/读体取消、总截止、错误CA/主机名拒绝、安全错误文本及取消后清理。工作流40534372144通过完整Ubuntu24.04安装/卸载、GTK、原生协议、隔离TUN和公网兼容/HY2保守/高性能各1MiB传输、访客计量及清理后发布preview5。首次工作流40533967252因原生测试夹具旧方法签名失败，已更新夹具并完整重跑。公开重下校验随附SHA256SUMS、Deb版本/架构和包内runtime/app源码一致；20,872,416字节，SHA256 371070d6c1152f66008565ae4aab1484330378c81ed4f7f7da3fc6bdd028903d，标签qinglian-ubuntu-v1.0.0-preview5。下一Ubuntu至少preview6，Android仍21。不代表已确认中国移动现场HY2恢复。

# Ubuntu 1.0.0-preview4（2026-10-24，CDN入口已发布）

40085028187成功：31运行逻辑测试、实际GTK/原生协议/隔离TUN、真实gaozy.tech控制API（平台CA）和原IP测速源（专用CA）分离、兼容/HY2保守/高性能三通道各1MiB传输/访客64GiB计量及清理、生产包构建发布。Ubuntu原权限、ChatGPT/TUN/隐私边界未改，POST发送后不重放。公开deb重下核对hash、版本、runtime/app源码、CDN资产及原CA：20,868,388字节，SHA256 3211ce9d547f033e930a5a35f3e178bcebbd985f4f86f3da40e67f978013d239；标签qinglian-ubuntu-v1.0.0-preview4，下一版至少preview5。未取得用户中国移动现场验收。

# Ubuntu 1.0.0-preview3（2026-10-24）

移动网络控制API入口修复，源722ec5b5。API优先固定同服务器HTTPS443，网络失败尝试11452，保留严格CA/主机名/无重定向；POST仅建立连接前失败才重试，可能发送后不重放。保留UI/ChatGPT/TUN权限边界，不改VPN传输或原HY2参数。

28运行逻辑测试含真实urllib TLS：正确CA/IP成功、未知CA/错误主机名失败、TCP建立失败标记、双入口切换与POST/HTTP/响应大小边界。Python3.12真实HTTPSHandler兼容问题已修复并加入回归，未发布失败的构建。

工作流40078759209成功：Ubuntu24.04实际安装/卸载、GTK、原生协议、隔离TUN、三个通道各1MiB公网传输/64GiB访客计量与清理，以及生产包构建发布。公开标签qinglian-ubuntu-v1.0.0-preview3，Deb版本1.0.0~preview3/amd64，20,869,764字节，SHA256 bf66114fc61caeb3c05aa727ead88374110c13ad22b9d8f004a944d573f3055a；公开重下比对manifest、runtime/app源码和原CA通过。尚无用户中国移动热点升级后现场验收。

# Ubuntu 1.0.0-preview2 验证（2026-10-20）

本次仅Ubuntu界面、原生GTK/Cairo/Pillow组件和包依赖，runtime/TUN/原生核心/Android/面板不变。保留preview1已完成的公网三通道3MiB计量基线，不以UI fixture冒充公网连接。

新增真实GTK检查：六页面导航；宽屏侧栏/双栏和窄屏底栏/单栏；preview1设置升级；第一版风格的简约标签页/下拉框及全部功能、保存/重开；模拟连接状态下切换界面保持同一连接对象、开始时间、选项和账号草稿且不调用启动/断开；原生RadioButton、拖拽提交/取消；主题；账号同意门槛；真实账号页面滚动导致玻璃采样像素变化；隐藏停止/显示重启采样。连接状态仅UI fixture。工作流继续验证23项runtime、六种原生配置传输、隔离IPv4/IPv6 TUN、包安装/启动/卸载。工作流39444861380（源码b9d5947c）全部通过，GTK日志无critical。公网三通道沿用preview1基线，本次未额外创建服务器会话或调参。

公开发布标签`qinglian-ubuntu-v1.0.0-preview2`；deb 20,861,864字节，SHA256 `dbac16105776f1f7b29eaed42283ebe590d7e7522653da5277ab736e9eb5a07e`。从公开Release重下，随附SHA256SUMS两项均通过；包内app/runtime/ui/TUN源码与提交一致、API bootstrap与CA与原资产一致、root所有权/GUI依赖/无签名与管理员文件检查通过。真实截图是本机GTK窗口，不含连接或用量虚构数据。仍未在用户实体Ubuntu桌面点击polkit或登录ChatGPT，原边界不变。

下载：https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/releases/download/qinglian-ubuntu-v1.0.0-preview2/Qinglian-1.0.0-preview2-amd64.deb

# Ubuntu 1.0.0-preview1 验证（2026-10-19）

目标：用户仓库 `gaozhenyang56-blip/wayne-hyperos4` 的 `ubuntu-to-go` 分支，Noble Ubuntu24.04 amd64 GNOME，.deb ChatGPT 的 `chatgpt` 命令。仅参考，没有修改该分支、磁盘镜像、守护脚本或原 Redmi 工程。

## 自动和原生验证

- 23项运行逻辑测试：系统用户范围设备摘要重装稳定性/随机回退、私有文件权限、重定向拒绝、HY2双重确认/原窗口/保守、通道冻结、访客会话/配额、周导出额度不误停主连接、ChatGPT启动参数/本机OAuth绕过/旧实例拒绝/不关沙箱、精确代理验证、测速总量/不回退直连、过期账号本机退出、代理恢复/其他客户端替换代理/桌面总线故障保留快照、TUN部分失败回滚/拒绝占用。
- 实际GTK五个页面、亮/暗/系统模式、账号告知门槛和截图，正式安装入口 `qinglian`；无浏览器壳或假VPN状态。
- 实际包内V2Ray/Hysteria：VMess、VLESS、Trojan、Shadowsocks、HY2保守、HY2 aggressive 六种配置真实loopback传输、TLS/原专用fixtureCA（SS为AEAD）、兼容域名chatgpt.com路由及连接/清理；复用原NodeConfig.java而非另一套配置转换。测试不改主机代理。
- Ubuntu24.04实际apt安装依赖与deb、菜单/启动脚本、卸载；包内root:root所有权与权限/私有资产允许清单检查。首次发现builder的umask077使安装目录不可读，已显式固定目录0755/数据0644/程序0755；运行私有数据仍0600/0700。
- 隔离root网络命名空间的**真实**TUN、策略路由、tun2socks、VMess核心、IPv4和IPv6直连请求转发；GUI stdin EOF模拟退出、DNS配置中途失败均清理真实IP规则/接口。resolved调用由记录shim替代（命名空间不能使用宿主系统总线），确认dns/~./revert参数；不是活跃GNOME/systemd-resolved的DNS实测，也未实际点击polkit授权。
- 工作流39330914391成功：同一Ubuntu runtime连接现有服务器原HTTPS API，兼容、HY2保守、高性能三个通道各1MiB服务器测速，私有CA/主机名/响应标记/长度、真实访客64GiB计量及停止均成功。只创建随机设备访客，结束按随机设备精确清理；未改原节点/服务器参数、未重启服务。原生计数异步采样，验证等待追上，不要求最后一个包完成同一瞬间API就有累计值。
- 发现并修复：干净断开后的TIME_WAIT不能当成本地核心还在监听；GTK多线程不能使用带import的preexec_fn；核心改为独立Python wrapper设置Linux parent-death signal再exec。ChatGPT localhost OAuth回调必须直连；TUN也临时接管GNOME代理，避免遗留Clash本机端口。断开时如别的客户端改了代理端口，即使mode仍manual也保留新配置，不把它恢复成none。

工作流：`.github/workflows/qinglian-ubuntu.yml`。普通push只用公开fixture；`workflow_dispatch live=true`才启用现有GitHubSSH Secrets的小流量公网验证，无部署。不把fixture包作为正式下载交付；正式包在本环境使用既有私有API资产构建。

## 边界

尚未在用户原VHD/实体电脑安装、登录其ChatGPT账号、观察长时间网络切换/认证回调。GUI/本地HTTPS探测不能代替真实应用登录；HTTP403仅说明服务拒绝访问，不是账号成功。TUN仅全局，系统代理规则可绕大陆；不承诺任意Linux按应用分流、每种第三方ChatGPT安装方式或1Gbps吞吐。

TUN助手被SIGKILL/系统异常不保证自动恢复，需重启或管理员确认后移除自建规则；没有后台强制断网开关。Ubuntu系统用户范围设备应用摘要不是不可伪造设备证明；无系统ID的随机回退删除配置后可改变身份。API bootstrap令牌和Android相同可从安装包提取，不是管理员凭据/反滥用边界；账号token/管理员/SSH/签名材料不进入Git或包。

本次Android版本/签名、x-ui revision24和服务端原参数均未修改。

## 最终交付

- 最新代码0996a1fa的Ubuntu24.04工作流39331825014成功：23项逻辑检查、包内原生六配置传输、实际GTK/安装入口、隔离TUN/清理、卸载。此前39331400872代理外部切换恢复回归成功；39330914391包含公网三通道3MiB和真实配额计量成功。最后的设备摘要改为machine-id+UID应用范围，不改变既有协议或服务端；普通App重装保留标识，无有效ID才回退随机。
- 本地预备私有API资产构建的deb：20,844,228字节，SHA256 `3f8f0b97e80c3413b125eeadf09fc429b9305fb725886078bc6c0b07e8706d11`。包内root所有权、允许的私有资产、固定依赖校验通过；原APK/签名未打入deb。
- 发布标签 `qinglian-ubuntu-v1.0.0-preview1`，GitHub Release独立交付，不写Android APK更新接口。

- 最终Release由工作流39332403116（源码86e4fc4f）构建/发布成功。工作区GitHub连接上传附件返回401，改用仓库Actions身份；无须用户重配Secret。最终公网包20,845,464字节，SHA256 `6899b58d56ff50b0159a57219c4fda425cc5483c58e0179c355b1c2092b69260`。已从公开Release重新下载并通过随附SHA256SUMS；包内App/核心/TUN源码与已验代码一致、API配置/CA与既有私有资产一致、root所有权和资产允许清单再次核对。工作区交付文件已替换为同一公开包。两次构建的jar/归档时间不同，不能混用本地预备包哈希与最终公开包哈希。
- 下载：https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/releases/download/qinglian-ubuntu-v1.0.0-preview1/Qinglian-1.0.0-preview1-amd64.deb
