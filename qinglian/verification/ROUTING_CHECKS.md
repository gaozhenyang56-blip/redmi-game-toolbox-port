# v17 Android连接优化（2026-10-20）

103项Android测试通过，lint0错误/41警告；新增启动小流量选择、3失败/20%滞回/冷却/频次、切换保持访客身份/用量/开始时间、失败恢复精确原Selection、实验室双HY2默认关闭、正式TCP/复用/自动入口、两端口限制、DNS/敏感/大陆规则、旧服务未确认TCP拒绝等回归。Service测试只用状态fixture，不代表实体VPN。

Go race通过：主/访客TCP对照、严格请求值、默认凭据不旋转、周导出不扣、访客多协议合计64GiB。真实V2Ray原生8场景通过（含VLESS TCP TLS、VMess/VLESS Mux及TLS/SNI敏感服务路由）；两个真实Hysteria客户端通过App balancer均实际收流量，服务端合并计量、父额度耗尽关闭共同worker。

构建原签名APK 28,351,422字节，SHA256 `ae0a9c9e6730cfbfb79290af9646234776b6d3dcb18e2c04fb35e14d3dc2d4fe`。服务端备份/部署与公网2.5MiB/最终发布待补录；原v16保留。无新增实体手机升级、切网或速度AB测试，不承诺增速/无缝。

# v16 默认高性能与续租选择验证（2026-10-18，已发布）

- 1.1.7-preview/versionCode16，assembleRelease/testReleaseUnitTest/lintRelease通过，92项Android测试0失败/错误，lint0错误/39警告。默认高性能脱离旧实验开关；明确保守持久化、兼容通道不申请高性能、服务器响应/节点标记双重确认与不匹配拒绝通过。
- 运行中的Selection不随UI待重连偏好变化；高性能→保守/兼容及保守→高性能、恢复期间均保持原请求选项。profile网络请求串行化，旧Service返回检查、访客固化options复用同一选择。UI正式页面高性能/保守入口及实验室只剩两个测速开关通过。
- Hy2Client.configuration仅迁移helper并重命名局部变量，aggressive、8/32MiB流窗口和16/64MiB连接窗口与v14/v15一致；ProtocolTest原数值/TLS断言通过，固定HY2 Android ARM64二进制SHA256仍 `13d5b85cd45e11cf02847dc2b6229d6f9a20b3cb87a00b9356cf244e3bd8db84`。不改服务端、系统参数或共享节点，复用v15真实1GiB基线39169753935，不将旧基线冒称本次手机实测。
- APK 28,347,618字节，SHA256 `6b419316e6afc8f67a516808f0350319435fefb262a81c28b76fa26512c7c84c`。包名com.gzy.qinglian、version16/1.1.7-preview，原证书SHA256 `2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`；无私钥文件入包，面板revision24发布。线上[39171117919](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39171117919)核验HTTPS下载、大小/哈希、原签名及包名/版本。
- 用户当前网络反馈提速且稳定，功能按原参数提升为默认；没有新增实体手机安装覆盖、跨网络稳定性或参数/并发/分流因素的独立AB验收，不能据此保证所有网络相同收益。

# v15 大容量测速验证（2026-10-18，已发布）

