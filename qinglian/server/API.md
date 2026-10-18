# App / x-ui 接口合同（已部署）

对应现有x-ui0.3.2覆盖层，已部署并通过真实HTTPS与管理员权限边界检查。设备页面在原面板“轻连 App”，沿用原cookie登录；旧Python原型不作为生产后台。

## 固定配置与权限

构建前私下恢复 assets 中的 `online.json`、`quota.json`、`telemetry.json`、`profile.json`、`updates.json`；五者格式均为 `{"url":"https://主机/完整接口路径","clientToken":"私有客户端令牌"}`。示例文件不参与连接。可选caAsset指定App API专用CA资产（生产为api-ca.pem），仍校验主机名。没有外部订阅链接，节点由原面板选择现有兼容入站。

App 只接受 HTTPS，正常验证证书，不跟随重定向，Bearer 令牌不放入查询串。心跳、数量和配额都不携带面板/root 凭据。可对读与写分别发令牌，但每个令牌仅允许相应 App API；设备明细只能由面板登录会话访问。APK 内客户端令牌可提取，不是可靠设备身份。

所有App端点均使用 `Authorization: Bearer <clientToken>`，响应 `Cache-Control: no-store`。响应体上限 8 KiB，非 200、字段缺失或类型错误均为不可用，不能转成零。禁止把 302 登录页面误当成功；鉴权失败应返回 401/403。

## GET /api/v1/online

```json
{"online":2}
```

`online` 是非负整数，按安装设备统计，只包括此 App；不是自然人数。每 5 秒刷新，失败立即标为不可用，超过 15 秒的缓存不作为实时数值。

## GET /api/v1/quota

```json
{"upload":1024,"download":2048,"total":107374182400,"expire":1792224000}
```

四项必填，为非负 64 位整数；流量单位字节，expire 为 Unix 秒，0 表示无到期限制，total=0 表示不限量。upload+download 不得溢出；到期时间转换为毫秒不得溢出。App 每 60 秒刷新，120 秒后缓存过期。失败时仅在详情保留标明“上次”的用量，主值显示不可用。配额用尽、到期和无限额分别显示。

服务器从面板选择的入站ID读取唯一客户端真实计数；初次启用才用引导UUID定位入站；不同 x-ui 版本的 schema 和字段单位须实查。UUID 仅留在服务端配置，不作为 App 任意查询参数。查不到、匹配多个客户端、来源故障返回 503，不能返回全零，更不能使用手机本次用量估算。

旧 Python 参考 `server.py` 的配额路由固定返回 503。`xui032/` 已实现并部署对应版本的只读配额适配。

## POST /api/v1/heartbeat

```json
{
  "deviceId":"11111111-1111-4111-8111-111111111111",
  "sessionId":"22222222-2222-4222-8222-222222222222",
  "generation":3,"sequence":1,"online":true,
  "deviceName":"Example Android","brand":"Example","model":"Example",
  "androidVersion":"12","appVersion":"1.0.3-preview",
  "uploadBytes":1024,"downloadBytes":2048,"uploadRate":128.5,"downloadRate":256
}
```

成功返回 `{"ok":true}`。安装时随机 UUID 持久化到私有 SharedPreferences，每次连接生成新 sessionId；generation 是同一安装内持久化递增的正整数，sequence 是本次会话内递增的正整数。App 禁止备份，重装或清数据会生成新 deviceId。两项排序字段必须严格校验，不接受布尔、负数、小数、溢出。

服务建立本地 TUN 和转发通道后立即发送，此状态不代表已验证远端节点可达；随后每 10 秒发送，离线时停止定时任务，并串行发送 `online:false`、最后用量和零速度。离线失败或进程被杀由服务端 30 秒 TTL 处理。TTL 按服务端接收时间计算，不信任客户端时钟。

对同一 deviceId：

- generation 更小的所有消息忽略，不得覆盖新会话；更大者建立新会话。
- 相同 generation 只接受相同 sessionId 且 sequence 更大的消息。
- 已明确离线的会话不允许再上线，即使迟到心跳带来更大的 sequence；必须使用新 generation。
- 离线消息先到时也保存离线墓碑，防止尚未处理的旧在线消息复活。
- 失去心跳超过 30 秒按离线展示，同一仍运行的会话恢复心跳可重新在线（显式离线除外）。

来源 IP 从可信连接获取；反代必须覆盖来源头，不能信任公网任意 X-Forwarded-For。设备名称等仅客户端自报，可伪造；不作为身份或计费依据。无 IMEI、通讯录、文件或浏览内容。旧原型在新请求时清除超过 7 天的设备明细，但保留最小安装 ID / generation 墓碑以拒绝旧消息；生产实现仍需结合限流、存储上限和清理任务确定保留策略。

