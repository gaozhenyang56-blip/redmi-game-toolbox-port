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