- 1.1.6-preview/versionCode15，原签名；Android构建/86项测试/lint通过（0错误/39警告）。新回归验证第一方4路精确总量、502后可重测、800MB超时提示不误报VPN断开，以及阻塞式disconnect不会阻塞UI停止；既有TLS/取消/代际/代理失败不直连仍覆盖。
- Go race通过。新接口验证TLS设备认证、直接外部peer/伪造X-Forwarded-For拒绝、精确非32KiB整倍数长度、1..32MiB边界、4路上限429及取消后并发槽释放。固定32KiB流式缓冲，不分配请求总量；HTTP压缩禁用但实际TLS/VPN密文照常传输计量。
- 只读诊断[39168800092](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39168800092)：NRestarts0，MemoryPeak151588864，memory.events max/oom/oom_kill全0，原父配额未耗尽。小容量真实公网五协议[39168862614](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39168862614)通过。用户澄清仅测速失败，GitHub约25MB/s；未定位手机Cloudflare失败码，不能把推测限流或OOM当根因。
- 面板升级[39169479228](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39169479228)先加密备份再构建/Go race/安装及回滚检查。无需更改/重启账号HY2引擎参数；v14 aggressive和32/64MiB窗口保持。
- 公网[39169753935](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39169753935)用原生客户端、真实App NodeConfig和原CA：五协议均测试Cloudflare及第一方512KiB，HY2实验四路每轮4×32MiB共8轮=1GiB，同一个原生HY2客户端/QUIC连接中立刻新请求成功（不重启、不冷却），账号实际计量至少增加1GiB。凭据只通过curl stdin而非命令行传入；不将1GiB响应装入内存，只核验实际HTTP状态与size_download。访客源也通过，原合计64GiB、无域名记录、设备隔离/恢复保守均保留。随机测试行清理，原父配额保留实际测试流量。
- APK 28,347,610字节，SHA256 `22c84395bcb9e2aa3698e934fb0adcf866aa0c9f6193c6d8d5e884273137af09`，原证书SHA256 `2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`。面板revision23；线上[39169962893](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39169962893)验证实际HTTPS下载、大小/哈希、原签名及包名/版本。无实体手机原故障重现/安装覆盖；服务器源与外网源范围不同，不能把运行器1GiB成功等同已证明手机故障根因。

# v14 速度实验室验证（2026-10-18，已发布）

- 最终1.1.5-preview/versionCode14，83项Android测试0失败；assembleRelease/testReleaseUnitTest/lintRelease通过。实验默认关闭、仅加速请求、独立Activity、连接中不可改变HY2设置、原签名和TLS验证保留。首次lint发现两个方向常量用裸数字，改为LinearLayout.VERTICAL；未抑制lint错误。
- 四路本地真实HTTP测试观察4条同时在途请求，选1MiB总接收恰为1MiB；单/四路取消不回调完成，代理失败不回退直连。原始图表约250ms，默认1秒窗口，平均都使用完整墙钟时间含连接等待。未将并行吞吐当单连接吞吐。
- Go race controller/web通过；实验选项无效类型400，普通兼容节点/周导出预算不变。四组原生测试通过，五协议外新增aggressive HY2真实1.4MB传输、参数检查、计数/到期/用尽停止，普通HY2仍conservative。
- 升级[39145013500](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39145013500)和引擎[39145319338](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39145319338)先加密备份后部署；公网原生检查读取真实worker配置确认aggressive、64MiB连接窗口及无固定带宽；App相同参数的客户端实际512KiB传输成功。另一个同账号设备仍获得原端口/凭据；同设备续租不旋转，关闭实验恢复原节点并观察实验worker关闭。访客实验也实传且原64GiB合计用尽停止、无域名记录、新手动会话重置通过；只清理随机测试数据。
- 面板revision20发布APK 28,344,594字节，SHA256 `dbbd98eaaa3ca28175264a78b0f74e49eff2ec83a1db9886fb6599b1034d8f0a`。证书仍为 `2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`；无私钥文件，固定规则/HY2二进制摘要保留。线上下载[39168272789](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39168272789)验证HTTPS、字节/哈希、原签名和包名/版本。
- highest仅指当前固定核心的最高激进BBR档，不是无限参数或保证1Gbps；接收窗口有界，物理资源共享。没有用户手机实测速度收益、耗电/内存、Wi-Fi拥塞变化或覆盖安装验收，不能宣称波动已解决。

# v13 访客限额、可选大陆分流与滚动玻璃（2026-10-18，已发布）

