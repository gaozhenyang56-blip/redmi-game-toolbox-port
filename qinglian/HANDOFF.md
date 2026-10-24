# 2026-10-24 双端移动网络 API 入口修复（Android18 / Ubuntu preview3均已发布）

用户确认服务器能ping通，要求修复Android和Ubuntu。故障证据是Ubuntu独立curl到11452的SSL握手超时，不能据此说IP整体不可达或已确认运营商封锁。增加同服务器TCP443 API入口，保留TCP11452；原HY2 UDP443不变。x-ui直接TLS监听，保留真实peer，两个入口共享原CA、主机名校验和API白名单，均不开放面板管理。新配置tls.httpsPort仅允许0/443；所有端口绑定成功后才启动，失败释放已绑定端口。部署先加密备份，本机或公网检查失败回滚原二进制和配置。生产40078130882已成功，两入口本机/公网严格TLS验证通过，原入站配置与计数保留。

Android 1.1.9-preview/versionCode18原签名，105项单测、lint0错误/41警告通过。API优先443，网络失败尝试11452并记住本次可用端口；原始HTTP权限/配额错误和证书验证失败不切换。POST只允许在TCP/TLS建立前失败时重试，可能发送后不重放，避免重复注册/导出。测速和APK下载使用已确认的入口，仍经原代理/严格CA/长度哈希与原签名验证。面板发布revision30；40078479664完成两端口API与APK下载/哈希/原签名/版本验收并发布GitHub标签qinglian-android-v1.1.9-preview-v18。公开APK已重新下载核验，28,351,794字节，SHA256 b2c61fdf2f155705da2b0dc0923f4f98918f37d9ddba22e98a43cc8e38120707。下一Android版本至少19。

Ubuntu 1.0.0-preview3相同固定端口策略，保留原桌面、ChatGPT和TUN边界。运行逻辑28项（包含真实urllib HTTPS、正确CA/IP成功及未知CA/错误主机名失败）本地通过。Python3.12 HTTPSHandler兼容性已修复，不引用不存在的_check_hostname属性。最终工作流40078759209成功：Ubuntu24.04安装/卸载、GUI、原生协议、隔离TUN及兼容/HY2保守/HY2高性能各1MiB真实公网传输/访客计量/清理通过。标签qinglian-ubuntu-v1.0.0-preview3，20,869,764字节，SHA256 bf66114fc61caeb3c05aa727ead88374110c13ad22b9d8f004a944d573f3055a；公开重下核对manifest哈希、Deb版本/架构、实际runtime源码与原CA通过。Ubuntu下一版至少preview4。

本修复针对节点获取前的控制API；未改VPN传输协议、用户账号/配额、原HY2参数或其他AstrBot/NapCat/remote-control服务。未取得中国移动用户现场重测，不声称所有端口/网络已恢复，也未部署CDN。详见verification/MOBILE_CONNECTIVITY_20261024.md。

# 2026-10-24 移动网络连接故障排查（Ubuntu API TLS握手超时）

照片确认Ubuntu GUI在获取节点前无法连接面板；中国移动网络独立curl报(28) SSL connection timeout，系统时间正常，尚待非移动Wi-Fi对照。只读40072035438/40072340528及公网40072215503确认服务active、配额未耗尽、API200、CA与App一致且未过期、VLESS/Trojan/双HY2实传成功；不能称用户已恢复，也不能确定运营商封锁。只读端口40074421151确认TCP443空闲、UDP443为HY2，TCP11452正常；18443为独立远控不可占用。未部署替代入口，不能用丢失原始peer地址的简单代理绕过测速来源边界。仅更新只读诊断和记录，未重启生产/改节点/清额度，未发新App。详见verification/MOBILE_CONNECTIVITY_20261024.md。远端其他会话新增的AstrBot/NapCat/remote-control已同步保留，不修改这些项目。

# 手机客户端远控 0.2（2026-10-24，服务器已部署）

用户最终明确：网页与 Ubuntu 客户端通过手机客户端控制，手机客户端支持 Shizuku 或 ADB 直接授权，控制端每次连接 TOTP，后台可生成 TOTP 密钥。新增独立 `qinglian/remote-control/android-agent`（包名 com.gzy.qinglian.remote、versionCode1、debug 测试签名），手机主动 HTTPS 长轮询中继，不再依赖常开外接 ADB 电脑。手机连接密钥与管理员令牌隔离，只有控制端新会话验证 TOTP；网络传输重连不会重放操作。

