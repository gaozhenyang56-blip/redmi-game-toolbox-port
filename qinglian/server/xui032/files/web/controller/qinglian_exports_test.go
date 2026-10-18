package controller

import (
	"crypto/tls"
	"encoding/json"
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"testing"
	"time"
)

func qExportFixture(t *testing.T) (*QinglianController, *gin.Engine, string, string) {
	t.Helper()
	s, err := qOpen(filepath.Join(t.TempDir(), "state.db"))
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() { s.db.Close() })
	a := &QinglianController{store: s, cfg: qConfig{ServerAddress: "127.0.0.1"}}
	token := strings.Repeat("a", 64)
	device := strings.Repeat("b", 64)
	_, err = s.db.Exec(`INSERT INTO api_users(id,name,token_hash,created) VALUES('fixture','fixture',?,?)`, qHash(token), time.Now().Unix())
	if err != nil {
		t.Fatal(err)
	}
	r := gin.New()
	g := r.Group("/exports")
	g.Use(a.exportAuth)
	g.POST("/bind", a.exportQuota)
	g.GET("/quota", a.exportQuota)
	g.POST("/nodes", a.createExport)
	g.GET("/nodes", a.exports)
	g.POST("/nodes/:id/revoke", a.revokeExport)
	return a, r, token, device
}
func qExportRequest(r *gin.Engine, method, path, body, token, device string) *httptest.ResponseRecorder {
	req := httptest.NewRequest(method, path, strings.NewReader(body))
	req.TLS = &tls.ConnectionState{HandshakeComplete: true}
	req.Header.Set("Authorization", "Bearer "+token)
	req.Header.Set("X-Qinglian-Device", device)
	req.Header.Set("Content-Type", "application/json")
	w := httptest.NewRecorder()
	r.ServeHTTP(w, req)
	return w
}
func TestQExportBindingCredentialsIsolationAndTotals(t *testing.T) {
	a, r, token, device := qExportFixture(t)
	if qExportRequest(r, "GET", "/exports/quota", "", token, device).Code != 403 {
		t.Fatal("unbound allowed")
	}
	if qExportRequest(r, "POST", "/exports/bind", `{"historyConsent":"domains-permanent-v1"}`, token, device).Code != 200 {
		t.Fatal("bind failed")
	}
	if qExportRequest(r, "GET", "/exports/quota", "", token, strings.Repeat("c", 64)).Code != 403 {
		t.Fatal("cross device allowed")
	}
	if qExportRequest(r, "GET", "/exports/quota", "", strings.Repeat("0", 64), device).Code != 401 {
		t.Fatal("unknown credential allowed")
	}
	var body map[string]interface{}
	w := qExportRequest(r, "GET", "/exports/quota", "", token, device)
	json.Unmarshal(w.Body.Bytes(), &body)
	if body["weeklyBytes"] != float64(qWeeklyBytes) || body["cumulativeTotalBytes"] != float64(0) {
		t.Fatal("quota invalid")
	}
	a.store.db.Exec(`UPDATE api_users SET enabled=0`)
	if qExportRequest(r, "GET", "/exports/quota", "", token, device).Code != 401 {
		t.Fatal("revoked allowed")
	}
}
func TestQExportConcurrentReservationIdempotencyWeekAndHistory(t *testing.T) {
	a, r, token, device := qExportFixture(t)
	qExportRequest(r, "POST", "/exports/bind", `{"historyConsent":"domains-permanent-v1"}`, token, device)
	dir := t.TempDir()
	a.cfg.TLS.Certificate = filepath.Join(dir, "server.pem")
	if err := os.WriteFile(filepath.Join(dir, "ca.pem"), []byte("public-fixture-ca"), 0600); err != nil {
		t.Fatal(err)
	}
	var wg sync.WaitGroup
	codes := make(chan int, 4)
	for i := 0; i < 4; i++ {
		wg.Add(1)
		go func(n int) {
			defer wg.Done()
			body := fmt.Sprintf(`{"requestId":"11111111-1111-4111-8111-%012d","protocol":"vmess","sizeMiB":131072}`, n)
			codes <- qExportRequest(r, "POST", "/exports/nodes", body, token, device).Code
		}(i)
	}
	wg.Wait()
	close(codes)
	success := 0
	for c := range codes {
		if c == 202 {
			success++
		} else if c != 409 {
			t.Fatalf("status %d", c)
		}
	}
	if success != 2 {
		t.Fatalf("reservations %d", success)
	}
	var id, request string
	a.store.db.QueryRow(`SELECT id,request_id FROM exports LIMIT 1`).Scan(&id, &request)
	retry := fmt.Sprintf(`{"requestId":%q,"protocol":"vmess","sizeMiB":131072}`, request)
	if qExportRequest(r, "POST", "/exports/nodes", retry, token, device).Code != 200 {
		t.Fatal("retry double charged")
	}
	qExportRequest(r, "POST", "/exports/nodes/"+id+"/revoke", "{}", token, device)
	quota, err := a.exportQuotaValue("fixture")
	if err != nil || quota["remainingBytes"] != int64(0) {
		t.Fatal("revocation refunded allocation")
	}
	a.store.db.Exec(`UPDATE exports SET created=?,up=11,down=22`, qWeek(time.Now())-1)
	quota, err = a.exportQuotaValue("fixture")
	if err != nil || quota["remainingBytes"] != qWeeklyBytes || quota["cumulativeTotalBytes"] != int64(66) {
		t.Fatal("week rollover lost cumulative accounting")
	}
	if qExportRequest(r, "POST", "/exports/nodes", `{"requestId":"11111111-1111-4111-8111-111111111111","protocol":"vmess|vless","sizeMiB":1}`, token, device).Code != 400 {
		t.Fatal("unsupported protocol accepted")
	}
}
func TestQExportAllFiveProfilesAndFixtureOutput(t *testing.T) {
	a, _, _, _ := qExportFixture(t)
	dir := t.TempDir()
	source := os.Getenv("QINGLIAN_EXPORT_FIXTURES")
	if source == "" {
		source = dir
		os.WriteFile(filepath.Join(source, "tls-ca.pem"), []byte("public-fixture-ca"), 0600)
	}
	ca, err := os.ReadFile(filepath.Join(source, "tls-ca.pem"))
	if err != nil {
		t.Fatal(err)
	}
	os.WriteFile(filepath.Join(dir, "ca.pem"), ca, 0600)
	a.cfg.TLS.Certificate = filepath.Join(source, "tls-server-cert.pem")
	a.cfg.TLS.PrivateKey = filepath.Join(source, "tls-server-key.pem")
	if source != dir {
		a.cfg.TLS.Certificate = filepath.Join(dir, "tls-server-cert.pem")
		for _, name := range []string{"tls-server-cert.pem", "tls-server-key.pem"} {
			data, _ := os.ReadFile(filepath.Join(source, name))
			os.WriteFile(filepath.Join(dir, name), data, 0600)
		}
		a.cfg.TLS.PrivateKey = filepath.Join(dir, "tls-server-key.pem")
	}
	out := os.Getenv("QINGLIAN_EXPORT_FIXTURE_OUTPUT")
	for i, p := range []string{"vmess", "vless", "trojan", "shadowsocks", "hysteria2"} {
		value, err := a.exportProfile(p, 22500+i, strings.Repeat(fmt.Sprintf("%x", i+1), 32))
		if err != nil {
			t.Fatal(err)
		}
		if value["uri"] == "" || value["clientConfig"] == nil {
			t.Fatal("incomplete export")
		}
		node := value["node"].(map[string]interface{})
		if node["protocol"] != p {
			t.Fatal("protocol mismatch")
		}
		if out != "" {
			os.MkdirAll(out, 0700)
			if p != "hysteria2" && os.Getenv("QINGLIAN_EXPORT_FIXTURES") != "" {
				cert := value["inbound"].(map[string]interface{})["streamSettings"].(map[string]interface{})
				if tls, ok := cert["tlsSettings"].(map[string]interface{}); ok {
					entry := tls["certificates"].([]interface{})[0].(map[string]interface{})
					entry["certificateFile"] = filepath.Join(source, "tls-server-cert.pem")
					entry["keyFile"] = filepath.Join(source, "tls-server-key.pem")
				}
			}
			data, _ := json.Marshal(value)
			if err = os.WriteFile(filepath.Join(out, p+".json"), data, 0600); err != nil {
				t.Fatal(err)
			}
		}
	}
}
func TestQExportWeekBoundaryUTC(t *testing.T) {
	if qWeek(time.Date(2026, 10, 19, 0, 0, 0, 0, time.UTC)) != time.Date(2026, 10, 19, 0, 0, 0, 0, time.UTC).Unix() {
		t.Fatal("Monday boundary")
	}
	if qWeek(time.Date(2026, 10, 18, 23, 59, 59, 0, time.UTC)) != time.Date(2026, 10, 12, 0, 0, 0, 0, time.UTC).Unix() {
		t.Fatal("Sunday boundary")
	}
}

