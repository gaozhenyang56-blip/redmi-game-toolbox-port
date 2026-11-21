package main

import (
	"context"
	"errors"
	"fmt"
	"io"
	"net"
	"net/http"
	"os"
	"os/exec"
	"os/signal"
	"path/filepath"
	"strings"
	"sync"
	"syscall"
	"time"
)

type browserState struct {
	mu      sync.Mutex
	state   string
	message string
	restart chan struct{}
}

func (b *browserState) set(state, message string) {
	b.mu.Lock()
	b.state, b.message = state, message
	b.mu.Unlock()
}

func envDefault(key, value string) string {
	if v := os.Getenv(key); v != "" {
		return v
	}
	return value
}

func cgroupPath() string {
	data, _ := os.ReadFile("/proc/self/cgroup")
	for _, line := range strings.Split(string(data), "\n") {
		if p, ok := strings.CutPrefix(line, "0::"); ok {
			return filepath.Join("/sys/fs/cgroup", p)
		}
	}
	return "/sys/fs/cgroup"
}

func (b *browserState) handler() http.Handler {
	m := http.NewServeMux()
	var inputMu sync.Mutex
	m.HandleFunc("GET /status", func(w http.ResponseWriter, r *http.Request) {
		b.mu.Lock()
		state, message := b.state, b.message
		b.mu.Unlock()
		cg := cgroupPath()
		var cpu string
		if data, err := os.ReadFile(filepath.Join(cg, "cpu.stat")); err == nil {
			for _, line := range strings.Split(string(data), "\n") {
				if v, ok := strings.CutPrefix(line, "usage_usec "); ok {
					cpu = v
					break
				}
			}
		}
		events, _ := os.ReadFile(filepath.Join(cg, "memory.events"))
		reply(w, map[string]any{"state": state, "message": message, "memoryBytes": metric(filepath.Join(cg, "memory.current")),
			"memoryMax": metric(filepath.Join(cg, "memory.max")), "cpuMicros": cpu, "memoryEvents": string(events)})
	})
	m.HandleFunc("POST /restart", func(w http.ResponseWriter, r *http.Request) {
		select {
		case b.restart <- struct{}{}:
		default:
		}
		w.WriteHeader(204)
	})
	for _, action := range []string{"refresh", "paste", "copy"} {
		m.HandleFunc("POST /"+action, func(w http.ResponseWriter, r *http.Request) {
			inputMu.Lock()
			defer inputMu.Unlock()
			ctx, cancel := context.WithTimeout(r.Context(), 2*time.Second)
			defer cancel()
			var err error
			switch action {
			case "refresh":
				err = exec.CommandContext(ctx, "xdotool", "key", "--clearmodifiers", "ctrl+r").Run()
			case "paste":
				cmd := exec.CommandContext(ctx, "xclip", "-selection", "clipboard", "-in")
				cmd.Stdin = http.MaxBytesReader(w, r.Body, 32768)
				if err = cmd.Run(); err == nil {
					err = exec.CommandContext(ctx, "xdotool", "key", "--clearmodifiers", "ctrl+v").Run()
				}
			case "copy":
				var cmd *exec.Cmd
				cmd = exec.CommandContext(ctx, "xclip", "-selection", "clipboard", "-out")
				var output io.ReadCloser
				output, err = cmd.StdoutPipe()
				if err == nil {
					err = cmd.Start()
				}
				if err == nil {
					data, readErr := io.ReadAll(io.LimitReader(output, 32769))
					_ = output.Close()
					err = cmd.Wait()
					if err == nil && readErr == nil && len(data) <= 32768 {
						_, _ = w.Write(data)
						return
					}
				}
				err = errors.New("clipboard unavailable")
			}
			if err != nil {
				problem(w, 503, "输入操作失败")
				return
			}
			w.WriteHeader(204)
		})
	}
	return m
}