后台 `https://107.150.7.124:18443/` 已由专用 `qinglian-remote.service` 部署，记录：https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/actions/runs/40062228900 。原 SSH Secrets / 固定主机密钥复用；服务/目录/证书独立，无原 VPN、x-ui、节点/数据库修改。外网严格CA/IP校验通过页面200、匿名控制401。使用独立自签证书，需要信任交付CA；不能关闭证书校验。根私有配置 `/etc/qinglian-remote`，TOTP绑定状态 `/var/lib/qinglian-remote`，版本化代码 `/opt/qinglian-remote/releases`。新服务不纳入旧备份脚本，后续升级/整机备份需单独覆盖私有配置和绑定状态。

后台初次以管理员令牌生成密钥及otpauth URI，验证码确认才生效；更换需旧码并确认新码，旧会话撤销。初始化令牌/手机密钥仅存在服务器root私有配置及会话私有交付文件，公开Actions仅有RSA/AES-GCM密文。不要提交实际密钥。当前尚未代用户绑定真实验证器。当前APK内置专用CA，Ubuntu .deb使用精确证书/主机名/错误类型限定的专用信任；浏览器仍需导入CA。

验证：12项Python/HTTP测试、浏览器实际生成/确认绑定/退出/新页重验/桌面手机布局与零JS异常通过；Android assembleDebug/lintDebug通过（0错误/10警告，含ADB入口内部API兼容性警告），APK签名结构验证通过。**没有真机授权/息屏采集/24小时运行或Ubuntu GTK显示验收**，不得称为这些通过。ADB直接授权App进程重建/重启后可能需重跑授权脚本；Shizuku同样需保持服务有效。截图约1FPS、不绕过密码锁屏。

# 手机远控独立原型（2026-10-24，未部署）

用户新增需求：Ubuntu 客户端或网页通过 ADB 全天候控制手机，检测亮/息屏、唤醒/解锁，每次连接需要 TOTP。新增 `remote-control/`，不改原 VPN、x-ui、Android versionCode/签名或现有服务。默认按常开 USB ADB 主机实现，用户尚未确认最终接入拓扑。

- Python 标准库本机代理、中文网页截图/触控、Ubuntu GTK3/WebKit2 临时窗口；独立访问令牌 + 每次连接 TOTP、私有文件重放保护、失败限速、内存会话。只解除无密码锁屏，不绕过 PIN/密码/图案。截图约1FPS，尚无息屏保持视频能力。
- SSH 隧道辅助复用原 SSH 主机/用户/端口及固定主机指纹；不读取 Actions Secrets、不部署生产。systemd 用户服务及安装步骤见 `remote-control/README.md`。
- 8 项 Python/HTTP 测试、Python/JS/shell 语法检查通过。未接入手机、未做 Ubuntu GTK 显示及 24 小时验收、未连接服务器；不能称为已上线或真机可用。

# v17 手机版连接优化（2026-10-20，已发布）

用户最终确认：只有多条HY2隧道放实验室；TCP协议对照、复用保活、自动选择直接作为正式功能。Android 1.1.8-preview/versionCode17，原签名；Ubuntu preview2不重新发布。已完成103项Android测试、lint0错误/41警告、Go race及真实V2Ray/TLS/Mux/双HY2分流计量检查；服务端加密备份/升级39502475591通过，配置/入站/计数保留；公网39503352519通过VLESS/Trojan TLS、VLESS Mux及双HY2两标签实际传输，合计2.5MiB、同一访客64GiB/无域名记录，仅清理随机测试设备。面板revision27已发布v17，发布下载核验39503677955通过原CA/哈希/原签名/版本；GitHub独立标签`qinglian-android-v1.1.8-preview-v17`，28,351,422字节，SHA256 `ae0a9c9e6730cfbfb79290af9646234776b6d3dcb18e2c04fb35e14d3dc2d4fe`。下一版至少18。

- 实验室“双HY2隧道”默认关闭，最多两个独立原生HY2客户端/本机SOCKS端口，固定同一远端及凭据。V2Ray按连接随机分配，敏感域名/UDP443与大陆/私网/DNS规则保留；统计汇总proxy、hy2-lane-1和compatibility。共享原账号/访客额度，不创建第二个访客会话；不是单连接带宽叠加，不保证提升。原aggressive及32/64MiB窗口不改，代价是更多资源/耗电/竞争。
- 正式TCP协议：面板默认、VLESS TLS、Trojan TLS。profile增加tcpProtocol可选空/vless/trojan，严格验证并回显；创建原主节点类型的独立worker，仍受原面板父节点启用/配额/到期和总资源上限约束，不扣周导出额度。旧App默认行为及凭据保留。当前固定V2Fly不支持REALITY，不展示伪入口。
- 正式TCP复用开关默认关闭，仅VMess/VLESS，最多4并发；Trojan不加Mux。TCP增加60秒空闲/20秒探测保活，保留原HY2 10秒/30秒设置。所有启动参数固化到Selection，续租和自动恢复不读取待重连偏好。
- 正式自动选择开关默认关闭：启动TCP/HY2各最多256KiB服务器链路探测，严格原CA/认证/响应标记/长度，不回退直连；差异不足20%保留手动偏好。连接成功前1字节真实验证。空闲每45秒探测，连续3次链路失败才切换；3分钟冷却、每10分钟最多2次；本地恢复预算耗尽也尝试备用通道。运行中切换可能中断下载；失败尽量回到原Selection/配置，不能假称无缝。401/403/429不作为线路失败。恢复/切换不重置GuestClient会话、用量及连接开始时间。
- 自动模式即使当前选TCP也保留同一高性能请求选项，避免续租隐式退休备用HY2 worker；ProfileMonitor锁与owner检查保留，旧请求不能覆盖新选择。网络切换重建原通道核心，重试预算保留。没有新增实体手机测速/跨网/安装覆盖验收，UI/服务测试不能冒充实机。

