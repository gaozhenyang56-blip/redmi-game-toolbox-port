package main

import (
	"context"
	"encoding/json"
	"io"
	"net"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/gorilla/websocket"
)

const testPassword = "bridge testing passphrase"

func fixture(t *testing.T) *Server {
	t.Helper()
	dir := t.TempDir()
	path := filepath.Join(dir, "config.json")
	if err := os.WriteFile(path, []byte(`{"Origin":"https://bridge.test","UploadMiB":1,"UploadQuotaMiB":1,"FileHours":1}`), 0600); err != nil {
		t.Fatal(err)
	}
	cfg, err := loadConfig(path)
	if err != nil {
		t.Fatal(err)
	}
	cfg.State, cfg.Files, cfg.Runtime = dir, dir, dir
	for _, name := range []string{"uploads", "downloads"} {
		if err := os.Mkdir(filepath.Join(dir, name), 0700); err != nil {
			t.Fatal(err)
		}
	}
	hash, err := passwordHash(testPassword)
	if err != nil {
		t.Fatal(err)
	}
	if err = os.WriteFile(credentialPath(cfg), hash, 0600); err != nil {
		t.Fatal(err)
	}
	s, err := newServer(cfg)
	if err != nil {
		t.Fatal(err)
	}
	return s
}

func request(s *Server, method, path, body, origin, csrf string, cookie *http.Cookie) *httptest.ResponseRecorder {
	r := httptest.NewRequest(method, "https://bridge.test"+path, strings.NewReader(body))
	r.Header.Set("Origin", origin)
	r.Header.Set("Content-Type", "application/json")
	r.Header.Set("X-CSRF-Token", csrf)
	if cookie != nil {
		r.AddCookie(cookie)
	}
	w := httptest.NewRecorder()
	s.handler().ServeHTTP(w, r)
	return w
}

func loginFixture(t *testing.T, s *Server) (*http.Cookie, string) {
	t.Helper()
	w := request(s, "POST", "/api/login", `{"password":"`+testPassword+`"}`, s.cfg.Origin, "", nil)
	if w.Code != 200 {
		t.Fatalf("login %d: %s", w.Code, w.Body)
	}
	var data map[string]string
	if err := json.Unmarshal(w.Body.Bytes(), &data); err != nil {
		t.Fatal(err)
	}
	c := w.Result().Cookies()[0]
	if !c.Secure || !c.HttpOnly || c.SameSite != http.SameSiteStrictMode || c.Path != "/" || c.Domain != "" {
		t.Fatal(c)
	}
	return c, data["csrf"]
}

func TestConfig(t *testing.T) {
	path := filepath.Join(t.TempDir(), "config.json")
	for _, body := range []string{`{"Listen":"0.0.0.0:18642"}`, `{"Origin":"http://bridge.test"}`, `{"Origin":"https://usr@bridge.test"}`,
		`{"Origin":"https://bridge.test/"}`, `{"State":"/x/../y"}`, `{"UploadMiB":300}`, `{"Invalid":true}`, `{} {}`} {
		if err := os.WriteFile(path, []byte(body), 0600); err != nil {
			t.Fatal(err)
		}
		if _, err := loadConfig(path); err == nil {
			t.Errorf("accepted %s", body)
		}
	}
}

func TestAuthCSRFPasswordAndExpiry(t *testing.T) {
	s := fixture(t)
	c, csrf := loginFixture(t, s)
	cases := []struct {
		method, path, body, origin, token string
		cookie                            *http.Cookie
		want                              int
	}{
		{"GET", "/api/status", "", "", "", nil, 401},
		{"GET", "/api/files", "", "", "", nil, 401},
		{"POST", "/api/login", `{"password":"wrong"}`, "https://else.test", "", nil, 403},
		{"POST", "/api/logout", "", s.cfg.Origin, "wrong", c, 403},
		{"POST", "/api/logout", "", "https://else.test", csrf, c, 403},
		{"POST", "/api/password", `{"current":"wrong","new":"` + testPassword + `"}`, s.cfg.Origin, csrf, c, 401},
		{"POST", "/api/password", `{"current":"` + testPassword + `","new":"another bridge passphrase"}`, s.cfg.Origin, csrf, c, 204},
		{"GET", "/api/session", "", "", "", c, 401},
	}
	for _, tc := range cases {
		if w := request(s, tc.method, tc.path, tc.body, tc.origin, tc.token, tc.cookie); w.Code != tc.want {
			t.Errorf("%s %d != %d: %s", tc.path, w.Code, tc.want, w.Body)
		}
	}
	w := request(s, "POST", "/api/login", `{"password":"another bridge passphrase"}`, s.cfg.Origin, "", nil)
	if w.Code != 200 {
		t.Fatal(w.Code)
	}
	c = w.Result().Cookies()[0]
	x := s.auth.sessions[c.Value]
	x.until = time.Now().Add(-time.Second)
	s.auth.sessions[c.Value] = x
	if got := request(s, "GET", "/api/session", "", "", "", c).Code; got != 401 {
		t.Fatal(got)
	}
	s.auth.attempts = 8
	if got := request(s, "POST", "/api/login", `{"password":"wrong"}`, s.cfg.Origin, "", nil).Code; got != 429 {
		t.Fatal(got)
	}
}