- 版本1.1.4-preview/versionCode13，原签名。assembleRelease、testReleaseUnitTest、lintRelease通过；78项Android测试，0失败/错误；lint0错误/37警告（含既有兼容/字符串/Android ID告警）。Robolectric TLS测试需JDK17测试进程 `--add-opens=java.base/java.net=ALL-UNNAMED`，只修测试反射环境，不修改生产TLS验证。
- 实际ScrollView滚动600px后采样测试先复现截到白色，扣除source scrollX/Y后读到真实背景；内容更新后新位图变化，旧不可变位图保持原色。验证后台/隐藏不持续捕获、旧Android真实CPU模糊、无invalidate的内容变化。没有实体手机GPU/观感验收。
- 应用分流开关默认关闭、旧名单保留；Android测试验证开关/全局优先级，GeoAssets固定摘要及损坏副本恢复。真实V2Ray5.54.2与App NodeConfig检查baidu/223.5.5.5/private DIRECT、github/8.8.8.8 PROXY、全局全部PROXY。测试使用不同loopback出口模拟路径；不把模拟路径当手机实际出网。国内DNS独立、其余TCP代理DNS；固定geoip/geosite随包，非运行时任意规则下载。
- AccountUiTest覆盖独立Activity、免登录说明、未登录校验错误可见、导出控件未登录隐藏；访客随机请求身份在自动恢复保持、手动新连接改变。服务端Go race验证访客幂等、设备/令牌隔离、合并64GiB、新手动会话、停止、不消耗注册次数；多设备账号退出只撤销当前令牌。
- 四组原生测试：五协议真实各1.4MB传输/域名/到期/额度关闭、主节点累计同步父配额、访客两种协议合并64GiB且不记录域名、实际国家路由。访客额度测试只调整随机测试行计数，不下载64GiB。真实FIFO日志产生域名后才判账号历史通过。
- 面板六页本地Playwright用原Vue/Ant资产及模拟25账号/30节点/200条域名记录，验证渲染、分页10条/搜索、嵌套字节字段、390px无横向溢出和无JS错误。生产认证读取六条页面均HTTP200且为管理模板。生产Chromium直连代理请求遇socket hang up，未计作通过；未伪称浏览器线上全部交互验收。
- 面板升级[39143353638](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39143353638)成功，升级前加密一致性备份、全新上游覆盖层Go测试后安装。账号引擎部署[39143546623](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39143546623)成功，另一次备份，保留原节点；实际国家路由检查通过。
- 同一部署公网检查使用App实际NodeConfig与原生客户端，五协议导出及独立主兼容/HY2各512KiB，严格CA/目标证书；账户注册限制、多设备、幂等、备注、周额度隔离及永久域名均通过。访客无账号启动、兼容/HY2真实流量、合计64GiB停用、不记录域名、新手动会话重置通过；仅随机测试账号/访客清理。服务端采样限额可能少量超额，不宣称零误差计费。
- 只读诊断[39141564513](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39141564513)：账号服务重启0、内存约79MB、负载0.44；实际账号HY2 UDP socket缓冲16MiB，丢弃0，短观察UDP错误/缓冲错误增量0。运行器原HY2三次97.77/109.84/98.01Mbps，兼容81.17Mbps，不是用户手机或实际账号HY2吞吐证明。用户Wi-Fi下兼容也波动，根因未定位；HY2客户端/账号进程BBR conservative原生启动及传输通过，不能承诺解决手机波动。测速图近1秒平滑，全程平均不变且包含分段等待。
- APK 28,337,246字节，SHA256 `18b0a13c1893471a37b0ca676c5ef035554c772c47a5ed4f2a12dbc8082e67d1`。包名com.gzy.qinglian、version13/1.1.4-preview、原证书SHA256 `2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`。APK固定规则摘要验证，无keystore/私钥文件名；未把APK和私有资产提交Git。
- 面板revision17已发布，原界面参数/导航2dp间距保留。线上下载[39143831021](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39143831021)通过实际HTTPS下载、大小/哈希、原签名和包名/版本核验。无实体手机覆盖安装、TUN出网、实际手机速度/玻璃帧率测试。

# 账号独立主连接、备注导出与实时玻璃（versionCode12，2026-10-18）

