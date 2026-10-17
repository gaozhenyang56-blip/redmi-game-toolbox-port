# 现有 x-ui 0.3.2 内集成（已部署）

GitHub SSH已确认Ubuntu24.04/x86_64/glibc2.39、x-ui0.3.2、Xray1.4.2。完整一致性加密备份已校验；原登录、设备页、节点选择保存、真实HTTPS API和权限边界验证通过。没有手机实际分流验收。

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

模块新增 `/api/v1/online`、`/api/v1/quota`、`/api/v1/heartbeat`、`/api/v1/profile`（相对于现有 base path），菜单为 `xui/qinglian`，管理员数据为 `xui/qinglian/devices`。完整 App 合同见 [../API.md](../API.md)。

配额从原 Gorm 数据库只读查询选中的入站ID；UUID仅首次定位；仅接受唯一的单客户端入站，不把多客户端的整个入站流量当作本人配额。原字段 up/down/total 是字节，expiryTime 是 Unix 毫秒，接口转换为 Unix 秒。缺失、重复、禁用而非配额耗尽或到期、计数非法均返回 503。不改变 VMess、计数、入站启用状态或原面板表结构。

设备使用独立 SQLite 文件。客户端 generation/sequence 防止旧在线/离线消息覆盖新会话，30 秒 TTL，7 天后在读写时清除明细并保留最小排序墓碑。设备上限 1000（包括墓碑），App API 固定窗口上限 100 请求/秒，避免提取出的共享令牌无限写入；不是公开多租户服务。

## 私有配置

服务器 `/etc/x-ui/qinglian.json`，权限必须为 0600；也可用环境变量 `QINGLIAN_CONFIG` 指定绝对路径。该文件只留在服务器和私有备份，不提交。

```json
{
  "clientToken":"PRIVATE_RANDOM_TOKEN_AT_LEAST_32_CHARACTERS",
  "nodeUuid":"PRIVATE_BOOTSTRAP_NODE_UUID",
  "ownerId":1,
  "serverAddress":"SERVER_ADDRESS",
  "tls":{"port":11452,"certificate":"/etc/x-ui/qinglian/server.pem","privateKey":"/etc/x-ui/qinglian/server.key"},
  "statePath":"/etc/x-ui/qinglian/devices.sqlite3",
  "trustedProxyCidrs":[]
}
```

没有有效配置时新接口返回 503，不影响原面板和原入站。应用端点必须 HTTPS，验证证书。配置反代时只信任实际反代 IP 的精确 CIDR，反代须覆盖 X-Real-IP，并配置请求体读取超时、连接限制；默认直接读取连接来源，不信任任意转发头。已部署App专用11452TLS仅开放四个App路由；App只信任此API的CA且校验主机名。原管理面板HTTP端口不变。到期前用同一CA续签服务器证书，APK发布签名保持原样。

## 生产维护与回滚

首次部署见 [../github/README.md](../github/README.md)。脚本拒绝已有配置，不能直接用于后续升级。

修改前再次一致性备份原数据库、独立devices.sqlite3、qinglian.json、PKI、二进制与systemd配置。保持入站和计数，匹配Ubuntu24.04/glibc2.39构建，测试后短暂停服原子替换。

服务器保留原二进制 /usr/local/x-ui/x-ui.qinglian-previous。撤销扩展时停服务、保留当前配置/独立状态供恢复、原子恢复原二进制再启动；原表未迁移。CA/服务私钥仅在root私有目录及私有备份。

“App订阅节点”保存独立preferences，仅同ownerId启用的单客户端VMess TCP/HTTP、alterId0、无TLS入站可选。App重连应用。所选入站UUID/端口变更自动反映；API主机迁移需更新构建资产。
