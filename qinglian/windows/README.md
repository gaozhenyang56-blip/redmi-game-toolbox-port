# 轻连 Windows 版

Windows 10 1809+ / Windows 11，x64。原生 Qt GUI，内置 V2Ray 5.54.2、Hysteria2 2.13.0 和 Temurin JRE17；无需另装 Python/Java。与原面板共用账号、流量和独立节点。

安装：运行 `Qinglian-1.0.0-preview1-windows-x64-setup.exe`，仅安装当前用户，不要求管理员权限。便携版解压整个 ZIP 后运行 `Qinglian.exe`，保留 `_internal` 目录。更新前先退出旧轻连。卸载保留账号/偏好；数据在 `%LOCALAPPDATA%\Qinglian`。本版未提供 Authenticode 签名，请核对 Release 随附 SHA256SUMS，不冒用 Android 签名。

## 中国移动网络

默认“兼容”，因为用户已确认同一移动网络 Android 兼容通道可连接、HY2 不可连接。固定 `https://gaozy.tech` CDN 用于控制 API，保留严格 CA/主机名校验和原IP443/11452备用，不跟随重定向、不重放已可能发送的POST。CDN 不是 HY2 数据通道。HY2 为 UDP，普通 CDN 不能使被限制的 UDP 恢复。

可选择 HY2 高性能/保守，或“自动”。自动仅在首次 HY2 核心/链路验证超时等适用错误后尝试兼容，沿用同一账号/访客会话，不重置 64 GiB。HTTP权限/配额、证书、profile失败不作为UDP故障回退；不隐瞒真实通道。运行中断线会显示失败，需要重连，不承诺无缝。连接成功必须通过当前代理、原专用 CA 和真实 1 字节服务器响应验证。HY2首次读取预算12秒/总15秒；普通3秒/总8秒，取消与截止关闭验证套接字。

没有中国移动出口的实机测试，无法保证每个地区、时段和热点均可连。独立公网测试与模拟 UDP 超时用于验证客户端行为，不应描述为运营商现场验收。如果兼容也不可用，需要新的数据线路/中转；仅更新客户端或给控制API加CDN不能保证解决。

## 界面和使用

- 连接、测速、分流、账号、ChatGPT、关于六个页面；Material3配色、亮暗/系统、简约侧栏、页面动画和托盘。
- 系统代理模式：规则绕大陆/私网，全局走代理；不提供 TUN 或 Windows 按应用黑白名单。不遵循系统代理的软件不会自动接管，也不是断网保护。
- 访客免登录，明确告知后每次手动连接64GiB，不记录域名。账号需明确同意服务器永久记录连接域名/时间，再登录或注册。设备摘要由Windows用户SID和MachineGuid加盐哈希生成，不上传原值。账号凭据由当前用户DPAPI加密；本地目录仅当前用户和SYSTEM访问，管理员仍可取得本机控制权。
- 账号累计用量与周导出256GiB分开显示。VMess/VLESS/Trojan/Shadowsocks/HY2 导出可选备注，独立节点7天过期；失败后保留幂等申请，使用相同参数重试避免重复扣额。ZIP含节点凭据。
- 自定义1..2048MiB下载测试，数据必须经实际代理到服务器，计入额度；测速失败不直接判定VPN掉线。
- ChatGPT先用兼容。可检查三个HTTPS域名，或打开网页版。完整退出桌面ChatGPT后选择exe，启动为该进程附加显式代理和WebView2参数，不关闭TLS/沙箱；安装形式不同可能忽略参数，原运行实例不会被强杀。HTTP403不是登录成功。
- 断开恢复原WinINET系统代理及PAC设置；独立管道守护恢复GUI崩溃，Job Object限制核心生命周期。其他程序已接管的代理配置不覆盖。不修改全局WinHTTP、系统证书、路由、防火墙或VPN服务。

## 开发和许可

共享 `../ubuntu/runtime.py` 的API/路由/链路验证代码和 `NodeConfig.java`，Windows适配在 `win_platform.py` / `client.py`。构建在Windows执行：

```powershell
python -m pip install PySide6==6.8.3 pyinstaller==6.11.1
python qinglian/windows/build.py --assets <private-bootstrap-directory> --output <delivery-directory>
```

构建机需要JDK17+和Inno Setup6，包内已带独立JRE。依赖二进制URL及SHA256固定，原管理员/SSH/Cloudflare/用户会话/Android私钥不打包。App引导token与手机/Ubuntu一样可提取，权限边界由服务器控制。源码GPL-3.0；Qt/PySide6动态库及OpenJDK等许可证和对应源码地址随包。完整CI含Windows DPAPI/注册表恢复/Job、真实原生五协议、GUI、生产CDN/三通道与同会话回退；没有移动网络现场或真实ChatGPT账号登录验收。
