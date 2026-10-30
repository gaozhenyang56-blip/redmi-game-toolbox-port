package controller

import (
	"crypto/tls"
	"crypto/x509"
	"database/sql"
	"io"
	"net"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/gorilla/websocket"
)

// Public WSS is a transport only. The existing per-user worker still performs
// protocol authentication, traffic accounting, consent, quota and lease expiry.
// No destinations, ports, credentials or terminal commands come from the URL.
var qStreamID = regexp.MustCompile(`^[0-9a-f]{32}$`)

type qStreamState struct {
	sync.Mutex
	clients map[*websocket.Conn]string
	pending map[string]int
	closed  bool
}

func qNewStreamState() *qStreamState {
	return &qStreamState{clients: map[*websocket.Conn]string{}, pending: map[string]int{}}
}
func (s *qStreamState) close() {
	s.Lock()
	defer s.Unlock()
	s.closed = true
	for c := range s.clients {
		c.Close()
	}
}
func (a *QinglianController) streamPrefix() string {
	return strings.TrimSuffix(a.apiPrefix, "api/v1/") + "transport/ws/"
}
func (a *QinglianController) cdnNode(node map[string]interface{}, id string) map[string]interface{} {
	result := map[string]interface{}{}
	for k, v := range node {
		result[k] = v
	}
	result["add"] = a.cfg.TLS.DomainName
	result["port"] = 443
	result["net"] = "ws"
	result["tls"] = "tls"
	result["sni"] = a.cfg.TLS.DomainName
	result["host"] = a.cfg.TLS.DomainName
	result["path"] = a.streamPrefix() + id
	delete(result, "caPem") // Public CDN TLS uses platform public roots, never the private origin CA.
	return result
}
func (a *QinglianController) streamTarget(id string) (int, bool, error) {
	var port int
	var protocol string
	err := a.store.db.QueryRow(`SELECT e.port,e.protocol FROM exports e JOIN api_users u ON u.id=e.user_id WHERE e.id=? AND e.kind IN ('main','guest') AND e.status='active' AND e.expires>? AND e.up+e.down<e.total AND u.enabled=1 AND (u.history_consent=1 OR e.kind='guest')`, id, time.Now().Unix()).Scan(&port, &protocol)
	if err == sql.ErrNoRows {
		return 0, false, nil
	}
	if err != nil {
		return 0, false, err
	}
	if port < 22000 || port > 23999 || (protocol != "vmess" && protocol != "vless" && protocol != "trojan" && protocol != "shadowsocks") {
		return 0, false, nil
	}
	return port, protocol != "shadowsocks", nil
}
func (a *QinglianController) serveStream(w http.ResponseWriter, r *http.Request) {
	domain := a.cfg.TLS.DomainName
	if a.store == nil || !a.cfg.CDNCompatibility || domain == "" || r.TLS == nil || !strings.EqualFold(r.TLS.ServerName, domain) || !(strings.EqualFold(r.Host, domain) || strings.EqualFold(r.Host, domain+":443")) || r.Method != "GET" || r.URL.RawQuery != "" || r.URL.RawPath != "" || !strings.HasPrefix(r.URL.Path, a.streamPrefix()) {
		http.NotFound(w, r)
		return
	}
	id := strings.TrimPrefix(r.URL.Path, a.streamPrefix())
	if !qStreamID.MatchString(id) {
		http.NotFound(w, r)
		return
	}
	if !websocket.IsWebSocketUpgrade(r) {
		w.WriteHeader(400)
		return
	}
	port, secure, err := a.streamTarget(id)
	if err != nil {
		w.WriteHeader(503)
		return
	}
	if port == 0 {
		http.NotFound(w, r)
		return
	}
	registered := false
	state := a.stream
	state.Lock()
	pending := 0
	own := state.pending[id]
	for _, n := range state.pending {
		pending += n
	}
	for _, v := range state.clients {
		if v == id {
			own++
		}
	}
	if state.closed || len(state.clients)+pending >= 256 || own >= 64 {
		state.Unlock()
		w.WriteHeader(429)
		return
	}
	state.pending[id]++
	state.Unlock()
	defer func() {
		if !registered {
			state.Lock()
			state.pending[id]--
			if state.pending[id] == 0 {
				delete(state.pending, id)
			}
			state.Unlock()
		}
	}()
	dialer := &net.Dialer{Timeout: 5 * time.Second}
	address := net.JoinHostPort("127.0.0.1", strconv.Itoa(port))
	var backend net.Conn
	if secure {
		data, e := os.ReadFile(filepath.Join(filepath.Dir(a.cfg.TLS.Certificate), "ca.pem"))
		if e != nil {
			w.WriteHeader(503)
			return
		}
		pool := x509.NewCertPool()
		if !pool.AppendCertsFromPEM(data) {
			w.WriteHeader(503)
			return
		}
		backend, err = tls.DialWithDialer(dialer, "tcp", address, &tls.Config{RootCAs: pool, ServerName: a.cfg.ServerAddress, MinVersion: tls.VersionTLS12})
	} else {
		backend, err = dialer.Dial("tcp", address)
	}
	if err != nil {
		w.WriteHeader(502)
		return
	}
	defer backend.Close()
	backend.SetDeadline(time.Time{})
	// Cookie/API tokens are not authentication for this data endpoint. Native
	// clients authenticate inside VMess/VLESS/Trojan/SS to the unchanged worker.
	upgrader := websocket.Upgrader{ReadBufferSize: 32768, WriteBufferSize: 32768, HandshakeTimeout: 10 * time.Second, CheckOrigin: func(*http.Request) bool { return true }}
	client, err := upgrader.Upgrade(w, r, nil)
	if err != nil {
		return
	}
	defer client.Close()
	state.Lock()
	if state.closed {
		state.Unlock()
		return
	}
	state.pending[id]--
	if state.pending[id] == 0 {
		delete(state.pending, id)
	}
	registered = true
	state.clients[client] = id
	state.Unlock()
	defer func() { state.Lock(); delete(state.clients, client); state.Unlock() }()
	client.SetReadLimit(4 << 20)
	client.SetReadDeadline(time.Now().Add(90 * time.Second))
	client.SetPongHandler(func(string) error { return client.SetReadDeadline(time.Now().Add(90 * time.Second)) })
	done := make(chan struct{})
	go func() {
		defer close(done)
		defer backend.Close()
		buffer := make([]byte, 32768)
		for {
			kind, reader, e := client.NextReader()
			if e != nil || kind != websocket.BinaryMessage {
				return
			}
			if _, e = io.CopyBuffer(backend, reader, buffer); e != nil {
				return
			}
		}
	}()
	go func() {
		ticker := time.NewTicker(25 * time.Second)
		defer ticker.Stop()
		for {
			select {
			case <-done:
				return
			case <-ticker.C:
				if client.WriteControl(websocket.PingMessage, nil, time.Now().Add(5*time.Second)) != nil {
					backend.Close()
					return
				}
			}
		}
	}()
	buffer := make([]byte, 32768)
	for {
		n, e := backend.Read(buffer)
		if n > 0 {
			client.SetWriteDeadline(time.Now().Add(20 * time.Second))
			if client.WriteMessage(websocket.BinaryMessage, buffer[:n]) != nil {
				return
			}
		}
		if e != nil {
			return
		}
	}
}
