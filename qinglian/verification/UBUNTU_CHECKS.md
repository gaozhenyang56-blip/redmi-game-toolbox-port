# Ubuntu 1.0.0-preview1 验证（2026-10-19）

目标：用户仓库 `gaozhenyang56-blip/wayne-hyperos4` 的 `ubuntu-to-go` 分支，Noble Ubuntu24.04 amd64 GNOME，.deb ChatGPT 的 `chatgpt` 命令。仅参考，没有修改该分支、磁盘镜像、守护脚本或原 Redmi 工程。

## 自动和原生验证

- 23项运行逻辑测试：系统用户范围设备摘要重装稳定性/随机回退、私有文件权限、重定向拒绝、HY2双重确认/原窗口/保守、通道冻结、访客会话/配额、周导出额度不误停主连接、ChatGPT启动参数/本机OAuth绕过/旧实例拒绝/不关沙箱、精确代理验证、测速总量/不回退直连、过期账号本机退出、代理恢复/其他客户端替换代理/桌面总线故障保留快照、TUN部分失败回滚/拒绝占用。
- 实际GTK五个页面、亮/暗/系统模式、账号告知门槛和截图，正式安装入口 `qinglian`；无浏览器壳或假VPN状态。
- 实际包内V2Ray/Hysteria：VMess、VLESS、Trojan、Shadowsocks、HY2保守、HY2 aggressive 六种配置真实loopback传输、TLS/原专用fixtureCA（SS为AEAD）、兼容域名chatgpt.com路由及连接/清理；复用原NodeConfig.java而非另一套配置转换。测试不改主机代理。
- Ubuntu24.04实际apt安装依赖与deb、菜单/启动脚本、卸载；包内root:root所有权与权限/私有资产允许清单检查。首次发现builder的umask077使安装目录不可读，已显式固定目录0755/数据0644/程序0755；运行私有数据仍0600/0700。
- 隔离root网络命名空间的**真实**TUN、策略路由、tun2socks、VMess核心、IPv4和IPv6直连请求转发；GUI stdin EOF模拟退出、DNS配置中途失败均清理真实IP规则/接口。resolved调用由记录shim替代（命名空间不能使用宿主系统总线），确认dns/~./revert参数；不是活跃GNOME/systemd-resolved的DNS实测，也未实际点击polkit授权。
- 工作流39330914391成功：同一Ubuntu runtime连接现有服务器原HTTPS API，兼容、HY2保守、高性能三个通道各1MiB服务器测速，私有CA/主机名/响应标记/长度、真实访客64GiB计量及停止均成功。只创建随机设备访客，结束按随机设备精确清理；未改原节点/服务器参数、未重启服务。原生计数异步采样，验证等待追上，不要求最后一个包完成同一瞬间API就有累计值。
- 发现并修复：干净断开后的TIME_WAIT不能当成本地核心还在监听；GTK多线程不能使用带import的preexec_fn；核心改为独立Python wrapper设置Linux parent-death signal再exec。ChatGPT localhost OAuth回调必须直连；TUN也临时接管GNOME代理，避免遗留Clash本机端口。断开时如别的客户端改了代理端口，即使mode仍manual也保留新配置，不把它恢复成none。

工作流：`.github/workflows/qinglian-ubuntu.yml`。普通push只用公开fixture；`workflow_dispatch live=true`才启用现有GitHubSSH Secrets的小流量公网验证，无部署。不把fixture包作为正式下载交付；正式包在本环境使用既有私有API资产构建。

## 边界

尚未在用户原VHD/实体电脑安装、登录其ChatGPT账号、观察长时间网络切换/认证回调。GUI/本地HTTPS探测不能代替真实应用登录；HTTP403仅说明服务拒绝访问，不是账号成功。TUN仅全局，系统代理规则可绕大陆；不承诺任意Linux按应用分流、每种第三方ChatGPT安装方式或1Gbps吞吐。

TUN助手被SIGKILL/系统异常不保证自动恢复，需重启或管理员确认后移除自建规则；没有后台强制断网开关。Ubuntu系统用户范围设备应用摘要不是不可伪造设备证明；无系统ID的随机回退删除配置后可改变身份。API bootstrap令牌和Android相同可从安装包提取，不是管理员凭据/反滥用边界；账号token/管理员/SSH/签名材料不进入Git或包。

本次Android版本/签名、x-ui revision24和服务端原参数均未修改。

## 最终交付

- 最新代码0996a1fa的Ubuntu24.04工作流39331825014成功：23项逻辑检查、包内原生六配置传输、实际GTK/安装入口、隔离TUN/清理、卸载。此前39331400872代理外部切换恢复回归成功；39330914391包含公网三通道3MiB和真实配额计量成功。最后的设备摘要改为machine-id+UID应用范围，不改变既有协议或服务端；普通App重装保留标识，无有效ID才回退随机。
- 正式私有API资产构建的deb：20,844,228字节，SHA256 `3f8f0b97e80c3413b125eeadf09fc429b9305fb725886078bc6c0b07e8706d11`。包内root所有权、允许的私有资产、固定依赖校验通过；原APK/签名未打入deb。
- 发布标签 `qinglian-ubuntu-v1.0.0-preview1`，GitHub Release独立交付，不写Android APK更新接口。