# Ubuntu GUI 1.0.0-preview2（2026-10-20，桌面界面更新）

用户要求手机版风格、桌面适配和简约模式，最新明确类似FlClash。Ubuntu独立preview2：宽屏左侧栏/双栏卡片（窗口1040px、内容800px断点），窄屏底部导航/单栏；六页面，Material3绿/紫亮暗配色，Cairo图标、原生单选语义的动画玻璃滑块。简约模式按用户澄清采用第一版普通桌面标签页/下拉框/单栏表单，保留全部功能并持久化；运行中切换不重建runtime、不改变连接选择/计时/账号草稿。

`ubuntu/ui.py`实现本应用stack的实时小图高斯模糊，排除玻璃自身/外部窗口，不使用屏幕捕获；约12Hz、像素hash复用、隐藏/最小化停止。新增Deb依赖python3-gi-cairo/python3-cairo/python3-pil；不得通过只改透明色冒充实时模糊。连接/runtime.py、tun.py、原生核心/服务端/Android均未修改。23项runtime和实际GTK生命周期/双布局/滚动像素回归及Ubuntu24.04工作流状态见verification/UBUNTU_CHECKS.md。已完成Ubuntu24.04工作流39444861380（源码b9d5947c）：23项runtime、GUI、六配置原生传输、隔离TUN及安装卸载全部通过并发布。公开deb 20,861,864字节，SHA256 `dbac16105776f1f7b29eaed42283ebe590d7e7522653da5277ab736e9eb5a07e`；标签`qinglian-ubuntu-v1.0.0-preview2`。已从公开Release重下校验，源码/API资产/root所有权/新增依赖及无签名管理员文件均核对通过。

# Ubuntu GUI 1.0.0-preview1（2026-10-19，独立桌面版本）

已完成Ubuntu24.04工作流39331825014（23项逻辑检查、GUI/原生协议/TUN/安装卸载）与公网39330914391（三通道各1MiB/实际计量）。最终Actions发布deb为20,845,464字节，SHA256 `6899b58d56ff50b0159a57219c4fda425cc5483c58e0179c355b1c2092b69260`，发布标签`qinglian-ubuntu-v1.0.0-preview1`。

新增 `ubuntu/`，针对用户另一个仓库 `wayne-hyperos4:ubuntu-to-go`：Ubuntu 24.04 Noble amd64 GNOME，预装官方来源 .deb ChatGPT、启动命令 `chatgpt`，以及 Clash Verge。另一个 `ubuntu-v2ray-guard` 分支只有低占用守护脚本，不提供 GUI。未修改这两个分支、原 Redmi 应用、现有服务器节点或 Android v16；Android 下一版仍至少17。

