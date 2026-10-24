# 轻连手机远控 · 0.2 手机被控端

最新拓扑：**网页 / Ubuntu 客户端 → HTTPS 服务器中继 → 手机客户端 → Shizuku / ADB shell**。无需常开电脑，不需要把手机 ADB 端口开放到公网。

- 手机安装独立包 `com.gzy.qinglian.remote`，输入后台 HTTPS 地址与手机专用连接密钥，授予 Shizuku 或执行 App 内显示的 ADB 授权命令，再点“开始连接”。手机前台服务保持通知、支持手动停止，网络失败有界退避重连；密钥只保留在服务内存，服务被杀后需手动重新连接，不声称重启后免授权或永久在线。
- Shizuku 支持通过无线调试或 Root 启动；ADB 直接授权通过 `adb shell sh /sdcard/Android/data/com.gzy.qinglian.remote/files/start-adb.sh` 启动本包 shell 服务，授权后电脑可断开。直接授权跨 Android 版本兼容性仍需真机验收。
- 控制端每次新连接仍必须管理员令牌 + TOTP。手机连接密钥仅可访问 agent 通道，不能查看控制后台或绕过 TOTP。单设备中继，不是多手机管理平台。
- 后台点击“生成 / 更换 TOTP 密钥”：首次凭管理员令牌生成密钥及 otpauth URI；用验证器当前码确认后启用并进入会话。未确认不启用。已启用时，更换需旧动态码，确认新密钥后旧会话撤销。生成状态5分钟失效、确认最多5次，绑定数据仅服务端私有目录。管理员令牌不公开在后台页面或 Git 中。
- 控制命令限白名单，手机重复校验；30秒超时不自动重放；离线40秒清空状态。截图约1FPS、无声音、不绕过锁屏密码。

## Android 构建

独立 Gradle 工程 `android-agent/`，不改原轻连 App/签名。JDK17+、SDK35，使用仓库现有 Gradle8.9 wrapper：

```bash
# 在仓库根目录
bash qinglian/gradlew -p qinglian/remote-control/android-agent assembleDebug lintDebug
```

输出为测试签名的 `android-agent/app/build/outputs/apk/debug/app-debug.apk`，不是原轻连正式签名或发布渠道。依赖官方 Shizuku API/provider 13.1.5。

## 服务器运行与证书

服务器不需要 ADB，只需要 Python3：

```bash
# 私有环境：设置独立 QINGLIAN_REMOTE_TOKEN、QINGLIAN_AGENT_TOKEN（均至少32位且不同）
# 允许不预置 QINGLIAN_TOTP_SECRET，首次从后台绑定
python3 server.py --relay --host 127.0.0.1 --port 8765
```

`qinglian-remote-control.yml` 复用现有 SSH Secrets 和固定主机指纹，部署独立 `qinglian-remote.service`，端口18443、私有配置 `/etc/qinglian-remote`、绑定状态 `/var/lib/qinglian-remote`。版本化目录及原子 current 链接便于回滚；不重启现有服务或改防火墙。当前使用独立自签 CA/IP证书，外网严格证书检查使用随交付提供的 CA，不能关闭验证。浏览器需先信任该证书；手机在 App 内导入该 CA。Ubuntu 系统信任可通过 `sudo cp server-ca.crt /usr/local/share/ca-certificates/qinglian-remote.crt && sudo update-ca-certificates` 安装后重开客户端；不能对未知证书任意点信任。

初始化令牌和手机密钥由部署脚本随机生成，仅保存在服务器 root 私有配置。Actions 只输出以本次交付公钥加密的信封，私钥不进入 Git/Actions，不在公开日志输出密钥。不要删除已经部署服务使用的私有配置；服务代码回滚不等于重置验证器。

Ubuntu 客户端启动：`python3 ubuntu_client.py --url https://服务器:18443/`。支持脚本安装桌面菜单（默认 localhost，部署后可自行调整 Exec 的 --url 参数）。

下文保留 0.1 的可选外接 ADB 主机模式说明，**不再是本次手机被控端的默认方案**。

---

# 0.1 外接 ADB 主机模式（可选）