func TestFiles(t *testing.T) {
	s := fixture(t)
	c, csrf := loginFixture(t, s)
	downloads := filepath.Join(s.cfg.Files, "downloads")
	for _, file := range []string{"report.txt", "work.crdownload", ".org.chromium.pending"} {
		if err := os.WriteFile(filepath.Join(downloads, file), []byte("内容"), 0640); err != nil {
			t.Fatal(err)
		}
	}
	if err := os.Symlink(credentialPath(s.cfg), filepath.Join(downloads, "leak.txt")); err != nil {
		t.Fatal(err)
	}
	for _, tc := range []struct {
		method, path, data string
		want               int
	}{
		{"PUT", "/api/files/uploads/%2e%2e%2fsecret", "bad", 400},
		{"PUT", "/api/files/uploads/a%5Cb", "bad", 400},
		{"PUT", "/api/files/uploads/%E4%B8%AD%E6%96%87.txt", "内容", 201},
		{"PUT", "/api/files/uploads/%E4%B8%AD%E6%96%87.txt", "new", 409},
		{"PUT", "/api/files/uploads/big.txt", strings.Repeat("x", 1048577), 413},
		{"PUT", "/api/files/uploads/full.txt", strings.Repeat("x", 1048576), 507},
		{"GET", "/api/files/downloads/leak.txt", "", 404},
		{"GET", "/api/files/downloads/work.crdownload", "", 404},
		{"GET", "/api/files/downloads/%2e%2e%2fpassword.bcrypt", "", 404},
		{"GET", "/api/files/downloads/report.txt", "", 200},
		{"DELETE", "/api/files/downloads/report.txt", "", 204},
		{"GET", "/api/files/downloads/report.txt", "", 404},
	} {
		w := request(s, tc.method, tc.path, tc.data, s.cfg.Origin, csrf, c)
		if w.Code != tc.want {
			t.Errorf("%s %d != %d: %s", tc.path, w.Code, tc.want, w.Body)
		}
		if tc.method == "GET" && tc.want == 200 && (!strings.HasPrefix(w.Header().Get("Content-Disposition"), "attachment") || w.Body.String() != "内容") {
			t.Fatal(w.Body)
		}
	}
	data, err := os.ReadFile(filepath.Join(s.cfg.Files, "uploads", "中文.txt"))
	if err != nil || string(data) != "内容" {
		t.Fatal(err, string(data))
	}
	w := request(s, "GET", "/api/files", "", "", "", c)
	if !strings.Contains(w.Body.String(), `"name":"work.crdownload","size":6,"state":"pending"`) ||
		!strings.Contains(w.Body.String(), ".org.chromium.pending") || strings.Contains(w.Body.String(), "leak.txt") {
		t.Fatal(w.Body)
	}
	old := time.Now().Add(-2 * time.Hour)
	if err = os.Chtimes(filepath.Join(s.cfg.Files, "uploads", "中文.txt"), old, old); err != nil {
		t.Fatal(err)
	}
	s.cleanFiles()
	if _, err = os.Stat(filepath.Join(s.cfg.Files, "uploads", "中文.txt")); !os.IsNotExist(err) {
		t.Fatal(err)
	}
}

func TestWebSocketAuthLeaseAndRevoke(t *testing.T) {
	s := fixture(t)
	c, csrf := loginFixture(t, s)
	// Bind a short path because AF_UNIX paths have a fixed length limit.
	dir, err := os.MkdirTemp("", "cgwb-test-")
	if err != nil {
		t.Fatal(err)
	}
	defer os.RemoveAll(dir)
	s.cfg.Runtime = dir
	listener, err := net.Listen("unix", filepath.Join(dir, "rfb.sock"))
	if err != nil {
		t.Fatal(err)
	}
	defer listener.Close()
	go func() {
		upstream, err := listener.Accept()
		if err != nil {
			return
		}
		defer upstream.Close()
		_, _ = upstream.Write([]byte("RFB fixture"))
		_, _ = io.Copy(upstream, upstream)
	}()
	origin := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		r.Host = "bridge.test"
		s.handler().ServeHTTP(w, r)
	}))
	defer origin.Close()
	target := "ws" + strings.TrimPrefix(origin.URL, "http") + "/api/vnc"
	dial := func(auth bool, source string) (*websocket.Conn, int) {
		headers := http.Header{"Origin": []string{source}}
		if auth {
			headers.Set("Cookie", c.Name+"="+c.Value)
		}
		ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
		defer cancel()
		ws, res, err := websocket.DefaultDialer.DialContext(ctx, target, headers)
		if res == nil {
			t.Fatal(err)
		}
		if ws == nil {
			res.Body.Close()
		}
		return ws, res.StatusCode
	}
	if _, code := dial(false, s.cfg.Origin); code != 401 {
		t.Fatal(code)
	}
	if _, code := dial(true, "https://other.test"); code != 403 {
		t.Fatal(code)
	}
	ws, code := dial(true, s.cfg.Origin)
	if code != 101 {
		t.Fatal(code)
	}
	defer ws.Close()
	_, data, err := ws.ReadMessage()
	if err != nil || string(data) != "RFB fixture" {
		t.Fatal(err, string(data))
	}
	if err = ws.WriteMessage(websocket.BinaryMessage, []byte("echo")); err != nil {
		t.Fatal(err)
	}
	_, data, err = ws.ReadMessage()
	if err != nil || string(data) != "echo" {
		t.Fatal(err, string(data))
	}
	if _, code := dial(true, s.cfg.Origin); code != 409 {
		t.Fatal(code)
	}
	if got := request(s, "POST", "/api/logout", "", s.cfg.Origin, csrf, c).Code; got != 204 {
		t.Fatal(got)
	}
	_ = ws.SetReadDeadline(time.Now().Add(time.Second))
	if _, _, err = ws.ReadMessage(); err == nil {
		t.Fatal("socket still open")
	}
}
