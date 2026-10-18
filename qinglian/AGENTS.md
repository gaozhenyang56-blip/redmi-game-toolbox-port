# 轻连 Android VPN 项目

本目录是用户明确要求新增并交接的独立工程；仓库根目录的 Redmi 游戏工具箱是另一个项目。只在本目录工作，不修改根目录原应用、java/ 或 decoded/。首先读 HANDOFF.md。

## 用户确定的需求
- 原生 Android，使用标准 Material 3（用户最新要求，已从 Expressive 改回），只有一个由现有 x-ui 面板指定的 VMess 节点。
- App 无添加/导入/切换节点和接口配置入口；管理员在原面板选择App节点。后端地址、只读令牌在构建时固化，不能让用户在 App 中填写。
- 连接页直接显示实时在线数量与服务端剩余流量，未知值必须显示待接入/不可用，不能伪造为 0。
- 通知栏显示本次上传/下载用量和实时上下行速度，每秒刷新。
- 在线设备详情必须直接整合到用户现有 x-ui 面板。不要把 server/ 中的独立仪表盘原型作为最终方案。
- 不存在订阅链接，勿再次把订阅链接当作前置要求；需要服务器只读 API。
- 应用分流采用黑名单（所选应用直连）/白名单（仅所选应用走VPN），名单独立保存；连接页规则/全局切换，全局忽略名单，修改后重连生效。
- 必须保留当前正式签名。不得生成新发布私钥替代；证书指纹见 verification/RELEASE_CERT_SHA256。当前版本 versionCode 为6，下一版从7起递增。
- 真实 VMess、服务器密码、面板凭据、签名私钥和密码禁止进入 Git 或公开日志。要求用户通过私密文件或 Secret 提供。

## 当前边界与验证
- 标准Material3、默认亮色、亮色图标、手动深浅色/系统、分流和真实API资产均已完成。最新状态首先读 HANDOFF.md。
- GitHub SSH正常；完整加密备份已验证，x-ui覆盖层已部署，真实HTTPS API/原登录/选择接口/权限边界已通过检查。
- App API CA仅限专用API，保留证书和主机名校验；不允许trust-all。node/profile/API地址、令牌、私钥保持忽略，禁止输出到日志。
- 修改根目录仅限用户要求的 `.github/workflows/qinglian-*.yml`；原Redmi工程不修改。
- 构建JDK17/SDK35/Gradle8.9；prepare_dependencies.py验证固定依赖，再assembleRelease testReleaseUnitTest lintRelease。原签名从私有路径导入，不新建发布密钥。
- 自动检查和真实部署记录见 verification/ROUTING_CHECKS.md。没有实机VPN/覆盖升级/两手机验证，不得夸大。

最新性能/稳定性更新及底部留白修复见HANDOFF.md首节。延迟采用官方核心API，不伪造数据；DNS必须经VMess，恢复需有预算、取消及代际隔离。

顶部与底部导航加入M3配色毛玻璃：API31+GPU模糊，低版本半透明；仅页面变化/滚动时更新，后台停止。最新记录见HANDOFF首节。

用户最新要求并排切换控件统一苹果玻璃滑块：GlassSegments用于规则/全局、黑/白名单、四个底部导航。保留点按、横拖松手提交与取消、原生RadioButton选中语义；标签层必须高于玻璃选中块，避免高光遮淡文字。
