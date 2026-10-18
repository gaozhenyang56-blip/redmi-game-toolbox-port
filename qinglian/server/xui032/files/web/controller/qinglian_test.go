package controller

import (
	"crypto/tls"
	"crypto/x509"
	"encoding/json"
	"encoding/pem"
	"fmt"
	"math"
	"net"
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
	"x-ui/database"
	"x-ui/database/model"
	"x-ui/web/session"
)

const qTestID = "11111111-1111-4111-8111-111111111111"
const qTestSession = "22222222-2222-4222-8222-222222222222"

func qEvent(generation, sequence int64, online bool) qDevice {
	up, down := int64(10), int64(20)
	rate := float64(1)
	return qDevice{DeviceID: qTestID, SessionID: qTestSession, Generation: generation, Sequence: sequence, Online: &online, Up: &up, Down: &down, UpRate: &rate, DownRate: &rate, DeviceName: "Fixture"}
}
func TestQPresenceOrderingTTLAndTombstones(t *testing.T) {
	s, err := qOpen(filepath.Join(t.TempDir(), "presence.db"))
	if err != nil {
		t.Fatal(err)
	}
	defer s.db.Close()
	put := func(d qDevice, now int64) {
		t.Helper()
		if err := s.put(d, "192.0.2.1", now); err != nil {
			t.Fatal(err)
		}
	}
	count := func(now int64, want int) {
		t.Helper()
		_, n, err := s.snapshot(now)
		if err != nil || n != want {
			t.Fatalf("count=%d want=%d error=%v", n, want, err)
		}
	}
	put(qEvent(1, 1, true), 100000)
	count(129999, 1)
	count(130001, 0)
	put(qEvent(1, 2, true), 131000)
	count(131000, 1)
	next := qEvent(2, 1, true)
	next.SessionID = "33333333-3333-4333-8333-333333333333"
	put(next, 132000)
	put(qEvent(1, 3, false), 133000)
	put(qEvent(1, 4, true), 134000)
	count(134000, 1)
	next.Sequence = 3
	offline := false
	next.Online = &offline
	put(next, 135000)
	next.Sequence = 2
	online := true
	next.Online = &online
	put(next, 136000)
	count(136000, 0)
	next.Sequence = 4
	put(next, 137000)
	count(137000, 0)
	rows, _, err := s.snapshot(8 * 86400 * 1000)
	if err != nil || len(rows) != 0 {
		t.Fatalf("detail retention: %v", err)
	}
	put(qEvent(1, 100, true), 8*86400*1000)
	count(8*86400*1000, 0)
	var generation int64
	if err = s.db.QueryRow(`SELECT generation FROM devices WHERE id=?`, qTestID).Scan(&generation); err != nil || generation != 2 {
		t.Fatalf("generation tombstone lost: %v", err)
	}
}
func TestQInvalidEventsAndCaseNormalization(t *testing.T) {
	d := qEvent(1, 1, true)
	negative := int64(-1)
	d.Up = &negative
	if d.valid() {
		t.Fatal("negative bytes accepted")
	}
	d = qEvent(1, 1, true)
	nan := math.NaN()
	d.UpRate = &nan
	if d.valid() {
		t.Fatal("NaN accepted")
	}
	d = qEvent(1, 1, true)
	d.Online = nil
	if d.valid() {
		t.Fatal("missing state accepted")
	}
	d = qEvent(1, 1, true)
	d.DeviceName = "line\nbreak"
	if d.valid() {
		t.Fatal("control text accepted")
	}
	s, err := qOpen(filepath.Join(t.TempDir(), "case.db"))
	if err != nil {
		t.Fatal(err)
	}
	defer s.db.Close()
	d = qEvent(1, 2, false)
	d.DeviceID = "aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa"
	if err = s.put(d, "192.0.2.1", 100); err != nil {
		t.Fatal(err)
	}
	d.DeviceID = strings.ToUpper(d.DeviceID)
	d.Sequence = 1
	online := true
	d.Online = &online
	if err = s.put(d, "192.0.2.1", 101); err != nil {
		t.Fatal(err)
	}
	_, n, err := s.snapshot(101)
	if err != nil || n != 0 {
		t.Fatal("case changed bypassed offline tombstone")
	}
}
func TestQQuotaBoundaries(t *testing.T) {
	row := &model.Inbound{Up: 100, Down: 200, Total: 1000, ExpiryTime: 1792224000123, Enable: true}
	value, err := qQuota(row)
	if err != nil || value["expire"] != int64(1792224001) || value["download"] != int64(200) {
		t.Fatalf("quota conversion: %v %v", value, err)
	}
	row.Total = 0
	value, err = qQuota(row)
	if err != nil || value["total"] != int64(0) {
		t.Fatal("unlimited lost")
	}
	row.Up = math.MaxInt64
	row.Down = 1
	if _, err = qQuota(row); err == nil {
		t.Fatal("overflow accepted")
	}
	row.Up = 0
	row.Down = 0
	row.Enable = false
	row.ExpiryTime = 0
	if _, err = qQuota(row); err == nil {
		t.Fatal("disabled inbound shown as usable")
	}
}
func TestQAPIBoundariesAndUniqueQuota(t *testing.T) {
	gin.SetMode(gin.TestMode)
	root := t.TempDir()
	if err := database.InitDB(filepath.Join(root, "panel.db")); err != nil {
		t.Fatal(err)
	}
	inbound := model.Inbound{UserId: 7, Protocol: model.VMess, Settings: `{"clients":[{"id":"` + qTestID + `"}]}`, Enable: true, Up: 100, Down: 200, Total: 1000, Port: 12345, Tag: "fixture", StreamSettings: `{"network":"tcp","security":"none","tcpSettings":{"header":{"type":"http"}}}`}
	if err := database.GetDB().Create(&inbound).Error; err != nil {
		t.Fatal(err)
	}
	token := strings.Repeat("fixture", 8)
	config := qConfig{OwnerID: 7, ServerAddress: "192.0.2.1", ClientToken: token, NodeUUID: qTestID, StatePath: filepath.Join(root, "devices.db")}
	data, _ := json.Marshal(config)
	path := filepath.Join(root, "config.json")
	if err := os.WriteFile(path, data, 0600); err != nil {
		t.Fatal(err)
	}
	t.Setenv("QINGLIAN_CONFIG", path)
	engine := gin.New()
	engine.Use(sessions.Sessions("session", cookie.NewStore([]byte(strings.Repeat("k", 32)))))
	engine.Use(func(c *gin.Context) { c.Set("base_path", "/") })
	engine.GET("/fixture-login", func(c *gin.Context) {
		if err := session.SetLoginUser(c, &model.User{Id: 7}); err != nil {
			t.Fatal(err)
		}
		c.Status(200)
	})
	controller := NewQinglianController(engine.Group("/"))
	if controller.store == nil {
		t.Fatal("configuration not loaded")
	}
	defer controller.store.db.Close()
	call := func(method, path, body string, auth bool, cookies []*http.Cookie) *httptest.ResponseRecorder {
		t.Helper()
		request := httptest.NewRequest(method, path, strings.NewReader(body))
		request.RemoteAddr = "192.0.2.1:1234"
		request.Header.Set("X-Real-IP", "198.51.100.99")
		if auth {
			request.Header.Set("Authorization", "Bearer "+token)
		}
		for _, cookie := range cookies {
			request.AddCookie(cookie)
		}
		recorder := httptest.NewRecorder()
		engine.ServeHTTP(recorder, request)
		return recorder
	}
	if r := call("GET", "/api/v1/online", "", false, nil); r.Code != 401 {
		t.Fatal(r.Code)
	}
	if r := call("GET", "/xui/qinglian/devices", "", true, nil); r.Code != 401 {
		t.Fatal("client read admin details", r.Code)
	}
	event, _ := json.Marshal(qEvent(1, 1, true))
	if r := call("POST", "/api/v1/heartbeat", string(event), true, nil); r.Code != 200 {
		t.Fatal(r.Code, r.Body.String())
	}
	if r := call("GET", "/api/v1/online", "", true, nil); r.Code != 200 || strings.Contains(r.Body.String(), "devices") {
		t.Fatal("count leaked details")
	}
	if r := call("GET", "/api/v1/quota", "", true, nil); r.Code != 200 || !strings.Contains(r.Body.String(), `"total":1000`) {
		t.Fatal("quota unavailable", r.Code)
	}
	login := call("GET", "/fixture-login", "", false, nil)
	if r := call("GET", "/xui/qinglian/devices", "", false, login.Result().Cookies()); r.Code != 200 || !strings.Contains(r.Body.String(), "192.0.2.1") || strings.Contains(r.Body.String(), "198.51.100.99") {
		t.Fatal("admin/source boundary", r.Code, r.Body.String())
	}
	for _, invalid := range []string{`{"online":true}`, strings.Repeat(" ", 8193), string(event) + " {}"} {
		if r := call("POST", "/api/v1/heartbeat", invalid, true, nil); r.Code != 400 {
			t.Fatal("invalid body accepted", r.Code)
		}
	}
	inbound.Settings = `{"clients":[{"id":"` + qTestID + `"},{"id":"33333333-3333-4333-8333-333333333333"}]}`
	database.GetDB().Save(&inbound)
	if r := call("GET", "/api/v1/quota", "", true, nil); r.Code != 503 {
		t.Fatal("shared inbound misreported as client quota", r.Code)
	}
}

