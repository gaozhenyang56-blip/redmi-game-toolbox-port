package controller

import (
	"crypto/tls"
	"crypto/x509"
	"net"
	"net/http"
	"net/http/httputil"
	"net/url"
	"path/filepath"
	"regexp"
	"strings"
	"time"
)

var qPublicDomain = regexp.MustCompile(`^[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?(?:\.[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?)+$`)

// A public domain certificate is separate from the original private IP CA.
// Failure is atomic: no new listener is bound with a partial configuration.
func (a *QinglianController) domainTLS() (*tls.Certificate, []*net.IPNet, error) {
	c := a.cfg.TLS
	if c.DomainName == "" {
		if c.DomainCertificate != "" || c.DomainPrivateKey != "" || len(c.CDNCIDRs) != 0 {
			return nil, nil, qUnavailable
		}
		return nil, nil, nil
	}
	if !qPublicDomain.MatchString(c.DomainName) || c.HTTPSPort != 443 || !filepath.IsAbs(c.DomainCertificate) || !filepath.IsAbs(c.DomainPrivateKey) {
		return nil, nil, qUnavailable
	}
	cert, err := tls.LoadX509KeyPair(c.DomainCertificate, c.DomainPrivateKey)
	if err != nil {
		return nil, nil, err
	}
	leaf, err := x509.ParseCertificate(cert.Certificate[0])
	if err != nil {
		return nil, nil, err
	}
	if leaf.VerifyHostname(c.DomainName) != nil || time.Now().Before(leaf.NotBefore) || !time.Now().Before(leaf.NotAfter) {
		return nil, nil, qUnavailable
	}
	networks := []*net.IPNet{}
	for _, cidr := range c.CDNCIDRs {
		_, n, e := net.ParseCIDR(cidr)
		if e != nil {
			return nil, nil, qUnavailable
		}
		bits, total := n.Mask.Size()
		if bits < 8 || total == 128 && bits < 16 {
			return nil, nil, qUnavailable
		}
		networks = append(networks, n)
	}
	return &cert, networks, nil
}

// Host and SNI must both match the configured domain to expose the HTTPS panel.
// IP clients continue to see the original App-only API allowlist. Only actual
// CDN source ranges may supply the real user address; speed restrictions still
// see the original user instead of a loopback reverse proxy.
func (a *QinglianController) domainHandler(api, panel http.Handler, cdn []*net.IPNet) http.Handler {
	hub := qServiceHubProxy()
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		host := r.Host
		if strings.Contains(host, ":") {
			var port string
			var err error
			host, port, err = net.SplitHostPort(host)
			if err != nil || port != "443" {
				api.ServeHTTP(w, r)
				return
			}
		}
		domain := a.cfg.TLS.DomainName
		if domain == "" || !strings.EqualFold(host, domain) || r.TLS == nil || !strings.EqualFold(r.TLS.ServerName, domain) {
			api.ServeHTTP(w, r)
			return
		}
		request := r.Clone(r.Context())
		peer, port, _ := net.SplitHostPort(r.RemoteAddr)
		for _, network := range cdn {
			if network.Contains(net.ParseIP(peer)) {
				if real := net.ParseIP(r.Header.Get("CF-Connecting-IP")); real != nil {
					request.RemoteAddr = net.JoinHostPort(real.String(), port)
				}
				break
			}
		}
		// All downstream code now sees a normalized peer. Do not let an
		// unrelated proxy middleware reinterpret caller-controlled headers.
		for _, name := range []string{"X-Real-IP", "X-Forwarded-For", "Forwarded", "CF-Connecting-IP"} {
			request.Header.Del(name)
		}
		w.Header().Set("Cache-Control", "private, no-store")
		if request.URL.Path == "/panel" || strings.HasPrefix(request.URL.Path, "/panel/") {
			hub.ServeHTTP(w, request)
			return
		}
		if strings.HasPrefix(request.URL.Path, a.streamPrefix()) {
			a.serveStream(w, request)
			return
		}
		panel.ServeHTTP(w, request)
	})
}

// Keep the hub behind the existing verified domain/SNI boundary. The target is
// fixed to loopback; callers cannot select an upstream or forward trusted IPs.
func qServiceHubProxy() http.Handler {
	proxy := httputil.NewSingleHostReverseProxy(&url.URL{Scheme: "http", Host: "127.0.0.1:9178"})
	director := proxy.Director
	proxy.Director = func(r *http.Request) {
		director(r)
		r.Header.Set("X-Forwarded-Proto", "https")
	}
	proxy.Transport = &http.Transport{
		DialContext:           (&net.Dialer{Timeout: 3 * time.Second, KeepAlive: 30 * time.Second}).DialContext,
		ResponseHeaderTimeout: 10 * time.Second,
		IdleConnTimeout:       60 * time.Second,
		MaxIdleConnsPerHost:   4,
	}
	proxy.ErrorHandler = func(w http.ResponseWriter, r *http.Request, err error) {
		http.Error(w, "Service hub temporarily unavailable", http.StatusBadGateway)
	}
	return proxy
}
