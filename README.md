# Redmi Game Toolbox — Codex Cloud 接续项目

完整 repair14 解码基线、当前 Java 源码、离线构建工具、帧率测试及验证记录。

本次接续开发的[新签名 APK 下载与安装说明](releases/README.md)已放入 `releases/`。签名私钥及密码不包含在仓库中。

## 继续工作

```sh
bash scripts/setup.sh
bash scripts/build.sh
```

需要 Linux x86_64、Java 17 或更高和 Python 3；Android 构建工具已随包提供，无需在线下载。`output/Redmi-GameToolbox-aligned-unsigned.apk` 为未签名输出。现有签名密钥需单独提供给签名流程，以继续覆盖安装。

## 迁移状态

本文件包仅准备了迁移材料，没有创建远程仓库、Codex Cloud 环境或云端任务。仓库地址和账号连接尚未提供。完整源码应解压到仓库根目录，不要只上传此 ZIP 或前一版的补丁包。若使用基于仓库的 Cloud 环境，设置脚本填写 `bash scripts/setup.sh`。

下一项任务：实机验证原版侧栏 FPS 曲线，核对 Shizuku 授权、SurfaceFlinger 实际游戏图层、采样回调与红色绘图。没有实机日志时先检查代码，不假定 repair14 已在设备运行成功。

## 接续开发：前台与图层选择修复

在 repair14 基础上，前台监测和 FPS 查询现在优先选择 `topResumedActivity`，然后是 `mCurrentFocus`，最后回退到 `mResumedActivity`，减少多窗口下误选其他已恢复应用的情况。SurfaceFlinger 图层先按完整包名边界筛选，再限制最多八个图层，避免同名前缀应用占用查询名额。保留原版侧栏和红色 FrameRateView，不新增无障碍连招。

运行 `bash scripts/test.sh` 可重复验证 12 项 FPS 解析用例、6 项前台识别用例和 5 项生产 shell 命令模拟用例。后者通过假的 dumpsys 执行实际 Java 命令，覆盖多窗口优先级、回退、无前台数据和包名边界。此验证不代表华为实机测试；构建产物仍未签名，需要现有安装使用的密钥签名后才能覆盖安装。
