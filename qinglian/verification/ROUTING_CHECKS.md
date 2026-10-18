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
