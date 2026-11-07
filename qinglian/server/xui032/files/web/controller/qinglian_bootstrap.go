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
	path := strings.TrimSuffix(a.apiPrefix, "/") + "/profile"
	profile := gin.H{"url": fmt.Sprintf("https://%s:%d%s", a.cfg.ServerAddress, a.cfg.TLS.Port, path), "clientToken": a.cfg.ClientToken, "caPem": string(ca)}
	if a.cfg.TLS.DomainName != "" {
		profile["cdnUrl"] = "https://" + a.cfg.TLS.DomainName + path
	}
	c.Header("Cache-Control", "private, no-store")
	c.Header("Content-Disposition", `attachment; filename="qinglian-server.json"`)
	c.JSON(200, gin.H{"schema": 1, "kind": "qinglian-server", "name": "轻连面板 · " + a.cfg.ServerAddress, "profile": profile})
}
