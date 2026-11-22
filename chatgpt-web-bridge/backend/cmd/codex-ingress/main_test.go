package main

import (
	"crypto/tls"
	"net/http"
	"net/http/httptest"
	"net/netip"
	"net/url"
	"testing"
)

func TestIngressBoundary(t *testing.T) {
	upstream := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Host != host || r.URL.RequestURI() != "/codex/healthz?test=1" {
			t.Error(r.Host, r.URL.RequestURI())
		}
		w.WriteHeader(204)
	}))
	defer upstream.Close()
	target, _ := url.Parse(upstream.URL)
	handler := ingress([]netip.Prefix{netip.MustParsePrefix("192.0.2.0/24")}, target)
	for _, c := range []struct {
		address, hostname, sni, uri string
		code                        int
	}{
		{"192.0.2.1:40000", host, host, "/codex/healthz?test=1", 204},
		{"127.0.0.1:40000", host + ":8443", host, "/codex/healthz?test=1", 204},
		{"198.51.100.1:40000", host, host, "/codex/healthz", 403},
		{"192.0.2.1:40000", "another.example", host, "/codex/healthz", 421},
		{"192.0.2.1:40000", host, "another.example", "/codex/healthz", 421},
		{"192.0.2.1:40000", host, host, "/panel/", 404},
		{"192.0.2.1:40000", host, host, "/codex/../panel/", 404},
	} {
		req := httptest.NewRequest("GET", "https://"+c.hostname+c.uri, nil)
		req.RemoteAddr = c.address
		req.TLS = &tls.ConnectionState{ServerName: c.sni}
		w := httptest.NewRecorder()
		handler.ServeHTTP(w, req)
		if w.Code != c.code {
			t.Errorf("%s %s returned %d, want %d", c.address, c.uri, w.Code, c.code)
		}
	}
}
