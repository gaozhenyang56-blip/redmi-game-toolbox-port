package main

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"net/url"
	"os"
	"path"
	"path/filepath"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/gorilla/websocket"
)

var version = "dev"

type Server struct {
	cfg        Config
	auth       *authState
	host       string
	controller *control // guarded by auth.mu
	filesMu    sync.Mutex
	eventMu    sync.Mutex
	events     []string
}

func newServer(c Config) (*Server, error) {
	a, err := loadAuth(c)
	if err != nil {
		return nil, err
	}
	u, _ := url.Parse(c.Origin)
	return &Server{cfg: c, auth: a, host: u.Host}, nil
}

func (s *Server) sameOrigin(r *http.Request) bool { return r.Header.Get("Origin") == s.cfg.Origin }

func reply(w http.ResponseWriter, value any) {
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	_ = json.NewEncoder(w).Encode(value)
}

func problem(w http.ResponseWriter, status int, message string) {
	w.Header().Set("Content-Type", "application/json; charset=utf-8")
	w.WriteHeader(status)
	reply(w, map[string]string{"error": message})
}

func readJSON(w http.ResponseWriter, r *http.Request, dest any, limit int64) bool {
	if !strings.HasPrefix(r.Header.Get("Content-Type"), "application/json") {
		problem(w, 415, "需要 JSON 请求")
		return false
	}
	if err := decode(http.MaxBytesReader(w, r.Body, limit), dest); err != nil {
		problem(w, 400, "请求格式错误或过大")
		return false
	}
	return true
}

func (s *Server) handler() http.Handler {
	m := http.NewServeMux()
	m.HandleFunc("GET /healthz", func(w http.ResponseWriter, r *http.Request) { w.WriteHeader(204) })
	m.HandleFunc("POST /api/login", s.login)
	m.HandleFunc("GET /api/session", s.require(func(w http.ResponseWriter, r *http.Request, x session) { reply(w, map[string]string{"csrf": x.csrf}) }))
	m.HandleFunc("POST /api/logout", s.require(s.logout))
	m.HandleFunc("POST /api/password", s.require(s.password))
	m.HandleFunc("GET /api/status", s.require(s.status))
	m.HandleFunc("POST /api/browser/{action}", s.require(s.browser))
	m.HandleFunc("GET /api/files", s.require(s.listFiles))
	m.HandleFunc("PUT /api/files/uploads/{name}", s.require(s.upload))
	m.HandleFunc("GET /api/files/downloads/{name}", s.require(s.download))
	m.HandleFunc("DELETE /api/files/{kind}/{name}", s.require(s.deleteFile))
	m.HandleFunc("GET /api/vnc", s.require(s.vnc))
	m.Handle("/api/", http.NotFoundHandler())
	assets := http.FileServer(http.Dir(s.cfg.Assets))
	m.Handle("GET /assets/", assets)
	for _, route := range []string{"GET /{$}", "GET /admin"} {
		m.HandleFunc(route, func(w http.ResponseWriter, r *http.Request) {
			http.ServeFile(w, r, filepath.Join(s.cfg.Assets, "index.html"))
		})
	}
	var routes http.Handler = m
	if s.cfg.BasePath != "" {
		routes = http.StripPrefix(s.cfg.BasePath, m)
	}
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Host != s.host {
			http.Error(w, "Invalid Host", 421)
			return
		}
		w.Header().Set("Cache-Control", "no-store")
		w.Header().Set("X-Content-Type-Options", "nosniff")
		w.Header().Set("Referrer-Policy", "no-referrer")
		w.Header().Set("Content-Security-Policy", "default-src 'none'; script-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self' data:; connect-src 'self' wss://"+s.host+"; frame-ancestors 'none'; base-uri 'none'; form-action 'self'")
		w.Header().Set("Strict-Transport-Security", "max-age=31536000")
		if prefix := s.cfg.BasePath; prefix != "" {
			if r.URL.Path == prefix && (r.Method == "GET" || r.Method == "HEAD") {
				target := prefix + "/"
				if r.URL.RawQuery != "" {
					target += "?" + r.URL.RawQuery
				}
				http.Redirect(w, r, target, http.StatusPermanentRedirect)
				return
			}
			if !strings.HasPrefix(r.URL.EscapedPath(), prefix+"/") || r.URL.Path != cleanRequestPath(r.URL.Path) {
				http.NotFound(w, r)
				return
			}
		}
		routes.ServeHTTP(w, r)
	})
}

func cleanRequestPath(value string) string {
	clean := path.Clean(value)
	if clean != "/" && strings.HasSuffix(value, "/") {
		clean += "/"
	}
	return clean
}

