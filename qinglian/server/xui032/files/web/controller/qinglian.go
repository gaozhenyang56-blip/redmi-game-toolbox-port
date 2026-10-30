// GPL-3.0. Overlay for vaxilu/x-ui tag 0.3.2 only.
package controller

import (
	"context"
	"crypto/sha256"
	"crypto/subtle"
	"crypto/tls"
	"database/sql"
	"encoding/hex"
	"encoding/json"
	"errors"
	"io"
	"math"
	"net"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"sync"
	"time"
	"unicode"

	"github.com/gin-gonic/gin"
	_ "github.com/mattn/go-sqlite3"
	"x-ui/database"
	"x-ui/database/model"
	"x-ui/web/session"
)

var qUUID = regexp.MustCompile(`^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$`)
var qExportRoute = regexp.MustCompile(`^(register|login|logout|bind|quota|profile|speed|history|nodes|nodes/[0-9a-f]{32}/revoke)$`)
var qUnavailable = errors.New("qinglian unavailable")

type qTLSConfig struct {
	Port              int      `json:"port"`
	HTTPSPort         int      `json:"httpsPort,omitempty"`
	DomainName        string   `json:"domainName,omitempty"`
	DomainCertificate string   `json:"domainCertificate,omitempty"`
	DomainPrivateKey  string   `json:"domainPrivateKey,omitempty"`
	CDNCIDRs          []string `json:"cdnCidrs,omitempty"`
	Certificate       string   `json:"certificate"`
	PrivateKey        string   `json:"privateKey"`
}
type qConfig struct {
	OwnerID           int        `json:"ownerId"`
	ServerAddress     string     `json:"serverAddress"`
	TLS               qTLSConfig `json:"tls"`
	ClientToken       string     `json:"clientToken"`
	NodeUUID          string     `json:"nodeUuid"`
	StatePath         string     `json:"statePath"`
	TrustedProxyCIDRs []string   `json:"trustedProxyCidrs"`
}
type qDevice struct {
	ProfileRevision string   `json:"profileRevision,omitempty"`
	DeviceID        string   `json:"deviceId"`
	SessionID       string   `json:"sessionId"`
	Generation      int64    `json:"generation"`
	Sequence        int64    `json:"sequence"`
	Online          *bool    `json:"online"`
	DeviceName      string   `json:"deviceName"`
	Brand           string   `json:"brand"`
	Model           string   `json:"model"`
	Android         string   `json:"androidVersion"`
	App             string   `json:"appVersion"`
	Up              *int64   `json:"uploadBytes"`
	Down            *int64   `json:"downloadBytes"`
	UpRate          *float64 `json:"uploadRate"`
	DownRate        *float64 `json:"downloadRate"`
	IP              string   `json:"sourceIp,omitempty"`
	Started         int64    `json:"startedAt,omitempty"`
	Seen            int64    `json:"lastSeen,omitempty"`
}

func (d *qDevice) valid() bool {
	if d.ProfileRevision != "" {
		if len(d.ProfileRevision) != 64 {
			return false
		}
		if _, err := hex.DecodeString(d.ProfileRevision); err != nil {
			return false
		}
	}
	if !qUUID.MatchString(d.DeviceID) || !qUUID.MatchString(d.SessionID) || d.Generation <= 0 || d.Sequence <= 0 || d.Online == nil || d.Up == nil || d.Down == nil || d.UpRate == nil || d.DownRate == nil {
		return false
	}
	if *d.Up < 0 || *d.Down < 0 {
		return false
	}
	for _, v := range []float64{*d.UpRate, *d.DownRate} {
		if math.IsNaN(v) || math.IsInf(v, 0) || v < 0 || v > 1e13 {
			return false
		}
	}
	for _, s := range []string{d.DeviceName, d.Brand, d.Model, d.Android, d.App} {
		if len(s) > 384 || strings.IndexFunc(s, unicode.IsControl) >= 0 {
			return false
		}
	}
	return true
}

type qStore struct {
	db *sql.DB
	mu sync.Mutex
}

