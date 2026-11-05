package controller

import (
	"bytes"
	"context"
	"encoding/json"
	"io"
	"net/http"
	"os/exec"
	"regexp"
	"sync"
	"syscall"
	"time"

	"github.com/gin-gonic/gin"
)

type qDiagnosticStep struct {
	Key      string `json:"key"`
	Status   string `json:"status"`
	Code     string `json:"code"`
	Duration int64  `json:"durationMs"`
	Bytes    int64  `json:"bytes"`
}
type qDiagnosticResult struct {
	Schema       int               `json:"schema"`
	Scope        string            `json:"scope"`
	OK           bool              `json:"ok"`
	Steps        []qDiagnosticStep `json:"steps"`
	GuestStopped bool              `json:"testGuestStopped"`
}
type qDiagnosticJob struct {
	ID       string             `json:"id"`
	Mode     string             `json:"mode"`
	Running  bool               `json:"running"`
	Started  int64              `json:"started"`
	Finished int64              `json:"finished"`
	Result   *qDiagnosticResult `json:"result"`
	Error    string             `json:"error"`
}
type qDiagnosticState struct {
	sync.Mutex
	job    *qDiagnosticJob
	cancel context.CancelFunc
	closed bool
	run    func(context.Context, string) (*qDiagnosticResult, error)
}

func qNewDiagnosticState() *qDiagnosticState { return &qDiagnosticState{run: qRunDiagnostic} }
func (s *qDiagnosticState) close() {
	if s == nil {
		return
	}
	s.Lock()
	defer s.Unlock()
	s.closed = true
	if s.cancel != nil {
		s.cancel()
	}
}

type qDiagnosticOutput struct{ bytes.Buffer }

func (b *qDiagnosticOutput) Write(p []byte) (int, error) {
	n := len(p)
	left := (64 << 10) - b.Len()
	if left > 0 {
		if len(p) > left {
			p = p[:left]
		}
		b.Buffer.Write(p)
	}
	return n, nil
}

var qDiagnosticHTTPCode = regexp.MustCompile(`^HTTP_[45][0-9]{2}$`)

func qValidDiagnostic(value *qDiagnosticResult) bool {
	if value.Schema != 1 || value.Scope != "server" || len(value.Steps) == 0 || len(value.Steps) > 12 {
		return false
	}
	keys := map[string]bool{"storage": true, "api": true, "workers": true, "allocation": true, "compatibility": true, "hy2": true, "cleanup": true}
	codes := map[string]bool{"OK": true, "CANCELLED": true, "TLS_CERTIFICATE": true, "TIMEOUT": true, "NATIVE_FILE_MISSING": true, "DATABASE_ERROR": true, "TEST_FAILED": true, "WORKER_NOT_READY": true, "NODE_NOT_READY": true, "CLEANUP_PENDING": true}
	for _, s := range value.Steps {
		if !keys[s.Key] || (s.Status != "passed" && s.Status != "failed" && s.Status != "skipped") || (!codes[s.Code] && !qDiagnosticHTTPCode.MatchString(s.Code)) || s.Duration < 0 || s.Duration > 120000 || s.Bytes < 0 || s.Bytes > 1024 {
			return false
		}
	}
	return true
}
func qRunDiagnostic(ctx context.Context, mode string) (*qDiagnosticResult, error) {
	cmd := exec.CommandContext(ctx, "/usr/bin/python3", "/usr/local/lib/qinglian/diagnostics.py", "--mode", mode)
	cmd.SysProcAttr = &syscall.SysProcAttr{Setpgid: true}
	cmd.WaitDelay = 2 * time.Second
	cmd.Cancel = func() error {
		if cmd.Process != nil {
			return syscall.Kill(-cmd.Process.Pid, syscall.SIGTERM)
		}
		return nil
	}
	var output qDiagnosticOutput
	cmd.Stdout = &output
	cmd.Stderr = io.Discard
	err := cmd.Run()
	if cmd.Process != nil {
		syscall.Kill(-cmd.Process.Pid, syscall.SIGKILL)
	}
	if err != nil {
		return nil, err
	}
	var result qDiagnosticResult
	if json.Unmarshal(output.Bytes(), &result) != nil || !qValidDiagnostic(&result) {
		return nil, context.Canceled
	}
	return &result, nil
}
func (a *QinglianController) diagnosticView(c *gin.Context) {
	if !a.panelAuth(c) {
		return
	}
	state := a.diagnostic
	state.Lock()
	var view qDiagnosticJob
	if state.job != nil {
		view = *state.job
	}
	state.Unlock()
	c.Header("Cache-Control", "no-store")
	c.JSON(200, view)
}
func (a *QinglianController) startDiagnostic(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	if !qSSHOrigin(c.Request) {
		c.Status(403)
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 512)
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	var body struct {
		Mode string `json:"mode"`
	}
	if decoder.Decode(&body) != nil || decoder.Decode(new(interface{})) != io.EOF || (body.Mode != "all" && body.Mode != "compatibility" && body.Mode != "hy2") {
		c.Status(400)
		return
	}
	state := a.diagnostic
	state.Lock()
	if state.closed || (state.job != nil && state.job.Running) {
		state.Unlock()
		c.Status(409)
		return
	}
	job := &qDiagnosticJob{ID: qRandom(16), Mode: body.Mode, Running: true, Started: time.Now().UnixMilli()}
	ctx, cancel := context.WithTimeout(context.Background(), 90*time.Second)
	state.cancel = cancel
	state.job = job
	runner := state.run
	view := *job
	state.Unlock()
	go func() {
		defer cancel()
		result, err := runner(ctx, body.Mode)
		state.Lock()
		defer state.Unlock()
		job.Running = false
		job.Finished = time.Now().UnixMilli()
		state.cancel = nil
		if err != nil {
			if ctx.Err() == context.DeadlineExceeded {
				job.Error = "TIMEOUT"
			} else if ctx.Err() != nil {
				job.Error = "CANCELLED"
			} else {
				job.Error = "RUNNER_FAILED"
			}
			return
		}
		job.Result = result
	}()
	c.JSON(202, view)
}
func (a *QinglianController) cancelDiagnostic(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	if !qSSHOrigin(c.Request) {
		c.Status(403)
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 512)
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	var body struct {
		ID string `json:"id"`
	}
	if decoder.Decode(&body) != nil || decoder.Decode(new(interface{})) != io.EOF || !qStreamID.MatchString(body.ID) {
		c.Status(400)
		return
	}
	state := a.diagnostic
	state.Lock()
	defer state.Unlock()
	if state.job == nil || state.job.ID != body.ID || !state.job.Running || state.cancel == nil {
		c.Status(409)
		return
	}
	state.cancel()
	c.JSON(202, gin.H{"cancelled": true})
}