func TestQAccountRegistrationOncePerDeviceMultipleLoginAndConsent(t *testing.T) {
	a, r, _, device := qExportFixture(t)
	r.POST("/register", a.account)
	r.POST("/login", a.account)
	body := `{"username":"account-fixture","password":"fixture-password","historyConsent":"domains-permanent-v1"}`
	if qExportRequest(r, "POST", "/register", `{"username":"no-consent","password":"fixture-password"}`, "", device).Code != 400 {
		t.Fatal("registration without disclosure consent")
	}
	response := qExportRequest(r, "POST", "/register", body, "", device)
	if response.Code != 200 {
		t.Fatalf("register %d %s", response.Code, response.Body.String())
	}
	var first map[string]interface{}
	json.Unmarshal(response.Body.Bytes(), &first)
	if qExportRequest(r, "POST", "/register", strings.Replace(body, "account-fixture", "second-account", 1), "", device).Code != 409 {
		t.Fatal("one device registered twice")
	}
	secondDevice := strings.Repeat("d", 64)
	login := qExportRequest(r, "POST", "/login", body, "", secondDevice)
	if login.Code != 200 {
		t.Fatalf("second device login %d", login.Code)
	}
	var second map[string]interface{}
	json.Unmarshal(login.Body.Bytes(), &second)
	if first["userId"] != second["userId"] {
		t.Fatal("multiple devices split account")
	}
	if qExportRequest(r, "GET", "/exports/quota", "", first["token"].(string), device).Code != 200 || qExportRequest(r, "GET", "/exports/quota", "", second["token"].(string), secondDevice).Code != 200 {
		t.Fatal("multi device credentials invalid")
	}
	var hash string
	if a.store.db.QueryRow(`SELECT password_hash FROM api_users WHERE username='account-fixture'`).Scan(&hash) != nil || hash == "fixture-password" || !strings.HasPrefix(hash, "$2") {
		t.Fatal("plaintext or missing password")
	}
	if qExportRequest(r, "POST", "/login", strings.Replace(body, "fixture-password", "wrong-password", 1), "", secondDevice).Code != 401 {
		t.Fatal("wrong password accepted")
	}
}