func prepareDownloads(dir string) {
	items, _ := os.ReadDir(dir)
	for _, item := range items {
		if !validName(item.Name()) || partial(item.Name()) {
			continue
		}
		info, err := item.Info()
		if err != nil || !info.Mode().IsRegular() || info.Mode().Perm() == 0640 {
			continue
		}
		f, _, err := openRegular(filepath.Join(dir, item.Name()))
		if err == nil {
			_ = f.Chmod(0640)
			f.Close()
		}
	}
}

func runBrowser(c Config) error {
	if os.Geteuid() == 0 {
		return errors.New("浏览器禁止以 root 运行")
	}
	state := browserState{state: "starting", message: "正在启动远程浏览器", restart: make(chan struct{}, 1)}
	path := filepath.Join(c.Runtime, "control.sock")
	_ = os.Remove(path)
	l, err := net.Listen("unix", path)
	if err != nil {
		return err
	}
	defer l.Close()
	if err = os.Chmod(path, 0660); err != nil {
		return err
	}
	h := http.Server{Handler: state.handler(), ReadHeaderTimeout: 2 * time.Second, ReadTimeout: 3 * time.Second, WriteTimeout: 4 * time.Second}
	defer h.Close()
	go h.Serve(l)
	ctx, stop := signal.NotifyContext(context.Background(), syscall.SIGINT, syscall.SIGTERM)
	defer stop()

	var failures int
	for ctx.Err() == nil {
		state.set("starting", "正在启动远程浏览器")
		started := time.Now()
		cmd := exec.Command(envDefault("BRIDGE_BROWSER_SCRIPT", "/opt/chatgpt-web-bridge/current/browser/start.sh"))
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		cmd.SysProcAttr = &syscall.SysProcAttr{Setpgid: true}
		done := make(chan error, 1)
		if err := cmd.Start(); err != nil {
			done <- err
		} else {
			go func() { done <- cmd.Wait() }()
		}
		ticker := time.NewTicker(700 * time.Millisecond)
		fileTicker := time.NewTicker(2 * time.Second)
		ready := false
		waiting := true
		for waiting {
			select {
			case <-fileTicker.C:
				prepareDownloads(filepath.Join(c.Files, "downloads"))
			case <-ticker.C:
				if !ready {
					probe, cancel := context.WithTimeout(ctx, 350*time.Millisecond)
					err := exec.CommandContext(probe, "xdotool", "search", "--onlyvisible", "--class", "chromium|google-chrome").Run()
					cancel()
					if err == nil {
						ready = true
						state.set("running", "Chromium 已就绪")
					}
				}
			case <-state.restart:
				state.set("starting", "正在重启 Chromium")
				terminateBrowser(cmd, done)
				failures = 0
				waiting = false
			case <-ctx.Done():
				terminateBrowser(cmd, done)
				waiting = false
			case err := <-done:
				if cmd.Process != nil {
					_ = syscall.Kill(-cmd.Process.Pid, syscall.SIGTERM)
				}
				if time.Since(started) > 5*time.Minute && ready {
					failures = 0
				}
				failures++
				state.set("recovering", fmt.Sprintf("浏览器退出，正在恢复（%d/4）", failures))
				fmt.Fprintln(os.Stderr, "浏览器进程退出:", err)
				waiting = false
			}
		}
		ticker.Stop()
		fileTicker.Stop()
		if failures >= 4 {
			state.set("failed", "浏览器多次退出，请检查日志和内存后手动重启")
			select {
			case <-ctx.Done():
			case <-state.restart:
				failures = 0
			}
		} else if failures > 0 {
			timer := time.NewTimer(time.Duration(failures*5) * time.Second)
			select {
			case <-ctx.Done():
			case <-state.restart:
				failures = 0
			case <-timer.C:
			}
			timer.Stop()
		}
	}
	return nil
}

func terminateBrowser(cmd *exec.Cmd, done <-chan error) {
	if cmd.Process == nil {
		return
	}
	_ = cmd.Process.Signal(syscall.SIGTERM)
	select {
	case <-done:
	case <-time.After(8 * time.Second):
		_ = syscall.Kill(-cmd.Process.Pid, syscall.SIGKILL)
		<-done
	}
}
