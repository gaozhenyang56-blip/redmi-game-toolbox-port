# 导航对齐与面板更新（versionCode7，2026-10-18）

当前1.0.6-preview/versionCode7，下一版至少8，沿用原签名。下方为历史记录，冲突以本节为准。

- 底部导航采用显式绘制的图标+文字整体居中，避免系统复合drawable排版差异；保留RadioButton文字、点击、拖动与无障碍选中语义。默认图文间距由4dp缩小为2dp，按字体大小扩展高度。
- 原x-ui新增“App 热修复与版本发布”：独立SQLite保存递增版本及最近20次历史；支持发布/回滚界面参数、上传APK，最近3个APK保留。写操作仅面板登录用户且同源，App令牌无发布权限。
- 严格界面白名单：navHeight64..96dp、navIcon18..30dp、navText10..16sp、navGap0..10dp、glassMargin0..16dp、glassEnabled布尔。拒绝未知字段/脚本/任意URL。App前台30秒检查，配置原子保存、稳定启动确认、失败恢复上一版，关于页可恢复默认。刷新Activity不重启VPN。
- 完整APK仅从固定HTTPS API下载，保留CA/主机名校验与Bearer，不跟随重定向。最多64MiB，校验长度/SHA256、包名、更高版本号、最低系统兼容性、原签名证书后由系统确认安装；不静默安装。Android未知来源授权后需再次点安装。
- updates.json与既有私有API资产一致忽略，不提交令牌。首次手动安装v7，后续才能使用面板更新接口。
- 生产升级run39097892611成功：部署前加密一致性备份已下载并校验；原入站配置/计数、私有配置/TLS保持，原面板登录与发布/回滚、公开HTTPS及权限边界检查成功。旧二进制保留x-ui.qinglian-before-updates-<sha前12位>，异常自动回滚。
- Android55项测试、Go9项race测试、assembleRelease与lintRelease；原签名验证。实际下载发布验收及最终摘要见verification/ROUTING_CHECKS.md。没有实体手机布局、覆盖安装或安装器验收。

# 苹果风格毛玻璃与滑块（versionCode6）

用户要求加入接近苹果的玻璃效果。顶部Toolbar与底部悬浮胶囊导航现使用FrostedBar（圆角、柔和高光、细白边、轻阴影），文字/按钮不模糊，保留M3配色与亮暗切换。Android12/API31起，缩小至1/8的页面条带快照经GPU RenderEffect模糊；低版本使用半透明底色。

仅在滚动、布局或页面切换时更新，40ms合并请求，不做每帧全屏截图；后台释放快照并取消任务。截图只在内存内，仅绘制应用自己的ScrollView，不需屏幕录制权限，不改VPN/服务器。

用户追加要求所有并排切换使用苹果玻璃滑块：GlassSegments统一规则/全局、黑白名单和底部四导航；单个选中块180ms滑动，支持点击与横向拖动，取消不提交，RadioButton保留原生选中语义，标签层Z高于玻璃块以保证对比度。黑白名单独立存储、重连生效及外观切换逻辑保留。

根布局改为FrameLayout叠层，页面在工具栏/导航下滚动，内容上下预留对应栏高度；系统栏insets仍由根消费一次，保留v5底部留白修复。原签名，版本1.0.5-preview/versionCode6，下一版至少7。设备实际GPU观感和帧率未实机验证。

# 性能与稳定性更新（versionCode5）

用户实机反馈网页/视频/下载更慢、稳定性不足、测速延迟偏高，并上传截图要求去除底部留白。此次保留同节点/同核心，不改生产入站或服务器参数。

- 网络选择对齐v2rayNG1.9.46：requestNetwork请求单个最佳非VPN网络，增加普通CHANGE_NETWORK_STATE权限；处理能力更新和旧网络迟到onLost，停止后的回调无效。
- App UDP/TCP53路由至核心DNS outbound，内部DNS使用TCP经VMess到1.1.1.1/8.8.8.8，带核心缓存，UseIPv4优先避免未确认可用的IPv6出口等待；IPv6 TUN路由保留捕获，不引入IPv6直连。没有DNS DIRECT出口。
- 转发进程退出自动恢复，健康核心保留；核心停止则重启核心，保留TUN、分流、当前profile和累计用量。单个worker串行，去重、取消保护、连接代际校验，60秒最多3次、500/1000/2000ms退避，反复异常明确停止而非无限循环。
- 测速延迟改用CoreController.measureDelay，主/备用URL与v2rayNG1.9.46相同。核心内部两次请求复用连接取较小值；UI明确此算法。此前三次强制冷连接中位数与之不可直接比较。没有修改延迟数值，没有DIRECT回退。
- 底部由根布局处理系统栏insets并消费，阻止BottomNavigationView再次增加底部padding；系统导航按钮保留。覆盖非零insets及重复分发的布局回归。
- 真服务器探测run39079192014成功：使用Java直接编译App的NodeConfig生成真实配置，经过VMess完成HTTPS204和1MiB下载；App形式UDP DNS经SOCKS入口验证，冷/热/AAAA查询22.9/0.11/0.08ms，AAAA空响应正常。运行器HTTPS56ms不是用户手机延迟，不作为提升幅度。
- 版本1.0.4-preview/versionCode5，原签名不变。下一版至少6。手机侧实际性能、网络切换、进程恢复仍未通过实体设备复测，不能声称已与v2rayNG性能持平。

