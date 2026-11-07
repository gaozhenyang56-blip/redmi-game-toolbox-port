# 轻连 Qinglian VPN

> **AI 开发说明：** 轻连客户端与面板扩展主要由 **OpenAI Codex（AI）** 根据维护者的需求开发与迭代。x-ui、V2Ray/V2Fly、Hysteria、Qt、GTK 等第三方项目保留其原作者与许可证，不属于本项目的 AI 原创代码。

Android、Ubuntu、Windows 三端客户端和统一轻连面板，GPL-3.0 开源，可部署在自己的服务器。客户端支持内置默认服务器，或导入其他**轻连面板服务器**的配置；节点仍由面板下发，不是通用第三方节点导入器。

- Android：Material 3、亮暗主题、可选应用分流、规则/全局、兼容/HY2、账号与访客、测速、界面更新。
- Ubuntu：完整 GTK GUI、简约布局、系统代理/TUN、ChatGPT 进程代理辅助。
- Windows：Windows 11 风格 Qt GUI、后台托盘、系统代理/TUN、安装版与免安装版、界面和程序更新。
- 面板：固定版本 x-ui 覆盖层，统一管理 VMess/VLESS/Trojan/Shadowsocks/HY2、账号、额度、在线设备、连接测试和服务器配置导出。

**[完整自托管、服务器切换及三端内置脚本文档](qinglian/selfhost/README.md)**

## 开始

部署自己的面板后，管理员导出 `qinglian-server.json`，用户在三端“关于 → 面板服务器”导入并重新打开软件即可。账号按服务器隔离，切换不迁移其他服务器的账号或统计。没有内置服务器的公开构建可先打开设置再导入。

```bash
# 生成三端共用的私有构建资产
python3 qinglian/scripts/embed_server.py --server /secure/my-server.json --output /secure/assets

# Android：JDK17 / Android SDK35 / Build Tools35.0.0
cd qinglian
python3 scripts/prepare_dependencies.py
# 将 /secure/assets/ 中的文件复制到 app/src/main/assets/ 后：
./gradlew assembleDebug testReleaseUnitTest lintRelease
```

Ubuntu 和 Windows 的构建命令见自托管文档。Windows 构建需 Python3.12、JDK17、PySide6 6.8.3、PyInstaller 6.11.1，以及 Inno Setup 6；Ubuntu 运行依赖 GTK3、Java17、Python GI/Cairo/Pillow 和 polkit。第三方组件由脚本按固定版本及 SHA-256 下载，许可证随包提供。

公开源码不包含可用服务器接入码、管理密码、节点凭据、原签名私钥或生产数据库。不要将管理员导出的 JSON 和构建资产提交 Git。原作者签名发行版与自己的签名发行版不能相互覆盖升级；Android 更新严格核对当前已安装应用签名，Windows 程序更新需用户确认。

GitHub Actions 会生成不预设可用服务器的 Android 开发 APK、Ubuntu DEB、Windows 安装包及免安装 ZIP，以及面板安装目录；从 Actions 对应成功构建下载。发布自己的正式 Android 版本请使用自己的签名配置。

## 数据与验证

账号连接会在明确告知、用户同意后由所选服务器永久记录代理连接域名和时间，不解密 HTTPS，也不记录完整 URL。访客连接不记录域名。自托管者需维护自己的账号、证书、备份和网络。三端的 TLS 和主机名校验始终开启。

服务端测试不代表某一运营商网络已验证，普通 CDN 不代理 HY2 UDP。TUN 仅接受面板同服务器的原始 IPv4 节点，并保留管理员授权、固定程序及清理边界。

## 源码和许可证

代码在 `qinglian/app`、`qinglian/ubuntu`、`qinglian/windows`、`qinglian/server/xui032`；部署与内置脚本在 `qinglian/selfhost`、`qinglian/scripts`。面板基于精确版本 x-ui；上游代码、终端组件、图标和原生核心分别遵守各自许可证，不将这些组件改称原创。

测试用 `tls-server-key.pem` 是公开 loopback 夹具的密钥，只用于测试，不能用于部署。生产证书与接入码在安装时重新生成。
