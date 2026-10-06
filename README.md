# Redmi Game Toolbox — Codex Cloud 接续项目

完整 repair18 解码工程（基于 repair14）、当前 Java 源码、离线构建工具、帧率测试及验证记录。

本次接续开发的[新签名 APK 下载与安装说明](releases/README.md)已放入 `releases/`。签名私钥及密码不包含在仓库中。

## 继续工作

```sh
bash scripts/setup.sh
bash scripts/build.sh
```

需要 Linux x86_64、Java 17 或更高和 Python 3；Android 构建工具已随包提供，无需在线下载。`output/Redmi-GameToolbox-aligned-unsigned.apk` 为未签名输出。现有签名密钥需单独提供给签名流程，以继续覆盖安装。

## 当前版本

repair18 修复白条位置选项初始化、保存和摘要刷新：使用原包混淆后的 ListPreference 方法，以及原摘要提供器安全显示百分号。保留原设置和对话框。详见 [repair18 验证记录](verification/repair18-position.md)。

保留 [repair17](verification/repair17-touch-fps.md) 的白条触摸、面板关闭与 FPS 图层缓存修复，以及 [repair16](verification/repair16-settings-crashes.md) 的设置/气泡崩溃修复。

远程仓库：https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port 。本会话新签名更新可覆盖安装；原 repair12/13/14 签名不同。没有华为实机验证。

## 接续开发：前台与图层选择修复

在 repair14 基础上，前台监测和 FPS 查询现在优先选择 `topResumedActivity`，然后是 `mCurrentFocus`，最后回退到 `mResumedActivity`，减少多窗口下误选其他已恢复应用的情况。SurfaceFlinger 图层先按完整包名边界筛选，再限制最多八个图层，避免同名前缀应用占用查询名额。保留原版侧栏和红色 FrameRateView，不新增无障碍连招。

运行 `bash scripts/test.sh` 可重复验证 14 项 FPS 解析用例、6 项前台识别用例、11 项生产 shell 命令模拟用例及 14 项侧栏位置边界用例，并执行 17 项主机模拟设置行为检查及原侧栏与设置接线检查。后者通过假的 dumpsys 执行实际 Java 命令，覆盖多窗口优先级、回退、无前台数据和包名边界。此验证不代表华为实机测试；构建脚本输出未签名 APK，releases/ 提供本会话新密钥签名的安装包。
