# repair16：设置状态与用户日志中的两条崩溃路径

用户设备日志：HUAWEI DCO-AL00 / API31，普通应用 UID。日志标题“Original 10.4.5 repair14”是 CrashReporter 的固定字符串，不能用于识别实际 APK 版本。repair16 日志标题已标注版本名与版本号 40001055。

## 修复依据与最终行为

1. `DockWindowManagerService.G0 → TipsManager.getInstance → init` 向 `Settings.Secure.gb_boosting` 注册 USER_ALL 内容监听，抛出 INTERACT_ACROSS_USERS_FULL SecurityException。该权限不能由普通悬浮窗设置授予。G0 不再进入小米气泡提示模块，TipsManager.init 本身也关闭该不可用能力、不注册跨用户监听，防止其他旧调用入口触发。保留原游戏白条与 TurboLayout 手势，不影响华为原生小窗。
2. `GameBoosterSettingFragment.onDestroy` 直接取消 U、V 任务；repair15 不再创建 V，但清理未同步修改，导致用户退出设置时空指针。这是 repair15 的遗漏；现在两个取消调用均有空值保护。
3. 原设置创建流程仍注册小米服务回调并初始化旧监听。repair16 直接加载同一 gs_setting.xml，通过 OriginalSettings 接入应用存储；不再启动旧服务绑定、初始化任务或硬件检测回调，避免它们改写设置状态。保留每个原设置项。
4. 原游戏空间、工具箱、滑动入口三个开关，以及游戏内容推荐读取/保存各自原 RemoteProvider 存储键；可用开关关闭 Android 默认持久化，避免双份状态。每个子选项独立处理，一个选项异常不会使后面的开关、Shizuku 和白条位置设置失效。已有关闭状态保持。
5. 原“桌面快捷方式”选项采用 Android ShortcutManager，支持时由桌面确认添加；仅申请成功不会虚报已经添加，重新进入设置后读取真正已固定且启用的快捷方式。关闭时停用，桌面图标仍由用户手动移除。保留原 checkbox UI。原图标和原游戏空间 Activity 用于快捷方式。
6. 没有实现小米 CPU/GPU 调度、智能双卡/5G/WLAN、肩键硬件等能力，相关原设置仍显示不可用；不通过只保存无实际效果的值假装恢复。内容推荐开关保存原应用配置，不保证原内容服务器仍可服务。

## 验证与局限

`bash scripts/test.sh`：原 33 项用例通过；新增 12 项设置行为检查直接执行生产 OriginalSettings，但 Context、Preference 和存储为主机模拟，覆盖开关可用、原关闭状态、单一存储、推荐设置原键、位置读写、重开回读、坏条目隔离、快捷方式路由和桌面能力检查。静态检查设置不再调用旧初始化、两任务取消前检查空值、气泡初始化无跨用户监听、G0 无气泡入口。

完整 Java/D8/smali/资源构建，v1/v2/v3 签名、zipalign、ZIP CRC 与七个 DEX 完整性验证通过。沿用本会话新密钥签名，可覆盖 repair15 新签名版。

没有连接手机或模拟器；这些检查不能代替设置退出、桌面确认、游戏白条、华为小窗及真实 FPS 的实机回归，也不能证明所有原版未触达路径均没有私有依赖。请使用当前 repair16 APK 测试，旧崩溃记录可能仍保留在日志历史中。
