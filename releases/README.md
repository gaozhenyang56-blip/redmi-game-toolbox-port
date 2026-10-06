# 已签名 APK

[下载 Redmi-GameToolbox-new-signed.apk](Redmi-GameToolbox-new-signed.apk)

2026-10-06 构建，基于 repair14，修复前台应用和 FPS 图层选择。23 项自动化用例通过；尚未在华为手机上实测。

使用新 RSA 3072 密钥签名，v1/v2/v3 签名、ZIP 完整性及 zipalign 验证通过。新签名无法覆盖 repair12/13/14 旧签名安装，请先备份旧版数据再卸载旧版安装。

签名证书 SHA-256：`1aa44a60bd30efb08b2ccc3a26157125e7632572ae68dd4aad738c6b657f6752`。
APK SHA-256 见 [SHA256SUMS](SHA256SUMS)，签名验证见 [new-signature-verification.txt](new-signature-verification.txt)。

签名私钥及密码备份不包含在仓库中。后续更新需继续使用本次新密钥签名。