func qOpen(path string) (*qStore, error) {
	if !filepath.IsAbs(path) || strings.ContainsAny(path, "?\x00") {
		return nil, qUnavailable
	}
	if err := os.MkdirAll(filepath.Dir(path), 0700); err != nil {
		return nil, err
	}
	db, err := sql.Open("sqlite3", path+"?_busy_timeout=5000")
	if err != nil {
		return nil, err
	}
	db.SetMaxOpenConns(1)
	if err = db.Ping(); err != nil {
		db.Close()
		return nil, err
	}
	if err = os.Chmod(path, 0600); err != nil {
		db.Close()
		return nil, err
	}
	_, err = db.Exec(`CREATE TABLE IF NOT EXISTS devices (id TEXT PRIMARY KEY,session TEXT NOT NULL,generation INTEGER NOT NULL,sequence INTEGER NOT NULL,seen INTEGER NOT NULL,started INTEGER NOT NULL,online INTEGER NOT NULL,data BLOB)`)
	if err != nil {
		db.Close()
		return nil, err
	}
	if _, err = db.Exec(`CREATE TABLE IF NOT EXISTS preferences (id INTEGER PRIMARY KEY,inbound INTEGER NOT NULL)`); err != nil {
		db.Close()
		return nil, err
	}
	if _, err = db.Exec(`CREATE TABLE IF NOT EXISTS windows_updates (revision INTEGER PRIMARY KEY,data BLOB NOT NULL)`); err != nil {
		db.Close()
		return nil, err
	}
	if _, err = db.Exec(`CREATE TABLE IF NOT EXISTS updates (revision INTEGER PRIMARY KEY,data BLOB NOT NULL)`); err != nil {
		db.Close()
		return nil, err
	}
	baseline, _ := json.Marshal(qUpdate{Schema: 1, UI: qDefaultUI()})
	if _, err = db.Exec(`INSERT OR IGNORE INTO updates(revision,data) VALUES(0,?)`, baseline); err != nil {
		db.Close()
		return nil, err
	}
	if err = qExportSchema(db); err != nil {
		db.Close()
		return nil, err
	}
	return &qStore{db: db}, nil
}
func (s *qStore) put(d qDevice, ip string, now int64) error {
	if !d.valid() {
		return errors.New("invalid event")
	}
	d.DeviceID = strings.ToLower(d.DeviceID)
	d.SessionID = strings.ToLower(d.SessionID)
	s.mu.Lock()
	defer s.mu.Unlock()
	tx, err := s.db.Begin()
	if err != nil {
		return err
	}
	defer tx.Rollback()
	if _, err = tx.Exec(`UPDATE devices SET data=NULL,online=0 WHERE seen<?`, now-7*86400*1000); err != nil {
		return err
	}
	var oldSession string
	var generation, sequence, started int64
	var online bool
	err = tx.QueryRow(`SELECT session,generation,sequence,started,online FROM devices WHERE id=?`, d.DeviceID).Scan(&oldSession, &generation, &sequence, &started, &online)
	if err != nil && err != sql.ErrNoRows {
		return err
	}
	if err == nil {
		if d.Generation < generation || (d.Generation == generation && (d.SessionID != oldSession || d.Sequence <= sequence || (*d.Online && !online))) {
			return tx.Commit()
		}
	} else {
		var count int
		if err = tx.QueryRow(`SELECT count(*) FROM devices`).Scan(&count); err != nil {
			return err
		}
		if count >= 1000 {
			return errors.New("device capacity")
		}
	}
	if d.Generation != generation || d.SessionID != oldSession {
		started = now
	}
	d.DeviceID = strings.ToLower(d.DeviceID)
	d.SessionID = strings.ToLower(d.SessionID)
	d.IP = ip
	d.Started = started
	d.Seen = now
	if !*d.Online {
		zero := float64(0)
		d.UpRate = &zero
		d.DownRate = &zero
	}
	data, err := json.Marshal(d)
	if err != nil {
		return err
	}
	_, err = tx.Exec(`INSERT OR REPLACE INTO devices(id,session,generation,sequence,seen,started,online,data) VALUES(?,?,?,?,?,?,?,?)`, d.DeviceID, d.SessionID, d.Generation, d.Sequence, now, started, *d.Online, data)
	if err != nil {
		return err
	}
	return tx.Commit()
}
func (s *qStore) snapshot(now int64) ([]qDevice, int, error) {
	s.mu.Lock()
	defer s.mu.Unlock()
	// Remove detail blobs even if no further heartbeats arrive; keep only ordering tombstones.
	if _, err := s.db.Exec(`UPDATE devices SET data=NULL,online=0 WHERE seen<?`, now-7*86400*1000); err != nil {
		return nil, 0, err
	}
	rows, err := s.db.Query(`SELECT data FROM devices WHERE data IS NOT NULL ORDER BY seen DESC`)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()
	result := make([]qDevice, 0)
	count := 0
	for rows.Next() {
		var data []byte
		if err = rows.Scan(&data); err != nil {
			return nil, 0, err
		}
		var d qDevice
		if err = json.Unmarshal(data, &d); err != nil || d.Online == nil {
			return nil, 0, qUnavailable
		}
		live := *d.Online && now-d.Seen <= 30000
		d.Online = &live
		if live {
			count++
		}
		result = append(result, d)
	}
	return result, count, rows.Err()
}

