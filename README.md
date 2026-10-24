# 魔搭登录助手（ModelScope Session）

独立、非官方的 Android APP 源码。适用于本人账号：在应用内正常打开魔搭社区官网并登录，应用自动保留 **自己 WebView 内** 的站点 Cookie，下次进入自动复用登录状态（具体是否需要重新登录以官网为准）。

**安全边界**：不读取 Chrome、其他 APP 或他人的 Cookie；不尝试绕过验证码、短信验证或账号安全检查；不会上传 Cookie、密码或令牌，也不会在日志中打印。所有网页只允许 HTTPS，SSL 证书无效时拒绝连接；默认禁用第三方 Cookie。程序不含自己的后端。

## 功能

- 官方网页登录、Cookie 自动检测与持久化（Android CookieManager）
- 轮询检测本站 Cookie 变化，存入本机 WebView 会话存储（在前台每 2.5 秒检查一次，后台停止）
- 检查 Cookie 状态；显示数量但不会显示密文
- **用户手动点击并二次确认**后才可复制自己的 Cookie 到剪贴板
- 清除本应用 WebView 内的全部 Cookie、网站存储数据并退出会话
- 支持网页新窗口弹出，尽可能兼容站点登录流程

> 注意：**Cookie 存在不等于登录有效**。如果官网提示未登录、会话失效、被风控等，需要重新登录。部分第三方登录平台（例如 Google）禁止在 WebView 内登录，这种情况请使用官网支持的其他登录方式或采用官方 OAuth 2.0 授权流程。

## 生成 APK：方法 1（Android Studio）

1. 安装最新 Android Studio；打开本项目目录（含 `settings.gradle`）。
2. 安装 Android SDK Platform 35；使用 Gradle 8.9 与 JDK 17（Android Studio 可配置）。
3. Gradle 同步后选择 **Build > Build Bundle(s) / APK(s) > Build APK(s)**。
4. 调试包通常位于 `app/build/outputs/apk/debug/app-debug.apk`。

本项目故意没有附带未知来源的二进制 Gradle Wrapper JAR；请使用 Android Studio 的 Gradle 配置或安装官方 Gradle 8.9。

## 生成 APK：方法 2（GitHub Actions）

1. 把整个项目推到自己 GitHub 仓库（确保 `.github/workflows/build-apk.yml` 在仓库中）。
2. 打开 GitHub 仓库 **Actions > Build Android APK > Run workflow**（或推送到 main/master 触发）。
3. 构建成功后打开工作流运行记录，下载 `ModelScopeSession-debug-apk` 附件并解压，得到 APK。

使用 GitHub Actions 构建本地调试 APK；不需要登录魔搭或填写账户密码。

## 兼容性

- Android 7.0+（最低 API 24）；Java 17 构建、target API 34。
- 需安装可用的 Android System WebView，并保持更新。
- 仅适合需要在此 APP 内保持**魔搭网站网页会话**的场景。如果目的是让你自己的其他应用使用魔搭账号登录，建议通过魔搭官方 **OAuth 2.0/OIDC**，不要将浏览器 Cookie 视作长期 API Token。

官方 OAuth 说明：https://www.modelscope.cn/skills/%40ModelScope/modelscope-oauth-skill/summary
