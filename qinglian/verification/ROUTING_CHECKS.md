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