type QinglianController struct {
	ssh         *qSSHState
	tlsServer   *http.Server
	httpsServer *http.Server
	apiPrefix   string
	BaseController
	cfg        qConfig
	store      *qStore
	proxies    []*net.IPNet
	rateMu     sync.Mutex
	rateSecond int64
	rateCount  int
}

func NewQinglianController(g *gin.RouterGroup) *QinglianController {
	a := &QinglianController{apiPrefix: strings.TrimSuffix(g.BasePath(), "/") + "/api/v1/", ssh: qNewSSHState()}
	path := os.Getenv("QINGLIAN_CONFIG")
	if path == "" {
		path = "/etc/x-ui/qinglian.json"
	}
	if info, err := os.Stat(path); err == nil && info.Mode().Perm()&0077 == 0 {
		if data, err := os.ReadFile(path); err == nil && json.Unmarshal(data, &a.cfg) == nil && len(a.cfg.ClientToken) >= 32 && qUUID.MatchString(a.cfg.NodeUUID) && a.cfg.OwnerID > 0 {
			valid := true
			for _, cidr := range a.cfg.TrustedProxyCIDRs {
				_, network, err := net.ParseCIDR(cidr)
				if err != nil {
					valid = false
					break
				}
				a.proxies = append(a.proxies, network)
			}
			if a.cfg.StatePath == "" {
				a.cfg.StatePath = "/etc/x-ui/qinglian/devices.sqlite3"
			}
			if valid {
				a.store, _ = qOpen(a.cfg.StatePath)
			}
		}
	}
	api := g.Group("/api/v1")
	api.Use(a.client)
	api.GET("/online", a.online)
	api.GET("/quota", a.quota)
	api.GET("/profile", a.profile)
	api.GET("/updates", a.updates)
	api.GET("/windows/updates", a.windowsUpdates)
	api.GET("/windows/package/:digest", a.downloadWindows)
	api.POST("/guest/start", a.startGuest)
	api.GET("/apk/:digest", a.downloadAPK)
	api.POST("/heartbeat", a.heartbeat)
	panel := g.Group("/xui")
	panel.GET("/qinglian", a.checkLogin, func(c *gin.Context) { html(c, "qinglian.html", "在线设备", nil) })
	panel.GET("/qinglian/ssh", a.sshPage)
	panel.GET("/qinglian/ssh/ws", a.sshSocket)
	panel.GET("/qinglian/manage/:section", a.checkLogin, func(c *gin.Context) {
		switch c.Param("section") {
		case "accounts", "nodes", "history", "updates", "devices":
			html(c, "qinglian.html", "轻连管理", nil)
		default:
			c.Status(404)
		}
	})
	panel.GET("/qinglian/devices", a.devices)
	panel.GET("/qinglian/selection", a.selection)
	panel.POST("/qinglian/selection", a.selectNode)
	panel.GET("/qinglian/acceleration", a.hyStatus)
	panel.POST("/qinglian/acceleration", a.hyConfigure)
	panel.GET("/qinglian/updates", a.adminUpdates)
	panel.POST("/qinglian/updates", a.saveUpdates)
	panel.POST("/qinglian/updates/rollback", a.rollbackUpdates)
	panel.POST("/qinglian/updates/apk", a.uploadAPK)
	panel.GET("/qinglian/windows", a.adminWindows)
	panel.POST("/qinglian/windows", a.saveWindows)
	panel.POST("/qinglian/windows/rollback", a.rollbackWindows)
	panel.POST("/qinglian/windows/import", a.importWindows)
	guest := g.Group("/api/v1/guest")
	guest.Use(a.guestAuth)
	guest.POST("/profile", a.accountProfile)
	guest.GET("/quota", a.guestQuota)
	guest.GET("/speed", a.speedDownload)
	guest.POST("/stop", a.stopGuest)
	publicAccounts := g.Group("/api/v1/exports")
	publicAccounts.POST("/register", a.account)
	publicAccounts.POST("/login", a.account)
	exports := g.Group("/api/v1/exports")
	exports.Use(a.exportAuth)
	exports.POST("/bind", a.exportQuota)
	exports.GET("/quota", a.exportQuota)
	exports.GET("/speed", a.speedDownload)
	exports.POST("/logout", a.logoutAccount)
	exports.POST("/profile", a.accountProfile)
	exports.GET("/history", a.domainHistory)
	exports.GET("/nodes", a.exports)
	exports.POST("/nodes", a.createExport)
	exports.POST("/nodes/:id/revoke", a.revokeExport)
	panel.GET("/qinglian/api-users", a.apiUsers)
	panel.POST("/qinglian/api-users", a.addAPIUser)
	panel.POST("/qinglian/api-users/:id/revoke", a.revokeAPIUser)
	panel.GET("/qinglian/exports", a.exports)
	panel.GET("/qinglian/history", a.domainHistory)
	panel.POST("/qinglian/exports/:id/revoke", a.revokeExport)
	return a
}
func qNoStore(c *gin.Context) {
	c.Header("Cache-Control", "no-store")
	c.Header("X-Content-Type-Options", "nosniff")
}
func (a *QinglianController) client(c *gin.Context) {
	qNoStore(c)
	if a.store == nil {
		c.AbortWithStatusJSON(503, gin.H{"error": "not configured"})
		return
	}
	if subtle.ConstantTimeCompare([]byte(c.GetHeader("Authorization")), []byte("Bearer "+a.cfg.ClientToken)) != 1 {
		c.AbortWithStatusJSON(401, gin.H{"error": "unauthorized"})
		return
	}
	a.rateMu.Lock()
	now := time.Now().Unix()
	if now != a.rateSecond {
		a.rateSecond = now
		a.rateCount = 0
	}
	a.rateCount++
	limited := a.rateCount > 100
	a.rateMu.Unlock()
	if limited {
		c.AbortWithStatusJSON(429, gin.H{"error": "rate limited"})
		return
	}
	c.Next()
}
func (a *QinglianController) heartbeat(c *gin.Context) {
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 8192)
	var d qDevice
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	err := decoder.Decode(&d)
	if err != nil || decoder.Decode(new(interface{})) != io.EOF || !d.valid() {
		c.JSON(400, gin.H{"error": "invalid request"})
		return
	}
	host, _, _ := net.SplitHostPort(c.Request.RemoteAddr)
	ip := net.ParseIP(host)
	for _, network := range a.proxies {
		if network.Contains(ip) {
			if forwarded := net.ParseIP(c.GetHeader("X-Real-IP")); forwarded != nil {
				host = forwarded.String()
			}
			break
		}
	}
	if err = a.store.put(d, host, time.Now().UnixNano()/1e6); err != nil {
		c.JSON(503, gin.H{"error": "presence unavailable"})
		return
	}
	c.JSON(200, gin.H{"ok": true})
}
func (a *QinglianController) online(c *gin.Context) {
	_, count, err := a.store.snapshot(time.Now().UnixNano() / 1e6)
	if err != nil {
		c.JSON(503, gin.H{"error": "presence unavailable"})
		return
	}
	c.JSON(200, gin.H{"online": count})
}

