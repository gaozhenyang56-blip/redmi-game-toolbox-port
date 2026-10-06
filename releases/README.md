# 已签名 APK

[下载 Redmi-GameToolbox-new-signed.apk](Redmi-GameToolbox-new-signed.apk)

repair15：10.4.5-huawei-repair15-sidebar / 40001054，2026-10-06 构建。针对权限正常但无白条的情况，修复原侧栏服务启动和非小米设备初始化，将窗口挂载/滑动中的系统设置写调用改为应用存储。保留原白条、滑出面板、红色 FPS 和原设置项；未适配的小米专属设置标注不可用。新增白条左右侧、高度和向内偏移，默认左侧、25%、24dp。

沿用本会话上次新 RSA3072 密钥，安装过上一新签名 APK 可直接覆盖；repair12/13/14 原签名不同，不能直接覆盖。v1/v2/v3 签名、ZIP 完整性、7 个 DEX 完整性及 zipalign 验证通过。33 项自动化用例和原侧栏/设置静态接线检查通过；尚未在华为手机上实测，也未确认华为小窗冲突。

从游戏空间启动游戏后，等待约 1–2 秒，从白条向屏幕内滑动。若与华为小窗重叠，调整原设置中的“白条位置”。仍无白条可在游戏工具箱通知的 Shizuku 页面查看侧栏状态及崩溃日志，无需 ADB。详细记录见 [repair15 验证说明](../verification/repair15-sidebar.md)。

签名证书 SHA-256：`1aa44a60bd30efb08b2ccc3a26157125e7632572ae68dd4aad738c6b657f6752`。
APK SHA-256 见 [SHA256SUMS](SHA256SUMS)，签名验证见 [new-signature-verification.txt](new-signature-verification.txt)。

签名私钥及密码备份不包含在仓库中。后续更新继续使用本次新密钥签名。
