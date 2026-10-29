轻连 Windows 1.0.0-preview1，Windows10 1809+/11 x64。

原生六页面 GUI，手机配色、亮暗/简约、账号与周导出、1..2048MiB测速、ChatGPT HTTPS检查和显式代理启动；内置核心与Java运行时。安装版/完整便携ZIP均无需管理员权限。

默认兼容通道，固定gaozy.tech CDN控制入口与原IP备用；HY2高性能/保守可选，自动模式遇初始HY2链路失败用同一会话尝试兼容，不重置访客64GiB。保留严格TLS、实际代理验证、有限等待和取消，显示实际通道。普通CDN不代理HY2 UDP，独立公网和模拟故障通过不代表中国移动现场已确认可用。

当前用户DPAPI账号存储、崩溃恢复系统代理、Job Object清理核心。使用系统代理，不含TUN/按应用分流/断网保护。ChatGPT原实例可能忽略新代理参数，需先完全退出；不禁用TLS或沙箱。

下载后核对SHA256SUMS。安装版运行setup.exe，便携版解压完整ZIP运行Qinglian.exe。无Authenticode签名；不更改Android/Ubuntu版本或生产服务器。更多说明及GPL源代码见仓库qinglian/windows及包内resources/source和licenses。
