package controller

import (
	"database/sql"
	"encoding/hex"
	"github.com/gin-gonic/gin"
	"golang.org/x/crypto/bcrypt"
	"net"
	"net/http"
	"strconv"
	"strings"
	"sync"
	"time"
	"unicode"
	"unicode/utf8"
)

const qHistoryConsent = "domains-permanent-v1"

var qAccountSlots = make(chan struct{}, 2)
var qAccountRate = struct {
	sync.Mutex
	since int64
	byIP  map[string]int
}{byIP: map[string]int{}}

func qAccountSchema(db *sql.DB) error {
	if e := qGuestSchema(db); e != nil {
		return e
	}
	columns := map[string]string{"username": "TEXT NOT NULL DEFAULT ''", "password_hash": "TEXT NOT NULL DEFAULT ''", "history_consent": "INTEGER NOT NULL DEFAULT 0", "consented_at": "INTEGER NOT NULL DEFAULT 0"}
	rows, err := db.Query(`PRAGMA table_info(api_users)`)
	if err != nil {
		return err
	}
	found := map[string]bool{}
	for rows.Next() {
		var id, notnull, pk int
		var name, kind string
		var value interface{}
		if err = rows.Scan(&id, &name, &kind, &notnull, &value, &pk); err != nil {
			rows.Close()
			return err
		}
		found[name] = true
	}
	rows.Close()
	for name, kind := range columns {
		if !found[name] {
			if _, err = db.Exec("ALTER TABLE api_users ADD COLUMN " + name + " " + kind); err != nil {
				return err
			}
		}
	}
	for _, query := range []string{`CREATE UNIQUE INDEX IF NOT EXISTS api_username ON api_users(username) WHERE username!=''`, `CREATE TABLE IF NOT EXISTS device_registrations(device TEXT PRIMARY KEY,user_id TEXT NOT NULL,created INTEGER NOT NULL)`, `CREATE TABLE IF NOT EXISTS api_sessions(token_hash TEXT PRIMARY KEY,user_id TEXT NOT NULL,device TEXT NOT NULL,created INTEGER NOT NULL,expires INTEGER NOT NULL,UNIQUE(user_id,device))`, `CREATE TABLE IF NOT EXISTS history(id INTEGER PRIMARY KEY AUTOINCREMENT,user_id TEXT NOT NULL,node_id TEXT NOT NULL,domain TEXT NOT NULL,bucket INTEGER NOT NULL,first_seen INTEGER NOT NULL,last_seen INTEGER NOT NULL,hits INTEGER NOT NULL,UNIQUE(user_id,node_id,domain,bucket))`, `CREATE INDEX IF NOT EXISTS history_user ON history(user_id,id)`} {
		if _, err = db.Exec(query); err != nil {
			return err
		}
	}
	// Separate main App leases from weekly export allocation. Existing rows stay exports.
	mainColumns := map[string]string{"kind": "TEXT NOT NULL DEFAULT 'export'", "parent_id": "INTEGER NOT NULL DEFAULT 0"}
	for name, kind := range mainColumns {
		cols, e := db.Query(`PRAGMA table_info(exports)`)
		if e != nil {
			return e
		}
		exists := false
		for cols.Next() {
			var cid, nn, pk int
			var n, t string
			var d interface{}
			if e = cols.Scan(&cid, &n, &t, &nn, &d, &pk); e != nil {
				cols.Close()
				return e
			}
			if n == name {
				exists = true
			}
		}
		cols.Close()
		if !exists {
			if _, e = db.Exec("ALTER TABLE exports ADD COLUMN " + name + " " + kind); e != nil {
				return e
			}
		}
	}
	return nil
}
func qValidDevice(c *gin.Context) string {
	d := c.GetHeader("X-Qinglian-Device")
	if len(d) != 64 {
		return ""
	}
	if _, err := hex.DecodeString(d); err != nil {
		return ""
	}
	return d
}
func qValidAccount(name, password string) bool {
	return utf8.RuneCountInString(name) >= 3 && utf8.RuneCountInString(name) <= 32 && strings.IndexFunc(name, func(r rune) bool { return unicode.IsSpace(r) || unicode.IsControl(r) }) < 0 && len(password) >= 8 && len(password) <= 72
}
func (a *QinglianController) account(c *gin.Context) {
	qNoStore(c)
	if c.Request.TLS == nil {
		c.AbortWithStatus(426)
		return
	}
	if a.store == nil {
		c.Status(503)
		return
	}
	device := qValidDevice(c)
	if device == "" {
		c.Status(400)
		return
	}
	var in struct {
		Username string `json:"username"`
		Password string `json:"password"`
		Consent  string `json:"historyConsent"`
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 2048)
	if c.ShouldBindJSON(&in) != nil || !qValidAccount(in.Username, in.Password) || in.Consent != qHistoryConsent {
		c.JSON(400, gin.H{"error": "invalid account or explicit permanent domain-history consent missing"})
		return
	}
	in.Username = strings.ToLower(in.Username)
	ip, _, _ := net.SplitHostPort(c.Request.RemoteAddr)
	ip = qHash(ip)
	now := time.Now().Unix()
	qAccountRate.Lock()
	if now-qAccountRate.since >= 60 {
		qAccountRate.since = now
		qAccountRate.byIP = map[string]int{}
	}
	qAccountRate.byIP[ip]++
	limited := qAccountRate.byIP[ip] > 20 || len(qAccountRate.byIP) > 1024
	qAccountRate.Unlock()
	if limited {
		c.Status(429)
		return
	}
	select {
	case qAccountSlots <- struct{}{}:
		defer func() { <-qAccountSlots }()
	default:
		c.Status(429)
		return
	}
	register := strings.HasSuffix(c.Request.URL.Path, "/register")
	id := ""
	if register {
		hash, err := bcrypt.GenerateFromPassword([]byte(in.Password), 12)
		if err != nil {
			c.Status(503)
			return
		}
		a.store.mu.Lock()
		defer a.store.mu.Unlock()
		tx, err := a.store.db.Begin()
		if err != nil {
			c.Status(503)
			return
		}
		defer tx.Rollback()
		var existing string
		if err = tx.QueryRow(`SELECT user_id FROM device_registrations WHERE device=?`, device).Scan(&existing); err != sql.ErrNoRows {
			if err == nil {
				c.JSON(409, gin.H{"error": "device already registered; sign in to the existing account"})
			} else {
				c.Status(503)
			}
			return
		}
		id = qRandom(16)
		_, err = tx.Exec(`INSERT INTO api_users(id,name,username,password_hash,token_hash,created,history_consent,consented_at) VALUES(?,?,?,?,?,?,1,?)`, id, in.Username, in.Username, string(hash), qHash(qRandom(32)), now, now)
		if err != nil {
			c.JSON(409, gin.H{"error": "username unavailable"})
			return
		}
		if _, err = tx.Exec(`INSERT INTO device_registrations(device,user_id,created) VALUES(?,?,?)`, device, id, now); err != nil {
			c.Status(409)
			return
		}
		if tx.Commit() != nil {
			c.Status(503)
			return
		}
	} else {
		var hash string
		var enabled bool
		err := a.store.db.QueryRow(`SELECT id,password_hash,enabled FROM api_users WHERE username=?`, in.Username).Scan(&id, &hash, &enabled)
		if err != nil || !enabled || bcrypt.CompareHashAndPassword([]byte(hash), []byte(in.Password)) != nil {
			c.JSON(401, gin.H{"error": "invalid credentials"})
			return
		}
		if _, err = a.store.db.Exec(`UPDATE api_users SET history_consent=1,consented_at=? WHERE id=?`, now, id); err != nil {
			c.Status(503)
			return
		}
	}
	token := qRandom(32)
	_, err := a.store.db.Exec(`INSERT OR REPLACE INTO api_sessions(token_hash,user_id,device,created,expires) VALUES(?,?,?,?,?)`, qHash(token), id, device, now, now+90*86400)
	if err != nil {
		c.Status(503)
		return
	}
	c.JSON(200, gin.H{"token": token, "username": in.Username, "userId": id, "historyConsent": qHistoryConsent})
}
func (a *QinglianController) exportAuth(c *gin.Context) {
	qNoStore(c)
	if c.Request.TLS == nil {
		c.AbortWithStatus(426)
		return
	}
	if a.store == nil {
		c.AbortWithStatus(503)
		return
	}
	device := qValidDevice(c)
	authorization := c.GetHeader("Authorization")
	if !strings.HasPrefix(authorization, "Bearer ") || len(authorization) != 71 || device == "" {
		c.AbortWithStatus(401)
		return
	}
	token := authorization[7:]
	var id string
	var enabled, consent bool
	err := a.store.db.QueryRow(`SELECT u.id,u.enabled,u.history_consent FROM api_sessions s JOIN api_users u ON s.user_id=u.id WHERE s.token_hash=? AND s.device=? AND s.expires>?`, qHash(token), device, time.Now().Unix()).Scan(&id, &enabled, &consent)
	if err != nil {
		var bound string
		err = a.store.db.QueryRow(`SELECT id,device,enabled,history_consent FROM api_users WHERE token_hash=?`, qHash(token)).Scan(&id, &bound, &enabled, &consent)
		if err != nil || !enabled {
			c.AbortWithStatus(401)
			return
		}
		if c.Request.Method == "POST" && strings.HasSuffix(c.Request.URL.Path, "/bind") {
			var in struct {
				Consent string `json:"historyConsent"`
			}
			c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 2048)
			if c.ShouldBindJSON(&in) != nil || in.Consent != qHistoryConsent {
				c.AbortWithStatus(400)
				return
			}
			_, err = a.store.db.Exec(`UPDATE api_users SET device=?,history_consent=1,consented_at=? WHERE id=? AND (device='' OR device=?)`, device, time.Now().Unix(), id, device)
			if err != nil {
				c.AbortWithStatus(503)
				return
			}
			if a.store.db.QueryRow(`SELECT device,history_consent FROM api_users WHERE id=?`, id).Scan(&bound, &consent) != nil {
				c.AbortWithStatus(503)
				return
			}
		}
		if bound != device {
			c.AbortWithStatus(403)
			return
		}
	}
	if !enabled || !consent {
		c.AbortWithStatus(403)
		return
	}
	a.rateMu.Lock()
	now := time.Now().Unix()
	if a.rateSecond != now {
		a.rateSecond = now
		a.rateCount = 0
	}
	a.rateCount++
	limited := a.rateCount > 100
	a.rateMu.Unlock()
	if limited {
		c.AbortWithStatus(429)
		return
	}
	c.Set("exportUser", id)
}
func (a *QinglianController) domainHistory(c *gin.Context) {
	user := c.GetString("exportUser")
	if user == "" {
		if !a.panelAuth(c) {
			return
		}
		user = c.Query("userId")
	}
	before, err := strconv.ParseInt(c.DefaultQuery("before", "9223372036854775807"), 10, 64)
	if err != nil || before < 1 {
		c.Status(400)
		return
	}
	query := `SELECT h.id,h.user_id,u.name,h.node_id,h.domain,h.first_seen,h.last_seen,h.hits FROM history h JOIN api_users u ON h.user_id=u.id WHERE h.id<?`
	args := []interface{}{before}
	if user != "" {
		query += ` AND h.user_id=?`
		args = append(args, user)
	}
	query += ` ORDER BY h.id DESC LIMIT 200`
	rows, err := a.store.db.Query(query, args...)
	if err != nil {
		c.Status(503)
		return
	}
	defer rows.Close()
	records := []gin.H{}
	var cursor int64
	for rows.Next() {
		var id, first, last, hits int64
		var uid, name, node, domain string
		if rows.Scan(&id, &uid, &name, &node, &domain, &first, &last, &hits) != nil {
			c.Status(503)
			return
		}
		cursor = id
		records = append(records, gin.H{"id": id, "userId": uid, "userName": name, "nodeId": node, "domain": domain, "firstSeen": first, "lastSeen": last, "observations": hits})
	}
	c.JSON(200, gin.H{"records": records, "nextBefore": cursor, "hasMore": len(records) == 200, "retention": "permanent", "source": "proxy-connection-domains"})
}

func (a *QinglianController) logoutAccount(c *gin.Context) {
	token := strings.TrimPrefix(c.GetHeader("Authorization"), "Bearer ")
	_, e := a.store.db.Exec(`DELETE FROM api_sessions WHERE token_hash=? AND user_id=? AND device=?`, qHash(token), c.GetString("exportUser"), qValidDevice(c))
	if e != nil {
		c.Status(503)
		return
	}
	c.JSON(200, gin.H{"loggedOut": true})
}
