# 轻连 — Android 单节点 VPN，Codex 交接工程

**先读 [HANDOFF.md](HANDOFF.md)。** 本目录独立于仓库原 Redmi 游戏工具箱项目。版本 `1.0.2-preview`，versionCode `3`，包名 `com.gzy.qinglian`，Android 8.0+ / ARM64。

已实现唯一内置 VMess TCP/HTTP 节点连接、延迟/下载测速、通知栏每秒上下行速度与本次用量、Material 3 Expressive、动态配色、深浅色与原生自适应图标。连接页已显示在线数量与剩余流量卡片。

新增 Surfboard 风格黑白名单，连接页切换规则/全局，名单独立保存，修改后重连生效。已加入绑定服务的10秒设备心跳和带鉴权的JSON配额读取。

**尚未完成服务器部署接入**：当前APK未配置API资产，卡片仍显示“待接入”；本轮已登录用户面板做只读检查，面板内扩展源码在 `server/xui032/`，未部署。用户明确要求直接扩展现有 x-ui，不要独立管理后台，也不要 App 接口配置入口。用户没有订阅链接。

## 快速验证

JDK17，SDK Platform35 / Build Tools35.0.0，网络可下载 Gradle/Maven/GitHub 依赖。

```bash
cd qinglian
python3 scripts/prepare_dependencies.py
./gradlew assembleDebug testReleaseUnitTest lintRelease
```

真实节点资产已从 Git 中移除；UI/测试可以不含凭据构建，连接前必须安全恢复 `app/src/main/assets/node.json`。`node.example.json` 只是保留地址段示例，不能用于联网。

大体积上游 AAR 和隧道库由准备脚本按固定版本下载并校验哈希，不重复提交二进制。脚本只保留 ARM64，移除未使用 Geo 数据库；上游链接与许可证见 `third_party/`。

## 保留原签名发布

原私钥与密码由用户私有保存，未放入此公开仓库。恢复原 `signing/release.jks` 和 `signing/release.properties`，或使用外部签名属性文件：

```bash
./gradlew -PqinglianSigningProperties=/secure/qinglian/release.properties assembleRelease
python3 scripts/verify_release_signature.py app/build/outputs/apk/release/app-release.apk --apksigner /path/to/apksigner
```

外部属性包含 `storeFile`（推荐绝对路径）、`storePassword`、`keyAlias`、`keyPassword`。也可通过 `QINGLIAN_STORE_PASSWORD` / `QINGLIAN_KEY_PASSWORD` 提供密码。没有原私钥时 release 构建为未签名，**不得生成新发布私钥冒充同签名更新**。`assembleDebug` 仅供开发，不能覆盖原发布版。本轮 versionCode 为3，下一次更新继续递增。

原证书 SHA-256：`2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870`。公开证书在 `verification/release-certificate.der`，不含私钥。

## 交接材料

- [HANDOFF.md](HANDOFF.md)：完整需求、当前边界、关键文件、部署待办及验收。
- [CODEX_START.md](CODEX_START.md)：可直接用于下一次 Codex 任务。
- `verification/ROUTING_CHECKS.md`：本轮验证；目录内原16项结果及旧预览保留作历史。
- `server/xui032/`：按对应版本准备的原面板内扩展，尚未部署；`server.py` 和独立仪表盘仅作旧参考。

源码 GPL-3.0；第三方许可证见 LICENSE 与 third_party/。
