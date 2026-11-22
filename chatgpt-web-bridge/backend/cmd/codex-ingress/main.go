// Terminates TLS for the Bridge path on a dedicated port behind Cloudflare.
package main

import (
	"bufio"
	"crypto/tls"
	"errors"
	"log"
	"net"
	"net/http"
	"net/http/httputil"
	"net/netip"
	"net/url"
	"os"
	"path"
	"path/filepath"
	"strings"
	"time"
)

const host = "gaozy.tech"

func loadPrefixes(file string) ([]netip.Prefix, error) {
	f, err := os.Open(file)
	if err != nil {
		return nil, err
	}
	defer f.Close()
	var allowed []netip.Prefix
	lines := bufio.NewScanner(f)
	for lines.Scan() {
		prefix, err := netip.ParsePrefix(lines.Text())
		if err != nil || prefix.Bits() < 8 {
			return nil, errors.New("invalid Cloudflare range")
		}
		allowed = append(allowed, prefix)
	}
	if err := lines.Err(); err != nil {
		return nil, err
	}
	if len(allowed) == 0 {
		return nil, errors.New("Cloudflare ranges are required")
	}
	return allowed, nil
}

func ingress(allowed []netip.Prefix, target *url.URL) http.Handler {
	proxy := &httputil.ReverseProxy{
		Rewrite: func(req *httputil.ProxyRequest) {
			req.SetURL(target)
			req.Out.Host = host
			req.Out.Header.Del("CF-Connecting-IP")
			req.Out.Header.Set("X-Forwarded-Proto", "https")
		},
		ErrorHandler: func(w http.ResponseWriter, _ *http.Request, _ error) {
			http.Error(w, "Bridge upstream unavailable", http.StatusBadGateway)
		},
	}
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		ip, _, err := net.SplitHostPort(r.RemoteAddr)
		peer, parseErr := netip.ParseAddr(ip)
		if err != nil || parseErr != nil || !trusted(peer.Unmap(), allowed) {
			http.Error(w, "Forbidden", http.StatusForbidden)
			return
		}
		if r.TLS == nil || r.TLS.ServerName != host || (r.Host != host && r.Host != host+":8443") {
			http.Error(w, "Invalid host", http.StatusMisdirectedRequest)
			return
		}
		clean := path.Clean(r.URL.Path)
		if (clean != "/codex" && !strings.HasPrefix(clean, "/codex/")) ||
			(r.URL.EscapedPath() != "/codex" && !strings.HasPrefix(r.URL.EscapedPath(), "/codex/")) {
			http.NotFound(w, r)
			return
		}
		proxy.ServeHTTP(w, r)
	})
}

func trusted(peer netip.Addr, prefixes []netip.Prefix) bool {
	if peer.IsLoopback() {
		return true
	}
	for _, network := range prefixes {
		if network.Contains(peer) {
			return true
		}
	}
	return false
}

func main() {
	dir := os.Getenv("CREDENTIALS_DIRECTORY")
	if dir == "" {
		log.Fatal("systemd credentials required")
	}
	allowed, err := loadPrefixes(filepath.Join(dir, "cloudflare-ranges"))
	if err != nil {
		log.Fatal(err)
	}
	target := &url.URL{Scheme: "http", Host: "127.0.0.1:18642"}
	server := &http.Server{
		Addr: ":8443", Handler: ingress(allowed, target),
		ReadHeaderTimeout: 10 * time.Second, ReadTimeout: 10 * time.Minute,
		WriteTimeout: 15 * time.Minute, IdleTimeout: 45 * time.Second,
		MaxHeaderBytes: 32 << 10, TLSConfig: &tls.Config{MinVersion: tls.VersionTLS12},
	}
	log.Fatal(server.ListenAndServeTLS(filepath.Join(dir, "cert"), filepath.Join(dir, "key")))
}
