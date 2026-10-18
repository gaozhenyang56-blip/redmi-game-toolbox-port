# 轻连 — Android 单节点 VPN，Codex 交接工程

**先读 [HANDOFF.md](HANDOFF.md)。** 本目录独立于仓库原 Redmi 游戏工具箱项目。版本 `1.0.5-preview`，versionCode `6`，包名 `com.gzy.qinglian`，Android 8.0+ / ARM64。

已完成标准 Material 3、默认亮色和亮色自适应图标；支持浅色/深色/跟随系统切换。包含延迟/下载测速、每秒通知栏速度与本次用量、Surfboard风格黑白名单及规则/全局模式。

真实服务器已通过GitHub SSH完成加密一致性备份，并部署原x-ui内的“轻连 App”页面，沿用原面板登录。管理员从现有兼容入站选择App节点；App自动获取，重连生效，不提供节点/API编辑入口。在线数量、真实配额和设备心跳通过专用HTTPS API接入。

最终私有APK使用原发布签名，包含构建固定的API资产和API专用CA；私有资产与APK不上传公开Git。手机安装和实际应用分流尚无实机验证，详见验证记录。

本轮性能更新：最佳底层网络跟踪、经VMess的TCP DNS与核心缓存、通道异常有限自动恢复、官方核心延迟测试，以及底部重复系统栏间距修复。真实节点与DNS路径已通过运行器检查，实际手机提升仍需同节点同网络复测。

## 快速验证

JDK17，SDK Platform35 / Build Tools35.0.0，网络可下载 Gradle/Maven/GitHub 依赖。

```bash
cd qinglian
python3 scripts/prepare_dependencies.py
./gradlew assembleDebug testReleaseUnitTest lintRelease
```

真实节点资产已从 Git 中移除；UI/测试可以不含凭据构建，交付前必须安全恢复 `app/src/main/assets/` 的 `node.json`、`profile.json`、`online.json`、`quota.json`、`telemetry.json` 和 `api-ca.pem`。`node.example.json` 只是保留地址段示例，不能用于联网。

大体积上游 AAR 和隧道库由准备脚本按固定版本下载并校验哈希，不重复提交二进制。脚本只保留 ARM64，移除未使用 Geo 数据库；上游链接与许可证见 `third_party/`。

## 保留原签名发布

原私钥与密码由用户私有保存，未放入此公开仓库。恢复原 `signing/release.jks` 和 `signing/release.properties`，或使用外部签名属性文件：

```bash
./gradlew -PqinglianSigningProperties=/secure/qinglian/release.properties assembleRelease
python3 scripts/verify_release_signature.py app/build/outputs/apk/release/app-release.apk --apksigner /path/to/apksigner
```

外部属性包含 `storeFile`（推荐绝对路径）、`storePassword`、`keyAlias`、`keyPassword`。也可通过 `QINGLIAN_STORE_PASSWORD` / `QINGLIAN_KEY_PASSWORD` 提供密码。没有原私钥时 release 构建为未签名，**不得生成新发布私钥冒充同签名更新**。`assembleDebug` 仅供开发，不能覆盖原发布版。本轮 versionCode 为6，下一次更新继续递增。

原证书 SHA-256：`2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`。公开证书在 `verification/release-certificate.der`，不含私钥。

## 交接材料

- [HANDOFF.md](HANDOFF.md)：最新交付状态、需求与历史交接。
- [CODEX_START.md](CODEX_START.md)：可直接用于下一次 Codex 任务。
- `verification/ROUTING_CHECKS.md`：本轮验证；目录内原16项结果及旧预览保留作历史。
- `server/xui032/`：已部署的对应版本原面板内扩展；`server.py` 和独立仪表盘仅作旧参考。

源码 GPL-3.0；第三方许可证见 LICENSE 与 third_party/。

顶部与悬浮胶囊底部导航加入苹果风格毛玻璃，保留M3配色：API31+GPU模糊，低版本半透明；仅页面变化/滚动时更新，后台停止。最新记录见HANDOFF首节。

规则/全局、黑白名单与底部四导航已统一为苹果玻璃分段滑块，支持点击和拖动，保留原生选中语义。