// x-ui 0.3.2 has inbound-level counters. Only a unique, single-client inbound can be treated as this device group's quota.
func (a *QinglianController) bootstrap() (*model.Inbound, error) {
	var rows []model.Inbound
	if err := database.GetDB().Where("protocol = ? AND user_id = ?", model.VMess, a.cfg.OwnerID).Find(&rows).Error; err != nil {
		return nil, err
	}
	var found *model.Inbound
	for _, row := range rows {
		var settings struct {
			Clients []struct {
				ID string `json:"id"`
			} `json:"clients"`
		}
		if json.Unmarshal([]byte(row.Settings), &settings) != nil {
			continue
		}
		for _, client := range settings.Clients {
			if strings.EqualFold(client.ID, a.cfg.NodeUUID) {
				if found != nil || len(settings.Clients) != 1 {
					return nil, qUnavailable
				}
				copy := row
				found = &copy
			}
		}
	}
	if found == nil {
		return nil, qUnavailable
	}
	return found, nil
}
func (a *QinglianController) target() (*model.Inbound, error) {
	var selected int
	err := a.store.db.QueryRow(`SELECT inbound FROM preferences WHERE id=1`).Scan(&selected)
	if err == sql.ErrNoRows {
		initial, err := a.bootstrap()
		if err != nil {
			return nil, err
		}
		if _, err = a.store.db.Exec(`INSERT OR IGNORE INTO preferences(id,inbound) VALUES(1,?)`, initial.Id); err != nil {
			return nil, err
		}
		selected = initial.Id
	} else if err != nil {
		return nil, err
	}
	var row model.Inbound
	if err = database.GetDB().Where("id=? AND user_id=?", selected, a.cfg.OwnerID).First(&row).Error; err != nil {
		return nil, err
	}
	if _, err = a.node(&row); err != nil {
		return nil, err
	}
	return &row, nil
}
func (a *QinglianController) node(row *model.Inbound) (map[string]interface{}, error) {
	return a.protocolNode(row)
}
func (a *QinglianController) profile(c *gin.Context) {
	row, err := a.target()
	if err != nil {
		c.JSON(503, gin.H{"error": "selected node unavailable"})
		return
	}
	node, err := a.node(row)
	if err != nil {
		c.JSON(503, gin.H{"error": "selected node unavailable"})
		return
	}
	encoded, _ := json.Marshal(node)
	hash := sha256.Sum256(encoded)
	label := row.Remark
	if label == "" {
		label = "专属节点"
	}
	c.JSON(200, gin.H{"node": node, "revision": hex.EncodeToString(hash[:]), "label": label, "acceleration": a.acceleration(row.Id)})
}
func (a *QinglianController) panelAuth(c *gin.Context) bool {
	qNoStore(c)
	if !session.IsLogin(c) {
		c.JSON(401, gin.H{"error": "panel login required"})
		return false
	}
	if a.store == nil {
		c.JSON(503, gin.H{"error": "not configured"})
		return false
	}
	if session.GetLoginUser(c).Id != a.cfg.OwnerID {
		c.JSON(403, gin.H{"error": "forbidden"})
		return false
	}
	return true
}
func (a *QinglianController) selection(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	var rows []model.Inbound
	if err := database.GetDB().Where("user_id=?", a.cfg.OwnerID).Order("id").Find(&rows).Error; err != nil {
		c.JSON(503, gin.H{"error": "nodes unavailable"})
		return
	}
	nodes := make([]gin.H, 0)
	for _, row := range rows {
		_, err := a.node(&row)
		available := err == nil && row.Enable
		label := row.Remark
		if label == "" {
			label = "节点"
		}
		reason := ""
		if !available {
			reason = "需启用的单客户端VMess/VLESS/Trojan或单密码Shadowsocks；TCP/WS，安全TLS，非Reality/XTLS"
		}
		nodes = append(nodes, gin.H{"id": row.Id, "name": label, "port": row.Port, "protocol": string(row.Protocol), "available": available, "reason": reason})
	}
	selected := 0
	if row, err := a.target(); err == nil {
		selected = row.Id
	}
	c.JSON(200, gin.H{"nodes": nodes, "selectedId": selected})
}
func (a *QinglianController) selectNode(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	if c.GetHeader("X-Requested-With") != "XMLHttpRequest" {
		c.JSON(403, gin.H{"error": "same-origin request required"})
		return
	}
	if origin := c.GetHeader("Origin"); origin != "" {
		parsed, err := url.Parse(origin)
		if err != nil || (parsed.Scheme != "http" && parsed.Scheme != "https") || parsed.Host != c.Request.Host {
			c.JSON(403, gin.H{"error": "origin rejected"})
			return
		}
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 1024)
	var choice struct {
		InboundID int `json:"inboundId"`
	}
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	if decoder.Decode(&choice) != nil || decoder.Decode(new(interface{})) != io.EOF || choice.InboundID <= 0 {
		c.JSON(400, gin.H{"error": "invalid selection"})
		return
	}
	var row model.Inbound
	if err := database.GetDB().Where("id=? AND user_id=?", choice.InboundID, a.cfg.OwnerID).First(&row).Error; err != nil {
		c.JSON(404, gin.H{"error": "node not found"})
		return
	}
	if _, err := a.node(&row); err != nil || !row.Enable {
		c.JSON(400, gin.H{"error": "unsupported or disabled node"})
		return
	}
	if _, err := a.store.db.Exec(`INSERT OR REPLACE INTO preferences(id,inbound) VALUES(1,?)`, row.Id); err != nil {
		c.JSON(503, gin.H{"error": "selection unavailable"})
		return
	}
	c.JSON(200, gin.H{"ok": true})
}
func qQuota(row *model.Inbound) (gin.H, error) {
	if row.Up < 0 || row.Down < 0 || row.Total < 0 || row.ExpiryTime < 0 || row.Up > math.MaxInt64-row.Down || row.ExpiryTime > math.MaxInt64-999 {
		return nil, qUnavailable
	}
	expiry := (row.ExpiryTime + 999) / 1000
	used := row.Up + row.Down
	if !row.Enable && !(row.Total > 0 && used >= row.Total) && !(row.ExpiryTime > 0 && row.ExpiryTime <= time.Now().UnixNano()/1e6) {
		return nil, qUnavailable
	}
	return gin.H{"upload": row.Up, "download": row.Down, "total": row.Total, "expire": expiry}, nil
}
func (a *QinglianController) quota(c *gin.Context) {
	row, err := a.target()
	if err != nil {
		c.JSON(503, gin.H{"error": "quota unavailable"})
		return
	}
	value, err := qQuota(row)
	if err != nil {
		c.JSON(503, gin.H{"error": "quota unavailable"})
		return
	}
	c.JSON(200, value)
}
func (a *QinglianController) devices(c *gin.Context) {
	qNoStore(c)
	if !session.IsLogin(c) {
		c.JSON(401, gin.H{"error": "panel login required"})
		return
	}
	if a.store == nil {
		c.JSON(503, gin.H{"error": "not configured"})
		return
	}
	row, err := a.target()
	if err != nil {
		c.JSON(503, gin.H{"error": "node unavailable"})
		return
	}
	if session.GetLoginUser(c).Id != row.UserId {
		c.JSON(403, gin.H{"error": "forbidden"})
		return
	}
	rows, count, err := a.store.snapshot(time.Now().UnixNano() / 1e6)
	if err != nil {
		c.JSON(503, gin.H{"error": "presence unavailable"})
		return
	}
	c.JSON(200, gin.H{"devices": rows, "online": count, "ttl": 30})
}