- 1.1.3-preview/versionCode12，原签名；assembleRelease/testReleaseUnitTest/lintRelease最终完整通过，71项Android测试0失败，lint0错误/32警告（含明确选择Android ID产生的HardwareIds提示、界面字符串和既有兼容提示，没有关闭TLS检查或压制错误）。
- 毛玻璃增加默认前台约30Hz Choreographer持续采样、透明度88%、模糊32dp及可调设置；重复像素不上传，后台/隐藏/detach移除回调。新增不invalidate源内容也能更新、停用后不再采样的回归，旧Android真实模糊和导航/切页测试保留。连接成功动画650ms并遵从动画关闭；未做手机GPU/帧率验收。
- 自定义下载1..2048MiB、分段32MiB、最长3分钟；超过目标停止、未完成不伪装为所选大小或100%进度。单元测试验证源发送更多数据时仍严格停在请求大小。
- 自定义用户名密码、bcrypt12摘要、90天设备会话、Android ID摘要一设备限注册一次、多设备登录。HTTP账号接口426，HTTPS专用CA/主机名验证保留。账号主连接独立凭据，正常事务计入账号及原面板配额，不消耗周导出预留；原共享节点不改配置、不追溯个人用量。
- 五协议每周256GiB预留、7天有效、幂等UUID及备注不可变重试、无退款；账号/跨设备/历史隔离、并发预留/周重置/禁用均覆盖。公开上游全新检出apply.py后，18项controller测试及web模板Go race通过。原x-ui版本/入站配置/权限校验保留。
- server/test_export_engine.py：原Xray1.4.2与固定HY2.13.0真实五协议各1.4MB loopback传输，计数、用完终止、过期、同意撤回/缺失不写入、仅域名不含URL/IP、停用仍保留历史。另一项验证主连接父配额与账号差值同步且重复采样不双记。测试专用ACL允许loopback，生产仍拒绝私网/loopback/链路本地。
- 原生访问日志FIFO初始打开后关闭会使读线程提前EOF：加入生命周期keeper描述符，真实访问在无手动record调用前产生域名记录才判成功。原始日志只在FIFO/内存过滤，不持久化URL、来源IP或页面内容；非域名/ECH等不保证识别，观察数不是网页访问次数。用户必须明确同意永久记录，既有记录无自动清理。
- 发布前发现旧NodeConfig未给新TLS主节点加载专用CA；补入usage=verify的CA证书，继续校验SNI/主机名并拒绝非CA或无效证书。增加Android回归，并用App实际Java配置转换器+V2Ray5.54.2重跑四种兼容协议，未用导出配置替代App配置验收。
- 面板升级[39139508364](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39139508364)成功，先加密一致性备份、保留原节点、配置及计数。新账号服务部署[39139687658](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39139687658)成功，控制11456只loopback且匿名401；原x-ui与原HY2仍正常，备份包含新服务单元。含主连接每账号8个/全局16个进程，MemoryMax768MiB。
- 公网[39139979781](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39139979781)使用App实际NodeConfig，五协议导出各512KiB及独立主兼容/HY2各512KiB，严格CA/目标HTTPS证书验证；同设备再注册409、错误密码401、多设备同账号可用、幂等不双扣、备注保留、主连接独立、周额度不混入主流量、账号累计/永久域名验证通过。仅随机测试账户在停止worker后清理，不删除真实用户数据。
- HY2只读诊断[39135757836](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39135757836)：无重启、UDP错误0、缓冲有效；运行器三次279.13..292.04Mbps，兼容271.49Mbps。这不是用户手机20..150Mbps根因证明。v12保守禁用路径MTU发现/10秒保活/30秒空闲配置通过原生启动与传输；不能承诺手机稳定性或到手机速度已改善。
- 最终APK27,608,864字节；SHA256 `b808c7068a9d21d3fc0825a9063bc5a992aeae53d4b5ea6cf6637ff9911c8f97`。包名com.gzy.qinglian，原签名证书SHA256 `2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`，固定HY2二进制摘要、无私钥/keystore与源码密码扫描通过。
- 已发布面板revision14，原UI配置及2dp导航间距保持。线上完整APK下载[39140123933](https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/39140123933)成功：实际HTTPS下载、字节/哈希、原签名与包名/版本全部验证。无实体手机覆盖安装、TUN出网、两手机并发或GPU实测。

# 实时毛玻璃与切页动画（versionCode11）