独立于现有 VPN / x-ui 的远控工程。Ubuntu GTK 客户端和网页共用同一个 ADB 后端，每次连接必须提供访问令牌 + TOTP 动态码。不会修改原 Android App、节点、账号、流量配额或发布签名。

## 当前功能与边界

- 指定唯一设备的 USB / 已配对无线 ADB；状态每 3 秒检测，离线清除旧状态。无线重连每 30 秒一次，USB 重新接入由 ADB 自动识别，不自动开启公网 ADB。
- 亮屏、息屏、唤醒并解除无密码锁屏；返回/主页/任务、音量、点击/拖动/长按、英文文本输入。
- PNG 截图预览，完成一帧后等待 1 秒；这是低帧率首版，不是 scrcpy 级视频。不支持音频、文件管理、中文直接注入、PIN/密码/图案绕过。
- 读取 dumpsys 的屏幕电源状态，区分亮屏/息屏/Doze/未知；锁屏状态不能识别时显示未知。黑色画面不等于息屏。息屏时能否截图和输入取决于 ROM；当前没有 scrcpy 的“物理屏幕关闭但继续投屏”能力。
- TOTP：RFC6238 / SHA1 / 6 位 / 30 秒，允许前后一个时间步；每个时间步仅可使用一次，使用记录保存在本机私有文件。连续失败 5 次后等待 60 秒（全局限速）；会话最长 12 小时，关闭页面尽力撤销，服务重启全部会话失效。每个新页面/客户端窗口都重新验证，令牌及会话不写入浏览器存储。
- Ubuntu 原生窗口使用 GTK3 + WebKit2 临时上下文，不保存 cookie、令牌或历史会话。远端只能 HTTPS，本机 SSH 隧道允许 HTTP；保留 TLS 校验。

## 拓扑

推荐手机通过 USB 连接常开 Ubuntu 小主机。控制电脑可与 ADB 主机相同，也可以在外网。

```text
手机 ← USB ADB → 常开主机 server.py（127.0.0.1:8765）
                         ↓ SSH 反向隧道
             现有轻连服务器（127.0.0.1:18765）
                         ↑ SSH 本地隧道
Ubuntu 客户端 / 浏览器（127.0.0.1:8765）
```

云服务器不能凭空访问手机的 USB 或局域网无线 ADB。没有常开主机时，需要另做 Android 常驻代理及设备配对方案，本版不具备该能力。

## 本机启动

Ubuntu 24.04：

```bash
sudo apt update
sudo apt install adb python3 python3-gi gir1.2-gtk-3.0 gir1.2-webkit2-4.1 openssh-client
cd qinglian/remote-control
adb devices -l
```

手机开启 USB 调试并手动接受本机 RSA 授权。把选定的序列号写入配置；不要同时随机选择多部手机。无线调试需先按手机界面用 `adb pair 地址:配对端口` 配对，再 `adb connect 地址:调试端口`，两种端口通常不同，网络变化或重启后可能改变。

生成两个独立随机值，输出只保存在你自己的终端/私有配置，禁止提交 Git：

```bash
python3 -c 'import secrets; print(secrets.token_urlsafe(32))'
python3 -c 'import base64,secrets; print(base64.b32encode(secrets.token_bytes(20)).decode())'
mkdir -p ~/.config
install -m 600 /dev/null ~/.config/qinglian-remote.env
```

使用编辑器写入 `~/.config/qinglian-remote.env`：

```ini
QINGLIAN_REMOTE_TOKEN=第一个随机值
QINGLIAN_TOTP_SECRET=第二个Base32随机值
QINGLIAN_ADB_SERIAL=adb显示的设备序列号
# 无线才设置，并与 SERIAL 完全一致：
# QINGLIAN_ADB_CONNECT=192.168.1.20:37123
```

将第二个密钥手动导入可信验证器（SHA1、6 位、30 秒），保存恢复副本；不要导入网页或第三方在线二维码服务。主机和验证器启用时间同步。同一个码不能在两个窗口重复使用，需等下个码。遗失验证器时，在本机私有配置更换密钥并停止服务，删除 `~/.local/state/qinglian-remote/totp-step` 后重启，原会话全部失效。

