# 轻连 Android VPN 项目

本目录是用户明确要求新增并交接的独立工程；仓库根目录的 Redmi 游戏工具箱是另一个项目。只在本目录工作，不修改根目录原应用、java/ 或 decoded/。首先读 HANDOFF.md。

## 用户确定的需求
- 原生 Android，Material 3 Expressive，只有一个固定内置 VMess 节点。
- 无添加/导入/切换节点和接口配置入口。后端地址、只读令牌在构建时固化，不能让用户在 App 中填写。
- 连接页直接显示实时在线数量与服务端剩余流量，未知值必须显示待接入/不可用，不能伪造为 0。
- 通知栏显示本次上传/下载用量和实时上下行速度，每秒刷新。
- 在线设备详情必须直接整合到用户现有 x-ui 面板。不要把 server/ 中的独立仪表盘原型作为最终方案。
- 不存在订阅链接，勿再次把订阅链接当作前置要求；需要服务器只读 API。
- 应用分流采用黑名单（所选应用直连）/白名单（仅所选应用走VPN），名单独立保存；连接页规则/全局切换，全局忽略名单，修改后重连生效。
- 必须保留当前正式签名。不得生成新发布私钥替代；证书指纹见 verification/RELEASE_CERT_SHA256。当前版本 versionCode 为3，下一版从4起递增。
- 真实 VMess、服务器密码、面板凭据、签名私钥和密码禁止进入 Git 或公开日志。要求用户通过私密文件或 Secret 提供。

## 当前边界与验证
- 已实现设备心跳、JSON配额、黑白名单及规则/全局切换；本轮已登录面板只读检查，面板内扩展在 server/xui032/，尚未部署。App API地址尚未配置。
- 之前 SSH 与面板的连接尝试受当前执行环境网络限制，不能据此断言服务器故障。
- 本目录构建：JDK17、SDK35、Gradle8.9；先 python3 scripts/prepare_dependencies.py，再 ./gradlew assembleDebug testReleaseUnitTest lintRelease。
- 交接原基线16项测试，本轮新增验证见 verification/ROUTING_CHECKS.md；原签名已恢复核对，没有实机 VPN 联网验证。不得把 Robolectric 绘图或本地 HTTP fixture 说成真实节点连接测试。
- 原签名以独立私有备份交给用户；Git 内仅有公开证书。发布前安全导入备份并核对证书指纹。
