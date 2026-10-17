# GitHub Actions 只读 SSH 检查

用户要求尝试通过 GitHub 连接服务器，所以增加根目录唯一相关工作流 `.github/workflows/qinglian-server-check.yml`，不修改原 Redmi 应用。运行器连接不依赖当前开发容器的 TCP 代理。

工作流仅在本开发分支对应脚本改变时触发，或手动运行；只读检查系统、架构、libc、服务路径、版本和数据库schema，不修改或重启服务，不输出主机IP、密码、用户表或节点设置。

在仓库 Settings → Secrets and variables → Actions 配置：

- `QINGLIAN_SSH_HOST`：服务器IP/域名。
- `QINGLIAN_SSH_PASSWORD`：SSH密码。
- `QINGLIAN_SSH_USER`：可选，默认root。
- `QINGLIAN_SSH_PORT`：可选，默认22。
- `QINGLIAN_SSH_HOST_KEY`：可选，`SHA256:...` 格式主机公钥指纹；后续运行建议固定。首次连接记录指纹，之后配置该Secret可拒绝主机密钥变化。

凭据不放入 workflow_dispatch 参数、代码、issue、公开日志或普通构建产物。当前 GitHub 连接尝试读取 Secrets API 返回403，不能据此认为已经设置了上述Secrets；须由有权限的仓库管理者设置。未配置时工作流会停止，不使用示例密码。

只有该检查真实通过并获得准确系统信息后，才能准备完整备份和匹配构建部署；该工作流本身不是面板部署。
