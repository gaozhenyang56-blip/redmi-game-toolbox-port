package controller

import (
	"bytes"
	"encoding/json"
	"errors"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	"golang.org/x/crypto/ssh"
	"io"
	"net"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"regexp"
	"sync"
	"time"
)

// Terminal credentials and output are never persisted or logged. Only the
// authenticated configured panel owner may reach this localhost-only SSH client.
type qSSHState struct {
	sync.Mutex
	clients           map[*websocket.Conn]struct{}
	pending, attempts int
	minute            int64
}

func qNewSSHState() *qSSHState { return &qSSHState{clients: map[*websocket.Conn]struct{}{}} }
func (s *qSSHState) close() {
	if s == nil {
		return
	}
	s.Lock()
	defer s.Unlock()
	for c := range s.clients {
		c.Close()
	}
}
func qSSHOrigin(request *http.Request) bool {
	origin, err := url.Parse(request.Header.Get("Origin"))
	return err == nil && origin.Scheme == "https" && origin.Host == request.Host && origin.User == nil && origin.RawQuery == "" && origin.Fragment == "" && origin.Path == "" && request.TLS != nil
}
func (a *QinglianController) sshPage(c *gin.Context) {
	if a.panelAuth(c) {
		html(c, "qinglian_ssh.html", "SSH 终端", nil)
	}
}
func qSSHLocalHostKey() (ssh.HostKeyCallback, error) {
	files, err := filepath.Glob("/etc/ssh/ssh_host_*_key.pub")
	if err != nil {
		return nil, err
	}
	keys := [][]byte{}
	for _, path := range files {
		data, e := os.ReadFile(path)
		if e != nil {
			continue
		}
		key, _, _, _, e := ssh.ParseAuthorizedKey(data)
		if e == nil {
			keys = append(keys, key.Marshal())
		}
	}
	if len(keys) == 0 {
		return nil, errors.New("SSH host key unavailable")
	}
	return func(_ string, _ net.Addr, key ssh.PublicKey) error {
		for _, trusted := range keys {
			if bytes.Equal(trusted, key.Marshal()) {
				return nil
			}
		}
		return errors.New("SSH host key mismatch")
	}, nil
}

type qSSHMessage struct {
	Type     string `json:"type"`
	Username string `json:"username"`
	Password string `json:"password"`
	Data     string `json:"data"`
	Cols     int    `json:"cols"`
	Rows     int    `json:"rows"`
}

var qSSHUsername = regexp.MustCompile(`^[a-z_][a-z0-9_-]{0,31}\$?$`)

type qSSHWriter struct {
	mu         sync.Mutex
	connection *websocket.Conn
}

