package controller

import (
	"github.com/gin-gonic/gin"
	"net"
	"strconv"
	"sync"
)

var qSpeedSlots = struct {
	sync.Mutex
	total int
	users map[string]int
}{users: make(map[string]int)}
var qSpeedPayload = make([]byte, 32768) // TLS + VPN encryption; HTTP compression is explicitly disabled.

// The endpoint is reachable only through the metered VPN server, never directly
// from a phone. Authentication and account/guest quota remain on the VPN path.
func (a *QinglianController) speedDownload(c *gin.Context) {
	host, _, err := net.SplitHostPort(c.Request.RemoteAddr)
	peer := net.ParseIP(host)
	if err != nil || peer == nil || (!peer.IsLoopback() && !peer.Equal(net.ParseIP(a.cfg.ServerAddress))) {
		c.Status(403)
		return
	}
	size, err := strconv.ParseInt(c.Query("bytes"), 10, 64)
	if err != nil || size < 1 || size > 32*1024*1024 {
		c.Status(400)
		return
	}
	user := c.GetString("exportUser")
	if user == "" {
		c.Status(401)
		return
	}
	qSpeedSlots.Lock()
	if qSpeedSlots.total >= 8 || qSpeedSlots.users[user] >= 4 {
		qSpeedSlots.Unlock()
		c.Header("Retry-After", "2")
		c.Status(429)
		return
	}
	qSpeedSlots.total++
	qSpeedSlots.users[user]++
	qSpeedSlots.Unlock()
	defer func() {
		qSpeedSlots.Lock()
		qSpeedSlots.total--
		qSpeedSlots.users[user]--
		if qSpeedSlots.users[user] == 0 {
			delete(qSpeedSlots.users, user)
		}
		qSpeedSlots.Unlock()
	}()
	c.Header("Content-Type", "application/octet-stream")
	c.Header("Content-Length", strconv.FormatInt(size, 10))
	c.Header("Cache-Control", "no-store")
	c.Header("Content-Encoding", "identity")
	c.Header("X-Qinglian-Speed", "server-v1")
	c.Status(200)
	for size > 0 {
		select {
		case <-c.Request.Context().Done():
			return
		default:
		}
		n := int64(len(qSpeedPayload))
		if n > size {
			n = size
		}
		written, e := c.Writer.Write(qSpeedPayload[:int(n)])
		size -= int64(written)
		if e != nil || written == 0 {
			return
		}
	}
}
