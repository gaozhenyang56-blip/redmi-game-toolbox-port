package controller

// Subscriptions are separate revocable capabilities. They never authorize an
// App request or a management operation and never change inbound credentials.
import (
	"crypto/rand"
	"crypto/sha256"
	"crypto/subtle"
	"database/sql"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"strings"
	"time"
	"unicode"

	"github.com/gin-gonic/gin"
	"gopkg.in/yaml.v2"
	"x-ui/database"
	"x-ui/database/model"
)

func qClashSchema(db *sql.DB) error {
	_, err := db.Exec(`CREATE TABLE IF NOT EXISTS clash_subscriptions(id TEXT PRIMARY KEY,owner INTEGER NOT NULL,token_hash BLOB NOT NULL,scope BLOB NOT NULL,created INTEGER NOT NULL)`)
	return err
}

// Run BEFORE Gin's logger: neither RequestURI nor RawQuery may retain a token.
// Context is local to this request; no query token is forwarded to other routes.
func QClashRedact() gin.HandlerFunc {
	return func(c *gin.Context) {
		if strings.Contains(c.Request.URL.Path, "/api/v1/clash/sub/") {
			query := c.Request.URL.Query()
			c.Set("qClashToken", query.Get("token"))
			query.Del("token")
			c.Request.URL.RawQuery = query.Encode()
			c.Request.RequestURI = c.Request.URL.RequestURI()
		}
		c.Next()
	}
}

type qClashScope struct {
	Name     string `json:"name"`
	Flavor   string `json:"flavor"`
	Inbounds []int  `json:"inbounds"`
	HY2      bool   `json:"hy2"`
}

func (s qClashScope) valid() bool {
	if (s.Flavor != "clash" && s.Flavor != "mihomo") || len(s.Inbounds) == 0 || len(s.Inbounds) > 64 || len(s.Name) > 160 || strings.TrimSpace(s.Name) == "" || s.HY2 && s.Flavor != "mihomo" {
		return false
	}
	seen := map[int]bool{}
	for _, id := range s.Inbounds {
		if id < 1 || seen[id] {
			return false
		}
		seen[id] = true
	}
	return strings.IndexFunc(s.Name, unicode.IsControl) < 0
}
func qClashName(s string, id, index int) string {
	s = strings.Map(func(r rune) rune {
		if unicode.IsControl(r) {
			return -1
		}
		return r
	}, s)
	r := []rune(strings.TrimSpace(s))
	if len(r) > 60 {
		r = r[:60]
	}
	if len(r) == 0 {
		r = []rune("节点")
	}
	return fmt.Sprintf("%s [%d-%d]", string(r), id, index)
}
func qClashLive(row model.Inbound, now int64) bool {
	return row.Enable && (row.ExpiryTime <= 0 || row.ExpiryTime > now) && (row.Total <= 0 || row.Up < row.Total && row.Down < row.Total-row.Up)
}
func qClashString(n map[string]interface{}, k string) string { v, _ := n[k].(string); return v }
func qClashProxy(n map[string]interface{}, name, flavor string) (map[string]interface{}, string) {
	p := qClashString(n, "protocol")
	network := qClashString(n, "net")
	kind := qClashString(n, "type")
	if p == "vless" && flavor == "clash" {
		return nil, "传统 Clash 不支持 VLESS，请选择 Mihomo"
	}
	if p == "trojan" && network == "ws" && flavor == "clash" {
		return nil, "此 Trojan 传输需要 Mihomo"
	}
	if p == "shadowsocks" && (network != "tcp" || kind != "none" || n["tls"] != "none") {
		return nil, "Shadowsocks 插件传输暂不支持"
	}
	if kind == "http" && p != "vmess" {
		return nil, "该协议的 TCP HTTP 伪装暂不支持"
	}
	proxy := map[string]interface{}{"name": name, "type": p, "server": n["add"], "port": n["port"], "udp": true}
	switch p {
	case "vmess":
		proxy["uuid"] = n["id"]
		proxy["alterId"] = 0
		proxy["cipher"] = "auto"
	case "vless":
		proxy["uuid"] = n["id"]
	case "trojan":
		proxy["password"] = n["password"]
	case "shadowsocks":
		proxy["type"] = "ss"
		method := n["method"]
		if method == "chacha20-poly1305" {
			method = "chacha20-ietf-poly1305"
		}
		proxy["cipher"] = method
		proxy["password"] = n["password"]
	default:
		return nil, "协议暂不支持"
	}
	if n["tls"] == "tls" {
		proxy["skip-cert-verify"] = false
		if p == "vmess" || p == "vless" {
			proxy["tls"] = true
			proxy["servername"] = n["sni"]
		} else {
			proxy["sni"] = n["sni"]
		}
	}
	if network == "ws" {
		proxy["network"] = "ws"
		opts := map[string]interface{}{"path": n["path"]}
		if n["host"] != "" {
			opts["headers"] = map[string]interface{}{"Host": n["host"]}
		}
		proxy["ws-opts"] = opts
	} else if kind == "http" {
		proxy["network"] = "http"
		opts := map[string]interface{}{"method": "GET", "path": []string{qClashString(n, "path")}}
		if n["host"] != "" {
			opts["headers"] = map[string]interface{}{"Host": []string{qClashString(n, "host")}}
		}
		proxy["http-opts"] = opts
	}
	return proxy, ""
}

