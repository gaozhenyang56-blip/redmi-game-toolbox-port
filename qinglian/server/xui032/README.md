# 现有 x-ui 0.3.2 内集成（待部署）

当前面板经已登录的 HTTP 只读检查：静态资源版本为 0.3.2，上游链接是 vaxilu/x-ui，Xray 为 1.4.2；唯一 VMess 入站仅有一个客户端。尚未通过 SSH 检查二进制、系统或数据库，也未修改/重启真实面板。HTTP 读出的入站导出不是完整服务器备份。

本目录包含针对上游 tag `0.3.2` / commit `f335c8d39a7191883b88aac56fbaf2a6f02656be` 的小型源码覆盖层。不是独立后台；在线设备菜单和页面嵌入原 Go 二进制，沿用原面板 cookie 登录。App 的 Bearer 令牌不能访问设备详情，详情还限定为目标入站所属面板用户。

## 本地准备与验证

```sh
git clone --branch 0.3.2 --depth 1 https://github.com/vaxilu/x-ui.git /tmp/x-ui-qinglian
python3 apply.py /tmp/x-ui-qinglian
cd /tmp/x-ui-qinglian
go test -race ./web/controller ./web
go build -trimpath -o /private/output/x-ui-qinglian .
```

apply.py 要求精确提交、干净工作树，拒绝把补丁直接套到未知版本。Go 的 sqlite3 绑定需要 C 编译器；构建架构和 libc 必须与服务器匹配。不要把本机动态链接二进制直接假定为远端通用版本。

模块新增 `/api/v1/online`、`/api/v1/quota`、`/api/v1/heartbeat`（相对于现有 base path），菜单为 `xui/qinglian`，管理员数据为 `xui/qinglian/devices`。完整 App 合同见 [../API.md](../API.md)。

配额从原 Gorm 数据库只读查询，匹配私有配置内的 UUID；仅接受唯一的单客户端入站，不把多客户端的整个入站流量当作本人配额。原字段 up/down/total 是字节，expiryTime 是 Unix 毫秒，接口转换为 Unix 秒。缺失、重复、禁用而非配额耗尽或到期、计数非法均返回 503。不改变 VMess、计数、入站启用状态或原面板表结构。

设备使用独立 SQLite 文件。客户端 generation/sequence 防止旧在线/离线消息覆盖新会话，30 秒 TTL，7 天后在读写时清除明细并保留最小排序墓碑。设备上限 1000（包括墓碑），App API 固定窗口上限 100 请求/秒，避免提取出的共享令牌无限写入；不是公开多租户服务。

## 私有配置

服务器 `/etc/x-ui/qinglian.json`，权限必须为 0600；也可用环境变量 `QINGLIAN_CONFIG` 指定绝对路径。该文件只留在服务器和私有备份，不提交。

```json
{
  "clientToken":"PRIVATE_RANDOM_TOKEN_AT_LEAST_32_CHARACTERS",
  "nodeUuid":"PRIVATE_FIXED_NODE_UUID",
  "statePath":"/etc/x-ui/qinglian/devices.sqlite3",
  "trustedProxyCidrs":[]
}
```

没有有效配置时新接口返回 503，不影响原面板和原入站。应用端点必须 HTTPS，验证证书。配置反代时只信任实际反代 IP 的精确 CIDR，反代须覆盖 X-Real-IP，并配置请求体读取超时、连接限制；默认直接读取连接来源，不信任任意转发头。当前旧面板仅通过 HTTP 可达，HTTPS 尚未配置/验证，不能把它直接写入 App 冒充已上线 API。

## 部署前必须完成的实际检查

1. SSH 读取发行版、架构、libc、服务单元、二进制版本/位置、容器或进程、base path、TLS/反代和数据库路径；确认确为支持版本。
2. 备份现有二进制、整个数据库（用 SQLite 一致性备份，覆盖 WAL 状态）、配置、systemd 单元/容器定义、现有前端；记录权限、校验和与恢复命令，备份保密。HTTP 入站列表不能代替这些备份。
3. 在匹配服务器环境构建，在临时数据库上验证模块，再原子替换二进制；预留会短暂重启 Xray 的维护窗口，保留回滚二进制。不运行 `setting -reset`，不使用重新安装脚本覆盖面板。
4. 配置客户端最小权限令牌、HTTPS、有限制的可信反代和存储权限；在 App 私有 assets 固定完整端点，不放面板/root密码。
5. 验证未登录和 App令牌看不到明细、两台设备数量一致、旧会话离线/迟到心跳不能影响新连接、崩溃 30 秒超时、真实配额与面板一致。检查其他入站无改变，确认备份可回滚。

本轮的 SSH 阻塞来自开发环境：配置指向的 TCP CONNECT 代理在连接阶段拒绝连接。未发起 SSH 认证，不能因此判断服务器 SSH 端口或密码失效。须先恢复支持的 TCP 访问路径再部署，不绕过环境网络策略。