func (w *qSSHWriter) JSON(value interface{}) error {
	w.mu.Lock()
	defer w.mu.Unlock()
	w.connection.SetWriteDeadline(time.Now().Add(10 * time.Second))
	return w.connection.WriteJSON(value)
}
func (w *qSSHWriter) Write(data []byte) (int, error) {
	w.mu.Lock()
	defer w.mu.Unlock()
	sent := 0
	for len(data) > 0 {
		n := len(data)
		if n > 4096 {
			n = 4096
		}
		w.connection.SetWriteDeadline(time.Now().Add(10 * time.Second))
		if err := w.connection.WriteMessage(websocket.BinaryMessage, data[:n]); err != nil {
			return sent, err
		}
		sent += n
		data = data[n:]
	}
	return sent, nil
}
func (a *QinglianController) sshSocket(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	if !qSSHOrigin(c.Request) {
		c.JSON(403, gin.H{"error": "HTTPS same-origin terminal required"})
		return
	}
	state := a.ssh
	state.Lock()
	now := time.Now().Unix() / 60
	if state.minute != now {
		state.minute = now
		state.attempts = 0
	}
	if len(state.clients)+state.pending >= 2 || state.attempts >= 8 {
		state.Unlock()
		c.JSON(429, gin.H{"error": "terminal busy"})
		return
	}
	state.pending++
	state.attempts++
	state.Unlock()
	upgrader := websocket.Upgrader{ReadBufferSize: 4096, WriteBufferSize: 4096, HandshakeTimeout: 10 * time.Second, CheckOrigin: qSSHOrigin}
	connection, err := upgrader.Upgrade(c.Writer, c.Request, nil)
	state.Lock()
	state.pending--
	if err == nil {
		state.clients[connection] = struct{}{}
	}
	state.Unlock()
	if err != nil {
		return
	}
	defer func() { connection.Close(); state.Lock(); delete(state.clients, connection); state.Unlock() }()
	connection.SetReadLimit(8192)
	connection.SetReadDeadline(time.Now().Add(30 * time.Second))
	kind, data, err := connection.ReadMessage()
	if err != nil || kind != websocket.TextMessage || !qSSHValidInitial(data) {
		return
	}
	var auth qSSHMessage
	json.Unmarshal(data, &auth)
	for i := range data {
		data[i] = 0
	}
	hostKey, err := qSSHLocalHostKey()
	if err != nil {
		connection.WriteJSON(gin.H{"type": "error", "message": "本机 SSH 主机密钥不可用"})
		return
	}
	transport, err := net.DialTimeout("tcp", "127.0.0.1:22", 8*time.Second)
	if err != nil {
		connection.WriteJSON(gin.H{"type": "error", "message": "本机 SSH 服务不可用"})
		return
	}
	defer transport.Close()
	transport.SetDeadline(time.Now().Add(10 * time.Second))
	config := &ssh.ClientConfig{User: auth.Username, Auth: []ssh.AuthMethod{ssh.Password(auth.Password)}, HostKeyCallback: hostKey, Timeout: 8 * time.Second}
	clientConnection, channels, requests, err := ssh.NewClientConn(transport, "127.0.0.1:22", config)
	auth.Password = ""
	config.Auth = nil
	if err != nil {
		connection.WriteJSON(gin.H{"type": "error", "message": "SSH 登录或主机密钥验证失败"})
		return
	}
	transport.SetDeadline(time.Time{})
	client := ssh.NewClient(clientConnection, channels, requests)
	defer client.Close()
	terminal, err := client.NewSession()
	if err != nil {
		return
	}
	defer terminal.Close()
	if auth.Cols < 20 || auth.Cols > 300 {
		auth.Cols = 100
	}
	if auth.Rows < 5 || auth.Rows > 100 {
		auth.Rows = 30
	}
	if terminal.RequestPty("xterm-256color", auth.Rows, auth.Cols, ssh.TerminalModes{ssh.ECHO: 1, ssh.TTY_OP_ISPEED: 14400, ssh.TTY_OP_OSPEED: 14400}) != nil {
		return
	}
	stdin, err := terminal.StdinPipe()
	if err != nil {
		return
	}
	defer stdin.Close()
	writer := &qSSHWriter{connection: connection}
	terminal.Stdout = writer
	terminal.Stderr = writer
	if terminal.Shell() != nil {
		return
	}
	writer.JSON(gin.H{"type": "ready"})
	expire := time.AfterFunc(time.Hour, func() { connection.Close(); client.Close() })
	defer expire.Stop()
	go func() { terminal.Wait(); connection.Close() }()
	for {
		connection.SetReadDeadline(time.Now().Add(15 * time.Minute))
		var message qSSHMessage
		if connection.ReadJSON(&message) != nil {
			return
		}
		switch message.Type {
		case "input":
			if len(message.Data) > 4096 {
				return
			}
			if _, err = io.WriteString(stdin, message.Data); err != nil {
				return
			}
		case "resize":
			if message.Cols < 20 || message.Cols > 300 || message.Rows < 5 || message.Rows > 100 {
				return
			}
			if terminal.WindowChange(message.Rows, message.Cols) != nil {
				return
			}
		case "close":
			return
		default:
			return
		}
	}
}

// Keep JSON decoder behavior testable without accepting command/host fields.
func qSSHValidInitial(data []byte) bool {
	var value qSSHMessage
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	return decoder.Decode(&value) == nil && decoder.Decode(&struct{}{}) == io.EOF && value.Type == "auth" && qSSHUsername.MatchString(value.Username) && len(value.Password) > 0 && len(value.Password) <= 256
}