- 1.1.2-preview/versionCode11，原签名，assembleRelease/testReleaseUnitTest/lintRelease通过。66项Android测试0失败；lint0错误/23警告。初次lint要求显式SDK31保护GPU调用，补上版本判断后完整重跑通过，无忽略/抑制错误。
- FrostedBar为pre-draw实时小条带取样；不滚动，仅改变源内容颜色即可更新背景图。相同帧连续取样复用同一显示位图，避免invalidate自循环；后台、隐藏、恢复及detach通过。只取ScrollView，两个缩小1/8位图与CPU数组复用，没有新定时器或屏幕录制。
- Android12+使用28dp GPU模糊，四周36dp采样余量及更薄遮色；API26..30小图三遍水平/垂直盒式模糊。API30真实黑白边缘产生渐变像素，证明低版本不止透明。文字/图标独立绘制，玻璃选中块减小遮色。软件/Robolectric图像不能代替手机GPU最终观感和帧率验证。
- 内容区切页淡出/淡入各100ms，并行6dp/220ms微移，导航固定；快速连点以最后页面为准，旧动画先结束/取消。pause和普通重建清理，系统禁用动画时跳过。快速切页/导航位置/生命周期复测通过，既有分流、HY2兼容、配置、更新与签名回归仍通过；无VPN核心/服务器协议变更。
- APK27,593,556字节；SHA256 b9a96a95b958d15c2dc583e5bedc89424460eabc66597b8e29f18585e4c9af7a。原证书、ZIP、固定HY2二进制摘要、无服务器密码/私钥检查通过。已发布原面板revision11，原UI配置保持，导航间距仍2dp。生产VPN服务无重启/改配。

# HY2兼容分流与可选应用预设（versionCode10）

- 1.1.1-preview/versionCode10，原签名；assembleRelease、testReleaseUnitTest、lintRelease完成。64项Android测试0失败，lint0错误/23警告。新增预设精确包名/安装启用筛选、取消不保存、保存切白名单且保留黑名单/全局，以及双revision更新和递归/insecure拒绝测试。预设UI测试需等待弹窗onShow；未降低断言。全量曾出现本地TLS fixture EOF，独立3项及最终全量64项复测通过，保留fixture异常诊断，未放宽生产证书检查或超时。
- 真实V2Ray5.54.2原6组协议测试通过；新增混合路由：HY2 SOCKS故意不可用，原SOCKS目标IP，通过HTTP Host及严格CA/主机名验证的TLS SNI识别头像/ChatGPT域名，经VMess兼容outbound成功；普通Host失败，不能静默全部回退。只在测试服务器DNS把测试域名映射loopback。内层UDP443规则经兼容，默认仍HY2；V2Fly不支持routeOnly，生产未保留无效字段，嗅探会重写目标域名。
- 真实HY2原生SOCKS及V2Ray->HY2完整链UDP64/1200/1350字节往返通过。该测试无法证明手机UDP链路/MTU/HTTP3根因，未以此宣称故障复现或修复实机完成。
- 生产兼容探测39102318075、HY2探测39102325608及同一运行器两通道服务检查39102324014均成功。头像URL两通道200；ChatGPT/Codex匿名请求均403、静态根URL404，不能作为登录后的Codex Cloud验收。未修改/重启生产HY2服务、原节点、配额或BBR。
- APK大小27,591,216字节；SHA256 edb23f14bbc9ef62e6bcee49614b3f4601b2a73acb31c70f51b24d738458735f。原证书、ZIP完整性、固定HY2原生摘要及无服务器密码/私钥检查通过。面板发布revision10且原UI配置保持。实际公网HTTPS下载/长度摘要/包名版本/原签名验收39102561545成功。
- App分流预设为可选且本地精确已知包名，只添加已安装启用项，已有白名单保留，可取消勾选；保存切白名单，不改黑名单与规则/全局。实际启用仍需规则模式、重连。手机TUN、签名覆盖安装和ChatGPT App登录后的恢复需用户复测。

# 多协议、统一面板与Hysteria2（versionCode9）

