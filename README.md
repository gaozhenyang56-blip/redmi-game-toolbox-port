# Redmi Game Toolbox — Codex Cloud 接续项目

完整 repair16 解码工程（基于 repair14）、当前 Java 源码、离线构建工具、帧率测试及验证记录。

本次接续开发的[新签名 APK 下载与安装说明](releases/README.md)已放入 `releases/`。签名私钥及密码不包含在仓库中。

## 继续工作

```sh
bash scripts/setup.sh
bash scripts/build.sh
```

需要 Linux x86_64、Java 17 或更高和 Python 3；Android 构建工具已随包提供，无需在线下载。`output/Redmi-GameToolbox-aligned-unsigned.apk` 为未签名输出。现有签名密钥需单独提供给签名流程，以继续覆盖安装。

## 当前版本

repair16 修复用户日志中的小米气泡跨用户监听崩溃及退出设置时取消空任务的崩溃。原设置直接接入应用存储，不再被旧初始化回调改写；游戏空间、工具箱、滑动入口、内容推荐及白条位置可保存，桌面快捷方式使用公开 Android 接口。未适配的小米硬件功能仍标注不可用。[repair16 验证记录](verification/repair16-settings-crashes.md)列出证据与测试范围。

保留 repair15 原侧栏服务和位置修复，详见 [repair15 验证记录](verification/repair15-sidebar.md)。

远程仓库：https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port 。本会话新签名更新可覆盖安装；原 repair12/13/14 签名不同。没有华为实机验证。

## 接续开发：前台与图层选择修复

在 repair14 基础上，前台监测和 FPS 查询现在优先选择 `topResumedActivity`，然后是 `mCurrentFocus`，最后回退到 `mResumedActivity`，减少多窗口下误选其他已恢复应用的情况。SurfaceFlinger 图层先按完整包名边界筛选，再限制最多八个图层，避免同名前缀应用占用查询名额。保留原版侧栏和红色 FrameRateView，不新增无障碍连招。

运行 `bash scripts/test.sh` 可重复验证 12 项 FPS 解析用例、6 项前台识别用例、5 项生产 shell 命令模拟用例及 10 项侧栏位置边界用例，并执行 12 项主机模拟设置行为检查及原侧栏与设置接线检查。后者通过假的 dumpsys 执行实际 Java 命令，覆盖多窗口优先级、回退、无前台数据和包名边界。此验证不代表华为实机测试；构建脚本输出未签名 APK，releases/ 提供本会话新密钥签名的安装包。
