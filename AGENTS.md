# 项目说明
这是原版 Redmi/Xiaomi 安全中心 10.4.5 游戏助手的适配工程，不是重写 UI 的新 App。
当前基线 repair17，设备 Huawei Mate50Pro DCO-AL00 / Android API31。优先完成原版侧栏与红色 FPS 曲线；无障碍连招暂停，不要自行加入。
保留原版游戏空间列表、游戏海报和图标、滑出侧栏及 FrameRateView。仅替换系统能力后端。
避免小米、华为专属系统组件，优先 Android 公开 API。高级帧率与前台监测使用官方 Shizuku；用户当前不能使用 ADB。
用户要求保留原设置选项：设置树不得删除；未适配的小米专属功能标注不可用。无有效真实帧数据时显示不可用，不使用屏幕刷新率替代 FPS。
源码在 java/，原版解码代码与资源在 decoded/。改变 Java 后必须运行 bash scripts/build.sh 重新编译 DEX，不能只修改旧 smali。
验证：bash scripts/test.sh；构建：bash scripts/build.sh。APK 输出 output/，默认为未签名。本会话已使用新 RSA3072 密钥签名；output/new-signing/ 有本地密钥，仓库不含密钥。后续更新沿用此新密钥；不能覆盖 repair12/13/14 原签名。
当前未进行手机实机验证，不能将解析测试或模拟输出描述为真实游戏测试。详见 STATUS.txt 和 verification/。
