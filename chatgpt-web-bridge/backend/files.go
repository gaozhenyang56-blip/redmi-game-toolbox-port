package main

import (
	"errors"
	"io"
	"mime"
	"net/http"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"syscall"
	"time"
	"unicode"
	"unicode/utf8"
)

type fileEntry struct {
	Name  string `json:"name"`
	Size  int64  `json:"size"`
	State string `json:"state"`
}

func validName(n string) bool {
	return n != "" && len(n) <= 240 && utf8.ValidString(n) && n == strings.TrimSpace(n) &&
		!strings.HasPrefix(n, ".") && !strings.ContainsAny(n, "/\\") &&
		strings.IndexFunc(n, func(r rune) bool { return unicode.IsControl(r) || unicode.Is(unicode.Cf, r) }) < 0
}

func partial(n string) bool {
	n = strings.ToLower(n)
	return strings.HasSuffix(n, ".crdownload") || strings.HasSuffix(n, ".part") || strings.HasSuffix(n, ".tmp") || strings.HasPrefix(n, ".org.chromium.")
}

func (s *Server) cleanFiles() {
	cutoff := time.Now().Add(-duration(s.cfg.FileHours))
	for _, kind := range []string{"uploads", "downloads"} {
		dir := filepath.Join(s.cfg.Files, kind)
		entries, _ := os.ReadDir(dir)
		for _, entry := range entries {
			name := entry.Name()
			if !validName(name) && !strings.HasPrefix(name, ".bridge-") && !strings.HasPrefix(name, ".org.chromium.") {
				continue
			}
			info, err := entry.Info()
			if err == nil && info.Mode().IsRegular() && info.ModTime().Before(cutoff) {
				_ = os.Remove(filepath.Join(dir, name))
			}
		}
	}
}

func (s *Server) entries(kind string) ([]fileEntry, error) {
	dir := filepath.Join(s.cfg.Files, kind)
	entries, err := os.ReadDir(dir)
	if err != nil {
		return nil, err
	}
	out := make([]fileEntry, 0, len(entries))
	for _, e := range entries {
		n := e.Name()
		if !validName(n) && !(kind == "downloads" && strings.HasPrefix(n, ".org.chromium.")) {
			continue
		}
		f, err := e.Info()
		if err != nil || !independentFile(f) {
			continue
		}
		state := "ready"
		if kind == "downloads" {
			if partial(n) {
				state = "pending"
			} else if f.Mode().Perm()&0040 == 0 {
				continue
			}
		}
		out = append(out, fileEntry{n, f.Size(), state})
	}
	sort.Slice(out, func(i, j int) bool { return out[i].Name < out[j].Name })
	return out, nil
}

func (s *Server) listFiles(w http.ResponseWriter, r *http.Request, x session) {
	u, ue := s.entries("uploads")
	d, de := s.entries("downloads")
	if ue != nil || de != nil {
		problem(w, 503, "文件目录暂不可用")
		return
	}
	reply(w, map[string]any{"uploads": u, "downloads": d, "uploadMiB": s.cfg.UploadMiB, "uploadDir": filepath.Join(s.cfg.Files, "uploads")})
}

func (s *Server) upload(w http.ResponseWriter, r *http.Request, x session) {
	n := r.PathValue("name")
	if !validName(n) {
		problem(w, 400, "文件名无效")
		return
	}
	limit := s.cfg.UploadMiB << 20
	if r.ContentLength < 0 {
		problem(w, 411, "上传需要文件长度")
		return
	}
	if r.ContentLength > limit {
		problem(w, 413, "文件超过上传上限")
		return
	}
	if !s.filesMu.TryLock() {
		problem(w, 409, "已有文件操作，请稍后重试")
		return
	}
	defer s.filesMu.Unlock()
	dir := filepath.Join(s.cfg.Files, "uploads")
	entries, err := s.entries("uploads")
	if err != nil {
		problem(w, 503, "上传目录暂不可用")
		return
	}
	total := r.ContentLength
	for _, f := range entries {
		if f.Name == n {
			problem(w, 409, "同名文件已存在，请改名或先删除")
			return
		}
		total += f.Size
	}
	if total > s.cfg.UploadQuotaMiB<<20 || len(entries) >= 512 {
		problem(w, 507, "上传目录已满")
		return
	}
	f, err := os.CreateTemp(dir, ".bridge-")
	if err != nil {
		problem(w, 507, "无法创建上传文件")
		return
	}
	defer os.Remove(f.Name())
	defer f.Close()
	written, err := io.Copy(f, http.MaxBytesReader(w, r.Body, limit))
	if err != nil || written != r.ContentLength || r.Context().Err() != nil {
		problem(w, 400, "文件传输中断或长度异常")
		return
	}
	if err = f.Chmod(0640); err == nil {
		err = f.Sync()
	}
	if closeErr := f.Close(); err == nil {
		err = closeErr
	}
	if err == nil {
		err = os.Link(f.Name(), filepath.Join(dir, n))
	}
	if errors.Is(err, os.ErrExist) {
		problem(w, 409, "同名文件已存在")
		return
	}
	if err != nil {
		problem(w, 507, "无法保存上传文件")
		return
	}
	w.WriteHeader(201)
}

func independentFile(info os.FileInfo) bool {
	stat, ok := info.Sys().(*syscall.Stat_t)
	return info.Mode().IsRegular() && ok && stat.Nlink == 1
}

func openRegular(path string) (*os.File, os.FileInfo, error) {
	fd, err := syscall.Open(path, syscall.O_RDONLY|syscall.O_NOFOLLOW|syscall.O_NONBLOCK|syscall.O_CLOEXEC, 0)
	if err != nil {
		return nil, nil, err
	}
	f := os.NewFile(uintptr(fd), path)
	info, err := f.Stat()
	if err == nil && independentFile(info) {
		return f, info, nil
	}
	f.Close()
	return nil, nil, errors.New("需要普通文件")
}

func (s *Server) download(w http.ResponseWriter, r *http.Request, x session) {
	n := r.PathValue("name")
	if !validName(n) || partial(n) {
		problem(w, 404, "下载文件不可用")
		return
	}
	f, info, err := openRegular(filepath.Join(s.cfg.Files, "downloads", n))
	if err != nil {
		problem(w, 404, "下载文件不可用")
		return
	}
	defer f.Close()
	w.Header().Set("Content-Disposition", mime.FormatMediaType("attachment", map[string]string{"filename": n}))
	w.Header().Set("Content-Type", "application/octet-stream")
	http.ServeContent(w, r, n, info.ModTime(), f)
}

func (s *Server) deleteFile(w http.ResponseWriter, r *http.Request, x session) {
	n, kind := r.PathValue("name"), r.PathValue("kind")
	if !validName(n) || (kind != "uploads" && kind != "downloads") || (kind == "downloads" && partial(n)) {
		problem(w, 404, "文件不可删除")
		return
	}
	if !s.filesMu.TryLock() {
		problem(w, 409, "已有文件操作，请稍后重试")
		return
	}
	defer s.filesMu.Unlock()
	path := filepath.Join(s.cfg.Files, kind, n)
	info, err := os.Lstat(path)
	if err != nil || !info.Mode().IsRegular() {
		problem(w, 404, "文件不存在")
		return
	}
	if err := os.Remove(path); err != nil {
		problem(w, 500, "无法删除文件")
		return
	}
	w.WriteHeader(204)
}
