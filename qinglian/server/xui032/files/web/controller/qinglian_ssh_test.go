package controller

import (
	"crypto/tls"
	"crypto/x509"
	"encoding/json"
	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	"net/http"
	"net/http/cookiejar"
	"net/http/httptest"
	"net/url"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"x-ui/database/model"
	"x-ui/web/session"
)

func TestQSSHOriginRequiresActualTLSAndExactBrowserOrigin(t *testing.T) {
	for _, value := range []struct {
		origin, host string
		secure, ok   bool
	}{
		{"https://panel.example", "panel.example", true, true},
		{"https://evil.example", "panel.example", true, false},
		{"http://panel.example", "panel.example", true, false},
		{"https://panel.example", "panel.example", false, false},
		{"https://panel.example/", "panel.example", true, false},
		{"https://user@panel.example", "panel.example", true, false},
		{"", "panel.example", true, false},
	} {
		request := httptest.NewRequest(http.MethodGet, "https://"+value.host+"/xui/qinglian/ssh/ws", nil)
		request.Header.Set("Origin", value.origin)
		if value.secure {
			request.TLS = &tls.ConnectionState{}
		} else {
			request.TLS = nil
		}
		if got := qSSHOrigin(request); got != value.ok {
			t.Fatalf("origin=%q TLS=%v got=%v", value.origin, value.secure, got)
		}
	}
}
func TestQSSHTerminalRequiresOwnerCookieAndBoundsConnections(t *testing.T) {
	root := t.TempDir()
	cfg := qConfig{OwnerID: 7, NodeUUID: qTestID, ClientToken: strings.Repeat("f", 64), StatePath: filepath.Join(root, "state.db")}
	data, _ := json.Marshal(cfg)
	path := filepath.Join(root, "config.json")
	os.WriteFile(path, data, 0600)
	t.Setenv("QINGLIAN_CONFIG", path)
	engine := gin.New()
	engine.Use(sessions.Sessions("session", cookie.NewStore([]byte(strings.Repeat("s", 32)))))
	engine.GET("/owner", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 7}); c.Status(200) })
	engine.GET("/other", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 8}); c.Status(200) })
	controller := NewQinglianController(engine.Group("/"))
	server := httptest.NewTLSServer(engine)
	defer server.Close()
	defer controller.Close()
	pool := x509.NewCertPool()
	pool.AddCert(server.Certificate())
	dialer := websocket.Dialer{TLSClientConfig: &tls.Config{RootCAs: pool}}
	client := server.Client()
	jar, _ := cookiejar.New(nil)
	client.Jar = jar
	headers := http.Header{"Origin": []string{server.URL}, "Authorization": []string{"Bearer " + cfg.ClientToken}}
	endpoint := "wss" + strings.TrimPrefix(server.URL, "https") + "/xui/qinglian/ssh/ws"
	if c, r, err := dialer.Dial(endpoint, headers); err == nil {
		c.Close()
		t.Fatal("App token opened terminal")
	} else if r.StatusCode != 401 {
		t.Fatalf("expected401 got %d", r.StatusCode)
	}
	response, err := client.Get(server.URL + "/other")
	if err != nil {
		t.Fatal(err)
	}
	response.Body.Close()
	parsed, _ := url.Parse(server.URL)
	headers.Set("Cookie", jar.Cookies(parsed)[0].String())
	if c, r, err := dialer.Dial(endpoint, headers); err == nil {
		c.Close()
		t.Fatal("other panel user opened terminal")
	} else if r.StatusCode != 403 {
		t.Fatal(r.StatusCode)
	}
	response, err = client.Get(server.URL + "/owner")
	if err != nil {
		t.Fatal(err)
	}
	response.Body.Close()
	headers.Set("Cookie", jar.Cookies(parsed)[0].String())
	headers.Set("Origin", "https://evil.example")
	if c, r, err := dialer.Dial(endpoint, headers); err == nil {
		c.Close()
		t.Fatal("cross origin opened terminal")
	} else if r.StatusCode != 403 {
		t.Fatal(r.StatusCode)
	}
	headers.Set("Origin", server.URL)
	connections := []*websocket.Conn{}
	for i := 0; i < 2; i++ {
		c, _, err := dialer.Dial(endpoint, headers)
		if err != nil {
			t.Fatal(err)
		}
		connections = append(connections, c)
		defer c.Close()
	}
	if c, r, err := dialer.Dial(endpoint, headers); err == nil {
		c.Close()
		t.Fatal("terminal connection cap bypassed")
	} else if r.StatusCode != 429 {
		t.Fatal(r.StatusCode)
	}
	for _, c := range connections {
		c.WriteJSON(map[string]string{"type": "auth", "username": "bad;command", "password": "public-fixture"})
		if _, _, err := c.ReadMessage(); err == nil {
			t.Fatal("invalid auth left terminal active")
		}
		c.Close()
	}
}
func TestQSSHAuthFrameHasNoCommandHostOrCredentialQuery(t *testing.T) {
	for _, value := range []struct {
		data string
		ok   bool
	}{
		{`{"type":"auth","username":"root","password":"public-fixture","cols":100,"rows":30}`, true},
		{`{"type":"auth","username":"root","password":"public-fixture","host":"elsewhere"}`, false},
		{`{"type":"auth","username":"root","password":"public-fixture","command":"id"}`, false},
		{`{"type":"auth","username":"root;id","password":"public-fixture"}`, false},
		{`{"type":"auth","username":"root","password":""}`, false},
		{`{"type":"input","username":"root","password":"public-fixture"}`, false},
		{`{"type":"auth","username":"root","password":"public-fixture"}{}`, false},
	} {
		if got := qSSHValidInitial([]byte(value.data)); got != value.ok {
			t.Fatalf("auth frame validation got %v expected %v", got, value.ok)
		}
	}
	if qSSHValidInitial([]byte(`{"type":"auth","username":"root","password":"` + strings.Repeat("x", 257) + `"}`)) {
		t.Fatal("oversize credential accepted")
	}
}
