# 已签名 APK

[下载 Redmi-GameToolbox-new-signed.apk](Redmi-GameToolbox-new-signed.apk)

repair19：10.4.5-huawei-repair19-handle-fps / 40001058，2026-10-06 构建。

白条在已添加应用前台时常驻，默认贴边，轻点展开原工具箱，保留原滑动及手动位置。FPS 分批扫描全部匹配图层，修复只查前八个图层导致遗漏；系统拒绝读取帧数据时明确提示。保留原设置及此前崩溃/位置刷新修复，小米专属硬件功能仍标注不可用。

沿用本会话新 RSA3072 密钥，可覆盖 repair15–18 新签名版；原 repair12/13/14 签名不同。

77 项自动化检查及静态契约检查通过；完整构建、v1/v2/v3 签名、ZIP CRC、7 DEX 和 zipalign 校验通过。没有手机或模拟器实测，华为小窗兼容性和真实 FPS 数据可用性仍需验证。详见 [repair19 验证记录](../verification/repair19-handle-fps.md)。

签名证书 SHA-256：`1aa44a60bd30efb08b2ccc3a26157125e7632572ae68dd4aad738c6b657f6752`。
APK SHA-256 见 [SHA256SUMS](SHA256SUMS)，签名验证见 [new-signature-verification.txt](new-signature-verification.txt)。签名私钥及密码不在仓库中。
