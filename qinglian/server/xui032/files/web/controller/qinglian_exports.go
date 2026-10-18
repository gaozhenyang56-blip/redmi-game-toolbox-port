package controller

import (
	"crypto/rand"
	"crypto/sha256"
	"database/sql"
	"encoding/base64"
	"encoding/hex"

	"encoding/json"
	"fmt"
	"github.com/gin-gonic/gin"
	"golang.org/x/crypto/bcrypt"
	"net"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"time"
	"unicode"
)

const qWeeklyBytes int64 = 256 * 1024 * 1024 * 1024
const qWeekSeconds int64 = 7 * 86400

func qRandom(bytes int) string {
	b := make([]byte, bytes)
	if _, err := rand.Read(b); err != nil {
		panic("random unavailable")
	}
	return hex.EncodeToString(b)
}
func qHash(s string) string { h := sha256.Sum256([]byte(s)); return hex.EncodeToString(h[:]) }
func qWeek(t time.Time) int64 {
	t = t.UTC()
	day := (int(t.Weekday()) + 6) % 7
	return time.Date(t.Year(), t.Month(), t.Day()-day, 0, 0, 0, 0, time.UTC).Unix()
}
func qExportSchema(db *sql.DB) error {
	for _, s := range []string{
		`CREATE TABLE IF NOT EXISTS api_users(id TEXT PRIMARY KEY,name TEXT NOT NULL,token_hash TEXT UNIQUE NOT NULL,device TEXT NOT NULL DEFAULT '',enabled INTEGER NOT NULL DEFAULT 1,created INTEGER NOT NULL)`,
		`CREATE TABLE IF NOT EXISTS exports(id TEXT PRIMARY KEY,user_id TEXT NOT NULL,request_id TEXT NOT NULL,protocol TEXT NOT NULL,port INTEGER NOT NULL,total INTEGER NOT NULL,created INTEGER NOT NULL,expires INTEGER NOT NULL,up INTEGER NOT NULL DEFAULT 0,down INTEGER NOT NULL DEFAULT 0,status TEXT NOT NULL,data BLOB NOT NULL,UNIQUE(user_id,request_id))`,
		`CREATE INDEX IF NOT EXISTS exports_user_created ON exports(user_id,created)`} {
		if _, err := db.Exec(s); err != nil {
			return err
		}
	}
	return qAccountSchema(db)
}
func (a *QinglianController) exportQuotaValue(id string) (gin.H, error) {
	start := qWeek(time.Now())
	var used int64
	err := a.store.db.QueryRow(`SELECT COALESCE(SUM(total),0) FROM exports WHERE user_id=? AND kind='export' AND created>=?`, id, start).Scan(&used)
	var up, down int64
	if err == nil {
		err = a.store.db.QueryRow(`SELECT COALESCE(SUM(up),0),COALESCE(SUM(down),0) FROM exports WHERE user_id=?`, id).Scan(&up, &down)
	}
	return gin.H{"cumulativeUploadBytes": up, "cumulativeDownloadBytes": down, "cumulativeTotalBytes": up + down, "weeklyBytes": qWeeklyBytes, "allocatedBytes": used, "remainingBytes": qWeeklyBytes - used, "weekStartsAt": start, "resetsAt": start + qWeekSeconds, "nodeValiditySeconds": qWeekSeconds, "protocols": []string{"vmess", "vless", "trojan", "shadowsocks", "hysteria2"}, "maxActivePerUser": 8, "maxActiveTotal": 16}, err
}
func (a *QinglianController) exportQuota(c *gin.Context) {
	value, err := a.exportQuotaValue(c.GetString("exportUser"))
	if err != nil {
		c.Status(503)
		return
	}
	c.JSON(200, value)
}
func (a *QinglianController) apiUsers(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	rows, err := a.store.db.Query(`SELECT id,name,username,(SELECT COUNT(*) FROM api_sessions s WHERE s.user_id=api_users.id),enabled,created,history_consent FROM api_users WHERE id NOT IN (SELECT user_id FROM guest_sessions) ORDER BY created DESC`)
	if err != nil {
		c.Status(503)
		return
	}
	users := []gin.H{}
	for rows.Next() {
		var id, name, username string
		var enabled, consent bool
		var deviceCount int
		var created int64
		if rows.Scan(&id, &name, &username, &deviceCount, &enabled, &created, &consent) != nil {
			rows.Close()
			c.Status(503)
			return
		}
		users = append(users, gin.H{"id": id, "name": name, "username": username, "deviceBound": deviceCount > 0, "deviceCount": deviceCount, "historyConsent": consent, "enabled": enabled, "created": created})
	}
	rows.Close()
	for _, u := range users {
		q, err := a.exportQuotaValue(u["id"].(string))
		if err != nil {
			c.Status(503)
			return
		}
		u["quota"] = q
	}
	c.JSON(200, gin.H{"users": users, "weeklyBytes": qWeeklyBytes, "resetTimezone": "UTC Monday 00:00"})
}
func (a *QinglianController) addAPIUser(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	var in struct {
		Name     string `json:"name"`
		Username string `json:"username"`
		Password string `json:"password"`
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 2048)
	if c.ShouldBindJSON(&in) != nil || strings.TrimSpace(in.Name) == "" || len(in.Name) > 128 {
		c.Status(400)
		return
	}
	id, token := qRandom(16), qRandom(32)
	if in.Username != "" || in.Password != "" {
		if !qValidAccount(in.Username, in.Password) {
			c.Status(400)
			return
		}
		hash, e := bcrypt.GenerateFromPassword([]byte(in.Password), 12)
		if e != nil {
			c.Status(503)
			return
		}
		_, e = a.store.db.Exec(`INSERT INTO api_users(id,name,username,password_hash,token_hash,created) VALUES(?,?,?,?,?,?)`, id, strings.TrimSpace(in.Name), strings.ToLower(in.Username), string(hash), qHash(token), time.Now().Unix())
		if e != nil {
			c.Status(409)
			return
		}
		c.JSON(201, gin.H{"id": id, "username": in.Username, "requiresAppConsent": true})
		return
	}
	_, err := a.store.db.Exec(`INSERT INTO api_users(id,name,token_hash,created) VALUES(?,?,?,?)`, id, strings.TrimSpace(in.Name), qHash(token), time.Now().Unix())
	if err != nil {
		c.Status(503)
		return
	}
	c.JSON(201, gin.H{"id": id, "token": token, "message": "Credential shown once. Bind an Android ID in the App before exporting."})
}
func (a *QinglianController) revokeAPIUser(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	id := c.Param("id")
	res, err := a.store.db.Exec(`UPDATE api_users SET enabled=0 WHERE id=?`, id)
	if err != nil {
		c.Status(503)
		return
	}
	n, _ := res.RowsAffected()
	if n == 0 {
		c.Status(404)
		return
	}
	c.JSON(200, gin.H{"revoked": true})
}
func (a *QinglianController) exports(c *gin.Context) {
	id := c.GetString("exportUser")
	if id == "" {
		if !a.panelAuth(c) {
			return
		}
	}
	query := `SELECT e.id,e.user_id,u.name,e.protocol,e.total,e.up,e.down,e.created,e.expires,e.status,e.data,e.kind FROM exports e JOIN api_users u ON e.user_id=u.id`
	args := []interface{}{}
	if id != "" {
		query += ` WHERE e.user_id=? AND e.kind='export'`
		args = append(args, id)
	}
	query += ` ORDER BY e.created DESC LIMIT 256`
	rows, err := a.store.db.Query(query, args...)
	if err != nil {
		c.Status(503)
		return
	}
	defer rows.Close()
	nodes := []gin.H{}
	for rows.Next() {
		var ident, user, name, protocol, status, kind string
		var total, up, down, created, expires int64
		var data []byte
		if rows.Scan(&ident, &user, &name, &protocol, &total, &up, &down, &created, &expires, &status, &data, &kind) != nil {
			c.Status(503)
			return
		}
		node := gin.H{"id": ident, "userId": user, "userName": name, "protocol": protocol, "totalBytes": total, "uploadBytes": up, "downloadBytes": down, "createdAt": created, "expiresAt": expires, "status": status, "kind": kind}
		var metadata map[string]interface{}
		if json.Unmarshal(data, &metadata) == nil {
			node["remark"] = metadata["remark"]
		}
		if id != "" && expires > time.Now().Unix() && status == "active" {
			var profile map[string]interface{}
			if json.Unmarshal(data, &profile) != nil {
				c.Status(503)
				return
			}
			delete(profile, "inbound")
			node["profile"] = profile
		}
		nodes = append(nodes, node)
	}
	c.JSON(200, gin.H{"nodes": nodes})
}
func (a *QinglianController) revokeExport(c *gin.Context) {
	user := c.GetString("exportUser")
	if user == "" {
		if !a.updateWriteAuth(c) {
			return
		}
	}
	query := `UPDATE exports SET status='revoked' WHERE id=?`
	args := []interface{}{c.Param("id")}
	if user != "" {
		query += ` AND user_id=?`
		args = append(args, user)
	}
	result, err := a.store.db.Exec(query, args...)
	if err != nil {
		c.Status(503)
		return
	}
	count, _ := result.RowsAffected()
	if count == 0 {
		c.Status(404)
		return
	}
	c.JSON(200, gin.H{"revoked": true, "quotaRefunded": false})
}
func (a *QinglianController) createExport(c *gin.Context) {
	var in struct {
		RequestID string `json:"requestId"`
		Protocol  string `json:"protocol"`
		SizeMiB   int64  `json:"sizeMiB"`
		Remark    string `json:"remark"`
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 2048)
	if c.ShouldBindJSON(&in) != nil || !qUUID.MatchString(in.RequestID) || in.SizeMiB < 1 || in.SizeMiB > 256*1024 {
		c.Status(400)
		return
	}
	switch in.Protocol {
	case "vmess", "vless", "trojan", "shadowsocks", "hysteria2":
	default:
		c.Status(400)
		return
	}

	if len(in.Remark) > 192 || strings.IndexFunc(in.Remark, unicode.IsControl) >= 0 {
		c.Status(400)
		return
	}
	user := c.GetString("exportUser")
	a.store.mu.Lock()
	defer a.store.mu.Unlock()
	var old, oldProtocol string
	var oldTotal int64
	var oldData []byte
	err := a.store.db.QueryRow(`SELECT id,protocol,total,data FROM exports WHERE user_id=? AND request_id=?`, user, in.RequestID).Scan(&old, &oldProtocol, &oldTotal, &oldData)
	if err == nil {
		var metadata map[string]interface{}
		json.Unmarshal(oldData, &metadata)
		// Idempotency keys identify one immutable request, including its optional name.
		label := strings.TrimSpace(in.Remark)
		expected := label
		if expected == "" {
			expected = "Qinglian-" + in.Protocol + "-" + old[:6]
		}
		if oldProtocol != in.Protocol || oldTotal != in.SizeMiB*1048576 || metadata["remark"] != expected {
			c.JSON(409, gin.H{"error": "idempotency key already used for another export"})
			return
		}
		c.JSON(200, gin.H{"id": old, "existing": true})
		return
	}
	if err != sql.ErrNoRows {
		c.Status(503)
		return
	}
	now := time.Now().Unix()
	var spent, own, all int64
	if a.store.db.QueryRow(`SELECT COALESCE(SUM(total),0) FROM exports WHERE user_id=? AND kind='export' AND created>=?`, user, qWeek(time.Now())).Scan(&spent) != nil {
		c.Status(503)
		return
	}
	if in.SizeMiB*1048576 > qWeeklyBytes-spent {
		c.JSON(409, gin.H{"error": "weekly export allocation exhausted"})
		return
	}
	if a.store.db.QueryRow(`SELECT COUNT(*),COALESCE(SUM(CASE WHEN user_id=? THEN 1 ELSE 0 END),0) FROM exports WHERE expires>? AND status IN ('pending','active','error')`, user, now).Scan(&all, &own) != nil {
		c.Status(503)
		return
	}
	if own >= 8 || all >= 16 {
		c.JSON(409, gin.H{"error": "active node capacity reached; revoke unused exports first"})
		return
	}
	port := 0
	for attempt := 0; attempt < 100; attempt++ {
		b := make([]byte, 2)
		if _, err = rand.Read(b); err != nil {
			c.Status(503)
			return
		}
		candidate := 22000 + (int(b[0])*256+int(b[1]))%2000
		var count int
		if a.store.db.QueryRow(`SELECT COUNT(*) FROM exports WHERE port=?`, candidate).Scan(&count) != nil {
			c.Status(503)
			return
		}
		if count != 0 {
			continue
		}
		if in.Protocol == "hysteria2" {
			socket, err := net.ListenPacket("udp", ":"+strconv.Itoa(candidate))
			if err != nil {
				continue
			}
			socket.Close()
		} else {
			socket, err := net.Listen("tcp", ":"+strconv.Itoa(candidate))
			if err != nil {
				continue
			}
			socket.Close()
		}
		port = candidate
		break
	}
	if port == 0 {
		c.Status(503)
		return
	}
	id := qRandom(16)
	if len(in.Remark) > 192 || strings.IndexFunc(in.Remark, func(r rune) bool { return unicode.IsControl(r) }) >= 0 {
		c.Status(400)
		return
	}
	profile, err := a.exportProfile(in.Protocol, port, id, strings.TrimSpace(in.Remark))
	if err != nil {
		c.JSON(503, gin.H{"error": "export engine certificates unavailable"})
		return
	}
	data, err := json.Marshal(profile)
	if err != nil {
		c.Status(503)
		return
	}
	_, err = a.store.db.Exec(`INSERT INTO exports(id,user_id,request_id,protocol,port,total,created,expires,status,data) VALUES(?,?,?,?,?,?,?,?,?,?)`, id, user, in.RequestID, in.Protocol, port, in.SizeMiB*1048576, now, now+qWeekSeconds, "pending", data)
	if err != nil {
		c.Status(503)
		return
	}
	c.JSON(202, gin.H{"id": id, "status": "pending", "expiresAt": now + qWeekSeconds})
}
func (a *QinglianController) exportProfile(protocol string, port int, id string, remarks ...string) (map[string]interface{}, error) {
	secret := qRandom(32)
	uuid := fmt.Sprintf("%s-%s-4%s-a%s-%s", secret[:8], secret[8:12], secret[13:16], secret[17:20], secret[20:32])
	host := a.cfg.ServerAddress
	label := "Qinglian-" + protocol + "-" + id[:6]
	if len(remarks) > 0 && remarks[0] != "" {
		label = remarks[0]
	}
	ca, err := os.ReadFile(filepath.Join(filepath.Dir(a.cfg.TLS.Certificate), "ca.pem"))
	if err != nil {
		return nil, err
	}
	node := map[string]interface{}{"protocol": protocol, "add": host, "port": port, "net": "tcp", "type": "none", "tls": "tls", "sni": host, "caPem": string(ca), "ps": label}
	settings := map[string]interface{}{}
	stream := map[string]interface{}{"network": "tcp", "security": "tls", "tlsSettings": map[string]interface{}{"certificates": []interface{}{map[string]interface{}{"certificateFile": a.cfg.TLS.Certificate, "keyFile": a.cfg.TLS.PrivateKey}}}}
	link := ""
	authority := net.JoinHostPort(host, strconv.Itoa(port))
	query := url.Values{"security": {"tls"}, "type": {"tcp"}, "sni": {host}}
	if protocol == "vmess" || protocol == "vless" {
		node["id"] = uuid
		node["aid"] = 0
		settings["clients"] = []interface{}{map[string]interface{}{"id": uuid, "alterId": 0}}
		if protocol == "vless" {
			settings["decryption"] = "none"
			query.Set("encryption", "none")
			link = "vless://" + uuid + "@" + authority + "?" + query.Encode() + "#" + url.PathEscape(label)
		} else {
			n := map[string]interface{}{"v": "2", "ps": label, "add": host, "port": strconv.Itoa(port), "id": uuid, "aid": "0", "scy": "auto", "net": "tcp", "type": "none", "host": "", "path": "", "tls": "tls", "sni": host}
			b, _ := json.Marshal(n)
			link = "vmess://" + base64.StdEncoding.EncodeToString(b)
		}
	} else if protocol == "trojan" {
		node["password"] = secret
		settings["clients"] = []interface{}{map[string]interface{}{"password": secret}}
		link = "trojan://" + secret + "@" + authority + "?" + query.Encode() + "#" + url.PathEscape(label)
	} else if protocol == "shadowsocks" {
		node["password"] = secret
		node["method"] = "chacha20-ietf-poly1305"
		node["tls"] = "none"
		settings = map[string]interface{}{"method": "chacha20-ietf-poly1305", "password": secret, "network": "tcp,udp"}
		stream = map[string]interface{}{"network": "tcp", "security": "none"}
		link = "ss://" + base64.RawURLEncoding.EncodeToString([]byte("chacha20-ietf-poly1305:"+secret)) + "@" + authority + "#" + url.PathEscape(label)
	} else if protocol == "hysteria2" {
		node["auth"] = secret
		node["tls"] = "tls"
		link = "hysteria2://" + secret + "@" + authority + "/?sni=" + url.QueryEscape(host) + "#" + url.PathEscape(label)
	}
	var clientConfig map[string]interface{}
	if protocol == "hysteria2" {
		clientConfig = map[string]interface{}{"server": authority, "auth": secret, "tls": map[string]interface{}{"sni": host, "ca": "qinglian-ca.pem", "insecure": false}, "socks5": map[string]interface{}{"listen": "127.0.0.1:1080"}, "quic": map[string]interface{}{"disablePathMTUDiscovery": true, "keepAlivePeriod": "10s"}}
	} else {
		server := map[string]interface{}{"address": host, "port": port}
		clientSettings := map[string]interface{}{}
		if protocol == "vmess" || protocol == "vless" {
			user := map[string]interface{}{"id": uuid}
			if protocol == "vmess" {
				user["alterId"] = 0
				user["security"] = "auto"
			} else {
				user["encryption"] = "none"
			}
			server["users"] = []interface{}{user}
			clientSettings["vnext"] = []interface{}{server}
		} else {
			server["password"] = secret
			if protocol == "shadowsocks" {
				server["method"] = "chacha20-ietf-poly1305"
			}
			clientSettings["servers"] = []interface{}{server}
		}
		clientStream := map[string]interface{}{"network": "tcp", "security": "none"}
		if protocol != "shadowsocks" {
			clientStream["security"] = "tls"
			clientStream["tlsSettings"] = map[string]interface{}{"serverName": host, "allowInsecure": false, "certificates": []interface{}{map[string]interface{}{"usage": "verify", "certificate": strings.Split(strings.TrimSpace(string(ca)), "\n")}}}
		}
		clientConfig = map[string]interface{}{"log": map[string]interface{}{"loglevel": "none"}, "inbounds": []interface{}{map[string]interface{}{"listen": "127.0.0.1", "port": 1080, "protocol": "socks", "settings": map[string]interface{}{"udp": true}}}, "outbounds": []interface{}{map[string]interface{}{"protocol": protocol, "settings": clientSettings, "streamSettings": clientStream}}}
	}
	inbound := map[string]interface{}{"tag": "export-" + id, "listen": "0.0.0.0", "port": port, "protocol": protocol, "settings": settings, "streamSettings": stream}
	return map[string]interface{}{"node": node, "uri": link, "remark": label, "caPem": string(ca), "inbound": inbound, "clientConfig": clientConfig, "tlsNotice": "Import the supplied CA into the client; certificate verification must stay enabled."}, nil
}
