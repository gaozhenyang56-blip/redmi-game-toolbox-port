package controller

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"x-ui/database"
	"x-ui/database/model"
)

func TestQGuestNoAccountIdempotentCombined64GiBAndNewManualConnection(t *testing.T) {
	a, r, accountToken, device := qExportFixture(t)
	a.cfg.ClientToken = strings.Repeat("d", 64)
	r.POST("/guest/start", a.client, a.startGuest)
	g := r.Group("/guest")
	g.Use(a.guestAuth)
	g.POST("/profile", a.accountProfile)
	g.GET("/quota", a.guestQuota)
	g.POST("/stop", a.stopGuest)
	dir := t.TempDir()
	if e := database.InitDB(filepath.Join(dir, "panel.db")); e != nil {
		t.Fatal(e)
	}
	a.cfg.OwnerID = 7
	a.cfg.NodeUUID = qTestID
	a.cfg.TLS.Certificate = filepath.Join(dir, "server.pem")
	os.WriteFile(filepath.Join(dir, "ca.pem"), []byte("fixture-public-ca"), 0600)
	parent := model.Inbound{UserId: 7, Protocol: model.VMess, Enable: true, Total: qGuestBytes * 10, Port: 12345, Settings: `{"clients":[{"id":"` + qTestID + `"}]}`, StreamSettings: `{"network":"tcp","security":"none"}`}
	database.GetDB().Create(&parent)
	a.store.db.Exec(`INSERT INTO preferences(id,inbound) VALUES(1,?)`, parent.Id)
	key := strings.Repeat("e", 64)
	body := fmt.Sprintf(`{"requestId":"11111111-1111-4111-8111-111111111111","sessionKey":%q}`, key)
	first := qExportRequest(r, "POST", "/guest/start", body, a.cfg.ClientToken, device)
	if first.Code != 201 {
		t.Fatal(first.Code, first.Body.String())
	}
	var value map[string]interface{}
	json.Unmarshal(first.Body.Bytes(), &value)
	id := value["id"].(string)
	if qExportRequest(r, "POST", "/guest/start", body, a.cfg.ClientToken, device).Code != 200 {
		t.Fatal("guest start retry failed")
	}
	if qExportRequest(r, "POST", "/guest/start", strings.Replace(body, key, strings.Repeat("f", 64), 1), a.cfg.ClientToken, device).Code != 409 {
		t.Fatal("guest retry accepted changed key")
	}
	if qExportRequest(r, "GET", "/guest/quota", "", key, strings.Repeat("f", 64)).Code != 401 {
		t.Fatal("guest cross device access")
	}
	if qExportRequest(r, "GET", "/exports/nodes", "", key, device).Code != 401 {
		t.Fatal("guest accessed account exports")
	}
	if qExportRequest(r, "GET", "/guest/quota", "", accountToken, device).Code != 401 {
		t.Fatal("account credential accepted as guest")
	}
	profile := qExportRequest(r, "POST", "/guest/profile", "{}", key, device)
	if profile.Code != 200 {
		t.Fatal(profile.Code, profile.Body.String())
	}
	var kind string
	var total int64
	a.store.db.QueryRow(`SELECT kind,total FROM exports WHERE user_id=?`, id).Scan(&kind, &total)
	if kind != "guest" || total != qGuestBytes {
		t.Fatal("guest quota not assigned")
	}
	var consent bool
	a.store.db.QueryRow(`SELECT history_consent FROM api_users WHERE id=?`, id).Scan(&consent)
	if consent {
		t.Fatal("guest domain history enabled")
	}
	a.store.db.Exec(`UPDATE exports SET up=?,down=0 WHERE user_id=?`, qGuestBytes-100, id)
	a.store.db.Exec(`INSERT INTO exports(id,user_id,request_id,protocol,port,total,created,expires,status,data,kind,parent_id,up) VALUES('second',?,'second','hysteria2',23999,?,0,9999999999,'active','{}','guest',?,200)`, id, qGuestBytes, parent.Id)
	quota := qExportRequest(r, "GET", "/guest/quota", "", key, device)
	var q map[string]interface{}
	json.Unmarshal(quota.Body.Bytes(), &q)
	if q["remainingBytes"] != float64(0) {
		t.Fatal("guest did not combine channels")
	}
	exhausted := qExportRequest(r, "POST", "/guest/profile", "{}", key, device)
	if exhausted.Code != 200 || strings.Contains(exhausted.Body.String(), `"node"`) {
		t.Fatal("exhausted guest got a new node")
	}
	nextKey := strings.Repeat("f", 64)
	nextBody := strings.Replace(strings.Replace(body, "11111111-1111-4111-8111-111111111111", "22222222-2222-4222-8222-222222222222", 1), key, nextKey, 1)
	if qExportRequest(r, "POST", "/guest/start", nextBody, a.cfg.ClientToken, device).Code != 201 {
		t.Fatal("new manual session failed")
	}
	if qExportRequest(r, "GET", "/guest/quota", "", key, device).Code != 401 {
		t.Fatal("old guest token remained valid")
	}
	qGuest := qExportRequest(r, "GET", "/guest/quota", "", nextKey, device)
	json.Unmarshal(qGuest.Body.Bytes(), &q)
	if q["remainingBytes"] != float64(qGuestBytes) {
		t.Fatal("new manual quota not reset")
	}
	qExportRequest(r, "POST", "/guest/stop", "{}", nextKey, device)
	if qExportRequest(r, "GET", "/guest/quota", "", nextKey, device).Code != 401 {
		t.Fatal("stopped guest remained authorized")
	}
	var registrations int
	a.store.db.QueryRow(`SELECT COUNT(*) FROM device_registrations WHERE device=?`, device).Scan(&registrations)
	if registrations != 0 {
		t.Fatal("guest consumed device registration")
	}
}
