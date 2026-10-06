# 前台与图层选择修复验证

日期：2026-10-06。基线：repair14。

代码检查发现前台监听与 FPS shell 查询会选择第一个 resumed activity，且 shell 使用包名子串查询后直接截取八个图层。多窗口时可能选择其他已恢复应用；同名前缀包的 SurfaceView 可能挤掉真正的游戏图层。

修复采用 topResumedActivity → mCurrentFocus → mResumedActivity 顺序，并在截取图层前按完整包名边界过滤。Java 前台监测和实际生产 shell 命令分别有可重复运行的测试。

验证命令：`bash scripts/test.sh`。

- 原有 12 项 actualPresentTime/FPS 解析用例通过。
- 新增 6 项 Java 前台识别用例通过。
- 新增 5 项生产 shell 命令模拟 dumpsys 用例通过，包括同名前缀/后缀图层超过八个的场景。

构建命令：`bash scripts/setup.sh && bash scripts/build.sh`。Java 重新编译为 DEX，并更新 decoded/smali_classes7。APK 输出为 `output/Redmi-GameToolbox-aligned-unsigned.apk`，不包含用户的签名密钥。

构建成功。APK ZIP 完整性、七个 DEX 文件头/长度/SHA-1、新增运行时类打包和 zipalign 检查通过，`git diff --check` 通过。APK 大小 60,106,064 字节，SHA-256 为 `b0608a4b0e9cc5afd693f3f05f53c33a0d96dcdb399d52193150c1f296f7febb`。

没有连接 Android 设备。仍需在 Huawei Mate50Pro DCO-AL00 / API31 验证 Shizuku 授权、前台识别、真实图层帧时间和原版红色曲线；模拟命令结果不证明 HarmonyOS 提供这些数据。
