package main

import (
	"context"
	"crypto/tls"
	"encoding/binary"
	M "github.com/xjasonlyu/tun2socks/v2/metadata"
	"io"
	"net"
	"net/netip"
	"sync/atomic"
	"testing"
	"time"
)

func TestInstalledNetworkServiceOnly(t *testing.T) {
	good := `C:\Program Files\WindowsApps\OpenAI.Codex_26_x64__test\app\ChatGPT.exe`
	cmd := `"` + good + `" --type=utility --utility-sub-type=network.mojom.NetworkService`
	if !candidate(good, cmd, `C:\Program Files`) {
		t.Fatal("expected installed network service")
	}
	for _, v := range []struct{ path, cmd string }{{`C:\Users\test\WindowsApps\OpenAI.Codex_x\app\ChatGPT.exe`, cmd}, {good, `--type=renderer`}, {good, `--type=utility --utility-sub-type=audio.mojom.AudioService`}, {`C:\Program Files\WindowsApps\Other.Codex_x\app\ChatGPT.exe`, cmd}} {
		if candidate(v.path, v.cmd, `C:\Program Files`) {
			t.Fatal("unrelated process matched")
		}
	}
}
func hello(t *testing.T, host string) []byte {
	t.Helper()
	a, b := net.Pipe()
	defer b.Close()
	go func() { defer a.Close(); tls.Client(a, &tls.Config{ServerName: host}).Handshake() }()
	b.SetReadDeadline(time.Now().Add(time.Second))
	header := make([]byte, 5)
	if _, err := io.ReadFull(b, header); err != nil {
		t.Fatal(err)
	}
	payload := make([]byte, int(binary.BigEndian.Uint16(header[3:5])))
	if _, err := io.ReadFull(b, payload); err != nil {
		t.Fatal(err)
	}
	return append(header, payload...)
}
func TestHTTPAndTLSFragmentsAndProtectedHosts(t *testing.T) {
	for _, host := range []string{"www.example.org", "chatgpt.com", "auth.openai.com", "images.rakuten-insight.cn"} {
		data := hello(t, host)
		for i := 1; i < len(data); i++ {
			if _, complete := sniff(data[:i]); complete {
				t.Fatal("premature TLS decision", i)
			}
		}
		got, done := sniff(data)
		if !done || got != host {
			t.Fatal("ClientHello parse", got, done)
		}
		payload := data[5:]
		a, b := append([]byte(nil), data[:5]...), append([]byte(nil), data[:5]...)
		binary.BigEndian.PutUint16(a[3:5], 20)
		binary.BigEndian.PutUint16(b[3:5], uint16(len(payload)-20))
		fragmented := append(append(append(a, payload[:20]...), b...), payload[20:]...)
		if got, done := sniff(fragmented); !done || got != host {
			t.Fatal("TLS record fragmentation")
		}
	}
	for _, host := range []string{"openai.com", "AUTH.OPENAI.COM.", "chatgpt.com", "cdn.oaistatic.com", "files.oaiusercontent.com", "login.auth0.com"} {
		if !protected(host) {
			t.Fatal("protected destination missed")
		}
	}
	for _, host := range []string{"notopenai.com", "openai.com.example.org", "www.example.org"} {
		if protected(host) {
			t.Fatal("overbroad suffix")
		}
	}
	if host, done := sniff([]byte("GET / HTTP/1.1\r\nHost: example.org:80\r\n\r\n")); !done || host != "example.org" {
		t.Fatal("HTTP host")
	}
	for _, data := range [][]byte{[]byte("SSH-2.0-test"), make([]byte, 70000), {22, 3, 3, 255, 255}, []byte("GET / HTTP/1.1\r\nHost: 192.0.2.1\r\n\r\n"), []byte("GET / HTTP/1.1\r\nHost: a.test\r\nHost: b.test\r\n\r\n")} {
		host, _ := sniff(data)
		if host != "" {
			t.Fatal("unobservable/invalid request direct")
		}
	}
}

type fixtureDial struct{ calls atomic.Uint32 }

func (d *fixtureDial) DialContext(context.Context, *M.Metadata) (net.Conn, error) {
	d.calls.Add(1)
	a, b := net.Pipe()
	go func() {
		defer b.Close()
		p := make([]byte, 65536)
		if _, err := b.Read(p); err == nil {
			b.Write([]byte("OK"))
		}
	}()
	return a, nil
}
func (*fixtureDial) DialUDP(*M.Metadata) (net.PacketConn, error) { return nil, net.ErrClosed }
func TestRouterInitialProxyPIDRoutingRollbackAndUnknown(t *testing.T) {
	upstream, direct := &fixtureDial{}, &fixtureDial{}
	r := &router{upstream: upstream, eligible: func(*M.Metadata) uint32 { return 29764 }, direct: direct.DialContext}
	m := &M.Metadata{Network: M.TCP, SrcIP: netip.MustParseAddr("198.18.0.1"), SrcPort: 45678, DstIP: netip.MustParseAddr("192.0.2.10"), DstPort: 443}
	request := func(host string) {
		t.Helper()
		c, err := r.DialContext(context.Background(), m)
		if err != nil {
			t.Fatal(err)
		}
		defer c.Close()
		if c.LocalAddr() == nil {
			t.Fatal("nil local address")
		}
		done := make(chan struct{})
		go func() {
			defer close(done)
			b := make([]byte, 2)
			if _, err := io.ReadFull(c, b); err != nil {
				t.Error(err)
			}
		}()
		if _, err = c.Write([]byte("GET / HTTP/1.1\r\nHost: " + host + "\r\n\r\n")); err != nil {
			t.Fatal(err)
		}
		select {
		case <-done:
		case <-time.After(time.Second):
			t.Fatal("read-before-write deadlock")
		}
	}
	request("example.org")
	if upstream.calls.Load() != 1 || direct.calls.Load() != 0 {
		t.Fatal("default must proxy")
	}
	r.enabled.Store(true)
	request("example.org")
	request("chatgpt.com")
	if direct.calls.Load() != 1 || upstream.calls.Load() != 2 {
		t.Fatal("PID direct/protected proxy routing")
	}
	r.eligible = func(*M.Metadata) uint32 { return 0 }
	request("example.org")
	if upstream.calls.Load() != 3 {
		t.Fatal("unknown PID must proxy")
	}
	r.disable()
	request("example.org")
	if upstream.calls.Load() != 4 {
		t.Fatal("restore proxy")
	}
	r.enabled.Store(true)
	r.eligible = func(*M.Metadata) uint32 { return 123 }
	m.Network = M.UDP
	if _, err := r.DialUDP(m); err == nil {
		t.Fatal("selected QUIC must force TCP fallback")
	}
}
