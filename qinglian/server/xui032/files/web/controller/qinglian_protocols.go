package controller

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"github.com/gin-gonic/gin"
	"io"
	"net/http"
	"os"
	"time"
	"x-ui/database"
	"x-ui/database/model"
)

func (a *QinglianController) protocolNode(row *model.Inbound) (map[string]interface{}, error) {
	p := string(row.Protocol)
	if a.cfg.ServerAddress == "" || row.Port < 1 || row.Port > 65535 {
		return nil, qUnavailable
	}
	if p != "vmess" && p != "vless" && p != "trojan" && p != "shadowsocks" {
		return nil, qUnavailable
	}
	var settings struct {
		Clients []struct {
			ID       string `json:"id"`
			Password string `json:"password"`
			AlterID  int    `json:"alterId"`
			Flow     string `json:"flow"`
		} `json:"clients"`
		Method   string `json:"method"`
		Password string `json:"password"`
	}
	var stream struct {
		Network  string `json:"network"`
		Security string `json:"security"`
		TLS      struct {
			ServerName string `json:"serverName"`
		} `json:"tlsSettings"`
		WS struct {
			Path    string            `json:"path"`
			Headers map[string]string `json:"headers"`
		} `json:"wsSettings"`
		TCP struct {
			Header struct {
				Type    string `json:"type"`
				Request struct {
					Path    []string            `json:"path"`
					Headers map[string][]string `json:"headers"`
				} `json:"request"`
			} `json:"header"`
		} `json:"tcpSettings"`
	}
	if json.Unmarshal([]byte(row.Settings), &settings) != nil || json.Unmarshal([]byte(row.StreamSettings), &stream) != nil {
		return nil, qUnavailable
	}
	if stream.Network == "" {
		stream.Network = "tcp"
	}
	if stream.Security == "" {
		stream.Security = "none"
	}
	if (stream.Network != "tcp" && stream.Network != "ws") || (stream.Security != "none" && stream.Security != "tls") {
		return nil, qUnavailable
	}
	n := map[string]interface{}{"protocol": p, "add": a.cfg.ServerAddress, "port": row.Port, "net": stream.Network, "tls": stream.Security, "type": "none", "host": "", "path": "/"}
	if p == "shadowsocks" {
		if len(settings.Clients) != 0 || settings.Password == "" || len(settings.Password) > 8192 {
			return nil, qUnavailable
		}
		switch settings.Method {
		case "aes-128-gcm", "aes-256-gcm", "chacha20-poly1305", "chacha20-ietf-poly1305":
		default:
			return nil, qUnavailable
		}
		n["password"] = settings.Password
		n["method"] = settings.Method
	} else {
		if len(settings.Clients) != 1 {
			return nil, qUnavailable
		}
		client := settings.Clients[0]
		if p == "trojan" {
			if client.Password == "" || len(client.Password) > 8192 || stream.Security != "tls" {
				return nil, qUnavailable
			}
			n["password"] = client.Password
		} else {
			if !qUUID.MatchString(client.ID) || client.AlterID != 0 || client.Flow != "" {
				return nil, qUnavailable
			}
			n["id"] = client.ID
			n["aid"] = 0
		}
	}
	if stream.Network == "tcp" {
		kind := stream.TCP.Header.Type
		if kind == "" {
			kind = "none"
		}
		if kind != "none" && kind != "http" {
			return nil, qUnavailable
		}
		n["type"] = kind
		if len(stream.TCP.Header.Request.Path) > 0 && stream.TCP.Header.Request.Path[0] != "" {
			n["path"] = stream.TCP.Header.Request.Path[0]
		}
		if host := stream.TCP.Header.Request.Headers["Host"]; len(host) > 0 {
			n["host"] = host[0]
		}
	} else {
		n["path"] = stream.WS.Path
		if stream.WS.Path == "" {
			n["path"] = "/"
		}
		n["host"] = stream.WS.Headers["Host"]
	}
	if stream.Security == "tls" {
		sni := stream.TLS.ServerName
		if sni == "" {
			sni = a.cfg.ServerAddress
		}
		n["sni"] = sni
	}
	return n, nil
}
func qProfileValue(node map[string]interface{}, label string) gin.H {
	encoded, _ := json.Marshal(node)
	digest := sha256.Sum256(encoded)
	return gin.H{"node": node, "label": label, "revision": hex.EncodeToString(digest[:])}
}
func qHyRequest(method, path string, body interface{}) (map[string]interface{}, error) {
	var cfg struct {
		ManagementToken string `json:"managementToken"`
	}
	file := "/etc/x-ui/qinglian/hy2.json"
	info, err := os.Stat(file)
	if err != nil || info.Mode().Perm()&0077 != 0 {
		return nil, qUnavailable
	}
	data, err := os.ReadFile(file)
	if err != nil || json.Unmarshal(data, &cfg) != nil || len(cfg.ManagementToken) < 32 {
		return nil, qUnavailable
	}
	var payload []byte
	if body != nil {
		payload, err = json.Marshal(body)
		if err != nil {
			return nil, err
		}
	}
	req, err := http.NewRequest(method, "http://127.0.0.1:11453"+path, bytes.NewReader(payload))
	if err != nil {
		return nil, err
	}
	req.Header.Set("Authorization", "Bearer "+cfg.ManagementToken)
	req.Header.Set("Content-Type", "application/json")
	client := &http.Client{Timeout: 3 * time.Second, Transport: &http.Transport{Proxy: nil}, CheckRedirect: func(*http.Request, []*http.Request) error { return http.ErrUseLastResponse }}
	defer client.CloseIdleConnections()
	resp, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()
	if resp.StatusCode != 200 {
		return nil, qUnavailable
	}
	content, err := io.ReadAll(io.LimitReader(resp.Body, 32769))
	if err != nil || len(content) > 32768 {
		return nil, qUnavailable
	}
	var result map[string]interface{}
	err = json.Unmarshal(content, &result)
	return result, err
}
func (a *QinglianController) hyStatus(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	value, err := qHyRequest("GET", "/status", nil)
	if err != nil {
		c.JSON(200, gin.H{"installed": false, "enabled": false, "running": false})
		return
	}
	c.JSON(200, value)
}
func (a *QinglianController) hyConfigure(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 1024)
	var choice struct {
		Enabled      *bool `json:"enabled"`
		BoundInbound int   `json:"boundInbound"`
	}
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	if decoder.Decode(&choice) != nil || decoder.Decode(new(interface{})) != io.EOF || choice.Enabled == nil || choice.BoundInbound < 1 {
		c.Status(400)
		return
	}
	var row model.Inbound
	if database.GetDB().Where("id=? AND user_id=?", choice.BoundInbound, a.cfg.OwnerID).First(&row).Error != nil {
		c.Status(404)
		return
	}
	if _, err := a.node(&row); err != nil {
		c.Status(400)
		return
	}
	value, err := qHyRequest("POST", "/configure", choice)
	if err != nil {
		c.JSON(503, gin.H{"error": "acceleration unavailable"})
		return
	}
	c.JSON(200, value)
}
func (a *QinglianController) acceleration(id int) interface{} {
	value, err := qHyRequest("GET", "/profile", nil)
	if err != nil {
		return nil
	}
	bound, ok := value["boundInbound"].(float64)
	if !ok || int(bound) != id {
		return nil
	}
	node, ok := value["node"].(map[string]interface{})
	if !ok || node["protocol"] != "hysteria2" {
		return nil
	}
	return qProfileValue(node, "Hysteria2 加速通道")
}
