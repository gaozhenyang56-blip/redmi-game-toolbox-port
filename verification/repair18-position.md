# repair18：白条位置选项不刷新

用户反馈：设置中选择白条位置不刷新。代码确认原因：OriginalSettings 按标准 AndroidX 名称反射 ListPreference.setValue/getEntry，但原包经混淆后方法实际为 w(String)/m()。初始化位置项抛 NoSuchMethodException，逐项异常处理使页面仍能显示，但保存监听未安装；对话框自身改变非持久化值，没有写入原 RemoteProvider。

修复：使用实际 w(String) 初始化和更新选中值；监听把 side/inset/height 整数写入原 RemoteProvider，再更新选项值。沿用原 ListPreferenceDialogFragmentCompat 和设置树，不新增设置 UI。原前台监测重新进入游戏时读取这些保存值并按新位置创建白条。

额外确认：原 ListPreference.getSummary 会 String.format 静态摘要，直接设置“靠上（25%）”等选中文字会把百分号当格式符，刷新可能异常。改用原包自带 ListPreference$a.b() 摘要提供器；它通过 m() 返回当前选项文本，w() 触发刷新，无需自行格式化。

验证：62 项自动化检查（14 FPS、6 前台、11 shell 模拟、14 坐标、17 设置主机模拟）及静态接线检查通过。设置模拟使用混淆后的 w/m 方法签名，覆盖三个位置项监听初始化、保存、立即更新摘要、重新进入回读及百分号原样显示。静态检查实际 APK 解码代码中 w、m、ListPreference$a.b 和 setSummaryProvider 方法存在；不再仅依赖模拟类的方法名。

完整 Java/D8/smali/资源构建及 v1/v2/v3 签名、zipalign、ZIP CRC、七个 DEX 完整性校验通过。版本 10.4.5-huawei-repair18-position / 40001057，沿用本会话新签名，可覆盖 repair17。

没有连接华为手机或模拟器，未实机验证选项刷新与白条位置。所有主机模拟/静态检查不等同设备回归。测试步骤：分别修改左右侧、内缩和高度，确认摘要随选择更新；退出再打开设置确认保存；返回游戏确认白条按新位置显示。设置页本身不显示游戏白条。