- 1.1.0-preview/versionCode9，原签名，ARM64。其它协议Android8+，Hysteria2因官方Android binary ABI需Android10+。61项Android测试0失败，lint0错误/23警告；10项Go race测试通过。
- 六组真实Linux V2Ray5.54.2端到端传输：VMess TCP/HTTP、VMess WS/TLS、VLESS TCP、VLESS WS/TLS、Trojan TLS、Shadowsocks AEAD；测试TLS使用公开fixture CA，未开启insecure。转换使用App实际NodeConfig.java。没有DIRECT回退。
- 4项HY2管理器单测：认证/启停/所有权/到期/限额、累计差值幂等、上传TX/下载RX方向、异常及溢出计数拒绝。另有真实HY2 v2.13.0 QUIC+SOCKS+本地HTTP下载、事务记账及额度耗尽停止集成测试通过。只有测试子类允许loopback目标。
- 原面板升级39100328172成功，原配置/入站/counters保留，原登录与权限边界通过。HY2前两次因原/etc/x-ui目录mode000、服务裁减能力后无法读配置而回滚；增加受限CAP_DAC_OVERRIDE后39100713900部署成功，保持目录原权限，不给其他用户开放权限，原VMess不替换。
- 加密部署前备份39100312617已下载，RSA/AES-GCM认证、hash、原二进制及两份SQLite一致性快照quick_check验证通过。新备份脚本也纳入HY2单元及二进制/管理器。HY2独立unit可停止/禁用回滚；面板可关闭加速。
- 真实公网HY2 run39100833176：经UDP443完成App转换配置的HTTPS204、8MiB下载和UDP DNS进入核心后经HY2的TCP DNS，拒绝AAAA返回地址；运行器100.57Mbps/299ms，不是手机结果。原兼容通道39100833192同样通过（112.1Mbps/77ms）。不同运行器/路径不作性能A/B或提速证据。
- 原面板登录后多协议页/加速运行与当前配额绑定均通过；匿名管理员接口401。管理/认证仅127.0.0.1:11453，流量API仅127.0.0.1:11454且私有secret，公网只UDP443；生产ACL禁止代理访问loopback/私网。
- App在兼容/加速之间手动切换，修改需重连；具体兼容协议在同一个原x-ui面板选择。加速未启用或不可用时明确失败，没有静默直连。分流、通知用量、设备上报、恢复预算及安装更新校验保留。
- 最终APK 27,587,568字节，SHA256：992ff411b2cc4ade6684f4b5c134920d9f9f7f2f52b0588574f0244fe58d1e33；ZIP、原证书、固定HY2 binary摘要、许可及无服务器密码/私钥检查通过。已在面板发布revision9，公网真实APK下载/字节摘要/原签名/包版本检查39100970367成功。部署后完整加密备份39100869776成功（含HY2单元、管理器、二进制与私有配置）。
- 没有实体Android HY2原生启动/TUN/网络切换/覆盖安装或手机速度对比，不能把Robolectric、Linux或GitHub运行器验证说成手机验收。

# 服务器性能排查与窗口优化（App仍v8）

- 同节点v2rayNG同速，用户反馈下载峰值约5MB/s，不能认定App独有瓶颈。
- 诊断39098794750/39098852244：BBR+fq生效、2vCPU低负载；现有流RTT167..229ms，一条累计重传字节13.9%，非实时丢包率。服务器自身8MiB单路262Mbps/4路714Mbps。
- 39098913648：原值已备份、动态收发上限提高至32MiB，默认/最小保留；回读验证与服务健康通过，未重启x-ui。后测服务器单路347Mbps/4路755Mbps，短样本差异不能归因于调参。
- 原App转换配置实际VMess复查39098950104成功，Google204/8MiB经代理下载/核心DNS均通过；运行器代理复测56.33Mbps/204请求212ms，基线102.29Mbps/151ms，非受控同路径A/B，不能声称调参提高速度；原签名APK更新通道39098950073成功。运行器数据不是用户手机数据，无手机前后速度结论。
- 回滚入口qinglian-network-tune.yml，workflow_dispatch mode=rollback。只改服务器缓冲上限，APK保持v8；需要重连及相同下载源手机复测。详见HANDOFF首节。

# 更新误报修复（versionCode8）