func TestQSeparateTLSListenerRejectsPanelRoutes(t *testing.T) {
	fixture := httptest.NewTLSServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {}))
	certificate := fixture.TLS.Certificates[0]
	fixture.Close()
	root := t.TempDir()
	certPath := filepath.Join(root, "server.pem")
	keyPath := filepath.Join(root, "server.key")
	certData := pem.EncodeToMemory(&pem.Block{Type: "CERTIFICATE", Bytes: certificate.Certificate[0]})
	keyData, err := x509.MarshalPKCS8PrivateKey(certificate.PrivateKey)
	if err != nil {
		t.Fatal(err)
	}
	os.WriteFile(certPath, certData, 0600)
	os.WriteFile(keyPath, pem.EncodeToMemory(&pem.Block{Type: "PRIVATE KEY", Bytes: keyData}), 0600)
	reservation, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		t.Fatal(err)
	}
	port := reservation.Addr().(*net.TCPAddr).Port
	reservation.Close()
	store, err := qOpen(filepath.Join(root, "store.db"))
	if err != nil {
		t.Fatal(err)
	}
	a := &QinglianController{store: store, apiPrefix: "/api/v1/", cfg: qConfig{TLS: qTLSConfig{Port: port, Certificate: certPath, PrivateKey: keyPath}}}
	defer a.Close()
	if err = a.StartTLS(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) { w.WriteHeader(200) })); err != nil {
		t.Fatal(err)
	}
	pool := x509.NewCertPool()
	pool.AppendCertsFromPEM(certData)
	client := &http.Client{Transport: &http.Transport{TLSClientConfig: &tls.Config{RootCAs: pool}}, Timeout: 3 * time.Second}
	for path, want := range map[string]int{"/api/v1/online": 200, "/api/v1/quota": 200, "/api/v1/heartbeat": 200, "/api/v1/exports/register": 200, "/api/v1/exports/profile": 200, "/api/v1/exports/history": 200, "/api/v1/exports/invalid": 404, "/api/v1/exports/nodes/invalid/revoke": 404, "/xui/qinglian/devices": 404, "/assets/file": 404, "/api/v1/../xui/": 404} {
		response, err := client.Get(fmt.Sprintf("https://127.0.0.1:%d%s", port, path))
		if err != nil {
			t.Fatal(err)
		}
		response.Body.Close()
		if response.StatusCode != want {
			t.Fatalf("%s returned %d", path, response.StatusCode)
		}
	}
}

