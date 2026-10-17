先读 AGENTS.md 和 HANDOFF.md 最新进展，继续本分支 qinglian/，不要修改仓库原 Redmi 项目。

当前 App 1.0.3-preview/versionCode4（标准Material3）：已加入 Surfboard 风格黑/白名单（两份独立保存），连接页规则/全局切换，Android VPN 按应用应用规则；修改后重连生效。白名单为空或全卸载时阻止规则模式连接，不回退全局。

设备心跳已绑定服务，首次说明、10秒心跳、断开离线、安装ID/generation/sequence隔离；JSON只读配额取代订阅依赖，缓存过期不再冒充实时。真实后端尚未部署，APK不含API私有配置，卡片仍待接入。

本轮已通过面板登录只读获取版本线索和唯一节点资料，已在仓库外恢复原签名且证书匹配；不得要求用户重复提供已在当前私有会话保存的资料。私有备份不会进 Git，下次更换环境时再通过安全渠道恢复。

server/xui032/ 是针对 vaxilu/x-ui 0.3.2 精确上游提交的面板内扩展：原菜单、原cookie鉴权、设备页、App API、单客户端入站只读配额；已做本地验证，未部署。完整数据库/二进制备份尚未完成。环境指定TCP代理连接被拒绝，尚未进行SSH认证；恢复支持的TCP访问后，实查服务器版本/架构/路径、完整备份、匹配构建和可回滚部署，然后配置HTTPS和App固定API，双设备与手机实测。

不要将未部署模块、HTTP面板读取、本地测试或Robolectric绘图称为实机VPN联网、面板部署或最终验收。

用户最后要求整体UI从Expressive改回标准Material3：已使用Theme.Material3.DayNight、标准Toolbar/BottomNavigationView和常规卡片/按钮/字号，保留功能与动态配色。GitHub只读SSH工作流已推送，首次运行因缺Secrets停止；当前集成Secrets API返回403，需要仓库管理者配置HOST/PASSWORD后重跑，尚未通过Actions连接服务器。