- 原生 GTK 3 完整桌面界面：连接、ChatGPT 优化、测速、账号/节点导出、关于，亮/暗/跟随系统。独立 Debian 包，桌面菜单启动，普通用户运行，TUN 通过固定用途 polkit 助手单独授权。
- 面板继续统一选择节点，无手工订阅/API配置入口。复用原 NodeConfig.java 编译 Java17 转换器；固定 V2Ray5.54.2、HY2.13.0、tun2socks2.6.0 与数据文件，下载校验 SHA256，证书和主机名严格验证。账号/访客 profile、15秒租约、64GiB访客、累计流量和256GiB周导出/7天节点均复用原合同；周导出 remainingBytes 不可当成主连接剩余而停VPN。
- HY2 默认高性能，保留保守可选；每次连接固定 options，仅服务器双重确认 labHy2/aggressive-v1 才使用同一 v16 窗口与BBR，未继续加大参数。敏感域名和内层UDP443经兼容通道。
- ChatGPT 专用启动加入 HTTP 代理参数、大小写HTTP/SOCKS环境变量、禁用QUIC；要求先完全退出旧实例，不能强杀用户进程。localhost/127.0.0.1/::1仍直连以保留本机 OAuth 回调。不关闭沙箱/TLS，不清用户资料。
- 系统代理支持规则（中国/私网绕过）与全局；TUN仅全局，IPv4/IPv6/DNS接管忽略系统代理的软件；TUN时也临时设置GNOME代理，避免遗留Clash本机端口。ROOT助手只读root-owned固定API主机，节点地址必须与API服务器相同；固定qltun0、表22042、优先级11090/11091，不执行用户配置/脚本；拒绝占用与已有TUN。不写原默认路由/resolv.conf；resolved只改自建链路，断开恢复。
- GUI关闭或崩溃时，独立代理守护恢复仅仍属于本程序的设置；root助手读到stdin EOF清理，核心通过Linux parent-death signal退出（独立Python wrapper，避免GTK多线程preexec_fn死锁）。被SIGKILL的root助手/机器异常不是保证清理的场景，文档保留重启/管理员清理办法。
- 连接成功前须经本地代理请求服务器1字节测速，严格CA/标记/长度确认，不能只启动核心即声称远端已连。测速1..2048MiB单路分段，180秒预算，明确为服务器链路，不回退直连；停止最多等当前10秒读超时。
- 账号登录/注册永久域名记录须显式告知；Ubuntu不读IMEI/Android ID/硬盘号，使用machine-id+UID的应用范围SHA256并由原服务器签发会话，不上传原machine-id，正常删除App配置/重装不重置绑定。无有效系统ID时才回退持久随机标识，不是不可伪造硬件绑定。会话/运行配置0700目录/0600文件；导出ZIP强制0600，失败保留幂等申请；过期token也能本机退出并说明服务器撤销是否确认。
- 完整构建、依赖、限制见ubuntu/README.md，验收记录见verification/UBUNTU_CHECKS.md。桌面包不能上传原APK更新接口；Android签名、面板revision24均不变。

# v16 HY2高性能转为默认功能（2026-10-18，已发布）

版本1.1.7-preview/versionCode16，原签名，下一版至少17；面板revision24。用户反馈现有激进参数提速明显且稳定性未变，要求正式实装。沿用原参数，未追加更激进的调优。

- 连接页新增“HY2 配置”高性能/保守玻璃滑块。加速通道默认高性能，无需实验室开关；兼容/加速通道的原有选择保持，不强制切换为HY2。旧labs.hy2实验键不再参与正式默认值，新transport.hy2Conservative缺省false，明确选择保守后会持续保存。
- 实验室仅保留四路并行测速、原始速度曲线，仍默认关闭。HY2客户端/server继续使用aggressive与原8/32MiB流窗口、16/64MiB连接窗口、原MTU/保活/TLS/敏感服务兼容规则。客户端必须同时确认服务器响应及节点aggressive-v1标记，不能仅本地改参数冒充双方高性能。服务端私有字段labHy2保留兼容，复用原按设备隔离节点；不改共享节点或其他设备。
- 手动连接时固化通道和性能Selection；运行中修改界面仅保存下次连接配置。续租解析/请求均使用同一不可变选择，自动恢复不变。profile请求专用锁串行化、切换Service所属Selection后丢弃旧返回；不在UI线程持有网络锁。访客也传入固化options，防止旧的false请求提前关闭正在运行的高性能节点。
- App将服务器旧标签“性能实验”显示为高性能/保守。原签名、账号/访客限额、默认服务器测速源和CF可选继续保留。仅App升级，无须改服务器代码、重启服务或再次下载1GiB重复测未变参数；既有原生/公网基线见v15记录。
- 92项Android测试通过，lint0错误/39警告；新增升级默认、保守持久化、兼容通道不请求高性能、服务器双重确认、双向待重连切换/恢复续租及正式页面入口回归。原HY2二进制摘要与32/64MiB参数断言保持。无新增实体手机安装或跨网络稳定性验收。
- APK 28,347,618字节，SHA256 `6b419316e6afc8f67a516808f0350319435fefb262a81c28b76fa26512c7c84c`；线上原签名/版本/哈希校验39171117919通过。源码和交接已推送，详细记录见verification/ROUTING_CHECKS.md。

# v15 大容量测速与来源隔离（2026-10-18，已发布）

版本1.1.6-preview/versionCode15，原签名，下一版至少16；面板revision23。用户澄清：大约800MB后只有测速失败且重试立即失败，其他上网正常；激进HY2实际GitHub下载约25MB/s，因此保留v14全部激进参数，不以降低性能修测速。

