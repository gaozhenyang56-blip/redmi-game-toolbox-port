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

# Windows preview5 热更新、托盘和图标（2026-10-30，已发布并接入面板）

用户追加要求两种热更新、后台常驻及使用V2Ray图标。Windows 1.0.0-preview5：关于页独立后台同步Windows发布配置（强调色、密度、纯文本公告、材质许可），60秒一次，可关闭，保持连接和输入；代码包只从原固定HTTPS/CDN API下载，严格TLS、大小/摘要/版本/资源和归档路径校验，禁止降级/任意URL/脚本。必须先断开VPN并确认重启。非提权one-file助手校验父进程文件身份、等待旧GUI退出，仅替换Qinglian.exe/_internal，保留卸载程序和用户数据，新版启动check-in前保留备份，失败尝试恢复。不是无重启代码执行；首次必须手动安装preview5。完整说明见server/WINDOWS_UPDATES.md与windows/README.md。

关闭窗口默认隐藏到托盘并保持连接，菜单打开/断开/退出，关于页可关闭常驻；无托盘时正常退出，明确退出和程序升级始终执行清理并完整结束。用户选择的2dust/v2rayN蓝色图标来自固定提交57f17d5939e88c8e643ab49b90869d637765e75a，ICO/许可证SHA256固定、GPL-3.0来源许可随包保留，assets/.gitattributes确保Windows不改写被固定校验的许可证。应用仍是轻连，不冒充v2rayN官方构建。

服务端工作流40991488208（源码210c21b2）备份后部署成功：Windows独立更新表/API和面板、原HTTPS/WSS SSH PTY、原节点配置/流量计数保留。App更新页的Windows区可发布UI，或输入本仓库已发布版本让服务器校验并导入完整ZIP，避免CDN单次上传大小限制。Android更新表/API不变，原IP严格白名单只增加两个固定Windows读取端点。Go race权限/同源/CAS/回滚/归档测试与Qt数据热更新、连接中禁止替换、忙碌锁回归通过。

最终Windows工作流40994039222（源码cc651379）完整成功：真实平台/DPAPI/代理守护、TLS取消与截止、五协议、生产CDN与三通道及同会话回退、Qt、源码/打包TUN、打包Qt -> 独立one-file助手 -> ZIP替换 -> 新Qt check-in及卸载程序保留、实际安装/卸载。早期失败门禁均未发布：许可证CRLF校验、首次更新目录缺失、冻结子进程环境/父进程路径字符串比较。最终使用PYINSTALLER_RESET_ENVIRONMENT重启独立程序及os.path.samefile比较父映像文件身份，兼容8.3短路径/长路径/目录联接；诊断仅固定阶段与异常类，不记原始路径、凭据或终端输出。文件锁部分替换回滚有逻辑测试，但无断电、强杀助手或任意目录ACL故障保证。

公开标签qinglian-windows-v1.0.0-preview5：setup 113,683,732字节，SHA256 `147ea700e4051aa43790c291ba11497e88e6e9d9cb2088babbfc8bf34618799d`；portable ZIP 131,812,015字节，SHA256 `05c279a17e28a1083102e9e2734b1b4c06e7b165cc73a871d9c3996142dbfb5e`。公开重下校验SHA256SUMS、包内app/updater/helper/fluent/测试/installer归一CRLF源码、原生资源manifest、GUI/助手PE x64与图标一致。面板发布工作流40994718157成功：真实owner登录、固定官方Release导入、严格CDN完整ZIP下载及摘要/资源检查；首次40994570181因脚本urllib导入作用域错误在发布前停止，已修复后成功。没有中国移动现场、真实ChatGPT登录、Windows11 Mica外观或用户全局TUN实机验收。

下一Windows至少preview6；Android仍21，Ubuntu仍preview5。不覆写旧发布资产。Windows当前版本解析仅支持1.0.0-previewN，改正式语义版本前须同时扩展服务端/客户端解析和验收。ZIP更新保留卸载程序但不重写Windows安装器登记版本；需同步安装列表可运行对应setup。

# Windows preview4 连接状态修复（2026-10-30，已发布）

用户截图在没有前台任务时持续提示“请先等待当前操作完成”。根因是10秒一次的online/quota后台统计复用了前台task/working锁，慢请求阻挡连接，下一次轮询又重复占用。preview4将统计改为独立signal和单条在途请求，不取得/释放前台锁，不覆盖连接提示，失败显示统计暂不可用且下轮可重试，退出不等待统计超时。

本地与真实Windows Qt回归覆盖停滞/失败统计下连接可启动、重复计时不重叠、统计完成不释放正在执行的账号任务、失败恢复、退出、主题/简约与TUN选项。工作流40990143802（源码7fb7a807）全部通过，含真实协议/公网三通道及回退、源码/打包TUN、安装/卸载；首次40989721035漏改installer.iss版本导致构建中止，未发布。公开重下preview4后归一CRLF核对app.py/test_gui.py/installer.iss与修复源码一致，SHA256SUMS通过。

