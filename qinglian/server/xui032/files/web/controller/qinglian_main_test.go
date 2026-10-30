package controller

import (
	"encoding/json"
	"github.com/gin-gonic/gin"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"
	"x-ui/database"
	"x-ui/database/model"
)

func TestQMainCredentialsSeparateUsersAndPreserveExportAllocation(t *testing.T) {
	a, r, token, device := qExportFixture(t)
	qExportRequest(r, "POST", "/exports/bind", `{"historyConsent":"domains-permanent-v1"}`, token, device)
	dir := t.TempDir()
	if e := database.InitDB(filepath.Join(dir, "panel.db")); e != nil {
		t.Fatal(e)
	}
	a.cfg.OwnerID = 7
	a.cfg.NodeUUID = qTestID
	a.cfg.TLS.Certificate = filepath.Join(dir, "server.pem")
	os.WriteFile(filepath.Join(dir, "ca.pem"), []byte("fixture-public-ca"), 0600)
	parent := model.Inbound{UserId: 7, Protocol: model.VMess, Enable: true, Total: 1024, Port: 12345, Settings: `{"clients":[{"id":"` + qTestID + `"}]}`, StreamSettings: `{"network":"tcp","security":"none"}`}
	if e := database.GetDB().Create(&parent).Error; e != nil {
		t.Fatal(e)
	}
	a.store.db.Exec(`INSERT INTO preferences(id,inbound) VALUES(1,?)`, parent.Id)
	r.POST("/main-fixture", func(c *gin.Context) {
		c.Set("exportUser", c.GetHeader("Test-User"))
		if c.GetString("exportUser") == "" {
			c.Set("exportUser", "fixture")
		}
	}, a.accountProfile)
	w := qExportRequest(r, "POST", "/main-fixture", "{}", token, device)
	if w.Code != 200 {
		t.Fatal(w.Code, w.Body.String())
	}
	var first map[string]interface{}
	json.Unmarshal(w.Body.Bytes(), &first)
	if first["ready"] != false || strings.Contains(w.Body.String(), qTestID) {
		t.Fatal("shared credentials or premature readiness")
	}
	var id string
	var expiry int64
	a.store.db.QueryRow(`SELECT id,expires FROM exports WHERE kind='main'`).Scan(&id, &expiry)
	if expiry < time.Now().Unix()+170 {
		t.Fatal("main lease missing")
	}
	a.store.db.Exec(`UPDATE exports SET status='active' WHERE id=?`, id)
	w = qExportRequest(r, "POST", "/main-fixture", "{}", token, device)
	var next map[string]interface{}
	json.Unmarshal(w.Body.Bytes(), &next)
	if next["ready"] != true || first["revision"] != next["revision"] {
		t.Fatal("main credentials rotated on heartbeat")
	}
	// The experiment must never rotate or tune the compatibility node.
	boosted := qExportRequest(r, "POST", "/main-fixture", `{"labHy2":true}`, token, device)
	var experiment map[string]interface{}
	json.Unmarshal(boosted.Body.Bytes(), &experiment)
	if boosted.Code != 200 || experiment["revision"] != first["revision"] || experiment["labHy2"] != false {
		t.Fatal("compatibility unexpectedly changed by HY2 experiment")
	}
	if qExportRequest(r, "POST", "/main-fixture", `{"labHy2":"maximum"}`, token, device).Code != 400 {
		t.Fatal("invalid experiment value accepted")
	}
	quota, e := a.exportQuotaValue("fixture")
	if e != nil || quota["allocatedBytes"] != int64(0) {
		t.Fatal("main deducted weekly allocation")
	}

	// Each requested TCP protocol is independently metered under the same main parent.
	for _, protocol := range []string{"vless", "trojan"} {
		w = qExportRequest(r, "POST", "/main-fixture", `{"tcpProtocol":"`+protocol+`"}`, token, device)
		var value map[string]interface{}
		json.Unmarshal(w.Body.Bytes(), &value)
		if w.Code != 200 || value["tcpProtocol"] != protocol {
			t.Fatal("TCP protocol not acknowledged", w.Code)
		}
		node := value["node"].(map[string]interface{})
		if node["protocol"] != protocol || node["tls"] != "tls" || node["caPem"] != "fixture-public-ca" {
			t.Fatal("TCP protocol or CA changed")
		}
	}
	for _, bad := range []string{`{"tcpProtocol":"reality"}`, `{"tcpProtocol":"hysteria2"}`, `{"tcpProtocol":true}`} {
		if qExportRequest(r, "POST", "/main-fixture", bad, token, device).Code != 400 {
			t.Fatal("invalid protocol accepted")
		}
	}
	w = qExportRequest(r, "POST", "/main-fixture", "{}", token, device)
	json.Unmarshal(w.Body.Bytes(), &next)
	if next["revision"] != first["revision"] {
		t.Fatal("default worker rotated by protocol comparison")
	}
	quota, e = a.exportQuotaValue("fixture")
	if e != nil || quota["allocatedBytes"] != int64(0) {
		t.Fatal("TCP main deducted weekly export budget")
	}
	// Guest comparison keeps one 64GiB total instead of allocating per protocol.
	r.POST("/guest-main-fixture", func(c *gin.Context) { c.Set("exportUser", "fixture"); c.Set("guest", true) }, a.accountProfile)
	for _, protocol := range []string{"vless", "trojan"} {
		if qExportRequest(r, "POST", "/guest-main-fixture", `{"tcpProtocol":"`+protocol+`"}`, token, device).Code != 200 {
			t.Fatal("guest TCP unavailable")
		}
	}
	a.store.db.Exec(`UPDATE exports SET up=100,down=200 WHERE user_id='fixture' AND kind='guest'`)
	guest, e := a.guestQuotaValue("fixture")
	if e != nil || guest["usedBytes"] != int64(600) || guest["remainingBytes"] != qGuestBytes-600 {
		t.Fatal("guest per-protocol quota not combined")
	}
	a.cfg.CDNCompatibility = true
	a.cfg.TLS.DomainName = "cdn.fixture"
	a.apiPrefix = "/api/v1/"
	request := httptest.NewRequest("POST", "/main-fixture", strings.NewReader("{}"))
	request.Header.Set("User-Agent", "Qinglian/fixture (Android)")
	request.Header.Set("X-Qinglian-Device", device)
	recorder := httptest.NewRecorder()
	r.ServeHTTP(recorder, request)
	var cdn map[string]interface{}
	json.Unmarshal(recorder.Body.Bytes(), &cdn)
	node := cdn["node"].(map[string]interface{})
	original := first["node"].(map[string]interface{})
	if recorder.Code != 200 || node["net"] != "ws" || node["add"] != "cdn.fixture" || node["port"] != float64(443) || node["caPem"] != nil || node["id"] != original["id"] || cdn["revision"] == first["revision"] {
		t.Fatal("Android CDN did not retain credentials or separate TLS trust")
	}
	direct := qExportRequest(r, "POST", "/main-fixture", `{"cdnCompatibility":false}`, token, device)
	var raw map[string]interface{}
	json.Unmarshal(direct.Body.Bytes(), &raw)
	if raw["revision"] != first["revision"] || raw["node"].(map[string]interface{})["net"] != "tcp" {
		t.Fatal("raw transport/TUN credentials changed")
	}
	database.GetDB().Model(&parent).Update("enable", false)
	if qExportRequest(r, "POST", "/main-fixture", "{}", token, device).Code != 503 {
		t.Fatal("disabled parent allowed main")
	}
}