- 测速默认改为“服务器链路”，通过当前核心HTTP代理访问本服务器专用HTTPS流式测速接口，测手机↔VPN服务器，不依赖外部Cloudflare下载站点。Cloudflare外网测速仍可手动选择，来源及单路/四路合计明确标记；两者测量范围不同，不能把服务器源结果称为外网单文件速度。
- 使用原专用CA与主机名校验、已登录设备会话或当前访客凭据；接口只允许原始TCP peer为本机/本服务器地址，拒绝直接手机请求和伪造X-Forwarded-For。测速仍通过已计量VPN流量，原总配额和访客64GiB保持。每请求1..32MiB，流式32KiB缓冲、无HTTP压缩，4路/账号与8路/服务并发上限，断开即停止写出。
- 失败提示区分来源、HTTP码、超时与已接收MB，明确不代表VPN断开；读超时由4秒改10秒。停止测速把连接关闭移出UI线程，防止阻塞式disconnect卡住停止/重测；代际隔离和不回退直连保留。四路结果注明合计，总大小不乘4。
- 只读诊断39168800092：账号服务无重启、OOM及memory.max事件，峰值151588864字节，配额约5GB/1TB，不能把故障归因为服务端OOM或800MB限额。公网小容量五协议39168862614也通过；未复现手机Cloudflare原始失败码，不能宣称已证明站点封禁/限流原因。GitHub相关域名仍有兼容分流，25MB/s不能全部归因HY2；四路600Mbps也不能与旧单路速度直接作参数AB比较。
- Go race/86项Android测试通过（lint0错误/39警告）；面板先备份再升级39169479228。公网检查39169753935使用真实原生HY2 aggressive，四路32次×32MiB合计1GiB传输，超过800MiB后再请求立即成功，并验证账号实际计量、五协议/访客测速权限、原限额和设备隔离。仅清理随机测试账号，不修改真实用户节点或HY2窗口/BBR。
- APK 28,347,610字节，SHA256 `22c84395bcb9e2aa3698e934fb0adcf866aa0c9f6193c6d8d5e884273137af09`；原签名/线上下载检查39169962893通过。无实体手机重现/覆盖安装或同网络前后速度验收，需用户用默认服务器源复测。详细记录见verification/ROUTING_CHECKS.md。

# v14 速度实验室（2026-10-18，已发布）

版本1.1.5-preview/versionCode14，原签名，下一版至少15；面板revision20。关于页新增独立“速度实验室”，三个项目均默认关闭，用户明确要求集中于速度。

- HY2激进性能：断开VPN后明确开启，仅加速通道请求labHy2；必须收到服务器确认才连接，不默默退回保守实验。每设备独立实验HY2凭据/端口，普通节点和同账号其他设备保持不变；访客也可使用，仍合计原单次64GiB。关闭并重连恢复普通节点，并停止本设备旧实验worker；断线恢复续用同一实验节点和原配额。
- 双方使用官方HY2.13.0支持的最高激进BBR档aggressive；窗口初始单流8MiB/连接16MiB，上限单流32MiB/连接64MiB。服务器ignoreClientBandwidth=true，无固定Mbps限制，保留MTU保守配置、证书/主机名验证及敏感服务经兼容的规则。不是把整数设置到无限大，也不承诺理论1Gbps；线路不佳可能更慢、波动/耗电/内存更高。服务器系统参数、原共享服务及普通/导出节点默认不改；物理带宽和服务总资源仍共享，不能保证无竞争。
- 四路并行测速：可选4路固定请求并发，按所选总大小分摊，严格限制合计接收字节，不下载四倍；只影响App测速，不改变其他软件的下载方式。停止会关闭所有活动请求并隔离旧回调，代理失败不回退直连。
- 原始曲线：可选约250ms采样，默认仍近1秒窗口；全程平均算法不因图表模式改变。单/四路平均都包含起始连接与分段等待；四路结果注明模式，测速页显示当前设置。只是观察工具，不虚构速度提升。
- 83项Android测试、lint0错误、Go race、原生五协议及激进HY2传输通过；线上同账号设备隔离、参数读取、恢复普通、访客实验限额/无域名记录通过。面板升级39145013500，引擎部署39145319338，APK原签名下载核验39168272789。详见verification/ROUTING_CHECKS.md。无实体手机测速对比或安装覆盖验收。

# v13 可选分流、独立账号页与访客连接（2026-10-18）

版本1.1.4-preview/versionCode13，沿用原签名，下一版至少14。面板revision17已发布。下文旧版本描述冲突时，以本节为准。

