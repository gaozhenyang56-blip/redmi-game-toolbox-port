package controller

import (
	"context"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/tls"
	"crypto/x509"
	"crypto/x509/pkix"
	"encoding/pem"
	"math/big"
	"net"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"testing"
	"time"
)

func TestQDomainRequiresBothHostAndSNIAndTrustsOnlyCDNPeers(t *testing.T) {
	a := &QinglianController{cfg: qConfig{TLS: qTLSConfig{DomainName: "gaozy.tech"}}}
	_, network, _ := net.ParseCIDR("192.0.2.0/24")
	api := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) { w.WriteHeader(404) })
	seen := ""
	panel := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		seen = r.RemoteAddr
		if r.Header.Get("X-Real-IP") != "" || r.Header.Get("CF-Connecting-IP") != "" {
			t.Error("untrusted forwarding header leaked")
		}
		w.WriteHeader(200)
	})
	handler := a.domainHandler(api, panel, []*net.IPNet{network})
	cases := []struct {
		host, sni, peer, forwarded, wantPeer string
		status                               int
	}{
		{"gaozy.tech", "gaozy.tech", "192.0.2.10:42", "198.51.100.8", "198.51.100.8:42", 200},
		{"gaozy.tech:443", "gaozy.tech", "203.0.113.9:42", "127.0.0.1", "203.0.113.9:42", 200},
		{"gaozy.tech", "gaozy.tech", "192.0.2.10:42", "not-an-ip", "192.0.2.10:42", 200},
		{"gaozy.tech", "", "192.0.2.10:42", "127.0.0.1", "", 404},
		{"107.150.7.124", "gaozy.tech", "192.0.2.10:42", "127.0.0.1", "", 404},
		{"gaozy.tech:8443", "gaozy.tech", "192.0.2.10:42", "127.0.0.1", "", 404},
	}
	for _, c := range cases {
		r := httptest.NewRequest("GET", "https://gaozy.tech/xui/qinglian", nil)
		r.Host = c.host
		r.TLS = &tls.ConnectionState{ServerName: c.sni}
		r.RemoteAddr = c.peer
		r.Header.Set("CF-Connecting-IP", c.forwarded)
		r.Header.Set("X-Real-IP", "127.0.0.1")
		seen = ""
		w := httptest.NewRecorder()
		handler.ServeHTTP(w, r)
		if w.Code != c.status || seen != c.wantPeer {
			t.Fatalf("%+v => %d %s", c, w.Code, seen)
		}
		if r.RemoteAddr != c.peer {
			t.Fatal("mutated shared request")
		}
		if c.status == 200 && w.Header().Get("Cache-Control") != "private, no-store" {
			t.Fatal("panel must not be cached")
		}
	}
}

func TestQDomainCertificateAndProxyConfigurationValidation(t *testing.T) {
	key, _ := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	template := &x509.Certificate{SerialNumber: big.NewInt(1), Subject: pkix.Name{CommonName: "gaozy.tech"}, DNSNames: []string{"gaozy.tech"}, NotBefore: time.Now().Add(-time.Hour), NotAfter: time.Now().Add(time.Hour), KeyUsage: x509.KeyUsageDigitalSignature, ExtKeyUsage: []x509.ExtKeyUsage{x509.ExtKeyUsageServerAuth}}
	der, err := x509.CreateCertificate(rand.Reader, template, template, &key.PublicKey, key)
	if err != nil {
		t.Fatal(err)
	}
	root := t.TempDir()
	cert := filepath.Join(root, "cert.pem")
	private := filepath.Join(root, "key.pem")
	encoded, _ := x509.MarshalPKCS8PrivateKey(key)
	os.WriteFile(cert, pem.EncodeToMemory(&pem.Block{Type: "CERTIFICATE", Bytes: der}), 0600)
	os.WriteFile(private, pem.EncodeToMemory(&pem.Block{Type: "PRIVATE KEY", Bytes: encoded}), 0600)
	a := &QinglianController{cfg: qConfig{TLS: qTLSConfig{HTTPSPort: 443, DomainName: "gaozy.tech", DomainCertificate: cert, DomainPrivateKey: private, CDNCIDRs: []string{"192.0.2.0/24"}}}}
	if certificate, networks, e := a.domainTLS(); e != nil || certificate == nil || len(networks) != 1 {
		t.Fatal("valid domain fixture rejected", e)
	}
	// Real TLS selection: public-domain SNI and original IP certificates coexist.
	domainCert, _, _ := a.domainTLS()
	original := httptest.NewTLSServer(http.NotFoundHandler())
	ipCert := original.TLS.Certificates[0]
	original.Close()
	pool := x509.NewCertPool()
	ipLeaf, _ := x509.ParseCertificate(ipCert.Certificate[0])
	pool.AddCert(ipLeaf)
	domainLeaf, _ := x509.ParseCertificate(domainCert.Certificate[0])
	pool.AddCert(domainLeaf)
	server := httptest.NewUnstartedServer(a.domainHandler(http.NotFoundHandler(), http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) { w.WriteHeader(200) }), nil))
	server.TLS = &tls.Config{Certificates: []tls.Certificate{ipCert, *domainCert}, MinVersion: tls.VersionTLS12}
	server.StartTLS()
	defer server.Close()
	transport := &http.Transport{TLSClientConfig: &tls.Config{RootCAs: pool}, DialContext: func(ctx context.Context, network, address string) (net.Conn, error) {
		return (&net.Dialer{}).DialContext(ctx, network, server.Listener.Addr().String())
	}}
	defer transport.CloseIdleConnections()
	client := &http.Client{Transport: transport, Timeout: 3 * time.Second}
	for address, want := range map[string]int{"https://gaozy.tech/xui/qinglian": 200, server.URL + "/xui/qinglian": 404} {
		response, e := client.Get(address)
		if e != nil {
			t.Fatal(e)
		}
		response.Body.Close()
		if response.StatusCode != want {
			t.Fatal("TLS route boundary", response.StatusCode, want)
		}
	}
	a.cfg.TLS.DomainName = "other.invalid"
	if _, _, e := a.domainTLS(); e == nil {
		t.Fatal("certificate hostname mismatch accepted")
	}
	a.cfg.TLS.DomainName = "gaozy.tech"
	a.cfg.TLS.CDNCIDRs = []string{"0.0.0.0/0"}
	if _, _, e := a.domainTLS(); e == nil {
		t.Fatal("trust-all proxy range accepted")
	}
	a.cfg.TLS.CDNCIDRs = []string{"::/0"}
	if _, _, e := a.domainTLS(); e == nil {
		t.Fatal("trust-all IPv6 range accepted")
	}
	a.cfg.TLS.CDNCIDRs = nil
	a.cfg.TLS.DomainName = ""
	if _, _, e := a.domainTLS(); e == nil {
		t.Fatal("partial domain configuration accepted")
	}
}
