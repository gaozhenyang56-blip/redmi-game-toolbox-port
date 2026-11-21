package main

import (
	"bytes"
	"encoding/json"
	"errors"
	"io"
	"net"
	"net/url"
	"os"
	"path/filepath"
	"regexp"
	"time"
)

var basePathPattern = regexp.MustCompile(`^(/[a-zA-Z0-9_-]+)+$`)

var usernamePattern = regexp.MustCompile("^[A-Za-z0-9_.-]{2,48}$")

type Config struct {
	AdminUser      string
	Listen         string
	Origin         string
	BasePath       string
	State          string
	Files          string
	Runtime        string
	Assets         string
	UploadMiB      int64
	UploadQuotaMiB int64
	FileHours      int
	SessionHours   int
}

func loadConfig(path string) (Config, error) {
	cfg := Config{
		AdminUser: "admin", Listen: "127.0.0.1:18642", Origin: "https://chat.gaozy.tech",
		State: "/var/lib/chatgpt-web-bridge/auth", Files: "/srv/chatgpt-web-bridge",
		Runtime: "/run/chatgpt-web-bridge", Assets: "/opt/chatgpt-web-bridge/current/web",
		UploadMiB: 64, UploadQuotaMiB: 384, FileHours: 24, SessionHours: 12,
	}
	data, err := os.ReadFile(path)
	if err != nil {
		return cfg, err
	}
	if err = decode(bytes.NewReader(data), &cfg); err != nil {
		return cfg, err
	}
	if !usernamePattern.MatchString(cfg.AdminUser) {
		return cfg, errors.New("管理员登录名无效")
	}
	addr, err := net.ResolveTCPAddr("tcp", cfg.Listen)
	u, originErr := url.Parse(cfg.Origin)
	if err != nil || !addr.IP.IsLoopback() || addr.Port == 0 {
		return cfg, errors.New("Listen 必须是有效的回环地址和端口")
	}
	if originErr != nil || u.Scheme != "https" || u.Hostname() == "" || cfg.Origin != "https://"+u.Host {
		return cfg, errors.New("Origin 必须是 HTTPS 来源地址，且不含路径")
	}
	if cfg.BasePath != "" && (len(cfg.BasePath) > 128 || !basePathPattern.MatchString(cfg.BasePath)) {
		return cfg, errors.New("BasePath 必须是规范的 URL 子路径")
	}
	for _, dir := range []string{cfg.State, cfg.Files, cfg.Runtime, cfg.Assets} {
		if !filepath.IsAbs(dir) || filepath.Clean(dir) != dir || dir == "/" {
			return cfg, errors.New("目录必须是规范的绝对路径")
		}
	}
	if cfg.UploadMiB < 1 || cfg.UploadMiB > 256 || cfg.UploadQuotaMiB < cfg.UploadMiB || cfg.UploadQuotaMiB > 4096 ||
		cfg.FileHours < 1 || cfg.FileHours > 720 || cfg.SessionHours < 1 || cfg.SessionHours > 168 {
		return cfg, errors.New("存储或会话配置超出范围")
	}
	return cfg, nil
}

func decode(r io.Reader, dest any) error {
	d := json.NewDecoder(r)
	d.DisallowUnknownFields()
	if err := d.Decode(dest); err != nil {
		return err
	}
	if err := d.Decode(new(any)); err != io.EOF {
		return errors.New("JSON 必须只包含一个值")
	}
	return nil
}

func atomicFile(path string, data []byte) error {
	f, err := os.CreateTemp(filepath.Dir(path), ".write-")
	if err != nil {
		return err
	}
	defer os.Remove(f.Name())
	_, err = f.Write(data)
	if err == nil {
		err = f.Sync()
	}
	if closeErr := f.Close(); err == nil {
		err = closeErr
	}
	if err != nil {
		return err
	}
	return os.Rename(f.Name(), path)
}

func duration(hours int) time.Duration { return time.Duration(hours) * time.Hour }