// StartTLS exposes only App endpoints. Both listeners use the same TLS and route
// boundary, preserve the real peer, and leave panel HTTP and HY2 UDP unchanged.
func (a *QinglianController) StartTLS(engine http.Handler) error {
	if a.store == nil || a.cfg.TLS.Port == 0 {
		return nil
	}
	if a.cfg.TLS.Port < 1024 || a.cfg.TLS.Port > 65535 || !filepath.IsAbs(a.cfg.TLS.Certificate) || !filepath.IsAbs(a.cfg.TLS.PrivateKey) {
		return qUnavailable
	}
	certificate, err := tls.LoadX509KeyPair(a.cfg.TLS.Certificate, a.cfg.TLS.PrivateKey)
	if err != nil {
		return err
	}
	domainCertificate, cdnNetworks, err := a.domainTLS()
	if err != nil {
		return err
	}
	listener, err := net.Listen("tcp", net.JoinHostPort("0.0.0.0", strconv.Itoa(a.cfg.TLS.Port)))
	if err != nil {
		return err
	}
	server := &http.Server{ReadHeaderTimeout: 5 * time.Second, ReadTimeout: 10 * time.Second, WriteTimeout: 300 * time.Second, IdleTimeout: 60 * time.Second,
		Handler: http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			switch r.URL.Path {
			case a.apiPrefix + "windows/updates", a.apiPrefix + "guest/start", a.apiPrefix + "guest/profile", a.apiPrefix + "guest/quota", a.apiPrefix + "guest/stop", a.apiPrefix + "guest/speed", a.apiPrefix + "updates", a.apiPrefix + "online", a.apiPrefix + "quota", a.apiPrefix + "heartbeat", a.apiPrefix + "profile":
				engine.ServeHTTP(w, r)
			default:
				if strings.HasPrefix(r.URL.Path, a.apiPrefix+"windows/package/") && qDigest(strings.TrimPrefix(r.URL.Path, a.apiPrefix+"windows/package/")) || strings.HasPrefix(r.URL.Path, a.apiPrefix+"exports/") && qExportRoute.MatchString(strings.TrimPrefix(r.URL.Path, a.apiPrefix+"exports/")) || strings.HasPrefix(r.URL.Path, a.apiPrefix+"apk/") && qDigest(strings.TrimPrefix(r.URL.Path, a.apiPrefix+"apk/")) {
					engine.ServeHTTP(w, r)
				} else {
					http.NotFound(w, r)
				}
			}
		})}
	server.Handler = a.domainHandler(server.Handler, engine, cdnNetworks)
	tlsConfig := &tls.Config{Certificates: []tls.Certificate{certificate}, MinVersion: tls.VersionTLS12, NextProtos: []string{"http/1.1"}}
	if domainCertificate != nil {
		tlsConfig.Certificates = append(tlsConfig.Certificates, *domainCertificate)
	}
	// Bind every configured listener before serving any of them. On failure no
	// half-installed listener or background goroutine may survive.
	var https net.Listener
	if port := a.cfg.TLS.HTTPSPort; port != 0 {
		if port != 443 {
			listener.Close()
			return qUnavailable
		}
		https, err = net.Listen("tcp", "0.0.0.0:443")
		if err != nil {
			listener.Close()
			return err
		}
	}
	a.tlsServer = server
	go server.Serve(tls.NewListener(listener, tlsConfig))
	if https != nil {
		a.httpsServer = &http.Server{ReadHeaderTimeout: server.ReadHeaderTimeout, ReadTimeout: server.ReadTimeout, WriteTimeout: server.WriteTimeout, IdleTimeout: server.IdleTimeout, Handler: server.Handler}
		go a.httpsServer.Serve(tls.NewListener(https, tlsConfig))
	}
	return nil
}
func (a *QinglianController) Close() {
	a.ssh.close()
	if a.tlsServer != nil || a.httpsServer != nil {
		ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
		defer cancel()
		if a.httpsServer != nil {
			a.httpsServer.Shutdown(ctx)
		}
		if a.tlsServer != nil {
			a.tlsServer.Shutdown(ctx)
		}
	}
	if a.store != nil {
		a.store.db.Close()
	}
}
