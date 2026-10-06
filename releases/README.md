# 已签名 APK

[下载 Redmi-GameToolbox-new-signed.apk](Redmi-GameToolbox-new-signed.apk)

repair16：10.4.5-huawei-repair16-settings / 40001055，2026-10-06 构建。

修复用户日志中的两处崩溃：小米气泡模块注册跨用户 gb_boosting 监听被拒绝，以及退出原设置时取消空任务。原设置直接接入应用存储，不再被旧初始化服务回调改写；单个条目失败不阻断其他设置。核心三个开关、游戏内容推荐及白条位置可保存；桌面快捷方式使用 Android 公开接口，由桌面确认添加，关闭时停用，图标需手动移除。未适配的小米性能、网络或硬件功能仍标注不可用。

保留 repair15 的原白条、滑出面板、红色 FPS、原设置项和白条位置修复。日志标题已更新为当前版本，历史日志仍可能保留 repair14 标题。

沿用本会话新 RSA3072 密钥，可覆盖本会话上一新签名 APK，包括 repair15。repair12/13/14 原签名不同，不能直接覆盖。

33 项既有用例与 12 项主机模拟设置行为检查通过；静态崩溃路径检查、完整构建、v1/v2/v3 签名、ZIP CRC、7 个 DEX 完整性及 zipalign 验证通过。尚未连接华为手机做实机回归。详细记录见 [repair16 验证说明](../verification/repair16-settings-crashes.md)。

签名证书 SHA-256：`1aa44a60bd30efb08b2ccc3a26157125e7632572ae68dd4aad738c6b657f6752`。
APK SHA-256 见 [SHA256SUMS](SHA256SUMS)，签名验证见 [new-signature-verification.txt](new-signature-verification.txt)。

签名私钥及密码不包含在仓库中。
