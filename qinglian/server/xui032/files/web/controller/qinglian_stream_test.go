package controller

import (
	"bytes"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/tls"
	"crypto/x509"
	"encoding/pem"
	"github.com/gorilla/websocket"
	"io"
	"math/big"
	"net"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"testing"
	"time"
)

func TestCDNStreamRetainsNativeAuthenticationMeterAndStrictTLS(t *testing.T) {
	a, _, _, _ := qExportFixture(t)
	a.apiPrefix = "/api/v1/"
	a.stream = qNewStreamState()
	a.cfg.CDNCompatibility = true
	a.cfg.TLS.DomainName = "cdn.fixture"
	root := t.TempDir()
	a.cfg.TLS.Certificate = filepath.Join(root, "server.pem")
	key, _ := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	certInfo := &x509.Certificate{SerialNumber: big.NewInt(71), DNSNames: []string{"cdn.fixture"}, IPAddresses: []net.IP{net.ParseIP("127.0.0.1")}, NotBefore: time.Now().Add(-time.Hour), NotAfter: time.Now().Add(time.Hour), IsCA: true, BasicConstraintsValid: true, KeyUsage: x509.KeyUsageCertSign | x509.KeyUsageDigitalSignature, ExtKeyUsage: []x509.ExtKeyUsage{x509.ExtKeyUsageServerAuth}}
	der, e := x509.CreateCertificate(rand.Reader, certInfo, certInfo, &key.PublicKey, key)
	if e != nil {
		t.Fatal(e)
	}
	private, _ := x509.MarshalPKCS8PrivateKey(key)
	pub := pem.EncodeToMemory(&pem.Block{Type: "CERTIFICATE", Bytes: der})
	os.WriteFile(filepath.Join(root, "ca.pem"), pub, 0600)
	pair, e := tls.X509KeyPair(pub, pem.EncodeToMemory(&pem.Block{Type: "PRIVATE KEY", Bytes: private}))
	if e != nil {
		t.Fatal(e)
	}
	var listener net.Listener
	var port int
	for port = 22000; port < 24000; port++ {
		listener, e = net.Listen("tcp", "127.0.0.1:"+strconv.Itoa(port))
		if e == nil {
			break
		}
	}
	if listener == nil {
		t.Fatal("no loopback fixture port")
	}
	backend := tls.NewListener(listener, &tls.Config{Certificates: []tls.Certificate{pair}, MinVersion: tls.VersionTLS12})
	defer backend.Close()
	go func() {
		for {
			c, e := backend.Accept()
			if e != nil {
				return
			}
			go func() { defer c.Close(); io.Copy(c, c) }()
		}
	}()
	id := strings.Repeat("d", 32)
	_, e = a.store.db.Exec(`INSERT INTO exports(id,user_id,request_id,protocol,port,total,created,expires,status,data,kind,parent_id) VALUES(?,'fixture','stream-fixture','vmess',?,1073741824,?,?,'active','{}','main',1)`, id, port, time.Now().Unix(), time.Now().Unix()+180)
	if e != nil {
		t.Fatal(e)
	}
	a.store.db.Exec("UPDATE api_users SET history_consent=1 WHERE id='fixture'")
	front := httptest.NewUnstartedServer(http.HandlerFunc(a.serveStream))
	front.TLS = &tls.Config{Certificates: []tls.Certificate{pair}, MinVersion: tls.VersionTLS12}
	front.StartTLS()
	defer front.Close()
	defer a.stream.close()
	pool := x509.NewCertPool()
	pool.AppendCertsFromPEM(pub)
	dialer := websocket.Dialer{TLSClientConfig: &tls.Config{RootCAs: pool, ServerName: "cdn.fixture"}, HandshakeTimeout: 3 * time.Second}
	url := "wss" + strings.TrimPrefix(front.URL, "https") + a.streamPrefix() + id
	headers := http.Header{"Host": []string{"cdn.fixture"}}
	c, response, e := dialer.Dial(url, headers)
	if e != nil {
		t.Fatal("WSS fixture", e, response)
	}
	payload := bytes.Repeat([]byte("binary-fixture-stream\x00"), 40000)
	if e = c.WriteMessage(websocket.BinaryMessage, payload); e != nil {
		t.Fatal(e)
	}
	c.SetReadDeadline(time.Now().Add(5 * time.Second))
	var received []byte
	for len(received) < len(payload) {
		kind, part, e := c.ReadMessage()
		if e != nil || kind != websocket.BinaryMessage {
			t.Fatal("binary stream interrupted", e)
		}
		received = append(received, part...)
	}
	if !bytes.Equal(received, payload) {
		t.Fatal("stream data changed")
	}
	c.Close()
	// The adapter never decodes/records payload; existing worker owns authentication.
	// A private origin certificate with the wrong name must fail before WS upgrade.
	a.cfg.ServerAddress = "wrong.fixture"
	if conn, r, e := dialer.Dial(url, headers); e == nil {
		conn.Close()
		t.Fatal("origin hostname bypass")
	} else if r.StatusCode != 502 {
		t.Fatal("expected502", r.StatusCode)
	}
	a.cfg.ServerAddress = "127.0.0.1"
	for _, statement := range []string{"UPDATE exports SET status='expired'", "UPDATE exports SET status='active',expires=0", "UPDATE exports SET expires=9999999999,total=up+down"} {
		a.store.db.Exec(statement)
		if conn, r, e := dialer.Dial(url, headers); e == nil {
			conn.Close()
			t.Fatal("inactive node admitted")
		} else if r.StatusCode != 404 {
			t.Fatal(r.StatusCode)
		}
	}
	a.store.db.Exec("UPDATE exports SET total=1073741824")
	a.store.db.Exec("UPDATE api_users SET history_consent=0")
	if conn, r, e := dialer.Dial(url, headers); e == nil {
		conn.Close()
		t.Fatal("missing consent admitted")
	} else if r.StatusCode != 404 {
		t.Fatal(r.StatusCode)
	}
	a.store.db.Exec("UPDATE api_users SET history_consent=1")
	a.stream.Lock()
	a.stream.pending[id] = 64
	a.stream.Unlock()
	if conn, r, e := dialer.Dial(url, headers); e == nil {
		conn.Close()
		t.Fatal("per-node bound bypass")
	} else if r.StatusCode != 429 {
		t.Fatal(r.StatusCode)
	}
	a.stream.Lock()
	delete(a.stream.pending, id)
	a.stream.Unlock()
	a.cfg.CDNCompatibility = false
	if conn, r, e := dialer.Dial(url, headers); e == nil {
		conn.Close()
		t.Fatal("disabled transport exposed")
	} else if r.StatusCode != 404 {
		t.Fatal(r.StatusCode)
	}
	raw := map[string]interface{}{"add": "127.0.0.1", "port": port, "net": "tcp", "caPem": "private-ca"}
	cdn := a.cdnNode(raw, id)
	if cdn["caPem"] != nil || raw["caPem"] != "private-ca" || cdn["net"] != "ws" || cdn["add"] != "cdn.fixture" {
		t.Fatal("public/private TLS trust mixed")
	}
}