# 本轮交付状态（2026-10-17）

当前版本 `1.0.3-preview` / versionCode `4`，包名 `com.gzy.qinglian`，Android 8.0+ / ARM64。下方原交接仅作历史，冲突以本节为准。

- 标准 Material 3、亮色默认、亮色自适应图标；工具栏外观按钮支持浅色/深色/跟随系统并保存选择。
- Surfboard 风格应用黑/白名单，两份名单独立保存，支持搜索和多选。连接页提供规则/全局：黑名单所选直连，白名单仅所选走 VPN，全局忽略名单。修改后重连；白名单为空或仅含不可用应用时阻止连接。轻连自身绕过 TUN，避免核心循环。
- App 只有一个当前节点，不提供节点或 API 编辑入口。现有 x-ui 的“轻连 App”页提供“App订阅节点”，选择同账号下启用的单客户端 VMess TCP/HTTP、alterId0、无TLS入站；不支持的入站不允许选择。选择写入独立 preferences，不修改入站配置和计数。
- 选择按入站ID持久化，修改选中入站的 UUID/端口等会自动反映到 profile。App 每15秒刷新节点状态，每次连接重新获取；配置更新需重连，API获取失败不静默回退旧节点。API服务器地址/TLS根仍构建固定，迁移API主机需要更新App。
- 真实在线数量每5秒、配额每60秒更新；失败/过期不伪造零，total0不限量，expire为秒。设备心跳绑定VPN服务，每10秒、断开离线、generation/sequence隔离旧会话，30秒无心跳离线。安装ID随机，不收集IMEI/浏览内容；首次使用有上报说明。
- GitHub Actions SSH已成功。实查Ubuntu24.04 x86_64/glibc2.39、x-ui0.3.2/Xray1.4.2。部署前完整目录/原二进制/SQLite一致性数据库/服务单元已加密备份并下载校验，SQLite quick_check通过。服务器保留 `/usr/local/x-ui/x-ui.qinglian-previous` 回滚二进制。
- x-ui覆盖层已部署（Actions39048482539成功）。原面板登录/设备页、选择列表及同ID保存、原入站未改变、计数未重置、App令牌不能读管理员明细均已在线检查。App专用11452端口严格HTTPS，仅开放四个App路由；私有CA限此API使用，保留主机名验证。原面板HTTP地址保持原样。
- 最终APK含真实node/online/quota/telemetry/profile资产及API CA公开证书；不含root/面板密码、签名私钥或TLS私钥。私有资产和APK不提交公开Git。保留原签名，证书指纹见 verification/RELEASE_CERT_SHA256。历史v4基线；此轮已递增5。
- 验证详情和实际限制见 [verification/ROUTING_CHECKS.md](verification/ROUTING_CHECKS.md)。没有手机覆盖安装、Android实际TUN/黑白名单出网或两台真实手机验收；不能把Robolectric或Linux探测说成手机测试。

## 原交接历史（versionCode2）

# 轻连 VPN — Codex 交接报告

交接基线：2026-10-17，`1.0.1-preview` / versionCode `2`。本报告描述实际完成状态，不代表所有用户目标已完成。

## 1. 最终需求，按用户最新修正执行

1. Android 原生应用，用 V2Ray 连接；固定内置且只有一个 VMess 节点。节点为 TCP、HTTP 伪装、alterId=0、无 TLS。真实地址、UUID 已在原会话提供，不公开。
2. Material 3 Expressive / 动态配色 / 深浅色，漂亮图标；已使用双色连接环的原生自适应矢量图标，支持主题图标。
3. 延迟、下载测速。代理失败不能直接回退测本地网络；可取消下载，显示速度与用量。
4. 通知栏每秒显示当前上传/下载速度和本次上传/下载流量，可断开连接；App 关闭界面仍保持后台 VPN。
5. **在线数量与服务端剩余流量直接显示在连接页**。界面已做好，但真实数据未接入。在线数量按设备数统计，不代表去重自然人数。
6. 设备详情（名称/型号/系统等）要直接出现在用户**现有 x-ui 面板**。不要把独立后台作为最终方案。
7. **接口地址与只读客户端凭据固定内置 APK；App 不允许输入、编辑或切换接口。** 代码里 assets 配置仅是构建方式，不是 App 设置。
8. 用户**没有订阅链接**；不要再次要求订阅链接，需要服务器只读 API。
9. **保留原来的发布签名**，后续同签名覆盖升级。禁止另生成发布私钥。