func TestQPanelSelectsAppNodeAndTracksEditedUUIDWithoutMutatingInbounds(t *testing.T) {
	gin.SetMode(gin.TestMode)
	root := t.TempDir()
	if err := database.InitDB(filepath.Join(root, "panel.db")); err != nil {
		t.Fatal(err)
	}
	stream := `{"network":"tcp","security":"none","tcpSettings":{"header":{"type":"http"}}}`
	first := model.Inbound{UserId: 7, Protocol: model.VMess, Settings: `{"clients":[{"id":"` + qTestID + `"}]}`, StreamSettings: stream, Enable: true, Up: 100, Down: 200, Total: 1000, Port: 12001, Tag: "one"}
	second := model.Inbound{UserId: 7, Protocol: model.VMess, Settings: `{"clients":[{"id":"33333333-3333-4333-8333-333333333333"}]}`, StreamSettings: stream, Enable: true, Up: 500, Down: 600, Total: 2000, Port: 12002, Tag: "two"}
	other := model.Inbound{UserId: 8, Protocol: model.VMess, Settings: first.Settings, StreamSettings: stream, Enable: true, Port: 12003, Tag: "other"}
	for _, row := range []*model.Inbound{&first, &second, &other} {
		if err := database.GetDB().Create(row).Error; err != nil {
			t.Fatal(err)
		}
	}
	token := strings.Repeat("fixture", 8)
	cfg := qConfig{OwnerID: 7, ServerAddress: "192.0.2.1", ClientToken: token, NodeUUID: qTestID, StatePath: filepath.Join(root, "devices.db")}
	data, _ := json.Marshal(cfg)
	path := filepath.Join(root, "config.json")
	os.WriteFile(path, data, 0600)
	t.Setenv("QINGLIAN_CONFIG", path)
	engine := gin.New()
	engine.Use(sessions.Sessions("session", cookie.NewStore([]byte(strings.Repeat("k", 32)))))
	engine.GET("/login-fixture", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 7}); c.Status(200) })
	controller := NewQinglianController(engine.Group("/"))
	if controller.store == nil {
		t.Fatal("missing store")
	}
	defer controller.Close()
	call := func(method, path, body string, cookies []*http.Cookie, xhr, evil bool) *httptest.ResponseRecorder {
		request := httptest.NewRequest(method, path, strings.NewReader(body))
		request.Header.Set("Authorization", "Bearer "+token)
		request.Header.Set("Content-Type", "application/json")
		if xhr {
			request.Header.Set("X-Requested-With", "XMLHttpRequest")
		}
		if evil {
			request.Header.Set("Origin", "https://evil.invalid")
		}
		for _, cookie := range cookies {
			request.AddCookie(cookie)
		}
		recorder := httptest.NewRecorder()
		engine.ServeHTTP(recorder, request)
		return recorder
	}
	login := call("GET", "/login-fixture", "", nil, false, false)
	cookies := login.Result().Cookies()
	if r := call("GET", "/xui/qinglian/selection", "", nil, false, false); r.Code != 401 {
		t.Fatal("bearer read node selection")
	}
	if r := call("POST", "/xui/qinglian/selection", fmt.Sprintf(`{"inboundId":%d}`, second.Id), cookies, false, false); r.Code != 403 {
		t.Fatal("missing CSRF header accepted")
	}
	if r := call("POST", "/xui/qinglian/selection", fmt.Sprintf(`{"inboundId":%d}`, second.Id), cookies, true, true); r.Code != 403 {
		t.Fatal("cross-origin selection accepted")
	}
	if r := call("POST", "/xui/qinglian/selection", fmt.Sprintf(`{"inboundId":%d}`, other.Id), cookies, true, false); r.Code != 404 {
		t.Fatal("selected another panel user's node")
	}
	profile := call("GET", "/api/v1/profile", "", nil, false, false)
	if profile.Code != 200 || !strings.Contains(profile.Body.String(), qTestID) {
		t.Fatal(profile.Code, profile.Body.String())
	}
	if r := call("POST", "/xui/qinglian/selection", fmt.Sprintf(`{"inboundId":%d}`, second.Id), cookies, true, false); r.Code != 200 {
		t.Fatal(r.Code, r.Body.String())
	}
	selected := call("GET", "/api/v1/profile", "", nil, false, false)
	if selected.Code != 200 || !strings.Contains(selected.Body.String(), "33333333-3333-4333-8333-333333333333") {
		t.Fatal("App profile did not follow selection")
	}
	quota := call("GET", "/api/v1/quota", "", nil, false, false)
	if quota.Code != 200 || !strings.Contains(quota.Body.String(), `"total":2000`) {
		t.Fatal("quota did not follow selected node")
	}
	second.Settings = `{"clients":[{"id":"44444444-4444-4444-8444-444444444444"}]}`
	database.GetDB().Save(&second)
	updated := call("GET", "/api/v1/profile", "", nil, false, false)
	if updated.Code != 200 || !strings.Contains(updated.Body.String(), "44444444-4444-4444-8444-444444444444") {
		t.Fatal("edited UUID required reselection")
	}
	var saved model.Inbound
	database.GetDB().First(&saved, first.Id)
	if saved.Settings != first.Settings || saved.Up != 100 || saved.Down != 200 {
		t.Fatal("selection modified the original inbound/counters")
	}
}
