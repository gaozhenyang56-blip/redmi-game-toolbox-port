先读 AGENTS.md、HANDOFF.md 与 verification/ROUTING_CHECKS.md。仅继续本分支 qinglian/，不改原Redmi项目。

当前版本1.0.5-preview/versionCode6，下一版至少7，必须沿用原签名。标准Material3、亮色默认/亮色图标、深浅色与系统切换、应用黑白名单、规则/全局、面板指定节点及真实流量/在线API均已完成。

GitHub Actions已通过SSH连接、完成加密一致性备份并部署现有x-ui0.3.2扩展。不要重跑首次部署脚本覆盖生产，它会拒绝已有配置；后续维护先备份并设计升级/回滚。原面板“轻连 App”页管理设备与App节点；App API专用11452HTTPS，私有CA限API使用，不绕过主机名验证。

私有API资产、节点、CA私钥、签名和服务器资料不在Git。当前会话私有文件在仓库外，勿要求用户重复提供已有资料。新环境再安全恢复。APK只交付用户，不上传公开仓库。

手机覆盖安装、Android实际分流出网和两台真机在线仍未验证。自动测试、Robolectric绘图、Linux节点测试均不能替代手机验收。

用户手机反馈性能/稳定性和底部留白后，已修最佳网络跟踪、缓存/TCP代理DNS、有限重启恢复、官方核心延迟及重复insets。最新测试与实机边界见HANDOFF首节。不得把GitHub运行器56ms称为用户手机成绩。

顶部与底部导航加入M3配色毛玻璃：API31+GPU模糊，低版本半透明；仅页面变化/滚动时更新，后台停止。最新记录见HANDOFF首节。