type qClashResult struct {
	Proxies      []map[string]interface{}
	Certificates []string
	Skipped      []string
}

func (a *QinglianController) clashConfig(s qClashScope, rows []model.Inbound) qClashResult {
	result := qClashResult{Proxies: []map[string]interface{}{}, Skipped: []string{}}
	scope := map[int]bool{}
	for _, id := range s.Inbounds {
		scope[id] = true
	}
	for _, row := range rows {
		if row.UserId != a.cfg.OwnerID || !scope[row.Id] {
			continue
		}
		delete(scope, row.Id)
		label := qClashName(row.Remark, row.Id, 1)
		if !qClashLive(row, time.Now().UnixMilli()) {
			result.Skipped = append(result.Skipped, label+"：已停用、到期或额度耗尽")
			continue
		}
		var settings map[string]json.RawMessage
		if json.Unmarshal([]byte(row.Settings), &settings) != nil {
			result.Skipped = append(result.Skipped, label+"：节点设置无效")
			continue
		}
		clients := []json.RawMessage{nil}
		if row.Protocol != model.Shadowsocks {
			if json.Unmarshal(settings["clients"], &clients) != nil || len(clients) == 0 || len(clients) > 128 {
				result.Skipped = append(result.Skipped, label+"：客户端配置暂不支持")
				continue
			}
		}
		// Private API certificates must not be exported as if publicly trusted.
		privateCA := strings.Contains(row.StreamSettings, a.cfg.TLS.Certificate) && a.cfg.TLS.Certificate != ""
		if privateCA {
			result.Skipped = append(result.Skipped, label+"：专用 API 证书节点不用于通用订阅")
			continue
		}
		for i, client := range clients {
			clone := row
			if client != nil {
				settings["clients"], _ = json.Marshal([]json.RawMessage{client})
				encoded, _ := json.Marshal(settings)
				clone.Settings = string(encoded)
			}
			n, err := a.protocolNode(&clone)
			if err != nil {
				result.Skipped = append(result.Skipped, qClashName(row.Remark, row.Id, i+1)+"：协议、TLS 或传输暂不支持")
				continue
			}
			proxy, reason := qClashProxy(n, qClashName(row.Remark, row.Id, i+1), s.Flavor)
			if reason != "" {
				result.Skipped = append(result.Skipped, qClashName(row.Remark, row.Id, i+1)+"："+reason)
				continue
			}
			result.Proxies = append(result.Proxies, proxy)
		}
		if s.HY2 && s.Flavor == "mihomo" {
			if profile, ok := a.acceleration(row.Id).(gin.H); ok {
				if n, ok := profile["node"].(map[string]interface{}); ok && qClashString(n, "auth") != "" {
					proxy := map[string]interface{}{"name": qClashName(row.Remark+" HY2", row.Id, 0), "type": "hysteria2", "server": n["add"], "port": n["port"], "password": n["auth"], "sni": n["sni"], "skip-cert-verify": false}
					if ca := qClashString(n, "caPem"); ca != "" {
						if !strings.Contains(ca, "PRIVATE KEY") && strings.Contains(ca, "BEGIN CERTIFICATE") {
							result.Certificates = append(result.Certificates, ca)
						} else {
							result.Skipped = append(result.Skipped, label+" HY2：证书无效")
							continue
						}
					}
					result.Proxies = append(result.Proxies, proxy)
				}
			} else {
				result.Skipped = append(result.Skipped, label+" HY2：未绑定或不可用")
			}
		}
	}
	for id := range scope {
		result.Skipped = append(result.Skipped, fmt.Sprintf("节点 [%d]：已删除或不可访问", id))
	}
	return result
}
func qClashYAML(result qClashResult) ([]byte, error) {
	names := []string{}
	for _, proxy := range result.Proxies {
		names = append(names, proxy["name"].(string))
	}
	names = append(names, "DIRECT")
	config := map[string]interface{}{"port": 7890, "socks-port": 7891, "allow-lan": false, "mode": "rule", "log-level": "warning", "proxies": result.Proxies, "proxy-groups": []interface{}{map[string]interface{}{"name": "节点选择", "type": "select", "proxies": names}}, "rules": []string{"MATCH,节点选择"}}
	if len(result.Certificates) > 0 {
		config["tls"] = map[string]interface{}{"custom-certifactes": result.Certificates}
	}
	return yaml.Marshal(config)
}
func (a *QinglianController) clashRows() ([]model.Inbound, error) {
	var rows []model.Inbound
	err := database.GetDB().Where("user_id=?", a.cfg.OwnerID).Order("id").Find(&rows).Error
	return rows, err
}
func (a *QinglianController) clashPage(c *gin.Context) {
	if a.panelAuth(c) {
		c.Header("Referrer-Policy", "no-referrer")
		html(c, "qinglian_clash.html", "Clash 订阅", nil)
	}
}
func (a *QinglianController) clashList(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	rows, err := a.clashRows()
	if err != nil {
		c.Status(503)
		return
	}
	nodes := []gin.H{}
	for _, row := range rows {
		nodes = append(nodes, gin.H{"id": row.Id, "name": qClashName(row.Remark, row.Id, 1), "protocol": row.Protocol, "available": qClashLive(row, time.Now().UnixMilli())})
	}
	subscriptions := []gin.H{}
	dbrows, err := a.store.db.Query("SELECT id,scope,created FROM clash_subscriptions WHERE owner=? ORDER BY created DESC", a.cfg.OwnerID)
	if err != nil {
		c.Status(503)
		return
	}
	defer dbrows.Close()
	for dbrows.Next() {
		var id string
		var raw []byte
		var created int64
		var scope qClashScope
		if dbrows.Scan(&id, &raw, &created) != nil || json.Unmarshal(raw, &scope) != nil {
			c.Status(503)
			return
		}
		subscriptions = append(subscriptions, gin.H{"id": id, "name": scope.Name, "flavor": scope.Flavor, "created": created, "inbounds": scope.Inbounds})
	}
	if dbrows.Err() != nil {
		c.Status(503)
		return
	}
	c.JSON(200, gin.H{"nodes": nodes, "subscriptions": subscriptions, "domainReady": qPublicDomain.MatchString(a.cfg.TLS.DomainName)})
}
func (a *QinglianController) clashWrite(c *gin.Context) bool {
	if !a.updateWriteAuth(c) {
		return false
	}
	if c.Request.TLS == nil || !qSSHOrigin(c.Request) {
		c.JSON(403, gin.H{"error": "请通过 HTTPS 面板操作"})
		return false
	}
	return true
}
func (a *QinglianController) clashCreate(c *gin.Context) {
	if !a.clashWrite(c) {
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 8192)
	var scope qClashScope
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	if decoder.Decode(&scope) != nil || decoder.Decode(new(interface{})) != io.EOF || !scope.valid() {
		c.JSON(400, gin.H{"error": "请选择节点和有效的配置类型"})
		return
	}
	if !qPublicDomain.MatchString(a.cfg.TLS.DomainName) {
		c.JSON(409, gin.H{"error": "请先配置面板 HTTPS 域名"})
		return
	}
	rows, err := a.clashRows()
	if err != nil {
		c.Status(503)
		return
	}
	allowed := map[int]bool{}
	for _, row := range rows {
		allowed[row.Id] = true
	}
	for _, id := range scope.Inbounds {
		if !allowed[id] {
			c.Status(403)
			return
		}
	}
	result := a.clashConfig(scope, rows)
	if len(result.Proxies) == 0 {
		c.JSON(422, gin.H{"error": "没有可导出的有效节点", "skipped": result.Skipped})
		return
	}
	idBytes := make([]byte, 16)
	token := make([]byte, 32)
	if _, err = rand.Read(idBytes); err != nil {
		c.Status(503)
		return
	}
	if _, err = rand.Read(token); err != nil {
		c.Status(503)
		return
	}
	id := hex.EncodeToString(idBytes)
	secret := hex.EncodeToString(token)
	digest := sha256.Sum256([]byte(secret))
	raw, _ := json.Marshal(scope)
	a.store.mu.Lock()
	defer a.store.mu.Unlock()
	var count int
	if a.store.db.QueryRow("SELECT count(*) FROM clash_subscriptions WHERE owner=?", a.cfg.OwnerID).Scan(&count) != nil {
		c.Status(503)
		return
	}
	if count >= 64 {
		c.JSON(409, gin.H{"error": "最多保留 64 个链接，请先撤销不用的链接"})
		return
	}
	if _, err = a.store.db.Exec("INSERT INTO clash_subscriptions(id,owner,token_hash,scope,created) VALUES(?,?,?,?,?)", id, a.cfg.OwnerID, digest[:], raw, time.Now().Unix()); err != nil {
		c.Status(503)
		return
	}
	base, _ := c.Get("base_path")
	path, _ := base.(string)
	link := "https://" + a.cfg.TLS.DomainName + "/" + strings.Trim(path, "/")
	link = strings.TrimRight(link, "/") + "/api/v1/clash/sub/" + id + "?token=" + url.QueryEscape(secret)
	c.JSON(200, gin.H{"id": id, "url": link, "count": len(result.Proxies), "skipped": result.Skipped})
}
func (a *QinglianController) clashDelete(c *gin.Context) {
	if !a.clashWrite(c) {
		return
	}
	if !qClashHex(c.Param("id"), 16) {
		c.Status(400)
		return
	}
	if _, err := a.store.db.Exec("DELETE FROM clash_subscriptions WHERE id=? AND owner=?", c.Param("id"), a.cfg.OwnerID); err != nil {
		c.Status(503)
		return
	}
	c.JSON(200, gin.H{"ok": true})
}
func qClashHex(s string, n int) bool {
	b, err := hex.DecodeString(s)
	return err == nil && len(b) == n && strings.ToLower(s) == s
}
func (a *QinglianController) clashSubscribe(c *gin.Context) {
	qNoStore(c)
	c.Header("Referrer-Policy", "no-referrer")
	c.Header("X-Content-Type-Options", "nosniff")
	token := c.GetString("qClashToken")
	if a.store == nil || c.Request.TLS == nil || !strings.EqualFold(c.Request.Host, a.cfg.TLS.DomainName) && !strings.EqualFold(c.Request.Host, a.cfg.TLS.DomainName+":443") || !qClashHex(c.Param("id"), 16) || !qClashHex(token, 32) {
		c.Status(404)
		return
	}
	var stored, raw []byte
	if a.store.db.QueryRow("SELECT token_hash,scope FROM clash_subscriptions WHERE id=? AND owner=?", c.Param("id"), a.cfg.OwnerID).Scan(&stored, &raw) != nil {
		c.Status(404)
		return
	}
	hash := sha256.Sum256([]byte(token))
	if subtle.ConstantTimeCompare(hash[:], stored) != 1 {
		c.Status(404)
		return
	}
	var scope qClashScope
	if json.Unmarshal(raw, &scope) != nil || !scope.valid() {
		c.Status(503)
		return
	}
	rows, err := a.clashRows()
	if err != nil {
		c.Status(503)
		return
	}
	result := a.clashConfig(scope, rows)
	if len(result.Proxies) == 0 {
		c.Status(503)
		return
	}
	encoded, err := qClashYAML(result)
	if err != nil {
		c.Status(503)
		return
	}
	c.Header("Content-Disposition", `attachment; filename="qinglian-`+scope.Flavor+`.yaml"`)
	c.Header("Profile-Update-Interval", "6")
	c.Data(200, "application/yaml; charset=utf-8", encoded)
}
