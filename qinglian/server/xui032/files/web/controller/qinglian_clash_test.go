package controller

import (
	"bytes"
	"crypto/sha256"
	"crypto/tls"
	"encoding/json"
	"html/template"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	"gopkg.in/yaml.v2"
	"x-ui/database"
	"x-ui/database/model"
	"x-ui/web/session"
)

func qClashFixture(id int, p string) model.Inbound {
	settings := `{"clients":[{"id":"` + qTestID + `","password":"fixture"}]}`
	security := "none"
	if p == "trojan" {
		security = "tls"
	}
	if p == "shadowsocks" {
		settings = `{"method":"aes-128-gcm","password":"fixture"}`
	}
	return model.Inbound{Id: id, UserId: 7, Enable: true, Remark: "fixture: #\n", Port: 1443 + id, Protocol: model.Protocol(p), Settings: settings, StreamSettings: `{"network":"tcp","security":"` + security + `"}`}
}
func TestQClashProtocolsScopesAndLiveness(t *testing.T) {
	a := &QinglianController{cfg: qConfig{OwnerID: 7, ServerAddress: "192.0.2.1"}}
	rows := []model.Inbound{qClashFixture(1, "vmess"), qClashFixture(2, "vless"), qClashFixture(3, "trojan"), qClashFixture(4, "shadowsocks")}
	rows[0].StreamSettings = `{"network":"tcp","security":"none","tcpSettings":{"header":{"type":"http","request":{"path":["/test"],"headers":{"Host":["example.org"]}}}}}`
	for _, flavor := range []string{"clash", "mihomo"} {
		result := a.clashConfig(qClashScope{Inbounds: []int{1, 2, 3, 4}, Flavor: flavor}, rows)
		want := 4
		if flavor == "clash" {
			want = 3
		}
		if len(result.Proxies) != want {
			t.Fatal("protocol count", flavor, len(result.Proxies), result.Skipped)
		}
		if result.Proxies[0]["network"] != "http" {
			t.Fatal("fake HTTP lost")
		}
		encoded, err := qClashYAML(result)
		if err != nil {
			t.Fatal(err)
		}
		var parsed map[string]interface{}
		if yaml.UnmarshalStrict(encoded, &parsed) != nil {
			t.Fatal("invalid YAML")
		}
		if strings.Contains(string(encoded), "skip-cert-verify: true") || strings.Contains(string(encoded), "clientToken") {
			t.Fatal("unsafe output")
		}
		if dir := os.Getenv("QINGLIAN_CLASH_FIXTURES"); dir != "" {
			os.MkdirAll(dir, 0700)
			os.WriteFile(filepath.Join(dir, flavor+".yaml"), encoded, 0600)
		}
	}
	// Multi-client expansion, owner scope and no silent all-node subscription.
	multi := rows[0]
	multi.Settings = `{"clients":[{"id":"` + qTestID + `"},{"id":"33333333-3333-4333-8333-333333333333"}]}`
	result := a.clashConfig(qClashScope{Inbounds: []int{1}, Flavor: "clash"}, []model.Inbound{multi, rows[3]})
	if len(result.Proxies) != 2 || result.Proxies[0]["name"] == result.Proxies[1]["name"] {
		t.Fatal("multi-client scope/names")
	}
	for _, mutate := range []func(*model.Inbound){func(r *model.Inbound) { r.UserId = 8 }, func(r *model.Inbound) { r.Enable = false }, func(r *model.Inbound) { r.ExpiryTime = time.Now().UnixMilli() - 1 }, func(r *model.Inbound) { r.Total = 100; r.Up = 60; r.Down = 40 }} {
		row := rows[0]
		mutate(&row)
		if len(a.clashConfig(qClashScope{Inbounds: []int{1}, Flavor: "clash"}, []model.Inbound{row}).Proxies) != 0 {
			t.Fatal("unavailable/foreign inbound leaked")
		}
	}
}
func TestQClashCapabilityLifecycleAndLogRedaction(t *testing.T) {
	root := t.TempDir()
	if err := database.InitDB(filepath.Join(root, "panel.db")); err != nil {
		t.Fatal(err)
	}
	row := qClashFixture(1, "vmess")
	if database.GetDB().Create(&row).Error != nil {
		t.Fatal("fixture database")
	}
	cfg := qConfig{OwnerID: 7, NodeUUID: qTestID, ServerAddress: "192.0.2.1", ClientToken: strings.Repeat("a", 64), StatePath: filepath.Join(root, "state.db"), TLS: qTLSConfig{DomainName: "panel.test"}}
	raw, _ := json.Marshal(cfg)
	path := filepath.Join(root, "config.json")
	os.WriteFile(path, raw, 0600)
	t.Setenv("QINGLIAN_CONFIG", path)
	var log bytes.Buffer
	router := gin.New()
	router.Use(QClashRedact(), gin.LoggerWithWriter(&log), sessions.Sessions("session", cookie.NewStore([]byte(strings.Repeat("s", 32)))))
	router.GET("/owner", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 7}) })
	router.GET("/other", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 8}) })
	a := NewQinglianController(router.Group("/"))
	defer a.Close()
	var cookies []*http.Cookie
	call := func(method, path, body, origin string) *httptest.ResponseRecorder {
		r := httptest.NewRequest(method, "https://panel.test"+path, strings.NewReader(body))
		r.TLS = &tls.ConnectionState{ServerName: "panel.test"}
		r.Header.Set("Origin", origin)
		r.Header.Set("X-Requested-With", "XMLHttpRequest")
		r.Header.Set("Authorization", "Bearer "+cfg.ClientToken)
		for _, c := range cookies {
			r.AddCookie(c)
		}
		w := httptest.NewRecorder()
		router.ServeHTTP(w, r)
		return w
	}
	if call("GET", "/xui/qinglian/clash/links", "", "https://panel.test").Code != 401 {
		t.Fatal("App token entered panel")
	}
	cookies = call("GET", "/other", "", "").Result().Cookies()
	if call("GET", "/xui/qinglian/clash/links", "", "https://panel.test").Code != 403 {
		t.Fatal("nonowner")
	}
	cookies = nil
	cookies = call("GET", "/owner", "", "").Result().Cookies()
	body := `{"name":"test","flavor":"clash","inbounds":[1],"hy2":false}`
	if call("POST", "/xui/qinglian/clash/links", body, "https://evil.test").Code != 403 {
		t.Fatal("cross origin")
	}
	for _, bad := range []string{strings.Replace(body, "[1]", "[1,1]", 1), strings.Replace(body, "[1]", "[2]", 1)} {
		if call("POST", "/xui/qinglian/clash/links", bad, "https://panel.test").Code == 200 {
			t.Fatal("invalid scope")
		}
	}
	w := call("POST", "/xui/qinglian/clash/links", body, "https://panel.test")
	if w.Code != 200 {
		t.Fatal("create", w.Code, w.Body.String())
	}
	var result struct {
		ID  string `json:"id"`
		URL string `json:"url"`
	}
	json.Unmarshal(w.Body.Bytes(), &result)
	subpath := strings.TrimPrefix(result.URL, "https://panel.test")
	secret := strings.Split(subpath, "token=")[1]
	var stored []byte
	a.store.db.QueryRow("SELECT token_hash FROM clash_subscriptions WHERE id=?", result.ID).Scan(&stored)
	digest := sha256.Sum256([]byte(secret))
	if !bytes.Equal(stored, digest[:]) {
		t.Fatal("token not hashed")
	}
	cookies = nil // no panel/App auth needed, only the revocable capability
	if w = call("GET", subpath, "", ""); w.Code != 200 || !strings.Contains(w.Body.String(), "vmess") {
		t.Fatal("subscription fetch", w.Code)
	}
	if strings.Contains(log.String(), secret) {
		t.Fatal("subscription token entered access log")
	}
	if call("GET", strings.Replace(subpath, secret, strings.Repeat("0", 64), 1), "", "").Code != 404 {
		t.Fatal("invalid token")
	}
	row.Enable = false
	database.GetDB().Save(&row)
	if call("GET", subpath, "", "").Code != 503 {
		t.Fatal("disabled node still served")
	}
	row.Enable = true
	database.GetDB().Save(&row)
	cookies = call("GET", "/owner", "", "").Result().Cookies()
	w = call("GET", "/xui/qinglian/clash/links", "", "")
	if strings.Contains(w.Body.String(), secret) || strings.Contains(w.Body.String(), "fixture\"") {
		t.Fatal("list leaked credentials")
	}
	if call("DELETE", "/xui/qinglian/clash/links/"+result.ID, "", "https://panel.test").Code != 200 {
		t.Fatal("revoke")
	}
	cookies = nil
	if call("GET", subpath, "", "").Code != 404 {
		t.Fatal("revoked token still works")
	}
}
func TestQClashPageRenders(t *testing.T) {
	tpl, e := template.New("").ParseFiles("../html/common/head.html", "../html/common/js.html", "../html/xui/common_sider.html", "../html/xui/qinglian_clash.html")
	if e != nil {
		t.Fatal(e)
	}
	var b bytes.Buffer
	if e = tpl.ExecuteTemplate(&b, "qinglian_clash.html", map[string]interface{}{"base_path": "/", "cur_ver": "0.3.2", "request_uri": "/xui/qinglian/clash"}); e != nil {
		t.Fatal(e)
	}
	if path := os.Getenv("QINGLIAN_CLASH_RENDER"); path != "" {
		if e = os.WriteFile(path, b.Bytes(), 0600); e != nil {
			t.Fatal(e)
		}
	}
}
