//go:build windows

package main

import (
	"context"
	"encoding/json"
	"fmt"
	"github.com/xjasonlyu/tun2socks/v2/dialer"
	"github.com/xjasonlyu/tun2socks/v2/engine"
	M "github.com/xjasonlyu/tun2socks/v2/metadata"
	"github.com/xjasonlyu/tun2socks/v2/tunnel"
	"golang.org/x/sys/windows"
	"io"
	"net"
	"net/http"
	"os"
	"os/exec"
	"strings"
	"sync/atomic"
	"testing"
	"time"
)

func TestWindowsRealSocketOwnerAndProcessCommandLine(t *testing.T) {
	listener, err := net.Listen("tcp4", "127.0.0.1:0")
	if err != nil {
		t.Fatal(err)
	}
	defer listener.Close()
	c, err := net.Dial("tcp4", listener.Addr().String())
	if err != nil {
		t.Fatal(err)
	}
	defer c.Close()
	server, err := listener.Accept()
	if err != nil {
		t.Fatal(err)
	}
	defer server.Close()
	src := c.LocalAddr().(*net.TCPAddr).AddrPort()
	dst := c.RemoteAddr().(*net.TCPAddr).AddrPort()
	m := &M.Metadata{Network: M.TCP, SrcIP: src.Addr(), SrcPort: src.Port(), DstIP: dst.Addr(), DstPort: dst.Port()}
	inspect := func(handle windows.Handle, pid uint32) bool {
		sid, e := processSID(handle)
		if e != nil || sid == "" || !strings.Contains(commandLine(handle), ".exe") {
			t.Error("real token/command line unavailable")
		}
		return pid == uint32(os.Getpid())
	}
	if got := ownerWithInspector(m, inspect); got != uint32(os.Getpid()) {
		t.Fatal("TCP four-tuple owner", got)
	}
	m.DstPort++
	if ownerWithInspector(m, inspect) != 0 {
		t.Fatal("different socket matched")
	}
}
func ps(t *testing.T, script string) string {
	t.Helper()
	b, e := exec.Command("powershell.exe", "-NoProfile", "-NonInteractive", "-Command", "$ErrorActionPreference='Stop';"+script).CombinedOutput()
	if e != nil {
		t.Fatal("fixture network command", e, string(b))
	}
	return strings.TrimSpace(string(b))
}
func TestWindowsBrowserChild(t *testing.T) {
	if os.Getenv("QINGLIAN_BROWSER_CHILD") == "" {
		t.Skip()
	}
	req, e := http.NewRequest("GET", os.Getenv("QINGLIAN_BROWSER_CHILD"), nil)
	if e != nil {
		t.Fatal(e)
	}
	req.Host = "example.org"
	c := &http.Client{Transport: &http.Transport{Proxy: nil}, Timeout: 10 * time.Second}
	r, e := c.Do(req)
	if e != nil {
		t.Fatal(e)
	}
	defer r.Body.Close()
	if r.StatusCode != 200 {
		t.Fatal(r.StatusCode)
	}
}

type nativeFixtureDial struct {
	address string
	calls   atomic.Uint32
}

