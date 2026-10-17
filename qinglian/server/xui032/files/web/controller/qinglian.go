// GPL-3.0. Overlay for vaxilu/x-ui tag 0.3.2 only.
package controller

import (
	"crypto/subtle"
	"database/sql"
	"encoding/json"
	"errors"
	"io"
	"math"
	"net"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
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
var qUnavailable = errors.New("qinglian unavailable")

type qConfig struct {
	ClientToken       string   `json:"clientToken"`
	NodeUUID          string   `json:"nodeUuid"`
	StatePath         string   `json:"statePath"`
	TrustedProxyCIDRs []string `json:"trustedProxyCidrs"`
}
type qDevice struct {
	DeviceID   string   `json:"deviceId"`
	SessionID  string   `json:"sessionId"`
	Generation int64    `json:"generation"`
	Sequence   int64    `json:"sequence"`
	Online     *bool    `json:"online"`
	DeviceName string   `json:"deviceName"`
	Brand      string   `json:"brand"`
	Model      string   `json:"model"`
	Android    string   `json:"androidVersion"`
	App        string   `json:"appVersion"`
	Up         *int64   `json:"uploadBytes"`
	Down       *int64   `json:"downloadBytes"`
	UpRate     *float64 `json:"uploadRate"`
	DownRate   *float64 `json:"downloadRate"`
	IP         string   `json:"sourceIp,omitempty"`
	Started    int64    `json:"startedAt,omitempty"`
	Seen       int64    `json:"lastSeen,omitempty"`
}

func (d *qDevice) valid() bool {
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
	BaseController
	cfg        qConfig
	store      *qStore
	proxies    []*net.IPNet
	rateMu     sync.Mutex
	rateSecond int64
	rateCount  int
}

func NewQinglianController(g *gin.RouterGroup) *QinglianController {
	a := &QinglianController{}
	path := os.Getenv("QINGLIAN_CONFIG")
	if path == "" {
		path = "/etc/x-ui/qinglian.json"
	}
	if info, err := os.Stat(path); err == nil && info.Mode().Perm()&0077 == 0 {
		if data, err := os.ReadFile(path); err == nil && json.Unmarshal(data, &a.cfg) == nil && len(a.cfg.ClientToken) >= 32 && qUUID.MatchString(a.cfg.NodeUUID) {
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
	api.POST("/heartbeat", a.heartbeat)
	panel := g.Group("/xui")
	panel.GET("/qinglian", a.checkLogin, func(c *gin.Context) { html(c, "qinglian.html", "在线设备", nil) })
	panel.GET("/qinglian/devices", a.devices)
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
func (a *QinglianController) target() (*model.Inbound, error) {
	var rows []model.Inbound
	if err := database.GetDB().Where("protocol = ?", model.VMess).Find(&rows).Error; err != nil {
		return nil, err
	}
	var match *model.Inbound
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
				if match != nil || len(settings.Clients) != 1 {
					return nil, qUnavailable
				}
				copy := row
				match = &copy
			}
		}
	}
	if match == nil {
		return nil, qUnavailable
	}
	return match, nil
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