```bash
set -a
. "$HOME/.config/qinglian-remote.env"
set +a
python3 server.py
```

浏览器打开 `http://127.0.0.1:8765/`，或另一个终端运行：

```bash
python3 ubuntu_client.py
# 安装应用菜单入口：
sh install-ubuntu.sh
```

客户端只是界面，使用前先启动 ADB 后端/隧道。默认仅监听本机。若经网页公网访问，应在 HTTPS 反向代理后使用，转发 Authorization，不缓存 API；不要直接暴露 HTTP、ADB 5037/5555 或现有轻连只读令牌。远控使用独立令牌与 TOTP。

## 复用现有服务器 SSH

现有连接来源：`../server/github/ssh_common.py` 和 `../server/github/README.md`，环境变量为 `QINGLIAN_SSH_HOST`、`QINGLIAN_SSH_USER`、`QINGLIAN_SSH_PORT`；服务器公钥指纹来自已提交的 `../server/github/server-host-key.sha256`。

`ssh_tunnel.py` 先扫描公钥并与固定指纹逐字核对，再启用 StrictHostKeyChecking，绝不自动信任新主机。它使用 OpenSSH 已配置密钥或交互密码，不读取/打印 Actions Secrets、不把 SSH 密码放入命令参数。当前开发环境没有这些私有凭据，因此未连接或部署真实服务器。

在两个主机的私有终端配置上述 SSH 变量后：

```bash
# 常开 ADB 主机：
python3 ssh_tunnel.py agent
# 外网 Ubuntu 控制电脑：
python3 ssh_tunnel.py client
# 再打开控制电脑的客户端，或浏览器访问 localhost:8765
python3 ubuntu_client.py
```

两端 SSH 身份均需要服务器允许转发。远端端口固定仅 loopback，不需要改 x-ui 或开放公网端口。控制电脑若本机已有 8765 服务，需要先停止冲突服务。只信任具有该服务器 SSH 权限的管理员；即便能访问转发端口，仍需独立令牌与 TOTP。生产可由管理员配置仅转发的专用 SSH 身份，不能自行更换现有服务器主机密钥。

## 全天候运行

常开主机安装用户服务（固定路径便于审查）：

```bash
mkdir -p "$HOME/qinglian-remote/static" "$HOME/.config/systemd/user"
cp server.py "$HOME/qinglian-remote/"
cp static/* "$HOME/qinglian-remote/static/"
cp remote-control.service "$HOME/.config/systemd/user/"
systemctl --user daemon-reload
systemctl --user enable --now remote-control.service
# 需要注销后继续运行时：
sudo loginctl enable-linger "$USER"
```

USB 权限需由当前用户正常获得，不以 root 运行 ADB。手机持续供电、主机禁用自动休眠。可在 `systemctl --user status remote-control` 查看进程状态，接口不记录敏感请求。SSH 隧道退出后也需要服务管理器重启；无人值守转发需提前配置 SSH 密钥，不能依赖交互密码。将同一 `ssh_tunnel.py agent` 命令纳入用户 systemd 服务，设置 `Restart=always` / `RestartSec=5`，并私有配置 SSH 变量及 pin-file 绝对路径。

“24 小时”是持续可恢复运行目标，不是可用性保证：关机、拔线、授权失效、无线端口变化或系统禁止 ADB 都会使设备离线。锁屏密码与重启后首次解锁不会被绕过。

## 验证

```bash
python3 -m unittest discover -s tests -v
python3 -m py_compile server.py ubuntu_client.py ssh_tunnel.py
node --check static/app.js
```

自动测试覆盖状态解析/离线清理、幂等亮息屏、输入注入拒绝、RFC TOTP、跨重启重放、限速/过期及真实 HTTP 登录与权限。使用模拟 ADB，不代表真机通过。

交付前仍需在 Ubuntu 24.04 上验收 GTK/WebKit 显示、USB 与无线真机、横竖屏点击、密码锁屏返回、息屏截图、断线重连和 24 小时持续运行；当前环境没有实机、显示服务器或服务器凭据，不宣称这些已通过。