- 原缺陷回归先在v7代码上失败：恢复默认界面后接受相同发布抛出IOException（保存修复失败），导致更新状态误报且不检查APK。
- v8将被拒绝的UI配置与APK更新检查分开；相同UI不再次应用，合法新APK仍能显示，较新的UI revision仍可应用。增加恢复默认与失败启动回退两条回归；签名测试的目标版本改为当前版本+1。
- 更新失败文案区分超时、TLS/证书、DNS、连接失败、HTTP状态、本地资产缺失和配置格式；不输出原始异常内容或凭据。
- 现有生产更新服务复查Actions39098407422通过。仅修改App，不部署服务器二进制，不改变节点或VPN行为。
- 初轮全套测试的本地TLS fixture出现EOF，服务端读等待由3秒改为15秒后重跑；生产客户端的3秒超时与信任策略未改变。
- 最终assembleRelease/testReleaseUnitTest/lintRelease成功，57项测试0失败，lint0错误/23警告。面板发布v8为revision6，默认图文间距2dp。公网可信TLS下载/实际字节大小与hash/原签名与包版本检查Actions39098678721成功。
- v8 APK SHA256：ae5ed875b7518eae5ec3cb22bf9cbe4800acedb0099b858b538f584eedf72e71，19,511,022字节。原签名、版本/包名、ZIP及私钥/密码边界校验通过。

# 导航对齐与更新通道（versionCode7）

- 1.0.6-preview/versionCode7，原签名，ARM64/Android8+。底部图文整体居中，默认间距2dp，原生绘图已检查，未实体手机验收。
- 最终assembleRelease/testReleaseUnitTest/lintRelease成功，Android55项测试0失败，lint0错误/23警告；Go9项race测试通过。
- 最终APK SHA256：2e4b5298e1632c315c25f9edb6868bf4b178452abd2b439d0ee91599e69555ea，19,510,222字节。原证书、ZIP及私有资产边界检查通过。
- Android测试包含严格配置字段/范围、单调版本、防失败循环与回退、拒绝外部URL、APK hash/版本/原证书、真实可信TLS下载及失败临时文件清理。APK元数据单测使用框架fixture，不代表真实安装器验收。
- Go覆盖未登录/其他管理员/App令牌禁止发布、无Origin禁止写入、CAS冲突、非法字段/边界、回滚新revision，以及上传与Bearer下载原字节。
- 生产升级39097892611成功：事前加密备份已下载，RSA/AES-GCM/hash、两份SQLite一致性快照quick_check通过。原配置/入站/计数保留；原面板登录、发布并回滚、匿名401、客户端不能写管理员接口、公开可信HTTPS均通过。
- 实际面板已发布v7（revision4），navGap2dp，APK描述大小/哈希与本地一致。公开可信TLS下载、实际APK字节/原签名/包版本验收Actions39098226748成功。
- UI参数在前台30秒刷新；完整APK更新有Android系统确认，首次需要手动安装v7。没有真实手机安装器/覆盖升级/实际VPN性能新结论。

# 苹果风格玻璃界面（versionCode6）

- 1.0.5-preview / versionCode6，沿用原签名，仅App界面变化，不修改服务器/隧道配置。
- 最终assembleRelease/testReleaseUnitTest/lintRelease成功，50项测试0失败，0 errors, 18 warnings。
- 最终APK SHA256：d8f1d207c6767ebbdbebf2047a237db87102349e3b9765e46b2fb36910bbe978；ZIP/私有资产边界/原证书核对通过。
- 顶部与底部悬浮玻璃，圆角/细边缘/渐变高光/柔和阴影；M3动态配色与亮暗主题保留。API31+ RenderEffect只模糊背景ImageView，标题/图标不模糊；低版本半透明兼容。
- 只截取自己ScrollView的条带并缩小到1/8，40ms合并刷新请求；滚动/布局变化触发，后台取消任务与释放快照，不做持续全屏截图。
- 玻璃快照尺寸/更新合并/后台停止/恢复测试及底部insets回归保留；悬浮底部只额外8dp，避免重复系统间距。
- 新增并排滑块点击/选中语义/重复选择不重复提交、拖动松手才提交/取消保留状态、黑白名单独立名单与规则全局保存的UI集成回归。
- 本地TLS fixture曾出现一次意外EOF；未更改生产信任或重试策略，完整重跑通过。最终构建与签名结果记录如下。
- 已检查Robolectric原生绘图；真实Android GPU观感与帧率尚未实机验证，不把绘图当作手机截图。

## versionCode5历史验证

# 性能与稳定性更新验证（versionCode5）