func TestQRemarkIsImmutableOnRetryAndShareNamesRoundTrip(t *testing.T) {
	a, r, token, device := qExportFixture(t)
	qExportRequest(r, "POST", "/exports/bind", `{"historyConsent":"domains-permanent-v1"}`, token, device)
	dir := t.TempDir()
	a.cfg.TLS.Certificate = filepath.Join(dir, "server.pem")
	os.WriteFile(filepath.Join(dir, "ca.pem"), []byte("public-fixture"), 0600)
	body := `{"requestId":"22222222-1111-4111-8111-111111111111","protocol":"trojan","sizeMiB":1,"remark":"我的节点 #1"}`
	if w := qExportRequest(r, "POST", "/exports/nodes", body, token, device); w.Code != 202 {
		t.Fatal(w.Code)
	}
	if qExportRequest(r, "POST", "/exports/nodes", body, token, device).Code != 200 {
		t.Fatal("retry failed")
	}
	if qExportRequest(r, "POST", "/exports/nodes", strings.Replace(body, "我的节点 #1", "另一个名称", 1), token, device).Code != 409 {
		t.Fatal("changed request reused key")
	}
	var data []byte
	a.store.db.QueryRow(`SELECT data FROM exports`).Scan(&data)
	var profile map[string]interface{}
	json.Unmarshal(data, &profile)
	node := profile["node"].(map[string]interface{})
	if node["ps"] != "我的节点 #1" || profile["remark"] != "我的节点 #1" {
		t.Fatal("name lost")
	}
	for _, p := range []string{"vmess", "vless", "trojan", "shadowsocks", "hysteria2"} {
		value, e := a.exportProfile(p, 22500, strings.Repeat("a", 32), "我的节点 #1")
		if e != nil || value["remark"] != "我的节点 #1" || value["node"].(map[string]interface{})["ps"] != "我的节点 #1" {
			t.Fatal("share name lost", p)
		}
	}
}
func TestQHistoryOwnerIsolationAndMainDoesNotSpendExportAllocation(t *testing.T) {
	a, r, token, device := qExportFixture(t)
	qExportRequest(r, "POST", "/exports/bind", `{"historyConsent":"domains-permanent-v1"}`, token, device)
	r.GET("/history-own", a.exportAuth, a.domainHistory)
	a.store.db.Exec(`INSERT INTO api_users(id,name,token_hash,created) VALUES('other','other',?,0)`, qHash(strings.Repeat("c", 64)))
	for _, user := range []string{"fixture", "other"} {
		a.store.db.Exec(`INSERT INTO history(user_id,node_id,domain,bucket,first_seen,last_seen,hits) VALUES(?,'node',?,0,1,1,1)`, user, user+".example")
	}
	w := qExportRequest(r, "GET", "/history-own?userId=other", "", token, device)
	if w.Code != 200 || strings.Contains(w.Body.String(), "other.example") || !strings.Contains(w.Body.String(), "fixture.example") {
		t.Fatal("owner history isolation failed")
	}
	a.store.db.Exec(`INSERT INTO exports(id,user_id,request_id,protocol,port,total,created,expires,status,data,kind) VALUES('main','fixture','main','vmess',22500,999999999999,?,?,'active','{}','main')`, time.Now().Unix(), time.Now().Unix()+180)
	q, e := a.exportQuotaValue("fixture")
	if e != nil || q["allocatedBytes"] != int64(0) {
		t.Fatal("main spent export allocation")
	}
}

func TestQAccountsRefuseCleartextTransport(t *testing.T) {
	a, r, token, device := qExportFixture(t)
	r.POST("/plain-login", a.account)
	for _, path := range []string{"/plain-login", "/exports/quota"} {
		method := "POST"
		if path == "/exports/quota" {
			method = "GET"
		}
		req := httptest.NewRequest(method, path, strings.NewReader(`{}`))
		req.Header.Set("Authorization", "Bearer "+token)
		req.Header.Set("X-Qinglian-Device", device)
		w := httptest.NewRecorder()
		r.ServeHTTP(w, req)
		if w.Code != 426 {
			t.Fatal("cleartext account API accepted", w.Code)
		}
	}
}
