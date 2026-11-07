package controller

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"os"
	"strings"
)

// Owner-only bootstrap: no node credentials, administrator password or private key.
func (a *QinglianController) serverBootstrap(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	if c.Request.TLS == nil {
		c.Status(403)
		return
	}
	ca, e := os.ReadFile("/etc/x-ui/qinglian/ca.pem")
	if e != nil || len(ca) > 32768 {
		c.Status(503)
		return
	}
	c.Header("Cache-Control", "private, no-store")
	c.Header("Content-Disposition", `attachment; filename="qinglian-server.json"`)
	c.JSON(200, qServerBootstrap(a.cfg, a.apiPrefix, string(ca)))
}

func qServerBootstrap(cfg qConfig, prefix, ca string) gin.H {
	path := strings.TrimSuffix(prefix, "/") + "/profile"
	profile := gin.H{"url": fmt.Sprintf("https://%s:%d%s", cfg.ServerAddress, cfg.TLS.Port, path), "clientToken": cfg.ClientToken, "caPem": ca}
	if cfg.TLS.DomainName != "" {
		profile["cdnUrl"] = "https://" + cfg.TLS.DomainName + path
	}
	return gin.H{"schema": 1, "kind": "qinglian-server", "name": "轻连面板 · " + cfg.ServerAddress, "profile": profile}
}