func (s *Server) note(message string) {
	log.Print(message)
	s.eventMu.Lock()
	defer s.eventMu.Unlock()
	s.events = append(s.events, time.Now().UTC().Format(time.RFC3339)+" "+message)
	if len(s.events) > 24 {
		s.events = s.events[1:]
	}
}

func (s *Server) housekeeping(ctx context.Context) {
	ticker := time.NewTicker(time.Minute)
	defer ticker.Stop()
	for {
		s.filesMu.Lock()
		s.cleanFiles()
		s.filesMu.Unlock()
		s.auth.mu.Lock()
		for id, x := range s.auth.sessions {
			if time.Now().After(x.until) {
				s.revokeLocked(id)
			}
		}
		s.auth.mu.Unlock()
		select {
		case <-ctx.Done():
			return
		case <-ticker.C:
		}
	}
}

func (s *Server) vnc(w http.ResponseWriter, r *http.Request, x session) {
	if !s.sameOrigin(r) {
		problem(w, 403, "远程控制来源无效")
		return
	}
	if !websocket.IsWebSocketUpgrade(r) {
		problem(w, 400, "需要 WebSocket")
		return
	}
	ctx, cancel := context.WithDeadline(r.Context(), x.until)
	defer cancel()
	lease := &control{owner: x.id, cancel: cancel}
	s.auth.mu.Lock()
	if _, ok := s.auth.find(r); !ok {
		s.auth.mu.Unlock()
		problem(w, 401, "会话已失效")
		return
	}
	if s.controller != nil {
		s.auth.mu.Unlock()
		problem(w, 409, "远程浏览器正被另一连接使用")
		return
	}
	s.controller = lease
	s.auth.mu.Unlock()
	defer func() {
		s.auth.mu.Lock()
		s.controller = nil
		s.auth.mu.Unlock()
	}()

	dialer := net.Dialer{Timeout: 2 * time.Second}
	vnc, err := dialer.DialContext(ctx, "unix", filepath.Join(s.cfg.Runtime, "rfb.sock"))
	if err != nil {
		problem(w, 503, "远程浏览器尚未就绪")
		return
	}
	defer vnc.Close()
	u := websocket.Upgrader{CheckOrigin: s.sameOrigin, HandshakeTimeout: 5 * time.Second, Subprotocols: []string{"binary"}}
	socket, err := u.Upgrade(w, r, nil)
	if err != nil {
		return
	}
	defer socket.Close()
	s.auth.mu.Lock()
	lease.ws = socket
	s.auth.mu.Unlock()
	stop := context.AfterFunc(ctx, func() { vnc.Close(); socket.Close() })
	defer stop()
	_, _ = s.browserRequest(ctx, "POST", "activity", nil)
	socket.SetReadLimit(1 << 20)
	_ = socket.SetReadDeadline(time.Now().Add(35 * time.Second))
	socket.SetPongHandler(func(string) error {
		return socket.SetReadDeadline(time.Now().Add(35 * time.Second))
	})
	go func() {
		tick := time.NewTicker(12 * time.Second)
		defer tick.Stop()
		for {
			select {
			case <-ctx.Done():
				return
			case <-tick.C:
				_, _ = s.browserRequest(ctx, "POST", "activity", nil)
				if socket.WriteControl(websocket.PingMessage, nil, time.Now().Add(3*time.Second)) != nil {
					cancel()
					return
				}
			}
		}
	}()
	go func() {
		defer cancel()
		buf := make([]byte, 64<<10)
		for {
			n, err := vnc.Read(buf)
			if n > 0 {
				socket.SetWriteDeadline(time.Now().Add(15 * time.Second))
				if socket.WriteMessage(websocket.BinaryMessage, buf[:n]) != nil {
					return
				}
			}
			if err != nil {
				return
			}
		}
	}()
	for {
		kind, stream, err := socket.NextReader()
		if err != nil || kind != websocket.BinaryMessage {
			return
		}
		_ = vnc.SetWriteDeadline(time.Now().Add(15 * time.Second))
		if _, err = io.Copy(vnc, stream); err != nil {
			return
		}
	}
}

func (s *Server) browserRequest(ctx context.Context, method, action string, body io.Reader) ([]byte, error) {
	t := &http.Transport{DisableKeepAlives: true, DialContext: func(ctx context.Context, _, _ string) (net.Conn, error) {
		return (&net.Dialer{}).DialContext(ctx, "unix", filepath.Join(s.cfg.Runtime, "control.sock"))
	}}
	c := http.Client{Transport: t, Timeout: 4 * time.Second}
	req, err := http.NewRequestWithContext(ctx, method, "http://bridge/"+action, body)
	if err != nil {
		return nil, err
	}
	res, err := c.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()
	if res.StatusCode >= 300 {
		return nil, fmt.Errorf("browser request: %d", res.StatusCode)
	}
	return io.ReadAll(io.LimitReader(res.Body, 32768))
}

