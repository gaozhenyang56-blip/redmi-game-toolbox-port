package main

import (
	"context"
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
func TestPACArgumentExactMatch(t *testing.T) {
	url := "http://127.0.0.1:32100/0123456789abcdef/browser.pac"
	if !hasPAC("app.exe --proxy-pac-url="+url, url) {
		t.Fatal("PAC launch argument missing")
	}
	if hasPAC("app.exe --other=--proxy-pac-url="+url, url) {
		t.Fatal("substring matched")
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
	request("other.example.org")
	if direct.calls.Load() != 2 || upstream.calls.Load() != 1 {
		t.Fatal("PID direct/protected proxy routing")
	}
	r.eligible = func(*M.Metadata) uint32 { return 0 }
	request("example.org")
	if upstream.calls.Load() != 2 {
		t.Fatal("unknown PID must proxy")
	}
	r.disable()
	request("example.org")
	if upstream.calls.Load() != 3 {
		t.Fatal("restore proxy")
	}
	r.enabled.Store(true)
	r.eligible = func(*M.Metadata) uint32 { return 123 }
	m.Network = M.UDP
	if _, err := r.DialUDP(m); err == nil {
		t.Fatal("selected QUIC must force TCP fallback")
	}
}
