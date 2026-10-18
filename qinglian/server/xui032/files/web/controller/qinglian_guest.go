package controller

import (
	"crypto/subtle"
	"database/sql"
	"github.com/gin-gonic/gin"
	"net/http"
	"strings"
	"time"
)

const qGuestBytes int64 = 64 * 1024 * 1024 * 1024

func qGuestSchema(db *sql.DB) error {
	_, e := db.Exec(`CREATE TABLE IF NOT EXISTS guest_sessions(user_id TEXT PRIMARY KEY,device TEXT NOT NULL,request_id TEXT NOT NULL,token_hash TEXT NOT NULL UNIQUE,active INTEGER NOT NULL DEFAULT 1,created INTEGER NOT NULL,UNIQUE(device,request_id))`)
	return e
}
func (a *QinglianController) guestQuotaValue(user string) (gin.H, error) {
	var up, down int64
	e := a.store.db.QueryRow(`SELECT COALESCE(SUM(up),0),COALESCE(SUM(down),0) FROM exports WHERE user_id=? AND kind='guest'`, user).Scan(&up, &down)
	left := qGuestBytes - up - down
	if left < 0 {
		left = 0
	}
	return gin.H{"limitBytes": qGuestBytes, "uploadBytes": up, "downloadBytes": down, "usedBytes": up + down, "remainingBytes": left, "domainHistory": false}, e
}
func (a *QinglianController) startGuest(c *gin.Context) {
	if c.Request.TLS == nil {
		c.Status(426)
		return
	}
	device := qValidDevice(c)
	var in struct {
		RequestID string `json:"requestId"`
		Key       string `json:"sessionKey"`
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 2048)
	if device == "" || c.ShouldBindJSON(&in) != nil || !qUUID.MatchString(in.RequestID) || !qDigest(in.Key) {
		c.Status(400)
		return
	}
	a.store.mu.Lock()
	defer a.store.mu.Unlock()
	var old, hash string
	var active bool
	e := a.store.db.QueryRow(`SELECT user_id,token_hash,active FROM guest_sessions WHERE device=? AND request_id=?`, device, in.RequestID).Scan(&old, &hash, &active)
	if e == nil {
		if !active || subtle.ConstantTimeCompare([]byte(hash), []byte(qHash(in.Key))) != 1 {
			c.Status(409)
			return
		}
		c.JSON(200, gin.H{"id": old, "existing": true, "limitBytes": qGuestBytes})
		return
	}
	if e != sql.ErrNoRows {
		c.Status(503)
		return
	}
	tx, e := a.store.db.Begin()
	if e != nil {
		c.Status(503)
		return
	}
	defer tx.Rollback()
	if _, e = tx.Exec(`UPDATE exports SET status='revoked' WHERE user_id IN (SELECT user_id FROM guest_sessions WHERE device=? AND active=1)`, device); e != nil {
		c.Status(503)
		return
	}
	if _, e = tx.Exec(`UPDATE api_users SET enabled=0 WHERE id IN (SELECT user_id FROM guest_sessions WHERE device=? AND active=1)`, device); e != nil {
		c.Status(503)
		return
	}
	if _, e = tx.Exec(`UPDATE guest_sessions SET active=0 WHERE device=?`, device); e != nil {
		c.Status(503)
		return
	}
	id := qRandom(16)
	now := time.Now().Unix()
	if _, e = tx.Exec(`INSERT INTO api_users(id,name,token_hash,created) VALUES(?,?,?,?)`, id, "访客·"+id[:6], qHash(qRandom(32)), now); e != nil {
		c.Status(503)
		return
	}
	if _, e = tx.Exec(`INSERT INTO guest_sessions(user_id,device,request_id,token_hash,created) VALUES(?,?,?,?,?)`, id, device, in.RequestID, qHash(in.Key), now); e != nil {
		c.Status(503)
		return
	}
	if tx.Commit() != nil {
		c.Status(503)
		return
	}
	c.JSON(201, gin.H{"id": id, "limitBytes": qGuestBytes, "domainHistory": false})
}
func (a *QinglianController) guestAuth(c *gin.Context) {
	qNoStore(c)
	if c.Request.TLS == nil {
		c.AbortWithStatus(426)
		return
	}
	if a.store == nil {
		c.AbortWithStatus(503)
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
		c.AbortWithStatus(429)
		return
	}
	device := qValidDevice(c)
	token := strings.TrimPrefix(c.GetHeader("Authorization"), "Bearer ")
	if device == "" || !qDigest(token) {
		c.AbortWithStatus(401)
		return
	}
	var user string
	e := a.store.db.QueryRow(`SELECT s.user_id FROM guest_sessions s JOIN api_users u ON u.id=s.user_id WHERE s.token_hash=? AND s.device=? AND s.active=1 AND u.enabled=1`, qHash(token), device).Scan(&user)
	if e != nil {
		c.AbortWithStatus(401)
		return
	}
	c.Set("exportUser", user)
	c.Set("guest", true)
	c.Next()
}
func (a *QinglianController) guestQuota(c *gin.Context) {
	q, e := a.guestQuotaValue(c.GetString("exportUser"))
	if e != nil {
		c.Status(503)
		return
	}
	c.JSON(200, q)
}
func (a *QinglianController) stopGuest(c *gin.Context) {
	user := c.GetString("exportUser")
	a.store.mu.Lock()
	defer a.store.mu.Unlock()
	tx, e := a.store.db.Begin()
	if e != nil {
		c.Status(503)
		return
	}
	defer tx.Rollback()
	if _, e = tx.Exec(`UPDATE guest_sessions SET active=0 WHERE user_id=?`, user); e != nil {
		c.Status(503)
		return
	}
	if _, e = tx.Exec(`UPDATE api_users SET enabled=0 WHERE id=?`, user); e != nil {
		c.Status(503)
		return
	}
	if tx.Commit() != nil {
		c.Status(503)
		return
	}
	c.JSON(200, gin.H{"stopped": true})
}
