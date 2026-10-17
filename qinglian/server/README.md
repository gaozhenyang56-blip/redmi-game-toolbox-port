# 服务端开发状态

最终方案是直接扩展用户现有 x-ui，不是独立后台。

- [xui032/README.md](xui032/README.md)：本轮按已登录面板观测版本准备的源码覆盖层。含原菜单设备页、原登录权限、设备心跳、在线计数和真实入站配额的只读适配；仅本地验证，尚未部署。
- [API.md](API.md)：App 固定接口、JSON 配额和设备会话排序合同。App 已实现心跳，但当前发布包未配置尚未部署的 API。
- `server.py` / `dashboard.html` / `qinglian.service`：之前的独立 Python 原型，保留作为 TTL/协议测试参考，不得作为最终后台上线。原型配额端点返回 503，不伪造数据。Basic 管理账号与原面板登录无关，不能替代最终面板集成。

本地原型测试：`python3 -m unittest discover -s server -p 'test_*.py' -v`。

服务器地址、面板凭据、VMess UUID、令牌和发布签名全部只保存在私有位置。源码和测试仅含示例数据；公开仓库不放最终带真实节点的 APK。