## GET /api/v1/profile

返回 `{"node":{...},"revision":"64位小写sha256","label":"面板入站备注"}`。node字段与node.example.json一致；只允许单客户端VMess TCP/HTTP、alterId0、无TLS。revision是node JSON摘要。入站被删除/禁用/不兼容时返回503，不静默选其他节点。

App每15秒刷新状态，每次连接重新请求；失败阻止该次连接，不回退旧UUID。已连接时提示配置变化，重连应用。心跳可含profileRevision供面板查看设备配置版本。

## 原面板管理员接口

- GET /xui/qinglian：页面，原cookie登录且限定配置ownerId。
- GET /xui/qinglian/devices：设备详情，名称/型号/版本/来源IP/时间/用量/速度。
- GET /xui/qinglian/selection：兼容入站和当前selectedId。
- POST /xui/qinglian/selection：JSON inboundId，同源Origin、X-Requested-With: XMLHttpRequest、原登录与所有者检查；仅写独立preferences，不改入站。

App Bearer不能读管理员接口。TLS端口11452仅开放四个App路由，管理员路径404。原HTTP管理端口不变。

设备ID和自报字段可伪造，用于本App在线观测，不作为身份或计费。真实双手机在线与Android出网仍需实机验证。

## 更新通道（v7）

GET `/api/v1/updates`：Bearer，8KiB以内的严格JSON：

```json
{"schema":1,"revision":3,"ui":{"navHeight":80,"navIcon":24,"navText":12,"navGap":2,"glassMargin":12,"glassEnabled":true},"apk":null}
```

apk非空时字段为versionCode、versionName、sha256（64位小写hex）、size（1..64MiB）、notes（最多1000字符）。App仅提示高于本机版本，下载后还验证真实APK包名/版本/签名。前台30秒轮询，失败保留已验证界面，不伪造成功。

GET `/api/v1/apk/:digest`：同一Bearer/专用TLS，下载已发布历史内的APK，64MiB上限；此二进制路由不适用JSON8KiB上限。客户端不接受外部下载URL，不跟随重定向。

管理员GET/POST `/xui/qinglian/updates`、POST `/xui/qinglian/updates/rollback`、POST `/xui/qinglian/updates/apk`。写操作要求原面板cookie、Origin同主机及X-Requested-With: XMLHttpRequest。发布使用当前revision作比较并递增；回滚也生成新revision。上传multipart字段apk/versionCode/versionName/notes，大小与hash由服务端计算；App最终核验签名，面板上传不代表已通过签名验证。以上管理员路由不暴露在专用App TLS端口。

## 多协议与加速（v9）

profile.node现在可包含protocol（省略仍为vmess）：vmess/vless/trojan/shadowsocks。VMess/VLESS用id；Trojan/SS用password；SS另需method。共同字段add、port、net(tcp/ws)、tls(none/tls)、type(none/http，仅TCP)、host、path、sni(TLS校验名)。Trojan必须TLS。拒绝Reality、XTLS flow、SS2022、旧VMess alterId和不支持的传输。原面板入站管理创建/编辑，轻连App页选择兼容节点。老App不支持非VMess节点，先安装v9。

profile响应额外有acceleration（不可用为null），非空时为同样的{node,revision,label}；node包含protocol=hysteria2、add、port、auth、sni、caPem（仅公开根证书）。只对当前App配额入站绑定匹配且HY2服务运行有效时返回。旧App忽略额外字段仍用原node。App手动选择兼容/加速，切换需重连，加速不可用明确失败，不静默直连或切回旧节点。

管理员GET/POST `/xui/qinglian/acceleration`：沿用原登录与同源检查。GET返回installed/enabled/running/boundInbound/port/protocol/error，不含私有令牌；POST为{enabled:布尔,boundInbound:原面板有权管理的兼容入站ID}。配额取该原入站，HY2字节事务累计到其up/down，每秒检查额度/到期/停用，记账故障关闭加速服务。管理器只监听loopback11453，统计API只监听loopback11454，两者有独立私有认证；公网只需UDP443。

Hysteria2认证、管理、统计密钥仅在服务器hy2.json；App只获取建立加速连接必需的认证及公开CA。进程异常可能丢失最后未采样窗口，额度停止可有约一秒及缓冲的超量，不宣称严格计费。设备在线API仍按App心跳，不把Hysteria连接数冒充设备数。
