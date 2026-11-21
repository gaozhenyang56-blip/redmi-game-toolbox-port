package main

import (
	"crypto/rand"
	"crypto/subtle"
	"encoding/hex"
	"errors"
	"net/http"
	"os"
	"path/filepath"
	"sync"
	"time"

	"github.com/gorilla/websocket"
	"golang.org/x/crypto/bcrypt"
)

const sessionCookie = "__Host-bridge"

type session struct {
	id, csrf string
	until    time.Time
}
type authState struct {
	mu       sync.Mutex
	sessions map[string]session
	hashPath string
	hash     []byte
	window   time.Time
	attempts int
}

func token() string {
	var b [32]byte
	// crypto/rand.Read either succeeds or terminates the program on modern Go.
	rand.Read(b[:])
	return hex.EncodeToString(b[:])
}

func passwordHash(password string) ([]byte, error) {
	if len(password) < 12 || len(password) > 72 {
		return nil, errors.New("访问密码需要 12–72 字节")
	}
	return bcrypt.GenerateFromPassword([]byte(password), 12)
}

func credentialPath(c Config) string { return filepath.Join(c.State, "password.bcrypt") }

func loadAuth(c Config) (*authState, error) {
	path := credentialPath(c)
	hash, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	if _, err = bcrypt.Cost(hash); err != nil {
		return nil, err
	}
	return &authState{hashPath: path, hash: hash, sessions: make(map[string]session)}, nil
}

func (a *authState) attempt() bool {
	now := time.Now()
	if now.After(a.window) {
		a.window = now.Add(time.Minute)
		a.attempts = 0
	}
	if a.attempts >= 8 {
		return false
	}
	a.attempts++
	return true
}

func (a *authState) find(r *http.Request) (session, bool) {
	c, err := r.Cookie(sessionCookie)
	if err != nil {
		return session{}, false
	}
	s, ok := a.sessions[c.Value]
	return s, ok && time.Now().Before(s.until)
}

func cookie(w http.ResponseWriter, id string, maxAge int) {
	http.SetCookie(w, &http.Cookie{Name: sessionCookie, Value: id, Path: "/", Secure: true, HttpOnly: true, SameSite: http.SameSiteStrictMode, MaxAge: maxAge})
}

func (s *Server) login(w http.ResponseWriter, r *http.Request) {
	if !s.sameOrigin(r) {
		problem(w, 403, "请求来源无效")
		return
	}
	var in struct{ Username, Password string }
	if !readJSON(w, r, &in, 1024) {
		return
	}
	a := s.auth
	a.mu.Lock()
	if !a.attempt() {
		a.mu.Unlock()
		w.Header().Set("Retry-After", "60")
		problem(w, 429, "尝试次数过多，请一分钟后重试")
		return
	}
	hash := a.hash
	a.mu.Unlock()
	if bcrypt.CompareHashAndPassword(hash, []byte(in.Password)) != nil ||
		subtle.ConstantTimeCompare([]byte(in.Username), []byte(s.cfg.AdminUser)) != 1 {
		problem(w, 401, "登录名或访问密码错误")
		return
	}
	a.mu.Lock()
	defer a.mu.Unlock()
	if subtle.ConstantTimeCompare(hash, a.hash) != 1 {
		problem(w, 401, "密码已变更，请重试")
		return
	}
	if old, ok := a.find(r); ok {
		s.revokeLocked(old.id)
	}
	if len(a.sessions) >= 64 {
		problem(w, 429, "活动登录过多")
		return
	}
	ttl := duration(s.cfg.SessionHours)
	sess := session{token(), token(), time.Now().Add(ttl)}
	a.sessions[sess.id] = sess
	cookie(w, sess.id, int(ttl.Seconds()))
	reply(w, map[string]string{"csrf": sess.csrf})
}

type authenticated func(http.ResponseWriter, *http.Request, session)

func (s *Server) require(handler authenticated) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		s.auth.mu.Lock()
		sess, ok := s.auth.find(r)
		s.auth.mu.Unlock()
		if !ok {
			problem(w, 401, "请先登录 Web Bridge")
			return
		}
		if r.Method != "GET" && r.Method != "HEAD" &&
			(!s.sameOrigin(r) || subtle.ConstantTimeCompare([]byte(sess.csrf), []byte(r.Header.Get("X-CSRF-Token"))) != 1) {
			problem(w, 403, "请求验证失败")
			return
		}
		handler(w, r, sess)
	}
}

func (s *Server) revokeLocked(id string) {
	delete(s.auth.sessions, id)
	if s.controller != nil && s.controller.owner == id {
		s.controller.cancel()
		if s.controller.ws != nil {
			s.controller.ws.Close()
		}
	}
}

func (s *Server) logout(w http.ResponseWriter, _ *http.Request, sess session) {
	s.auth.mu.Lock()
	s.revokeLocked(sess.id)
	s.auth.mu.Unlock()
	cookie(w, "", -1)
	w.WriteHeader(204)
}

func (s *Server) password(w http.ResponseWriter, r *http.Request, sess session) {
	var in struct{ Current, New string }
	if !readJSON(w, r, &in, 1024) {
		return
	}
	a := s.auth
	a.mu.Lock()
	if !a.attempt() {
		a.mu.Unlock()
		problem(w, 429, "尝试次数过多，请一分钟后重试")
		return
	}
	old := a.hash
	a.mu.Unlock()
	if bcrypt.CompareHashAndPassword(old, []byte(in.Current)) != nil {
		problem(w, 401, "当前密码错误")
		return
	}
	next, err := passwordHash(in.New)
	if err != nil {
		problem(w, 400, err.Error())
		return
	}
	a.mu.Lock()
	defer a.mu.Unlock()
	if _, ok := a.find(r); !ok || subtle.ConstantTimeCompare(old, a.hash) != 1 {
		problem(w, 409, "会话已变化，请重新登录")
		return
	}
	if err = atomicFile(a.hashPath, next); err != nil {
		s.note("无法保存访问密码")
		problem(w, 500, "无法保存访问密码")
		return
	}
	a.hash = next
	for id := range a.sessions {
		s.revokeLocked(id)
	}
	cookie(w, "", -1)
	w.WriteHeader(204)
}

type control struct {
	owner  string
	ws     *websocket.Conn
	cancel func()
}
