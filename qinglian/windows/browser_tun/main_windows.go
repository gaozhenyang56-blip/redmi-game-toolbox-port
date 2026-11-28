//go:build windows

package main

import (
	"bufio"
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"github.com/xjasonlyu/tun2socks/v2/dialer"
	"github.com/xjasonlyu/tun2socks/v2/engine"
	M "github.com/xjasonlyu/tun2socks/v2/metadata"
	"github.com/xjasonlyu/tun2socks/v2/tunnel"
	"golang.org/x/sys/windows"
	"net"
	"os"
	"sync"
	"time"
)

func main() {
	owner := flag.Uint("owner", 0, "owning Qinglian GUI PID")
	index := flag.Int("upstream", 0, "fixed physical upstream index")
	flag.Parse()
	if *owner == 0 || *index < 1 || *index > 1<<24 || flag.NArg() != 0 {
		os.Exit(2)
	}
	handle, err := windows.OpenProcess(windows.PROCESS_QUERY_LIMITED_INFORMATION, false, uint32(*owner))
	if err != nil {
		os.Exit(2)
	}
	sid, err := processSID(handle)
	windows.CloseHandle(handle)
	if err != nil || programFiles() == "" {
		os.Exit(2)
	}
	engine.Insert(&engine.Key{Device: "tun://Qinglian", Proxy: "socks5://127.0.0.1:10808", MTU: 1500, LogLevel: "silent"})
	engine.Start()
	defer engine.Stop()
	r := &router{upstream: tunnel.T().Dialer(), eligible: windowsOwner(sid, programFiles())}
	r.direct = func(ctx context.Context, m *M.Metadata) (net.Conn, error) {
		network := "tcp4"
		if m.DstIP.Is6() {
			network = "tcp6"
		}
		return dialer.DefaultDialer.DialContextWithOptions(ctx, network, m.DestinationAddress(), &dialer.Options{InterfaceIndex: *index})
	}
	r.enabled.Store(true)
	tunnel.T().SetDialer(r)
	done := make(chan struct{})
	var output sync.Mutex
	go func() {
		scan := bufio.NewScanner(os.Stdin)
		scan.Buffer(make([]byte, 1024), 1024)
		for scan.Scan() {
			if scan.Text() == "disable" {
				r.disable()
			}
		}
		r.disable()
		close(done)
	}()
	ticker := time.NewTicker(2 * time.Second)
	defer ticker.Stop()
	for {
		select {
		case <-done:
			return
		case <-ticker.C:
			pids := []uint32{}
			r.pids.Range(func(k, v any) bool {
				pid := k.(uint32)
				h, err := windows.OpenProcess(windows.SYNCHRONIZE, false, pid)
				if err != nil {
					r.pids.Delete(k)
					return true
				}
				state, _ := windows.WaitForSingleObject(h, 0)
				windows.CloseHandle(h)
				if state == uint32(windows.WAIT_TIMEOUT) && len(pids) < 32 {
					pids = append(pids, pid)
				} else {
					r.pids.Delete(k)
				}
				return true
			})
			value, _ := json.Marshal(map[string]any{"type": "browser", "enabled": r.enabled.Load(), "pids": pids, "direct": r.directCount.Load(), "proxy": r.proxyCount.Load()})
			output.Lock()
			fmt.Println(string(value))
			output.Unlock()
		}
	}
}