- 账号入口改为独立AccountActivity，不再用长弹窗；登录/账号概览/导出分组，Material输入框、顶部返回。无需登录也可连接：每次手动连接64GiB（界面简写64GB），兼容与HY2合计，自动恢复/续租不重置；手动断开后再次连接创建新会话。访客使用Android ID摘要和随机256位会话凭据，不占一设备注册名额，也不记录域名。仍受原节点总配额/到期与全局资源上限限制。账号永久域名记录仍须明确同意。
- 应用黑白名单新增独立开关，默认关闭且保存旧名单。规则模式且关闭应用分流时，私网/大陆域名和IP直连，其余代理；开启后沿用原应用黑白名单行为；全局模式全部代理。固定版本geoip/geosite数据库随包，安装时校验摘要，国内DNS与代理DNS分开；保留HY2敏感服务经兼容通道的规则。变更需重连。
- 毛玻璃找到真实滚动采样错误：手动绘制ScrollView时必须扣除scrollX/scrollY，否则截取空白。修正采样坐标，统一小图CPU模糊；显示位图为不可变副本，避免复用缓冲导致旧帧。默认透明度92%、半径16dp、前台20Hz，像素未变不重复模糊，隐藏/后台停止；原个人外观设置保留。真实ScrollView滚动测试覆盖颜色变化、旧位图不被修改；仍无用户手机GPU/观感验收。
- 原面板分为概览、账号、节点、域名记录、App更新、在线设备六个真实URL页面；账号/节点支持搜索与分页，移动端布局适配。保持原登录与同源校验；Axios沿用原baseURL相对路径，避免自定义面板前缀重复。
- 用户确认Wi-Fi下兼容通道同样波动。只读诊断未发现服务重启、UDP缓冲错误或明显资源压力，但不能定位用户链路根因。App与账号HY2工作进程使用官方BBR conservative配置，未设置任意固定带宽；测速图按近1秒窗口显示，全程平均仍含分段等待。此调整不等于已解决手机速度波动。
- 78项Android测试通过，lint0错误/37警告，原签名验证通过。Go race、实际V2Ray大陆/私网/全局路由、五协议真实传输及公网访客合计64GiB限制/新手动会话重置/无域名记录检查通过。部署前加密备份，原节点保留。详细工作流、APK摘要与验收边界见verification/ROUTING_CHECKS.md。

# v12 账号独立连接、导出与界面更新（已发布，2026-10-18）

开发版本1.1.3-preview/versionCode12，原签名；下一版至少13。已原签名发布面板revision14；71项Android测试、Go race、公网五协议与App实际配置验证通过，线上APK哈希/签名/版本检查39140123933成功。完整记录见verification/ROUTING_CHECKS.md。

- 登录/注册支持自定义用户名密码、同账号多设备、同Android ID摘要限注册一次。主连接使用账号独立凭据，兼容协议仍由原面板选择，加速受原开关管理；主流量累计到账号及原面板入站，不占每周导出额度。
- 五协议独立导出，每周256GiB预留，7天到期；备注用于App、面板、URI、ZIP名，幂等重试校验协议/大小/备注。原节点与旧App保留。
- App显示账号累计流量，面板显示全部账号总计/明细。注册或登录前必须明确同意永久保存主连接及导出连接域名/时间；不含HTTPS路径/查询/内容，不做TLS解密。历史归属校验，永久不自动删除；后台资源请求也记录，域名不一定完整，不得声称浏览器页面历史。详见server/ACCOUNT_API.md。
- 毛玻璃默认透明度88%、半径32dp，前台约30Hz帧回调持续采样，未变不上传，后台/隐藏注销。外观中可调透明度20..100%、半径16..48及持续刷新开关；旧Android仍真实CPU模糊。增加连接成功650ms光环/缩放动画。
- 下载测速可选1..2048MiB，分段最多32MiB、最长3分钟，未达所选大小明确标记。HY2增加禁用路径MTU发现、10秒保活和30秒空闲设置；服务器诊断无重启/UDP丢包，运行器三次279..292Mbps，只能说明该路径短测，未证实手机20..150Mbps波动原因，不能承诺已修复。
- 新服务qinglian-exports监督独立原生worker，管理/auth只loopback11456，端口22000..23999。含主连接每用户8条、总16条、768MiB上限。主连接180秒租约、15秒续租；流量/历史错误关闭。原Xray记录FIFO需保持读写keeper防初始化关闭导致EOF，真实集成测试覆盖此坑。
- 本地Android测试、Go race及五协议真实传输/域名/限额/主配额测试见最新verification记录；无实体手机安装覆盖、GPU观感或到手机测速验证。

# 实时毛玻璃与页面切换动画（versionCode11，2026-10-18）

当前1.1.2-preview/versionCode11，下一版至少12，沿用原签名。用户要求更强、实时的毛玻璃，并为页面切换增加动画。