func (s *Server) browser(w http.ResponseWriter, r *http.Request, x session) {
	action := r.PathValue("action")
	if action != "restart" && action != "refresh" && action != "paste" && action != "copy" && action != "open" {
		problem(w, 404, "未知浏览器操作")
		return
	}
	var body io.Reader
	if action == "paste" {
		var in struct{ Text string }
		if !readJSON(w, r, &in, 128<<10) {
			return
		}
		if in.Text == "" || len(in.Text) > 32<<10 || strings.ContainsRune(in.Text, 0) {
			problem(w, 400, "文字为空或超过 32 KiB")
			return
		}
		body = strings.NewReader(in.Text)
	}
	if action == "open" {
		var in struct{ Target string }
		if !readJSON(w, r, &in, 128) {
			return
		}
		if in.Target != "" && officialPages[in.Target] == "" {
			problem(w, 400, "未知的官方页面")
			return
		}
		body = strings.NewReader(in.Target)
	}
	if action != "restart" {
		s.auth.mu.Lock()
		active := s.controller != nil
		owns := active && s.controller.owner == x.id && s.controller.ws != nil
		s.auth.mu.Unlock()
		if !owns && (action != "open" || active) {
			problem(w, 409, "请先连接远程浏览器")
			return
		}
	}
	data, err := s.browserRequest(r.Context(), "POST", action, body)
	if err != nil {
		s.note("浏览器操作失败：" + action)
		problem(w, 503, "浏览器操作失败，请检查服务状态")
		return
	}
	if action == "copy" {
		reply(w, map[string]string{"text": string(data)})
		return
	}
	w.WriteHeader(204)
}

func (s *Server) status(w http.ResponseWriter, r *http.Request, x session) {
	var metrics map[string]any
	if data, err := s.browserRequest(r.Context(), "GET", "status", nil); err == nil {
		_ = json.Unmarshal(data, &metrics)
	}
	s.auth.mu.Lock()
	active := s.controller != nil
	owns := active && s.controller.owner == x.id
	s.auth.mu.Unlock()
	s.eventMu.Lock()
	events := append([]string{}, s.events...)
	s.eventMu.Unlock()
	update, _ := os.ReadFile(filepath.Join(filepath.Dir(s.cfg.Assets), "release.txt"))
	reply(w, map[string]any{"browser": metrics, "active": active, "owned": owns, "version": version,
		"release": strings.TrimSpace(string(update)), "events": events, "uploadMiB": s.cfg.UploadMiB})
}

func metric(path string) *uint64 {
	value, err := os.ReadFile(path)
	if err != nil {
		return nil
	}
	n, err := strconv.ParseUint(strings.TrimSpace(string(value)), 10, 64)
	if err != nil {
		return nil
	}
	return &n
}

func serve(c Config) error {
	s, err := newServer(c)
	if err != nil {
		return err
	}
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	go s.housekeeping(ctx)
	h := http.Server{Addr: c.Listen, Handler: s.handler(), ReadHeaderTimeout: 8 * time.Second,
		ReadTimeout: 10 * time.Minute, WriteTimeout: 15 * time.Minute, IdleTimeout: 30 * time.Second, MaxHeaderBytes: 16 << 10}
	return h.ListenAndServe()
}

func main() {
	if len(os.Args) != 3 {
		log.Fatal("用法：bridge serve|browser|password-init|password-init-explicit|check CONFIG")
	}
	cfg, err := loadConfig(os.Args[2])
	if err != nil {
		log.Fatal(err)
	}
	switch os.Args[1] {
	case "serve":
		err = serve(cfg)
	case "browser":
		err = runBrowser(cfg)
	case "check":
	case "password-init", "password-init-explicit":
		var raw []byte
		raw, err = io.ReadAll(io.LimitReader(os.Stdin, 1024))
		if err == nil {
			var hash []byte
			minimum := 12
			if os.Args[1] == "password-init-explicit" {
				minimum = 11
			}
			hash, err = hashWithMinimum(string(bytes.TrimRight(raw, "\r\n")), minimum)
			if err == nil {
				err = atomicFile(credentialPath(cfg), hash)
			}
		}
	default:
		err = errors.New("未知命令")
	}
	if err != nil {
		log.Fatal(err)
	}
}