标签qinglian-windows-v1.0.0-preview4：setup 104,794,670字节，SHA256 `d9abf8537ef129e0c6a5423bc973a3716e957f65a1eba01c7dda42adddfb4c48`；portable ZIP 122,898,348字节，SHA256 `7afd3f443efa7866a888f2207b3a61e6ca4038cab6250f81bf9c68acefd9039a`。用户已收到直链。Android21/Ubuntu preview5不变。

# Windows preview3 与面板 SSH（2026-10-29，已发布/部署）

Windows 1.0.0-preview3（源码79476bde）采用Windows 11 Fluent风格，保留原生标题栏/Snap、亮暗/简约与托盘；符合条件的Windows 11请求Mica，其他系统纯色。安装和免安装ZIP均包含可选Wintun/tun2socks全局TUN，启用需管理员授权，固定同服务器节点并保留服务器物理直达，IPv4/IPv6临时路由与本应用适配器清理。系统代理仍可使用。详见windows/README.md。

Windows工作流40966148461成功：源码和打包后真实Wintun IPv4/IPv6保留测试前缀转发、助手IPC/清理、GUI、原生协议、生产三通道、同会话回退、安装/卸载。公开重下核验包内源码、manifest、固定CDN、核心架构和SHA256SUMS。安装包104,793,414字节，SHA256 `52acd630cb5085b69dd09887d00d2ee44092cf4481a9c83ccfd7b3cfecf0aad5`；便携ZIP122,896,914字节，SHA256 `3b8c2a89f1737af456790c373c862c9966e85e68af2e91e71050f62f7d56a345`。标签qinglian-windows-v1.0.0-preview3；中间preview2保留，下一Windows至少preview4。Android仍code21，Ubuntu仍preview5。没有Windows 11材质实机、中国移动现场、真实ChatGPT登录、用户全局TUN/UAC或长期稳定性验收；CI未接管运行器默认路由。

# Windows 1.0.0-preview1（2026-10-29，已发布）

用户授权新增Windows版并要求考虑中国移动。新增windows/ Qt六页GUI、亮暗/简约/托盘、账号DPAPI存储、现有面板账号/节点/导出、1..2048MiB测速、ChatGPT显式代理/WebView2参数与HTTPS诊断。系统代理模式，不提供Windows TUN/按应用分流/断网保护。安装和便携版内置Windows V2Fly5.54.2/Hysteria2.13.0/Temurin17.0.20+8，固定URL+SHA256校验，独立Windows版本；不递增Android/Ubuntu，不修改服务器。

默认兼容，自动模式初次HY2链路/网关故障时尝试真实TCP，保留同一账号或访客64GiB会话，不回退直连、不隐藏实际通道、权限/证书错误不当成UDP故障。控制API沿用固定gaozy.tech公网CA/CDN和原IP专用CA443/11452；已可能发送的POST不重放。普通CDN不承载HY2数据；没有中国移动Windows现场验收，不能保证全地区/时段可连。

Windows专属验证发现并修复：默认构建JDK8/源码编码差异，显式JDK17和UTF8；Winsock阻塞SSL文件读取不能靠另一线程shutdown及时取消，Windows改用非阻塞TLS+50ms select及固定HTTPS CONNECT/1字节响应校验；V2Fly transport/internet/tls/config_windows.go 在未设置disableSystemRoot时忽略配置中的CA，Windows仅对含专用CA的TLS出站设置disableSystemRoot=true，继续allowInsecure=false和主机名检查，不导入系统信任、不trust-all。

工作流40902702390（源码689a4256）全部成功：13项Windows/回退/DPAPI/注册表/Job测试（打包前仅守护项跳过，打包后13项全部通过）、10项共享TLS/CDN测试、真实非阻塞TLS取消/截止/证书/慢CONNECT夹具、五协议及HY2高性能实际传输、Qt六页/同意门槛、生产CDN和兼容/HY2保守/HY2高性能各1MiB、模拟HY2验证超时后真实TCP传输1MiB且只创建一次访客会话/原64GiB计量、精确随机测试设备清理、PyInstaller无控制台GUI/管道守护、Inno安装和卸载。Ubuntu共享回归40901517107也成功。没有中国移动现场、真实ChatGPT账号登录、长时间运行或全应用代理验收。代理配置快照+独立EOF守护，其他程序已接管的代理不覆盖，注册表恢复失败也清理核心；窗口程序用Win32 ReadFile读取守护管道，不能依赖PyInstaller windowed的sys.stdin。生产原生日志丢弃，公开loopback夹具可单独输出已知假凭据的诊断。详见windows/README.md及verification/WINDOWS_CHECKS.md。

公开发布标签qinglian-windows-v1.0.0-preview1，安装包100,984,195字节/SHA256 1ff8c381f9ebb3fd90966579a2b6aefdd9575a5aaaec6d57411902980e44feea；便携ZIP118,443,879字节/SHA256 0366876a04f1f14c59826b2aabec6ecdc99f162ac83eb6f96f87123d71e85e26。公开重下SHA256SUMS两项成功；包内manifest/固定CDN/引导配置字段白名单、归一CRLF后Windows及共享源码、GUI/核心/JRE的PE x64架构核验通过。无Authenticode签名。下一Windows至少preview2；Android仍code21/Ubuntu仍preview5，不覆写已发布文件。