- 1.0.4-preview，原签名，minSdk26/targetSdk35/ARM64。
- 最终APK SHA256：dc79c3409db8aa32d204484bb89e9e93938fd77cb11e60692d794425ee2219c6，19,501,349字节；ZIP/私有资产边界/原证书校验通过。
- Android46项测试，0失败/错误；lint0错误、13项非阻塞警告。完整构建成功；最后仅更新进度说明文字后再次打包和lint。
- 新增恢复预算/退避、健康核心保留、崩溃循环停止、取消不复活、迟到onLost不清新网络、停止后回调无效、用量保留、核心延迟适配失败不回退和取消结果隔离。
- 底部留白：非零系统栏insets重复分发两次，根底部只保留一次144px，BottomNavigationView不重复增加padding，导航高度保持标准范围。
- run39079192014：Java编译App实际NodeConfig，官方哈希校验V2Ray5.54.2 Linux核心经VMess HTTPS204（56ms）和1MiB下载通过；App形式UDP DNS经SOCKS入站，冷/热/AAAA响应22.9/0.11/0.08ms，AAAA无地址正确，无DIRECT出口。
- 运行器成绩不是用户手机成绩，不宣称提升幅度或追平v2rayNG。尚未实体Android TUN、网络切换、故障恢复或底部布局复测。
- 延迟采用官方CoreController.measureDelay，主/备用URL同v2rayNG1.9.46。核心两次请求允许复用，取较小值；旧版三次强制冷连接中位数不可直接比较，没有人为扣除延迟。
- 参考：[网络服务](https://github.com/2dust/v2rayNG/blob/1.9.46/V2rayNG/app/src/main/java/com/v2ray/ang/service/V2rayVpnService.kt)、[核心延迟](https://github.com/2dust/AndroidLibV2rayLite/blob/v5.54.2/libv2ray_main.go)。
- 服务器未改配置，原备份有效。真实节点/API资产不进入Git。

## versionCode4历史验证

# 2026-10-17 本轮交付验证

- 1.0.3-preview / versionCode4，ARM64，minSdk26 / targetSdk35。
- JDK17、SDK35、Build Tools35.0.0、Gradle8.9；依赖固定SHA256校验。最终 assembleRelease testReleaseUnitTest lintRelease 成功。
- Android37项测试，0失败/错误；lint0错误、13警告（非阻塞）。含外观持久化、名单隔离/空白名单防回退、设备排序、API严格字段、profile、可信CA/不可信CA/主机名不匹配和UI导航。
- 原型Python10项测试通过，仅作协议参考；生产使用Go覆盖层。
- x-ui精确上游覆盖层：Go控制器6项+模板1项，go test -race ./web/controller ./web 及构建通过；GitHub Ubuntu24.04匹配构建再次通过。
- 原签名保留：2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870。
- 最终APK ZIP校验通过，含真实node/profile/online/quota/telemetry及API CA资产，不含签名私钥/TLS私钥/面板root密码，不上传公开Git。
- APK SHA256：1aa858b7ffcc7b210971c4029f0423da9eaae87d4375be228b8b031bf439ff52；字节数19499517。
- GitHub SSH检查成功；真实Ubuntu24.04 x86_64/glibc2.39、x-ui0.3.2/Xray1.4.2。服务器主机密钥固定校验。
- 备份run39047010715成功：完整目录/二进制/服务单元/SQLite一致性快照加密，私有下载后GCM/文件哈希/原二进制/数据库哈希和SQLite quick_check通过。
- 部署run39048482539成功：原登录/设备页/选择列表及保存同ID、原入站配置保留、计数未重置、服务active、匿名App API401、客户端不能访问管理员设备数据；原面板未改端口。
- 真实11452HTTPS从GitHub运行器验证online/quota/profile，API CA与主机名校验均开启；专用TLS监听仅App路由。
- 真节点run39048936602成功：取生产profile，用官方哈希校验的V2Ray5.54.2 Linux核心，经显式HTTP代理Google HTTPS204（217ms）及1,048,576字节下载，未配置DIRECT回退。测试产生少量真实入站流量，不伪造设备记录。
- 生产证书有效期825天、CA10年，须到期前同CA续签；APK签名保持原签名。
- 没有手机覆盖安装、AndroidTUN/黑白名单实际出网或两台真实手机在线验收。Linux节点测试不替代Android设备测试；Robolectric绘图不是手机截图。
