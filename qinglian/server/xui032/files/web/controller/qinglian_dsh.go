package controller

import (
	"crypto/sha256"
	"crypto/subtle"
	"encoding/base64"
	"encoding/json"
	"golang.org/x/crypto/pbkdf2"
	"net"
	"net/http"
	"net/http/httputil"
	"net/url"
	"os"
	"strings"
	"sync"
	"time"
)

// DSH owns authentication. Only the verified domain/SNI handler reaches this
// fixed loopback target. Keep browser Host and Origin for its trust fence.
func qDSHProxy() http.Handler {
	return qDSHProxyWithFiles("/etc/dsh/web-auth.json", "/var/lib/dsh/entry-url.txt")
}

func qDSHProxyWithFiles(authPath, entryPath string) http.Handler {
	var auth struct {
		Username string `json:"username"`
		Hash     string `json:"hash"`
		Salt     string `json:"salt"`
	}
	data, authErr := os.ReadFile(authPath)
	if authErr == nil {
		authErr = json.Unmarshal(data, &auth)
	}
	salt, saltErr := base64.StdEncoding.DecodeString(auth.Salt)
	expected, hashErr := base64.StdEncoding.DecodeString(auth.Hash)
	if authErr == nil && (saltErr != nil || hashErr != nil || len(salt) != 32 || len(expected) != 32) {
		authErr = os.ErrInvalid
	}
	var lock sync.Mutex
	var accepted [32]byte
	var acceptedUntil time.Time
	var failedUntil time.Time

	proxy := httputil.NewSingleHostReverseProxy(&url.URL{Scheme: "http", Host: "127.0.0.1:3080"})
	director := proxy.Director
	proxy.Director = func(r *http.Request) {
		director(r)
		r.URL.Path = strings.TrimPrefix(r.URL.Path, "/dsh")
		r.URL.RawPath = ""
		r.Header.Set("X-Forwarded-Proto", "https")
		r.Header.Del("Authorization")
		if r.Method == "GET" && r.URL.Path == "/" && r.URL.Query().Get("token") == "" {
			hasSession := false
			for _, cookie := range r.Cookies() {
				if strings.HasPrefix(cookie.Name, "dsh-auth-") {
					hasSession = true
				}
			}
			if !hasSession {
				if raw, err := os.ReadFile(entryPath); err == nil {
					if entry, err := url.Parse(strings.TrimSpace(string(raw))); err == nil && entry.Host == "gaozy.tech" && entry.Path == "/dsh/" {
						query := r.URL.Query()
						query.Set("token", entry.Query().Get("token"))
						r.URL.RawQuery = query.Encode()
					}
				}
			}
		}
	}
	proxy.ModifyResponse = func(r *http.Response) error {
		cookies := r.Cookies()
		r.Header.Del("Set-Cookie")
		for _, cookie := range cookies {
			cookie.Path = "/dsh/"
			cookie.Secure = true
			r.Header.Add("Set-Cookie", cookie.String())
		}
		if location := r.Header.Get("Location"); strings.HasPrefix(location, "/") && !strings.HasPrefix(location, "//") {
			r.Header.Set("Location", "/dsh"+location)
		}
		r.Header.Set("Cache-Control", "private, no-store")
		r.Header.Set("Referrer-Policy", "no-referrer")
		return nil
	}
	proxy.Transport = &http.Transport{
		DialContext:           (&net.Dialer{Timeout: 3 * time.Second, KeepAlive: 30 * time.Second}).DialContext,
		ResponseHeaderTimeout: 60 * time.Second,
		IdleConnTimeout:       60 * time.Second,
		MaxIdleConnsPerHost:   8,
	}
	proxy.ErrorHandler = func(w http.ResponseWriter, r *http.Request, err error) {
		http.Error(w, "DeepSeek Harness temporarily unavailable", http.StatusBadGateway)
	}
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if authErr != nil || auth.Username == "" || auth.Hash == "" {
			http.Error(w, "DSH login is not configured", http.StatusServiceUnavailable)
			return
		}
		username, password, ok := r.BasicAuth()
		key := sha256.Sum256([]byte(username + ":" + password))
		lock.Lock()
		cached := ok && acceptedUntil.After(time.Now()) && key == accepted
		if !cached && ok && !failedUntil.After(time.Now()) && username == auth.Username && subtle.ConstantTimeCompare(expected, pbkdf2.Key([]byte(password), salt, 600000, 32, sha256.New)) == 1 {
			accepted = key
			acceptedUntil = time.Now().Add(5 * time.Minute)
			cached = true
		}
		if !cached && ok {
			failedUntil = time.Now().Add(300 * time.Millisecond)
		}
		lock.Unlock()
		if !cached {
			w.Header().Set("WWW-Authenticate", `Basic realm="DeepSeek Harness", charset="UTF-8"`)
			w.Header().Set("Cache-Control", "no-store")
			http.Error(w, "Login required", http.StatusUnauthorized)
			return
		}
		if r.URL.Path == "/dsh" {
			target := "/dsh/"
			if r.URL.RawQuery != "" {
				target += "?" + r.URL.RawQuery
			}
			http.Redirect(w, r, target, http.StatusPermanentRedirect)
			return
		}
		proxy.ServeHTTP(w, r)
	})
}
