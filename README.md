# Redmi Game Toolbox — Codex Cloud 接续项目

完整 repair14 解码基线、当前 Java 源码、离线构建工具、帧率测试及验证记录。

## 继续工作

```sh
bash scripts/setup.sh
bash scripts/build.sh
```

需要 Linux x86_64、Java 17 或更高和 Python 3；Android 构建工具已随包提供，无需在线下载。`output/Redmi-GameToolbox-aligned-unsigned.apk` 为未签名输出。现有签名密钥需单独提供给签名流程，以继续覆盖安装。

## 迁移状态

本文件包仅准备了迁移材料，没有创建远程仓库、Codex Cloud 环境或云端任务。仓库地址和账号连接尚未提供。完整源码应解压到仓库根目录，不要只上传此 ZIP 或前一版的补丁包。若使用基于仓库的 Cloud 环境，设置脚本填写 `bash scripts/setup.sh`。

下一项任务：实机验证原版侧栏 FPS 曲线，核对 Shizuku 授权、SurfaceFlinger 实际游戏图层、采样回调与红色绘图。没有实机日志时先检查代码，不假定 repair14 已在设备运行成功。
