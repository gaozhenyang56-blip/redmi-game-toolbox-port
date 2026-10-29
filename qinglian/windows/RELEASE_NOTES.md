轻连 Windows 1.0.0-preview2，Windows10 1809+/11 x64。

- Windows 11 Fluent 风格：Segoe UI Variable、图标侧栏与选中条、标准控件和设置卡片、蓝色强调、浅色/深色/跟随Windows，保留原生标题栏和Snap。支持时请求原生Mica，可关闭材质；Windows10使用纯色。保留简约模式、账号输入和运行连接。
- 安装版及免安装ZIP均内置运行环境，更新前退出旧版，账号和设置保留。
- 新增可选TUN全局接管：需要管理员授权，官方Wintun/tun2socks，IPv4/IPv6路由、固定服务器直达豁免；断开或父进程退出清理自建路由/适配器。系统代理仍免管理员。无按应用黑白名单或断网保护。
- 兼容默认、CDN控制入口、专用CA、HY2及同一会话回退策略保持。SSH终端加入网页面板，SSH密码只用于本次WSS会话，不进入客户端。

下载后核对SHA256SUMS，安装版运行setup.exe，免安装版解压完整ZIP运行Qinglian.exe。没有Authenticode签名。Windows11材质、全局TUN/UAC及中国移动现场仍需实机验收；独立公网/隔离前缀测试不等同于这些验收。完整说明和GPL源码随包提供。
