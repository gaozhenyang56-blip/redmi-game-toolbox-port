package main

import (
	"context"
	"errors"
	M "github.com/xjasonlyu/tun2socks/v2/metadata"
	"github.com/xjasonlyu/tun2socks/v2/proxy"
	"io"
	"net"
	"sync"
	"sync/atomic"
	"time"
)

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
	r.connections.Range(func(k, v any) bool { k.(net.Conn).Close(); return true })
}
func (r *router) DialContext(ctx context.Context, m *M.Metadata) (net.Conn, error) {
	if !r.enabled.Load() {
		r.proxyCount.Add(1)
		return r.upstream.DialContext(ctx, m)
	}
	pid := r.eligible(m)
	if pid == 0 {
		r.proxyCount.Add(1)
		return r.upstream.DialContext(ctx, m)
	}
	r.pids.Store(pid, true)
	c := &firstConn{router: r, metadata: *m, ready: make(chan struct{})}
	c.timer = time.AfterFunc(2*time.Second, func() { c.resolve(false) })
	return c, nil
}
func (r *router) DialUDP(m *M.Metadata) (net.PacketConn, error) {
	if r.enabled.Load() && m.DstPort == 443 {
		if pid := r.eligible(m); pid != 0 {
			r.pids.Store(pid, true)
			return nil, errors.New("selected browser uses TCP for observable destination routing")
		}
	}
	return r.upstream.DialUDP(m)
}

// Delay upstream dialing until the browser supplies its first header. The
// original TUN four-tuple is retained here, before SOCKS loses source identity.
type firstConn struct {
	router                      *router
	metadata                    M.Metadata
	mu                          sync.Mutex
	ready                       chan struct{}
	timer                       *time.Timer
	pending                     []byte
	conn                        net.Conn
	err                         error
	resolved, closed            bool
	readDeadline, writeDeadline time.Time
}

func (c *firstConn) resolveLocked(direct bool) {
	if c.resolved {
		return
	}
	c.resolved = true
	if c.timer != nil {
		c.timer.Stop()
	}
	if c.closed {
		c.err = net.ErrClosed
		close(c.ready)
		return
	}
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if direct && c.router.enabled.Load() {
		c.conn, c.err = c.router.direct(ctx, &c.metadata)
		if c.err == nil {
			c.router.gate.Lock()
			if c.router.enabled.Load() {
				c.router.directCount.Add(1)
				c.router.connections.Store(c, true)
			} else {
				c.conn.Close()
				c.err = net.ErrClosed
			}
			c.router.gate.Unlock()
		}
	} else {
		c.router.proxyCount.Add(1)
		c.conn, c.err = c.router.upstream.DialContext(ctx, &c.metadata)
	}
	if c.conn != nil {
		if !c.readDeadline.IsZero() {
			c.conn.SetReadDeadline(c.readDeadline)
		}
		if !c.writeDeadline.IsZero() {
			c.conn.SetWriteDeadline(c.writeDeadline)
		}
		if len(c.pending) > 0 {
			c.conn.SetWriteDeadline(time.Now().Add(5 * time.Second))
			_, c.err = io.Copy(c.conn, bytesReader(c.pending))
			c.conn.SetWriteDeadline(c.writeDeadline)
		}
		if c.err != nil {
			c.conn.Close()
		}
	}
	c.pending = nil
	close(c.ready)
}
func (c *firstConn) resolve(direct bool) { c.mu.Lock(); defer c.mu.Unlock(); c.resolveLocked(direct) }

// A private byte reader avoids converting potentially binary ClientHello data.
type sliceReader struct{ data []byte }

func (r *sliceReader) Read(p []byte) (int, error) {
	if len(r.data) == 0 {
		return 0, io.EOF
	}
	n := copy(p, r.data)
	r.data = r.data[n:]
	return n, nil
}
func bytesReader(b []byte) io.Reader { return &sliceReader{b} }
func (c *firstConn) Write(p []byte) (int, error) {
	c.mu.Lock()
	if c.closed {
		c.mu.Unlock()
		return 0, net.ErrClosed
	}
	if c.resolved {
		conn, err := c.conn, c.err
		c.mu.Unlock()
		if err != nil {
			return 0, err
		}
		return conn.Write(p)
	}
	if len(c.pending)+len(p) > 65536 {
		c.resolveLocked(false)
		conn, err := c.conn, c.err
		c.mu.Unlock()
		if err != nil {
			return 0, err
		}
		return conn.Write(p)
	}
	c.pending = append(c.pending, p...)
	host, complete := sniff(c.pending)
	if complete {
		c.resolveLocked(host != "" && !protected(host))
	}
	err := c.err
	c.mu.Unlock()
	if err != nil {
		return 0, err
	}
	return len(p), nil
}

func (c *firstConn) Read(p []byte) (int, error) {
	<-c.ready
	c.mu.Lock()
	conn, err := c.conn, c.err
	c.mu.Unlock()
	if err != nil {
		return 0, err
	}
	return conn.Read(p)
}
func (c *firstConn) Close() error {
	c.mu.Lock()
	defer c.mu.Unlock()
	c.closed = true
	c.router.connections.Delete(c)
	if !c.resolved {
		c.resolveLocked(false)
	}
	if c.conn != nil {
		return c.conn.Close()
	}
	return nil
}
func (c *firstConn) LocalAddr() net.Addr  { return net.TCPAddrFromAddrPort(c.metadata.SourceAddrPort()) }
func (c *firstConn) RemoteAddr() net.Addr { return c.metadata.TCPAddr() }
func (c *firstConn) SetDeadline(t time.Time) error {
	c.SetReadDeadline(t)
	return c.SetWriteDeadline(t)
}
func (c *firstConn) SetReadDeadline(t time.Time) error {
	c.mu.Lock()
	defer c.mu.Unlock()
	c.readDeadline = t
	if c.conn != nil {
		return c.conn.SetReadDeadline(t)
	}
	return nil
}
func (c *firstConn) SetWriteDeadline(t time.Time) error {
	c.mu.Lock()
	defer c.mu.Unlock()
	c.writeDeadline = t
	if c.conn != nil {
		return c.conn.SetWriteDeadline(t)
	}
	return nil
}

// Preserve half-close behavior used by tun2socks.
func (c *firstConn) CloseWrite() error {
	c.mu.Lock()
	defer c.mu.Unlock()
	if conn, ok := c.conn.(interface{ CloseWrite() error }); ok {
		return conn.CloseWrite()
	}
	return nil
}
func (c *firstConn) CloseRead() error {
	c.mu.Lock()
	defer c.mu.Unlock()
	if conn, ok := c.conn.(interface{ CloseRead() error }); ok {
		return conn.CloseRead()
	}
	return nil
}