## 2. 已完成的真实内容

| 模块 | 当前状态 |
|---|---|
| 原生 UI、图标 | 完成；连接/测速/关于三页，Robolectric API35 原生绘图与导航通过 |
| 固定 VMess 配置转换 | 完成，生成 v4 风格 V2Ray JSON；同版本 Linux V2Ray 5.54.2 配置校验通过 |
| Android VPN | VpnService + AndroidLibV2rayLite 5.54.2 + BadVPN tun2socks，前台通知、系统授权、停止清理、底层网络回调 |
| 测速 | 显式经 127.0.0.1:10809 HTTP 代理，无 DIRECT 回退；3 次 Google 204 请求取中位数；Cloudflare 下载最多约 32 MiB / 接收约12秒 |
| 通知栏流量 | 每秒查询 proxy outbound uplink/downlink 计数（读取后归零），累计本次用量，按实际间隔计算速度 |
| 连接页卡片 | 实时在线数量、服务端剩余流量并排显示；未知值显示待接入 |
| OnlineMonitor | 只读 Bearer GET，期望 {"online": 非负整数}，每5秒查询；地址未配置 |
| QuotaMonitor | 当前只解析 Subscription-Userinfo 头，total=0 表示不限量；每60秒刷新；地址未配置，需要按无订阅方案改造/对接 |
| 发布版 | ARM64，minSdk26 / targetSdk35，versionCode2，已签名并打包；原签名私有保留 |
| 自动检查 | 16 tests passed；lint 0 errors，剩余为非阻塞警告；APK ZIP/签名检查通过 |

**未进行实机 VPN 联网验证。** 原生 UI 绘图不是手机截图；本地 HTTP fixture 不是目标服务器测速。曾尝试目标节点联网探测，当前环境不能完成，不能声称服务器可用或故障。

## 3. 未完成与连接阻塞

- 尚未成功 SSH 登录；没有读过服务器数据库，也没有改过任何 x-ui 或系统配置。
- 用户确认 SSH 端口为 22，提供了 root 登录信息；面板端口为 11415。服务器 IP、密码及完整 VMess 不写入公开仓库。请用户通过安全途径给接手 Codex 重新提供；不要让其粘贴进 GitHub issue 或日志。
- 原执行环境直连报 Network is unreachable。走配置代理时 SSH 未返回 banner，握手超时；HTTP 面板超时，HTTPS 502。**这些只能证明本环境访问失败，不证明服务器本身坏了。**
- x-ui/3x-ui 版本、真实 URL base path、系统发行版、Xray 配额实体和数据库结构均未知。
- 没有订阅链接；UUID 能用于服务器内匹配客户端，但 VMess 分享串本身不含总配额或已用流量。
- App **没有实现设备注册或心跳上报**。OnlineMonitor 只读取数量，不能靠它生成在线统计。
- `server/` 是先前准备的纯 Python SQLite 心跳原型，**未部署，未验收，独立 dashboard 已被最新需求否定**。它的设备 TTL/session 隔离逻辑可参考，必须改为现有面板内集成、沿用面板登录权限。

## 4. 下一位 Codex 的执行顺序

