package controller

import (
	"crypto/sha256"
	"crypto/tls"
	"encoding/base64"
	"golang.org/x/crypto/pbkdf2"
	"net"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestQDSHMountAuthCookiesAndDomainBoundary(t *testing.T) {
	listener, err := net.Listen("tcp", "127.0.0.1:3080")
	if err != nil {
		t.Fatal(err)
	}
	backend := &http.Server{Handler: http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Header.Get("Authorization") != "" {
			t.Error("password forwarded upstream")
		}
		if r.Host != "gaozy.tech" || r.Header.Get("Origin") != "https://gaozy.tech" {
			t.Error("browser authority changed")
		}
		if r.URL.Path == "/" && r.URL.Query().Get("token") == "fixture" {
			http.SetCookie(w, &http.Cookie{Name: "dsh-session", Value: "fixture", Path: "/", HttpOnly: true, SameSite: http.SameSiteLaxMode})
			w.Header().Set("Location", "./")
			w.WriteHeader(303)
			return
		}
		if r.URL.Path != "/api/remote.mux" {
			t.Error("prefix not stripped", r.URL.Path)
		}
		w.WriteHeader(401)
	})}
	go backend.Serve(listener)
	defer backend.Close()
	root := t.TempDir()
	salt := []byte(strings.Repeat("s", 32))
	hash := pbkdf2.Key([]byte("fixture-password"), salt, 600000, 32, sha256.New)
	os.WriteFile(filepath.Join(root, "auth.json"), []byte(`{"username":"fixture-user","hash":"`+base64.StdEncoding.EncodeToString(hash)+`","salt":"`+base64.StdEncoding.EncodeToString(salt)+`"}`), 0600)
	os.WriteFile(filepath.Join(root, "entry"), []byte("https://gaozy.tech/dsh/?token=fixture"), 0600)
	proxy := qDSHProxyWithFiles(filepath.Join(root, "auth.json"), filepath.Join(root, "entry"))
	anonymous := httptest.NewRecorder()
	proxy.ServeHTTP(anonymous, httptest.NewRequest("GET", "https://gaozy.tech/dsh/", nil))
	if anonymous.Code != 401 {
		t.Fatal("anonymous login gate bypassed")
	}
	a := &QinglianController{cfg: qConfig{TLS: qTLSConfig{DomainName: "gaozy.tech"}}}
	boundary := a.domainHandler(http.NotFoundHandler(), http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) { w.WriteHeader(204) }), nil)
	for _, tc := range []struct {
		path, sni string
		status    int
	}{
		{"/dsh?token=fixture", "gaozy.tech", 308},
		{"/dsh/?token=fixture", "gaozy.tech", 303},
		{"/dsh/", "gaozy.tech", 303},
		{"/dsh/api/remote.mux", "gaozy.tech", 401},
		{"/dsh/api/remote.mux", "", 404},
		{"/dsh-other", "gaozy.tech", 204},
	} {
		r := httptest.NewRequest("GET", "https://gaozy.tech"+tc.path, nil)
		r.TLS = &tls.ConnectionState{ServerName: tc.sni}
		r.Header.Set("Origin", "https://gaozy.tech")
		w := httptest.NewRecorder()
		if tc.sni == "" || tc.path == "/dsh-other" {
			boundary.ServeHTTP(w, r)
		} else {
			r.SetBasicAuth("fixture-user", "fixture-password")
			proxy.ServeHTTP(w, r)
		}
		if w.Code != tc.status {
			t.Fatalf("%s: %d", tc.path, w.Code)
		}
		if tc.status == 308 && w.Header().Get("Location") != "/dsh/?token=fixture" {
			t.Fatal("redirect lost token")
		}
		if tc.status == 303 {
			cookies := w.Result().Cookies()
			if len(cookies) != 1 || cookies[0].Path != "/dsh/" || !cookies[0].Secure || !cookies[0].HttpOnly {
				t.Fatal("cookie boundary lost")
			}
			if !strings.Contains(w.Header().Get("Cache-Control"), "no-store") {
				t.Fatal("credential response cached")
			}
		}
	}
}
