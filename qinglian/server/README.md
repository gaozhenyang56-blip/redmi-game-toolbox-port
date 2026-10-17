# 服务端交付状态

已直接扩展原x-ui0.3.2，沿用原登录和菜单，入口为“轻连 App”。页面包含设备详情与App订阅节点选择，不另建后台。

- [xui032/README.md](xui032/README.md)：精确版本覆盖层、私有配置与回滚。已部署，原入站与计数保留。
- [API.md](API.md)：在线、配额、心跳和节点profile合同。最终App已固定真实HTTPS端点。
- [github/README.md](github/README.md)：SSH检查、加密备份、部署与真实节点探测工作流。
- `server.py` / `dashboard.html` / `qinglian.service` 是旧独立原型，仅作测试参考，不部署。其配额503不用于生产App。

原型测试：`python3 -m unittest discover -s server -p 'test_*.py' -v`。这不替代Go覆盖层和真实服务器检查。

服务器、面板凭据、VMess UUID、令牌、签名与TLS私钥仅在私有位置。公开Git不放最终真实配置APK。