- FrostedBar从滚动/布局事件后40ms截取，改为前台ViewTreeObserver pre-draw取样，子控件文本/图表/页面动画变化也随画面更新。两块1/8尺寸条带位图交替复用，像素相同不更新ImageView，防止自己的invalidate造成永久重绘循环；没有后台/静止定时器。
- 模糊半径由18dp提高至28dp，四边增加36dp采样余量，减少边缘拉伸；减薄遮色，提高背景透光。API31+继续GPU RenderEffect，API26..30在小图上做三遍可复用数组的双向盒式模糊，是真正模糊而非仅半透明。文字、图标在独立上层保持锐利，导航玻璃选中块也降低遮盖。
- active、attach、窗口/自身可见性控制pre-draw监听，pause/隐藏/detach移除监听并释放位图，resume/重新显示恢复。采样仅ScrollView，不包括浮栏，布局/系统insets规则不变。没有屏幕录制或全屏截图。
- 四页切换使用内容区域先淡出后淡入（各100ms），叠加6dp/220ms的轻微位移；导航栏固定。快速切换终止旧transition/位移，页面保存重建和pause也清理；遵从系统动画关闭设置，不重启VPN或测速线程。
- 新回归验证无滚动的内容变化刷新、相同像素复用、隐藏/恢复/移除、API30真实边缘模糊及快速切页/生命周期/导航位置。自动渲染不能代替手机GPU观感和实际帧率验收；签名、构建与面板发布见verification/ROUTING_CHECKS.md最新节。

# HY2服务兼容与可选应用预设（versionCode10，2026-10-18）

当前1.1.1-preview/versionCode10，下一版至少11，沿用原签名。下方为历史记录，冲突以本节为准。

- 用户确认ChatGPT App中的Codex Cloud及Google/GitHub头像在兼容通道全部恢复。公网同一运行器的双通道TCP检查中头像均200；ChatGPT匿名请求两边均403，不能推定已登录App的行为。真实本地HY2和V2Ray串联UDP64/1200/1350字节通过。未复现手机问题，根因尚未证实，不能宣称确定是HTTP/3或IP封禁。
- App HY2配置增加由同一已认证profile返回的兼容outbound。Google头像、GitHub、ChatGPT/OpenAI及相关资源域名经兼容；内层UDP443亦经兼容；其他保持HY2。外层HY2 QUIC不受内层规则影响。使用V2Fly实际支持的HTTP/TLS sniffing获取IP连接中的域名，会将目标重写为嗅探域名；未使用不支持的routeOnly。域名嗅探不可用（例如ECH）时不能保证识别，用户仍可切整个兼容通道。
- DNS规则优先，解析仍通过代理TCP DNS；无DIRECT出口。HY2配置revision合并兼容与加速两者revision，面板改变兼容节点也会提示重连。通知用量汇总proxy和compatibility两标签，服务器共用原配额逻辑不变。生产服务无需重启。
- 分流页新增可选“常用代理应用预设”：点开才将精确已知包名且已安装启用的应用预选，合并之前白名单，可逐个增删；保存切白名单、取消不写。保留独立黑名单与规则/全局选择，全局仍忽略名单，规则重连生效。名单是人工常见应用预设，不能自动判断任意应用的网络需求，不按显示名称模糊匹配。
- 新增真实核心混合路由测试：SOCKS连接原目标是IP，HTTP Host及严格验证证书的TLS SNI为头像/ChatGPT时经兼容成功；HY2端点故意不可用时普通Host失败，证明没有普遍兼容回退。手机TUN、登录后ChatGPT/Codex和头像恢复仍需安装重连复测。最终构建、原签名和发布检查见verification/ROUTING_CHECKS.md。

# 多协议与统一面板（versionCode9，2026-10-18）

当前1.1.0-preview/versionCode9，下一版至少10，必须保留原签名。用户明确授权App支持多协议、同一个现有x-ui面板统一管理，不建立第二套用户面板。

