# Windows 客户端更新

入口：https://gaozy.tech/xui/qinglian/manage/updates ，页面下方“Windows 更新”。只允许原配置的面板管理员登录后操作，并校验同源请求；App引导令牌只能读取发布和下载已发布包，不能修改配置或发布代码。

## 无需重启的界面配置

支持固定枚举的蓝/青/紫强调色、舒适/紧凑布局、最多300字符纯文本公告以及窗口材质许可。点击“发布Windows界面配置”后，支持的新客户端每60秒读取并应用，保持连接与输入。本地主题、简约与主动关闭材质仍由用户控制；关于页可关闭界面同步。失败保留上次有效配置，不阻挡连接。回滚按钮恢复上一次已发布界面配置，不回退程序版本。

## 程序更新

在“官方版本”输入本仓库现有Windows Release版本，如 `1.0.0-preview5`，点击“从官方Release导入并发布”。服务器只从固定的gaozhenyang56-blip/redmi-game-toolbox-port仓库下载对应免安装ZIP与SHA256SUMS，校验SHA256、结构、版本及大小；没有任意URL或脚本输入。限制256MiB压缩包、1GiB展开、6000项，单次导入在途，GitHub下载120秒有界。通过服务器拉取可避免普通CDN的单次上传大小限制。

客户端从原固定域名/CDN或原专用CA API下载，保持TLS与主机名校验、不跟随重定向，校验大小、SHA256、资源manifest和安全路径，拒绝低版本。下载需主动点击，重启需确认，连接或测速中不可替换；首次需要手动安装含更新接收器的版本，旧版不会凭空获得更新能力。

独立非提权one-file助手验证父进程映像、等待旧GUI退出，仅替换Qinglian.exe和_internal，保留原卸载程序及本地账号/设置；新版GUI启动回报前保留备份，替换或启动失败尝试恢复。副本在当前用户私有状态目录，沿用用户ACL；不向TUN提权助手传递更新命令。不是不重启执行代码，不承诺断电/强杀助手后的事务恢复。ZIP更新不重写Windows安装器登记版本；需要同步“已安装的应用”版本记录时可运行对应setup。

当前无独立Authenticode代码签名，完整包来源依靠固定官方Release和原严格HTTPS控制面，SHA256校验传输完整性；不能把校验和称为发布者数字签名。正式发布后源码、哈希和验证记录见HANDOFF.md与verification/WINDOWS_CHECKS.md。

## 服务端边界

发布数据在现有状态SQLite的独立windows_updates表，最近20条记录，版本包按摘要在windows-releases目录保存。Android更新表/API和签名不变，Ubuntu更新不使用该接口。原节点、用户及配额保留。

GET /api/v1/windows/updates、GET /api/v1/windows/package/:digest仅已发布文件可读；原IP TLS API只将这两个固定路径加入白名单。面板GET/POST /xui/qinglian/windows、POST /rollback、POST /import使用原管理员权限和同源检查。部署沿用加密备份、原子二进制替换、节点/计数保留及失败回滚流程；工作流40991488208已验证新API/面板、原HTTPS/WSS SSH功能与原配置计数。
