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
	"strconv"
	"strings"
	"sync"
	"syscall"
	"time"
)

type browserState struct {
	mu           sync.Mutex
	state        string
	message      string
	request      chan string
	target       string
	lastActivity time.Time
	onDemand     bool
}

func (b *browserState) set(state, message string) {
	b.mu.Lock()
	b.state, b.message = state, message
	b.mu.Unlock()
}

var officialPages = map[string]string{
	"login": "https://chatgpt.com/auth/login",
	"chat":  "https://chatgpt.com/",
	"codex": "https://chatgpt.com/codex",
}

func (b *browserState) touch() {
	b.mu.Lock()
	b.lastActivity = time.Now()
	b.mu.Unlock()
}

func (b *browserState) navigate(target string) {
	if officialPages[target] == "" {
		return
	}
	b.mu.Lock()
	b.target = target
	b.mu.Unlock()
}

func (b *browserState) idleFor() time.Duration {
	b.mu.Lock()
	defer b.mu.Unlock()
	return time.Since(b.lastActivity)
}

func browserMemory() (availableMiB, minimumMiB uint64) {
	available, err := os.ReadFile("/proc/meminfo")
	if err != nil {
		return 0, 732
	}
	limit := metric(filepath.Join(cgroupPath(), "memory.max"))
	required := uint64(512+220) << 10
	if limit != nil && *limit <= 4096<<20 {
		required = *limit/1024 + (220 << 10)
	}
	for _, line := range strings.Split(string(available), "\n") {
		if v, ok := strings.CutPrefix(line, "MemAvailable:"); ok {
			words := strings.Fields(v)
			if len(words) == 0 {
				break
			}
			kib, err := strconv.ParseUint(words[0], 10, 64)
			if err == nil {
				return kib >> 10, required >> 10
			}
		}
	}
	return 0, required >> 10
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
		state, message, target := b.state, b.message, b.target
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
		reply(w, map[string]any{"state": state, "message": message, "target": target, "onDemand": b.onDemand, "memoryBytes": metric(filepath.Join(cg, "memory.current")),
			"memoryMax": metric(filepath.Join(cg, "memory.max")), "cpuMicros": cpu, "memoryEvents": string(events)})
	})
	m.HandleFunc("POST /restart", func(w http.ResponseWriter, r *http.Request) {
		select {
		case b.request <- "restart":
		default:
		}
		w.WriteHeader(204)
	})
	m.HandleFunc("POST /open", func(w http.ResponseWriter, r *http.Request) {
		data, err := io.ReadAll(http.MaxBytesReader(w, r.Body, 16))
		target := string(data)
		if err != nil || (target != "" && officialPages[target] == "") {
			problem(w, 400, "未知的官方页面")
			return
		}
		b.touch()
		select {
		case b.request <- target:
		default:
		}
		w.WriteHeader(204)
	})
	m.HandleFunc("POST /activity", func(w http.ResponseWriter, r *http.Request) {
		b.touch()
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
	state := browserState{state: "starting", message: "正在启动远程浏览器",
		target: "login", onDemand: os.Getenv("BRIDGE_ON_DEMAND") == "1", request: make(chan string, 1)}
	state.touch()
	sleeping := state.onDemand
	if sleeping {
		state.set("idle", "浏览器待机，连接时启动")
	}
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
		if sleeping {
			select {
			case <-ctx.Done():
				return nil
			case target := <-state.request:
				state.navigate(target)
				failures = 0
			}
		}
		if state.onDemand {
			available, minimum := browserMemory()
			if available < minimum {
				sleeping = true
				state.set("low-memory", fmt.Sprintf("Chromium 待机：当前可用 %d MiB，启动需要至少 %d MiB", available, minimum))
				continue
			}
		}
		sleeping = false
		state.touch()
		state.set("starting", "正在启动远程浏览器")
		started := time.Now()
		cmd := exec.Command(envDefault("BRIDGE_BROWSER_SCRIPT", "/opt/chatgpt-web-bridge/current/browser/start.sh"))
		if os.Getenv("BRIDGE_START_URL") == "" {
			cmd.Env = append(os.Environ(), "BRIDGE_START_URL="+officialPages[state.target])
		}
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
				if state.onDemand && state.idleFor() > 10*time.Minute {
					terminateBrowser(cmd, done)
					state.set("idle", "浏览器已待机，连接时重新启动")
					sleeping, waiting, failures = true, false, 0
				}
			case <-ticker.C:
				if !ready {
					probe, cancel := context.WithTimeout(ctx, 350*time.Millisecond)
					err := exec.CommandContext(probe, "xdotool", "search", "--onlyvisible", "--class", "chromium|google-chrome").Run()
					cancel()
					if err == nil {
						ready = true
						state.set("running", "Chromium 已就绪")
					} else if time.Since(started) >= 30*time.Second {
						terminateBrowser(cmd, done)
						failures++
						state.set("recovering", "Chromium 启动超时，正在恢复")
						fmt.Fprintln(os.Stderr, "Chromium 启动超时")
						waiting = false
					}
				}
			case target := <-state.request:
				if target == "" || target == state.target {
					continue
				}
				state.navigate(target)
				state.set("starting", "正在重新打开 Chromium")
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
			case target := <-state.request:
				state.navigate(target)
				failures = 0
			}
		} else if failures > 0 {
			timer := time.NewTimer(time.Duration(failures*5) * time.Second)
			select {
			case <-ctx.Done():
			case target := <-state.request:
				state.navigate(target)
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
