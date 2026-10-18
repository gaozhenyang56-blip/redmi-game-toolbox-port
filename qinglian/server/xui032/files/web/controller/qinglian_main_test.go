package controller

import (
	"encoding/json"
	"github.com/gin-gonic/gin"
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
	quota, e := a.exportQuotaValue("fixture")
	if e != nil || quota["allocatedBytes"] != int64(0) {
		t.Fatal("main deducted weekly allocation")
	}
	database.GetDB().Model(&parent).Update("enable", false)
	if qExportRequest(r, "POST", "/main-fixture", "{}", token, device).Code != 503 {
		t.Fatal("disabled parent allowed main")
	}
}
