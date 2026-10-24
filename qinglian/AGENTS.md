# 轻连 Android VPN 项目

本目录是用户明确要求新增并交接的独立工程；仓库根目录的 Redmi 游戏工具箱是另一个项目。只在本目录工作，不修改根目录原应用、java/ 或 decoded/。首先读 HANDOFF.md。

## 用户确定的需求
- 原生 Android，使用标准 Material 3（用户最新要求，已从 Expressive 改回），面板统一指定VMess/VLESS/Trojan/Shadowsocks兼容节点，并管理Hysteria2加速通道；App选择兼容/加速，节点参数由同一个面板管理。
- App 无添加/导入/切换节点和接口配置入口；管理员在原面板选择App节点。后端地址、只读令牌在构建时固化，不能让用户在 App 中填写。
- 连接页直接显示实时在线数量与服务端剩余流量，未知值必须显示待接入/不可用，不能伪造为 0。
- 通知栏显示本次上传/下载用量和实时上下行速度，每秒刷新。
- 在线设备详情必须直接整合到用户现有 x-ui 面板。不要把 server/ 中的独立仪表盘原型作为最终方案。
- 不存在订阅链接，勿再次把订阅链接当作前置要求；需要服务器只读 API。
- 应用分流可自由开关（默认关闭）；关闭时规则模式绕过大陆/私网，开启后采用黑名单（所选应用直连）/白名单（仅所选应用走VPN），名单独立保存；连接页规则/全局切换，全局忽略名单，修改后重连生效。
- 必须保留当前正式签名。不得生成新发布私钥替代；证书指纹见 verification/RELEASE_CERT_SHA256。当前已发布 versionCode 为20；发布状态以HANDOFF.md首节及verification记录为准，下一版从21起递增。
- 真实 VMess、服务器密码、面板凭据、签名私钥和密码禁止进入 Git 或公开日志。要求用户通过私密文件或 Secret 提供。

## 当前边界与验证
- 标准Material3、默认亮色、亮色图标、手动深浅色/系统、分流和真实API资产均已完成。最新状态首先读 HANDOFF.md。
- GitHub SSH正常；完整加密备份已验证，x-ui覆盖层已部署，真实HTTPS API/原登录/选择接口/权限边界已通过检查。
- App API CA仅限专用API，保留证书和主机名校验；不允许trust-all。node/profile/API地址、令牌、私钥保持忽略，禁止输出到日志。
- 修改根目录仅限用户要求的 `.github/workflows/qinglian-*.yml`；原Redmi工程不修改。
- 构建JDK17/SDK35/Gradle8.9；prepare_dependencies.py验证固定依赖，再assembleRelease testReleaseUnitTest lintRelease。原签名从私有路径导入，不新建发布密钥。
- 自动检查和真实部署记录见 verification/ROUTING_CHECKS.md。没有实机VPN/覆盖升级/两手机验证，不得夸大。

最新性能/稳定性更新及底部留白修复见HANDOFF.md首节。延迟采用官方核心API，不伪造数据；DNS必须经VMess，恢复需有预算、取消及代际隔离。

顶部与底部导航实时毛玻璃：v13统一小图CPU模糊，滚动坐标扣除ScrollView偏移，显示不可变位图；前台20Hz取样、相同像素不重复模糊，隐藏/后台停止。默认透明度92%、半径16dp，旧设置保留。最新记录见HANDOFF首节。

用户最新要求并排切换控件统一苹果玻璃滑块：GlassSegments用于规则/全局、黑/白名单、四个底部导航。保留点按、横拖松手提交与取消、原生RadioButton选中语义；标签层必须高于玻璃选中块，避免高光遮淡文字。

账号主连接及导出见server/ACCOUNT_API.md；必须保留永久域名采集的明确告知与同意，不能隐蔽采集。主连接、每周导出预留及账号累计用量三者不可混淆。导出备注传入节点、URI、面板和ZIP名，重试不得再次扣额。

账号独立页面；免登录访客每次手动连接64GiB，自动恢复保持同一会话，兼容/HY2共享限额且不记录域名。详见server/ACCOUNT_API.md。

关于页速度实验室默认全关；HY2 aggressive只给开启设备创建独立worker，普通/导出节点不改，64GiB访客/原配额继续执行。窗口有界、资源共享，不得承诺1Gbps或手机波动已解决。四路测速严格按总大小分摊，停止关闭全部请求。

v15默认服务器链路测速，经当前代理及原专用CA，需设备账号/访客凭据且原始peer限本机服务器；Cloudflare保留可选。不得直接请求后把直连速度冒充VPN速度。保留v14激进参数，停止测速不能在UI线程同步disconnect。详见HANDOFF首节。

v16已将HY2高性能移出实验室并设为加速通道默认；连接页可选保守，原参数不变。服务端私有labHy2键保持兼容，不要求服务器全局切换。运行中续租必须沿用启动Selection，界面修改仅下次连接生效，不能用新偏好误停当前节点。

## Ubuntu 桌面版

用户授权新增ubuntu/原生GUI，目标为wayne-hyperos4:ubuntu-to-go的Ubuntu24.04 amd64 GNOME/.deb ChatGPT。独立1.0.0-preview1版本，不递增Android versionCode，不用Android签名签deb，也不能通过APK更新接口发布deb。详见HANDOFF首节、ubuntu/README.md和verification/UBUNTU_CHECKS.md。

保留polkit固定root助手权限边界与隔离网络TUN验收。系统代理规则可绕大陆，TUN仅全局且节点必须同服务器；不得删除这个防循环限制而放行任意远端。ChatGPT本机OAuth回调须绕过代理，不禁用沙箱/TLS，不强杀用户实例。UI启动与本机核心就绪不等于远端已可用，须经现有服务器测速1字节验证。

Ubuntu preview2延续手机版Material3配色，类似FlClash的宽屏左栏+双栏，窄屏底部导航；简约为第一版传统桌面标签页/下拉框/完整表单，持久化且切换不能重建连接、改变选项或丢失输入。真实本应用stack毛玻璃在GTK帧绘制后采样、小图高斯/像素复用/约12Hz，隐藏停止；依赖gi-cairo/cairo/Pillow。六页面与原生单选辅助语义、鼠标/键盘、账号告知仍保留。不得把GUI连接状态fixture说成真实公网VPN验收。

v17新增实验室双HY2（默认关，最多2条/同凭据/同额度）；正式TCP协议对照（面板默认/VLESS TLS/Trojan TLS）、可选VMess/VLESS Mux并发4、TCP60/20秒保活、自动选择（默认关，512KiB启动对照/空闲45秒验证/连续3失败/3分钟冷却/10分钟最多2切换）。全部Selection固化，自动选TCP也保留原HY2参数请求，不重置访客会话或配额，不承诺单连接叠加/无缝/固定带宽。NodeConfigCli复用精确App配置，真实双通道与公网小流量检查见新workflow/channel_smoke.py。
