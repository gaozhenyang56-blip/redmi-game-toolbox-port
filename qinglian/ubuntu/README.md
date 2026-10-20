# 轻连 Ubuntu 版

针对 `wayne-hyperos4:ubuntu-to-go` 的 Ubuntu 24.04 amd64 GNOME 和 `.deb` ChatGPT（`chatgpt` 命令）。GTK 3 原生桌面，不需要浏览器。桌面版本独立于 Android 的 versionCode。

## 安装和使用

```sh
sudo apt install ./Qinglian-1.0.0-preview2-amd64.deb
qinglian
```

也可在应用列表点击“轻连”。安装时通过 Ubuntu 包管理器安装 Python/GTK、Java 运行时和 polkit 等依赖；GUI 无需 root。首次连接可以不登录，明确告知后创建单次 64 GiB 访客会话。账号登录/注册前必须明确同意服务器永久保存域名和时间的告知。

## 界面与简约模式

完整界面采用类似 FlClash 的桌面侧栏和双栏卡片，配色、圆角和滑块延续手机版 Material 3。宽窗口显示左侧导航，窄窗口自动使用底部导航和单栏内容；账号和 ChatGPT 为独立页面。顶部“简约”切换第一版的传统桌面标签页、下拉选择和表单，保留全部功能，选择会持续保存。切换界面不重建连接、不改变通道、TUN 或账号输入。preview1 的协议、模式和主题设置继续保留。

顶部与导航玻璃实时取样本应用内容并做高斯模糊，不读取其他窗口或桌面；最多约每秒12次、缩小取样、像素未变时复用，隐藏/最小化时停止计算。亮色、暗色、跟随系统均可选。需要发行版的 python3-gi-cairo、python3-cairo 和 python3-pil，安装 deb 时自动安装。

快捷键：Ctrl+1..4 切换连接/测速/分流/关于，Ctrl+Shift+M 切换简约，Esc 返回，Ctrl+Q 断开退出。并排滑块可点按、横拖松手提交，也保留原生单选按钮的键盘操作和辅助功能语义。

连接页选择兼容或 HY2、高性能或保守、规则或全局。系统代理仅影响支持 GNOME / HTTP / SOCKS 代理的软件。更换配置需断开后重新连接；续租沿用启动参数。HY2 高性能使用现有服务端按设备隔离的 aggressive-v1，而非全局调优服务器。

**ChatGPT**：先连接，再完全退出原 ChatGPT（含后台），在“ChatGPT 优化”页点击“使用代理启动 ChatGPT”。它附加 `--proxy-server=http://127.0.0.1:10809`、`--disable-quic` 和大小写代理环境变量，不关闭沙箱/TLS，不强制结束进程。Electron 已运行实例可能忽略新参数，因此检查仍在运行的实例并提示先退出。此入口保留用户原资料目录。

如果 ChatGPT 子进程、登录组件仍忽略代理，断开后启用 **TUN 全局接管**；在系统窗口授权后接管 IPv4、IPv6、DNS，兼容通道可用于定位 HY2 问题。请先关闭 Clash Verge 等其他 TUN / VPN。TUN 只支持 API 同服务器地址的面板节点；仅用于全局模式，不声称支持 TUN 下大陆直连或 Linux 按应用分流。系统代理模式支持原 V2Ray 中国/私网绕过规则。

TUN 固定使用 `qltun0`、路由表 22042、策略优先级 11090/11091，拒绝占用与其他 TUN；不覆盖现有默认路由，不写 `/etc/resolv.conf`，需要 Ubuntu 原生 systemd-resolved stub。仅该 TUN 链路的 DNS 使用 1.1.1.1/8.8.8.8，经当前代理。断开/退出/GUI 崩溃后助手清理自建接口/规则，系统代理守护恢复旧值；其他程序后改的代理值不强行覆盖。不是断网保护开关：断开后恢复原直连网络。助手被 SIGKILL/系统异常时未保证清理；重启可清除临时规则，或管理员确认后删除 `qltun0` 与两条自建策略。

测速可自定义 1..2048 MiB，单路分段服务器源，显示 Mbps（8 Mbps≈1 MB/s），计入实际代理流量。它测本机至服务器链路，不能等同服务器至 GitHub 的速度。停止最长等待当前读超时约 10 秒；失败不代表 VPN 失效。

账号页支持登录注册、累计流量、每周 256 GiB 导出预留、五协议和备注、7 天有效节点 ZIP、本人域名观察记录。导出重试沿用请求 ID，不重复扣额度；创建成功但写盘失败时保留待处理请求。同设备注册绑定使用 `/etc/machine-id` 与当前系统用户 UID 的应用范围 SHA256，只上传摘要，不上传原值；正常删除 App 配置/重装仍保持绑定。缺少有效系统 ID 时才将随机 256 位标识保存在 `~/.config/qinglian/device.json`（该回退模式删除配置会改变身份）。不读取 IMEI/硬盘序列号，不声称能抵抗系统重装或主动伪造。token 和运行节点在本用户 0700 目录/0600 文件；ZIP 含节点密码，请自行保护。

安装不会改已有 ChatGPT、Clash、V2Ray 守护脚本。关闭轻连窗口会断开；退出账号前先断开。卸载前先退出轻连：`sudo apt remove qinglian`；卸载不自动删除个人配置。登录浏览器/应用风控、地区限制和账号状态不由代理可达性测试保证。

## 开发 / 构建

```sh
python3 ubuntu/build.py --assets /private/api-assets --output /tmp/Qinglian-1.0.0-preview2-amd64.deb
```

JDK 17+、Python 3、dpkg-deb。私有资产目录只需 `profile.json` 与其 `caAsset` 证书；不得提交 token 或节点凭据。固定公开下载经 SHA256 校验。复用同一 `NodeConfig.java`，随包编译成 Java 17 字节码，避免另写一套协议转换。

仅保留 API bootstrap 只读 token 在包内，和 Android 相同：它不是管理员凭据，也不是账号会话；安装包使用者可提取，不能当成设备认证或反滥用机制。服务端配额和权限仍为边界。

测试：`python3 -m unittest discover -s ubuntu -p 'test_*.py'`。`test_gui.py` 需要 GTK、显示服务器及 `QINGLIAN_TEST_LIB` 指向解包后的 `/usr/lib/qinglian`，可在 Xvfb 下执行。实际 TUN 授权和 Ubuntu 用户机安装验收须单独记录，不把 mock 当实测。

源码和第三方许可随包置于 `/usr/lib/qinglian/source`、`licenses`。原生核心使用固定官方发行版；不是承诺服务器物理带宽或跨境网络稳定性。

ChatGPT 的本机 OAuth 回调（localhost/127.0.0.1/::1）保留直连。TUN 模式也会临时应用轻连的 GNOME 代理，避免系统还指向已退出的 Clash；断开后恢复。连接成功前以当前节点请求服务器 1 字节测速响应验证，保留专用 CA、主机名、响应标记和长度校验，不将本地端口启动冒充远端已连。
