# 已签名 APK

[下载 Redmi-GameToolbox-new-signed.apk](Redmi-GameToolbox-new-signed.apk)

repair18：10.4.5-huawei-repair18-position / 40001057，2026-10-06 构建。

修复“选择白条位置不刷新”：原包的 ListPreference 方法已混淆，之前的标准方法名导致位置项初始化和保存监听失败。现在调用真实方法并将选中值保存到原 RemoteProvider；使用原摘要提供器自动刷新选中文字，安全显示高度百分号。保留原设置树和原对话框。修改左右侧、内缩或高度后可检查摘要，再重新打开设置确认保存；返回游戏后侧栏按这些值重建。

保留 repair17 白条触摸/面板关闭/FPS 图层缓存及此前崩溃修复。小米专属硬件功能仍标注不可用。

沿用本会话新 RSA3072 密钥，可覆盖 repair15/16/17 新签名版；原 repair12/13/14 签名不同，不能直接覆盖。

62 项自动化检查及实际 ListPreference 混淆方法契约静态检查通过；完整构建、v1/v2/v3 签名、ZIP CRC、7 个 DEX 完整性和 zipalign 校验通过。尚未连接手机或模拟器实测。详见 [repair18 验证记录](../verification/repair18-position.md)。

签名证书 SHA-256：`1aa44a60bd30efb08b2ccc3a26157125e7632572ae68dd4aad738c6b657f6752`。
APK SHA-256 见 [SHA256SUMS](SHA256SUMS)，签名验证见 [new-signature-verification.txt](new-signature-verification.txt)。签名私钥及密码不在仓库中。
