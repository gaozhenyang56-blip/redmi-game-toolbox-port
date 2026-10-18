# 更新误报修复（versionCode8）

- 原缺陷回归先在v7代码上失败：恢复默认界面后接受相同发布抛出IOException（保存修复失败），导致更新状态误报且不检查APK。
- v8将被拒绝的UI配置与APK更新检查分开；相同UI不再次应用，合法新APK仍能显示，较新的UI revision仍可应用。增加恢复默认与失败启动回退两条回归；签名测试的目标版本改为当前版本+1。
- 更新失败文案区分超时、TLS/证书、DNS、连接失败、HTTP状态、本地资产缺失和配置格式；不输出原始异常内容或凭据。
- 现有生产更新服务复查Actions39098407422通过。仅修改App，不部署服务器二进制，不改变节点或VPN行为。
- 初轮全套测试的本地TLS fixture出现EOF，服务端读等待由3秒改为15秒后重跑；生产客户端的3秒超时与信任策略未改变。
- 最终assembleRelease/testReleaseUnitTest/lintRelease成功，57项测试0失败，lint0错误/23警告。面板发布v8为revision6，默认图文间距2dp。
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
