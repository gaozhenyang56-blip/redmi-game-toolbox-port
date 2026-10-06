# 已签名 APK

[下载 Redmi-GameToolbox-new-signed.apk](Redmi-GameToolbox-new-signed.apk)

repair17：10.4.5-huawei-repair17-touch-fps / 40001056，2026-10-06 构建。

针对用户反馈的白条隐藏后不能滑出、FPS 显示两次后不可用及悬浮面板有时不消失：透明 cover 直接调用原手势并恢复白条；原收起动画/全屏恢复保留设置位置；面板外点击同步收起，退出时补齐移动视图、菜单及附属提示清理，取消残留动画。

FPS 使用经前台监测确认的游戏包名。发现阶段每批查询两层，拿到真实帧后直接查询缓存图层，失效时重新查找；独立超时与错误流执行器，减少重复枚举和工作线程占用。Shizuku 页面新增跨进程 FPS 状态。仍只使用有效真实帧时间，系统不提供数据时继续显示不可用。

保留原白条、TurboLayout、红色 FrameRateView、原设置树，以及 repair16 的设置/跨用户气泡崩溃修复。小米专属硬件功能仍标注不可用。

沿用本会话新 RSA3072 密钥，可覆盖 repair15/16 新签名版；原 repair12/13/14 签名不同，不能直接覆盖。

57 项自动化检查和静态接线/清理契约检查通过；完整构建、v1/v2/v3 签名、ZIP CRC、7 个 DEX 完整性和 zipalign 通过。没有手机或模拟器实机回归，不能保证设备全部问题已消除。详见 [repair17 验证记录](../verification/repair17-touch-fps.md)。

签名证书 SHA-256：`1aa44a60bd30efb08b2ccc3a26157125e7632572ae68dd4aad738c6b657f6752`。
APK SHA-256 见 [SHA256SUMS](SHA256SUMS)，签名验证见 [new-signature-verification.txt](new-signature-verification.txt)。签名私钥及密码不在仓库中。