- 兼容通道：VMess/VLESS/Trojan/Shadowsocks，TCP原生/HTTP伪装与WS，可校验证书的TLS。VLESS encryption=none、无XTLS流控；VMess AEAD/alterId0；SS仅AES-GCM/ChaCha20 AEAD，不支持SS2022、Reality/XTLS/gRPC。Trojan必须TLS，不允许insecure。
- 加速通道：Hysteria2 v2.13.0官方固定摘要Android ARM64二进制，通过仅loopback SOCKS交给原核心统一DNS/统计/延迟/TUN转发。官方Android二进制最低Android29，App其它协议仍Android26+。保留根证书/主机名校验，进程日志丢弃，配置和CA放应用私有文件，停止删除，恢复沿用原预算。没有静默直连回退。
- 原x-ui“轻连 App”选择各协议现有入站，配置与计数保留；新增Hysteria2卡管理启停与绑定当前配额入站。App只有兼容/加速通道切换，具体节点参数仍由面板指定。非VMess节点需先安装v9；保持原VMess默认，不强制切换。
- Hysteria2服务由hy2_manager.py监督，管理/认证只监听127.0.0.1:11453，流量API只监听127.0.0.1:11454并验证独立令牌；管理HTTP需私有Bearer。公网仅UDP443。独立systemd单元，原服务不替换；原/etc/x-ui目录mode000，需要CAP_DAC_OVERRIDE访问，保留原目录权限；原API私有CA用于加速TLS，App仍验证主机名。
- 加速通道与绑定入站共用原SQLite流量/到期/启用状态；Hysteria TX=上传、RX=下载，累计计数取差，事务原子增加原计数，每秒检查。限额/到期/停用立即进入停止流程，数据库或记账异常关闭服务。新进程清空游标，不复用旧计数。未写入的最后采样窗口可能在进程崩溃时丢失，额度可有约一秒及缓冲的超量，不宣称严格零误差计费。
- hy2.json在/etc/x-ui/qinglian/中root0600，独立随机认证、管理、统计令牌，不改原API配置。unit为qinglian-hy2.service。加速访问私网/loopback/链路本地由ACL阻断。禁用可在面板保存；systemctl stop/disable该单元可单独回滚，不影响VMess。
- 已通过61项Android测试、10项Go race测试、6组真实V2Ray协议/传输矩阵、4项管理器测试及真实本地QUIC下载/记账/限额断开测试。面板升级39100328172及HY2部署39100713900成功；公网HY2 39100833176、兼容39100833192通过。APK已发布面板revision9。最终部署/公网与安装包详情见verification/ROUTING_CHECKS.md；无实体手机QUIC/TUN/安装覆盖验证。

# 服务器吞吐诊断与缓冲优化（2026-10-18，无App版本变更）

用户反馈不装BBR不到1MB/s、装后峰值约5MB/s，并确认同节点v2rayNG同速。不能将问题归因为轻连独有开销，手机运营商/网络类型尚未确认。

- 只读诊断run39098794750/39098852244：2vCPU、低负载、约1.6GiB可用内存，Linux6.8，BBR+fq实际生效。原tcp_rmem上限6MiB、tcp_wmem上限4MiB、core rmem/wmem上限212992。现有连接RTT167..229ms；一条流bytes_retrans102546/bytes_sent737426（约13.9%），这是累计字节重传比例，不能称为手机链路实时丢包率。后续未持续观察到大流，不能给出同一手机调整前后对比。
- 有限8MiB/路下载，服务器单路262Mbps、4路714Mbps；首次16MiB请求HTTPError，后续8MiB正常。是服务器出站下载，不能证明到手机的1Gbps下行。
- run39098913648已应用可回滚优化：仅core rmem_max/wmem_max和tcp rmem/wmem最后一个上限提高到33554432；最小与默认分配保留，不预分配32MiB/连接、不改BBR/fq/MTU、不重启服务或改节点。
- 持久配置/etc/sysctl.d/99-zz-qinglian-buffers.conf；原值备份/etc/x-ui/qinglian/network-tuning-backup.json，root0600。qinglian-network-tune.yml支持mode=rollback，恢复原值并移除自己的配置；状态与预期不符拒绝覆盖他人修改。写入/本机服务检查失败会立即恢复原值。
- 调整后服务器单路347Mbps/4路755Mbps，流量短、测试时刻不同，不能把差额归因于调参。原BBR/fq仍正常。实际App配置转换+官方固定核心的运行器VMess基线102.29Mbps，非手机结果。另一运行器复测56.33Mbps/204请求212ms，低于基线102.29Mbps/151ms；两次网络路径/时刻并未受控，因此没有证明实际提速，也不能仅凭这组短样本归因缓冲调整。
- App仍v8、原签名；无需新包，重连VPN再测同一网络/下载源。若仍慢，下一步采样运营商/高低峰/有线WiFi对比并选路由合适的节点；不能承诺单靠App跑满跨境1Gbps。

# 更新误报修复（versionCode8，2026-10-18）

当前1.0.7-preview/versionCode8，下一版至少9，原签名。

用户反馈在线/配额正常但更新不可用，并确认恢复默认界面场景。v7在UiTuning.reset后把当前revision加入rejected保护，UpdateMonitor.accept却将save拒绝误判成连接失败，且提前终止APK检查。v8保留这一保护，明确跳过被拒绝的UI，继续检查已验证的APK；新revision仍可应用。恢复失败界面的自动回退同样覆盖。网络/证书/HTTP/格式失败改用安全分类文案，不输出URL、令牌或原始异常。

生产更新接口和真实APK下载复查Actions39098407422成功，故此案例不是面板服务中断。最新构建与发布验证记录见verification/ROUTING_CHECKS.md。实体手机仍需安装新版确认。

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