1. 先确认环境能 SSH；拿到本会话外安全提供的访问资料。若仍受网络限制，不重复无效尝试，不声称已部署。
2. 只读检查系统、x-ui 版本/来源、服务路径、二进制或容器、端口、反代和数据库；确认是原 x-ui 还是 3x-ui。修改前备份二进制、数据库、配置和 UI 源码，设计可回滚部署。
3. 以固定节点 UUID 匹配唯一客户端的服务端配额。读取真实 upload/down/total/expiry，区分没有配额数据、无限额、用尽、过期；勿用手机本次计数推算服务器余额。不得改变现有 VMess 入站参数或清空计数。
4. 在现有 x-ui UI 中增加在线设备菜单/页面。若面板是内嵌前端的 Go 二进制，按版本取得匹配源码、构建与替换；不要假定磁盘上直接改 HTML 就生效。也可以同域模块集成，但必须在原面板中显示并沿用合适的管理鉴权，不能直接公开设备列表。
5. App 实现可见的上报说明与设备会话心跳：随机安装ID + 每次连接 sessionId，设备名称/型号、Android/App版本、上线时间、当前速度/用量。不要采集 IMEI、通讯录、文件或浏览内容；服务器来源IP来自连接本身。旧会话离线消息不能把新会话下线。
6. 建议每10秒心跳，30秒无心跳离线；连接成功立即上线、断开立即下线，崩溃/断网靠 TTL。只统计本 App，其他 VMess 客户端无法可靠获得设备名。客户端自报信息可伪造，不能作为真实身份或计费依据。
7. 提供两个权限边界：App 的只读在线数/本人配额与心跳权限；面板管理员的设备详情权限。不要把面板管理员密码/root密码装进 APK。内置客户端令牌可被逆向提取，必须权限最小化。优先 HTTPS，不能忽略证书校验。
8. 将真实接口写入构建私有资产，连接页自动刷新；不新增 App 配置入口。没有订阅可让只读流量接口返回相同 Subscription-Userinfo 头，或明确改造 QuotaMonitor 为服务端 JSON 合同，不要继续依赖实际订阅服务。
9. 从用户的私有签名备份恢复现有 JKS/密码。versionCode 至少3。生成最终 APK，核对原证书指纹并进行手机实测，给用户下载文件和现有面板入口。

## 5. 文件导航

- `app/src/main/java/com/gzy/qinglian/MainActivity.java`：连接页“连接概览”与测速 UI；不应添加接口设置。
- `TunnelService.java`：核心生命周期、TUN FD 转交、前台通知、每秒统计。后续在线上报应绑定该服务生命周期，不绑定 Activity 可见状态。
- `NodeConfig.java`：固定 VMess TCP/HTTP 配置构造、校验与统计策略。
- `SpeedTester.java`：代理 HTTPS、下载计算、取消与代际隔离。
- `OnlineMonitor.java`：只读数量接口读取，当前无真实端点。
- `QuotaMonitor.java` / `QuotaInfo.java`：服务端配额读取与边界解析。
- `app/src/main/assets/*.example.json`：不含真实值的构建示例；真实同名去掉 `.example` 的文件均已 gitignore。
- `scripts/prepare_dependencies.py`：固定上游依赖与 SHA256 验证，下载后构建无需改 Java。
- `scripts/verify_release_signature.py`：检查最终 APK 是否仍用原签名。
- `verification/`：原检查记录与公开证书。

## 6. 原签名与安全恢复

- alias：`qinglian`；RSA3072；私钥由用户私有备份保存。
- 原证书 SHA256：`2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`。
- 备份中 `release.jks` 与 `release.properties` 必须一起保管。密码只在私有文件/Secret 中恢复。
- 原私有源码备份含实际 node.json 和 signing/；它不能整体上传这个公开仓库。
- 不要为方便 CI 提交 APK：它包含真实节点，可能泄漏 UUID。也不要提交已有私有源码 ZIP。

## 7. 需重点复查的工程风险

- Android foreground 生命周期、停止/启动竞态、网络切换、tun2socks 异常退出处理需要实机验证。
- 通知只显示本次连接计数，重连清零；服务端配额计数单独读取。
- 下载测速停止后，不允许过期回调更新新一次测试结果。测试地址被线路屏蔽时应显示失败，不更改代理路径测直连。
- 在线旧数据必须标明失败或过期，不能长期把缓存数量当实时值。
- `libtun2socks.so` 来自 v2rayNG 1.9.46 ARM64；新 Android 16KB page-size 设备兼容性尚未验证。当前用户 Android12，不能据此宣称所有新机可用。
- 原 `server.py` 缺少面向公网部署的完整限流和面板鉴权整合，只是原型，不能拿默认模板直接上线。

## 8. 验收清单

- [ ] 原签名可覆盖安装，内置唯一 VMess 可用且无配置入口。
- [ ] 通知栏速度和本次上传/下载实际变化，断开后核心/TUN/通知完整清理。
- [ ] 真实延迟/下载测试通过，取消有效，失败不回退直连。
- [ ] 连接页显示服务端真实剩余配额，无限/未知/用尽/过期准确。
- [ ] 两台安装设备连接后 App 在线数量和 x-ui 页面一致；一台断开/崩溃后正确下线。
- [ ] x-ui 内能看设备名称、型号、版本、IP、上线/活跃时间和用量；未登录不能看详情。
- [ ] 后台修改、断网、鉴权失败时 App 显示明确错误，不显示伪数据。
- [ ] 修改面板有备份和回滚方案，现有 VMess 入站与其他用户不受影响。