func (d *nativeFixtureDial) DialContext(ctx context.Context, m *M.Metadata) (net.Conn, error) {
	d.calls.Add(1)
	return (&net.Dialer{}).DialContext(ctx, "tcp4", d.address)
}
func (d *nativeFixtureDial) DialUDP(*M.Metadata) (net.PacketConn, error) { return nil, net.ErrClosed }
func TestWindowsReservedTUNPIDRouting(t *testing.T) {
	if os.Getenv("QINGLIAN_BROWSER_NATIVE") != "1" {
		t.Skip("requires disposable Windows runner")
	}
	baseline := ps(t, "@(Get-NetRoute|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/0','::/0')}|Select-Object DestinationPrefix,InterfaceIndex,NextHop,RouteMetric|Sort-Object DestinationPrefix,InterfaceIndex,NextHop)|ConvertTo-Json -Compress")
	var upstream struct {
		Index   int    `json:"index"`
		Address string `json:"address"`
	}
	raw := ps(t, "$r=Get-NetRoute -AddressFamily IPv4 -DestinationPrefix '0.0.0.0/0'|Sort-Object RouteMetric|Select-Object -First 1;$ip=Get-NetIPAddress -InterfaceIndex $r.InterfaceIndex -AddressFamily IPv4|Where-Object AddressState -eq Preferred|Select-Object -First 1;@{index=$r.InterfaceIndex;address=$ip.IPAddress}|ConvertTo-Json -Compress")
	if json.Unmarshal([]byte(raw), &upstream) != nil || upstream.Index < 1 || net.ParseIP(upstream.Address) == nil {
		t.Fatal("fixture upstream")
	}
	listener, e := net.Listen("tcp4", upstream.Address+":0")
	if e != nil {
		t.Fatal(e)
	}
	origin := &http.Server{Handler: http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) { fmt.Fprint(w, "native-pid-fixture") })}
	go origin.Serve(listener)
	defer origin.Close()
	engine.Insert(&engine.Key{Device: "tun://QinglianBrowserFixture", Proxy: "socks5://127.0.0.1:10808", MTU: 1500, LogLevel: "silent"})
	engine.Start()
	defer engine.Stop()
	defer ps(t, "$a=Get-NetAdapter -Name QinglianBrowserFixture -ErrorAction SilentlyContinue;if($a){Get-NetRoute -InterfaceIndex $a.ifIndex -ErrorAction SilentlyContinue|Remove-NetRoute -Confirm:$false -ErrorAction SilentlyContinue}")
	ps(t, "$a=Get-NetAdapter -Name QinglianBrowserFixture;Set-NetIPInterface -InterfaceIndex $a.ifIndex -AddressFamily IPv4 -Dhcp Disabled;New-NetIPAddress -InterfaceIndex $a.ifIndex -IPAddress 198.18.0.1 -PrefixLength 15|Out-Null;New-NetRoute -DestinationPrefix 198.18.10.0/24 -InterfaceIndex $a.ifIndex -NextHop 0.0.0.0 -PolicyStore ActiveStore|Out-Null")
	for i := 0; i < 30; i++ {
		if ps(t, "(Get-NetIPAddress -IPAddress 198.18.0.1).AddressState") == "Preferred" {
			break
		}
		time.Sleep(100 * time.Millisecond)
	}
	upstreamDial := &nativeFixtureDial{address: listener.Addr().String()}
	var direct atomic.Uint32
	r := &router{upstream: upstreamDial, eligible: func(m *M.Metadata) uint32 {
		return ownerWithInspector(m, func(h windows.Handle, pid uint32) bool { return pid == uint32(os.Getpid()) })
	}}
	r.direct = func(ctx context.Context, m *M.Metadata) (net.Conn, error) {
		direct.Add(1)
		return dialer.DefaultDialer.DialContextWithOptions(ctx, "tcp4", listener.Addr().String(), &dialer.Options{InterfaceIndex: upstream.Index})
	}
	r.enabled.Store(true)
	tunnel.T().SetDialer(r)
	address := fmt.Sprintf("http://198.18.10.2:%d/", listener.Addr().(*net.TCPAddr).Port)
	request := func(host string) {
		t.Helper()
		req, _ := http.NewRequest("GET", address, nil)
		req.Host = host
		c := &http.Client{Transport: &http.Transport{Proxy: nil, DisableKeepAlives: true}, Timeout: 15 * time.Second}
		response, e := c.Do(req)
		if e != nil {
			t.Fatal(e)
		}
		body, _ := io.ReadAll(response.Body)
		response.Body.Close()
		if string(body) != "native-pid-fixture" {
			t.Fatal("native routing payload")
		}
	}
	request("example.org")
	if direct.Load() != 1 || upstreamDial.calls.Load() != 0 {
		t.Fatal("selected PID did not direct")
	}
	request("chatgpt.com")
	if direct.Load() != 1 || upstreamDial.calls.Load() != 1 {
		t.Fatal("protected ChatGPT request not proxied")
	}
	cmd := exec.Command(os.Args[0], "-test.run=^TestWindowsBrowserChild$")
	cmd.Env = append(os.Environ(), "QINGLIAN_BROWSER_CHILD="+address)
	if b, e := cmd.CombinedOutput(); e != nil {
		t.Fatal("different PID child", e, string(b))
	}
	if upstreamDial.calls.Load() != 2 {
		t.Fatal("different process bypassed proxy")
	}
	r.disable()
	request("example.org")
	if direct.Load() != 1 || upstreamDial.calls.Load() != 3 {
		t.Fatal("restore all proxy failed")
	}
	if after := ps(t, "@(Get-NetRoute|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/0','::/0')}|Select-Object DestinationPrefix,InterfaceIndex,NextHop,RouteMetric|Sort-Object DestinationPrefix,InterfaceIndex,NextHop)|ConvertTo-Json -Compress"); after != baseline {
		t.Fatal("default routes changed")
	}
}
