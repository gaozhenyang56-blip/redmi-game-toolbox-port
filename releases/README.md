# 已签名 APK

[下载 Redmi-GameToolbox-new-signed.apk](Redmi-GameToolbox-new-signed.apk)

repair20：10.4.5-huawei-repair20-window-fps / 40001059，2026-10-06 构建。

补全常驻白条的父窗口、触摸窗口和图片恢复，关闭面板后仍可点击/滑动。FPS 服务与侧栏共用前台进程持续采样，重复帧不再误归零，重复打开不清空历史，过期数据仍不可用。保留原 UI、设置、自定义位置和此前修复。

沿用本会话新 RSA3072 密钥，可覆盖 repair15–19 新签名版；原 repair12/13/14 签名不同。

84 项主机检查与静态接线通过；完整构建、v1/v2/v3 签名、ZIP CRC、7 DEX 和 zipalign 校验通过。没有华为实机或模拟器回归，仍需确认设备表现。详见 [repair20 验证记录](../verification/repair20-window-fps.md)。

签名证书 SHA-256：`1aa44a60bd30efb08b2ccc3a26157125e7632572ae68dd4aad738c6b657f6752`。
APK SHA-256 见 [SHA256SUMS](SHA256SUMS)，签名验证见 [new-signature-verification.txt](new-signature-verification.txt)。签名私钥及密码不在仓库中。
