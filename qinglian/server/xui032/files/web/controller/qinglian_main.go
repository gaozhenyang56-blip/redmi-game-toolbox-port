package controller

import (
	"database/sql"
	"encoding/json"
	"github.com/gin-gonic/gin"
	"io"
	"net"
	"strconv"
	"time"
)

// Each account owns separate credentials; devices of that account share them.
// Main traffic consumes the panel-selected parent quota, never export allocation.
func (a *QinglianController) accountProfile(c *gin.Context) {
	var options struct {
		LabHy2 bool `json:"labHy2"`
	}
	if c.Request.Body != nil {
		if e := json.NewDecoder(io.LimitReader(c.Request.Body, 4096)).Decode(&options); e != nil && e != io.EOF {
			c.Status(400)
			return
		}
	}
	device := qValidDevice(c)
	if options.LabHy2 && device == "" {
		c.Status(400)
		return
	}
	parent, err := a.target()
	if err != nil {
		c.Status(503)
		return
	}
	if !parent.Enable || parent.Total > 0 && parent.Up+parent.Down >= parent.Total || parent.ExpiryTime > 0 && parent.ExpiryTime <= time.Now().UnixMilli() {
		c.Status(503)
		return
	}
	selected, err := a.node(parent)
	if err != nil {
		c.Status(503)
		return
	}
	protocol, _ := selected["protocol"].(string)
	if protocol == "" {
		protocol = "vmess"
	}
	user := c.GetString("exportUser")
	kind := "main"
	limit := int64(1 << 62)
	label := "账号独立"
	var guestQuota gin.H
	if c.GetBool("guest") {
		kind = "guest"
		limit = qGuestBytes
		label = "访客 · 单次64GB"
		guestQuota, err = a.guestQuotaValue(user)
		if err != nil {
			c.Status(503)
			return
		}
		if guestQuota["remainingBytes"].(int64) <= 0 {
			c.JSON(200, gin.H{"ready": false, "quota": guestQuota})
			return
		}
	}

	now := time.Now().Unix()
	a.store.mu.Lock()
	defer a.store.mu.Unlock()
	makeNode := func(p string) (map[string]interface{}, bool, error) {
		request := kind + ":" + strconv.Itoa(parent.Id) + ":" + p
		experimental := options.LabHy2 && p == "hysteria2"
		if experimental {
			request += ":lab:" + device
		} else if p == "hysteria2" && device != "" {
			// Only this device's experiment is retired; other devices keep their leases.
			if _, e := a.store.db.Exec(`UPDATE exports SET status='expired',expires=? WHERE user_id=? AND request_id=? AND status!='revoked'`, now, user, request+":lab:"+device); e != nil {
				return nil, false, e
			}
		}
		var id, status string
		var data []byte
		var previousExpiry int64
		e := a.store.db.QueryRow(`SELECT id,status,data,expires FROM exports WHERE user_id=? AND request_id=?`, user, request).Scan(&id, &status, &data, &previousExpiry)
		if e == sql.ErrNoRows {
			var active, own int
			if e = a.store.db.QueryRow(`SELECT COUNT(*),COALESCE(SUM(CASE WHEN user_id=? THEN 1 ELSE 0 END),0) FROM exports WHERE expires>? AND status IN ('pending','active','error')`, user, now).Scan(&active, &own); e != nil {
				return nil, false, e
			}
			if active >= 16 || own >= 8 {
				return nil, false, qUnavailable
			}
			id = qRandom(16)
			port := 0
			for i := 0; i < 100; i++ {
				candidate := 22000 + int(time.Now().UnixNano()%2000)
				var occupied int
				if e = a.store.db.QueryRow(`SELECT COUNT(*) FROM exports WHERE port=? AND (kind!='guest' OR (expires>? AND status IN ('pending','active','error')))`, candidate, now).Scan(&occupied); e != nil {
					return nil, false, e
				}
				if occupied > 0 {
					continue
				}
				if p == "hysteria2" {
					socket, e := net.ListenPacket("udp", ":"+strconv.Itoa(candidate))
					if e != nil {
						continue
					}
					socket.Close()
				} else {
					socket, e := net.Listen("tcp", ":"+strconv.Itoa(candidate))
					if e != nil {
						continue
					}
					socket.Close()
				}
				port = candidate
				break
			}
			if port == 0 {
				return nil, false, qUnavailable
			}
			profile, e := a.exportProfile(p, port, id, label+" · "+p)
			if e != nil {
				return nil, false, e
			}
			if experimental {
				profile["node"].(map[string]interface{})["hy2Performance"] = "aggressive-v1"
			}
			data, e = json.Marshal(profile)
			if e != nil {
				return nil, false, e
			}
			_, e = a.store.db.Exec(`INSERT INTO exports(id,user_id,request_id,protocol,port,total,created,expires,status,data,kind,parent_id) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)`, id, user, request, p, port, limit, now, now+180, "pending", data, kind, parent.Id)
			if e != nil {
				return nil, false, e
			}
			status = "pending"
		} else if e != nil {
			return nil, false, e
		} else if status == "revoked" {
			return nil, false, qUnavailable
		}
		nextStatus := status
		if status == "expired" || status == "exhausted" {
			nextStatus = "pending"
		}
		if _, e = a.store.db.Exec(`UPDATE exports SET expires=?,status=? WHERE id=?`, now+180, nextStatus, id); e != nil {
			return nil, false, e
		}
		var profile map[string]interface{}
		if e = json.Unmarshal(data, &profile); e != nil {
			return nil, false, e
		}
		return map[string]interface{}{"node": profile["node"], "revision": qHash(string(data)), "label": label + " · " + p + map[bool]string{true: " · 性能实验"}[experimental]}, status == "active" && previousExpiry > now, nil
	}
	primary, ready, err := makeNode(protocol)
	if err != nil {
		c.Status(503)
		return
	}
	// Acceleration remains controlled by the existing panel switch and parent selection.
	if a.acceleration(parent.Id) != nil {
		hy, hyReady, e := makeNode("hysteria2")
		if e != nil {
			c.Status(503)
			return
		}
		primary["acceleration"] = hy
		ready = ready && hyReady
	}
	// Switching the selected parent stops the old main workers after final accounting.
	if _, err = a.store.db.Exec(`UPDATE exports SET status='expired',expires=? WHERE user_id=? AND kind IN ('main','guest') AND parent_id!=? AND status!='revoked'`, now, user, parent.Id); err != nil {
		c.Status(503)
		return
	}
	if guestQuota != nil {
		primary["quota"] = guestQuota
	}
	primary["labHy2"] = options.LabHy2 && primary["acceleration"] != nil
	primary["ready"] = ready
	c.JSON(200, primary)
}
