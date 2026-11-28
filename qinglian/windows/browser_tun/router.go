package main

import (
	"context"
	"errors"
	M "github.com/xjasonlyu/tun2socks/v2/metadata"
	"github.com/xjasonlyu/tun2socks/v2/proxy"
	"net"
	"sync"
	"sync/atomic"
)

// Browser URL policy lives in a fixed local PAC. A network-service PID becomes
// eligible only when its installed parent was launched with this exact PAC URL.
// Nonselected/unknown processes always use the original SOCKS upstream.
type router struct {
	upstream    proxy.Dialer
	direct      func(context.Context, *M.Metadata) (net.Conn, error)
	eligible    func(*M.Metadata) uint32
	enabled     atomic.Bool
	gate        sync.Mutex
	connections sync.Map
	directCount atomic.Uint64
	proxyCount  atomic.Uint64
	pids        sync.Map
}

func (r *router) disable() {
	r.gate.Lock()
	r.enabled.Store(false)
	r.gate.Unlock()
	// Close underlying sockets without waiting on a relay Write mutex.
	r.connections.Range(func(k, v any) bool { k.(net.Conn).Close(); return true })
}
func (r *router) DialContext(ctx context.Context, m *M.Metadata) (net.Conn, error) {
	var pid uint32
	if r.enabled.Load() {
		pid = r.eligible(m)
	}
	if pid == 0 {
		r.proxyCount.Add(1)
		return r.upstream.DialContext(ctx, m)
	}
	r.pids.Store(pid, true)
	conn, err := r.direct(ctx, m)
	if err != nil {
		return nil, err
	}
	r.gate.Lock()
	defer r.gate.Unlock()
	if !r.enabled.Load() {
		conn.Close()
		return nil, net.ErrClosed
	}
	r.connections.Store(conn, true)
	r.directCount.Add(1)
	return &trackedConn{Conn: conn, router: r}, nil
}
func (r *router) DialUDP(m *M.Metadata) (net.PacketConn, error) {
	if r.enabled.Load() && m.DstPort == 443 {
		if pid := r.eligible(m); pid != 0 {
			r.pids.Store(pid, true)
			return nil, errors.New("selected browser uses TCP")
		}
	}
	return r.upstream.DialUDP(m)
}

type trackedConn struct {
	net.Conn
	router *router
}

func (c *trackedConn) Close() error { c.router.connections.Delete(c.Conn); return c.Conn.Close() }
func (c *trackedConn) CloseWrite() error {
	if v, ok := c.Conn.(interface{ CloseWrite() error }); ok {
		return v.CloseWrite()
	}
	return nil
}
func (c *trackedConn) CloseRead() error {
	if v, ok := c.Conn.(interface{ CloseRead() error }); ok {
		return v.CloseRead()
	}
	return nil
}
