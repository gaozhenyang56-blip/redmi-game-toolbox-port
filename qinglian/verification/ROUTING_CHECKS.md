# 2026-10-17 本轮验证

- 版本1.0.2-preview / versionCode3，ARM64，minSdk26 / targetSdk35。
- JDK17、SDK35、Build Tools35.0.0、Gradle8.9；上游依赖固定SHA256校验通过。
- assembleDebug 首轮成功；最终 assembleRelease testReleaseUnitTest lintRelease 成功。
- Android32项测试，0失败/错误；lint0错误、12警告。
- 服务端参考10项本地测试通过；覆盖双设备ID/TTL/重排/旧会话/鉴权，不代表真实双手机在线验证。
- x-ui覆盖层：go test -race ./web/controller ./web 通过（控制器4项、嵌入模板1项），go build -trimpath 成功。
- 全新上游worktree应用覆盖层，与已测试源码一致。构建出的Linux AMD64二进制仅作本地检查，未核对服务器架构/libc，不直接部署。
- 原私钥由对话附件恢复到仓库外，最终APK原证书匹配：2e90d97183fbe26c05a8bd67454b0a5d0f5c01633609a335fdff693a4774a870。
- APK ZIP完整，含真实固定节点，未放入公开Git；SHA256：43b4324c5de1b786592a4e059aaa0f0d0e13dd59b4b431a5c9b32f8c9e208d13。
- APK没有online.json/quota.json/telemetry.json，未伪造尚未部署的API；卡片待接入、心跳不发送。
- 改动源码未检出真实IP、面板用户名/密码、SSH密码或节点UUID，签名和私有资产保持忽略。
- 已登录真实HTTP面板只读检查：静态资源0.3.2、vaxilu/x-ui、Xray1.4.2、唯一VMess入站一个客户端。入站HTTP导出不是完整数据库备份。
- 当前容器TCP代理连接被拒绝，未SSH认证、未修改面板、未部署。用户要求GitHub连接后新增只读Actions检查；Secrets API返回403，不能声称Secrets已配置或Actions已SSH成功。
- 没有手机覆盖安装、真实节点联网、黑白名单实际出网或两设备在线验收；Robolectric绘图和本地fixture不能代替实机验证。
