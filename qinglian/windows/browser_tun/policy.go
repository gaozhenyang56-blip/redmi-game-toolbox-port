package main

import (
	"encoding/binary"
	"net"
	"strings"
)

// Only an exact installed OpenAI package network service is selected. Renderers,
// arbitrary executables with the same basename, and GPU processes are excluded.
func candidate(image, command, programFiles string) bool {
	image = strings.ToLower(strings.ReplaceAll(image, "/", "\\"))
	root := strings.ToLower(strings.TrimRight(programFiles, "\\")) + "\\windowsapps\\"
	if !strings.HasPrefix(image, root) || !strings.HasSuffix(image, "\\app\\chatgpt.exe") {
		return false
	}
	pkg := strings.Split(strings.TrimPrefix(image, root), "\\")[0]
	if !strings.HasPrefix(pkg, "openai.codex_") && !strings.HasPrefix(pkg, "openai.chatgpt-desktop_") && !strings.HasPrefix(pkg, "openai.chatgpt_") {
		return false
	}
	args := strings.Fields(command)
	utility, network := false, false
	for _, arg := range args {
		arg = strings.Trim(arg, "\"")
		if arg == "--type=utility" {
			utility = true
		}
		if arg == "--utility-sub-type=network.mojom.NetworkService" {
			network = true
		}
	}
	return utility && network
}
func protected(host string) bool {
	host = strings.ToLower(strings.TrimSuffix(host, "."))
	for _, suffix := range []string{"openai.com", "chatgpt.com", "oaistatic.com", "oaiusercontent.com", "auth0.com"} {
		if host == suffix || strings.HasSuffix(host, "."+suffix) {
			return true
		}
	}
	return false
}
func validHost(host string) string {
	host = strings.ToLower(strings.TrimSuffix(host, "."))
	if host == "" || len(host) > 253 || net.ParseIP(host) != nil {
		return ""
	}
	for _, label := range strings.Split(host, ".") {
		if label == "" || len(label) > 63 || label[0] == '-' || label[len(label)-1] == '-' {
			return ""
		}
		for _, c := range label {
			if c != '-' && (c < 'a' || c > 'z') && (c < '0' || c > '9') {
				return ""
			}
		}
	}
	return host
}

// Inspect only the bounded first HTTP header/TLS ClientHello, never decrypt TLS,
// install certificates, persist hostnames, or upload browsing metadata.
// complete=false means another fragment is needed; empty host always proxies.
func sniff(data []byte) (host string, complete bool) {
	if len(data) == 0 {
		return "", false
	}
	if len(data) > 65536 {
		return "", true
	}
	if data[0] != 22 {
		if len(data) < 4 {
			return "", false
		}
		prefix := string(data[:4])
		if prefix != "GET " && prefix != "POST" && prefix != "HEAD" && prefix != "PUT " && prefix != "OPTI" && prefix != "DELE" && prefix != "PATC" {
			return "", true
		}
		text := string(data)
		end := strings.Index(text, "\r\n\r\n")
		if end < 0 {
			return "", len(data) >= 16384
		}
		for _, line := range strings.Split(text[:end], "\r\n")[1:] {
			key, value, ok := strings.Cut(line, ":")
			if ok && strings.EqualFold(key, "Host") {
				value = strings.TrimSpace(value)
				if h, _, err := net.SplitHostPort(value); err == nil {
					value = h
				}
				if host != "" {
					return "", true
				}
				host = validHost(value)
			}
		}
		return host, true
	}
	var handshake []byte
	for offset := 0; offset < len(data); {
		if len(data)-offset < 5 {
			return "", false
		}
		if data[offset] != 22 {
			return "", true
		}
		size := int(binary.BigEndian.Uint16(data[offset+3 : offset+5]))
		if size == 0 || size > 18432 {
			return "", true
		}
		if len(data)-offset-5 < size {
			return "", false
		}
		handshake = append(handshake, data[offset+5:offset+5+size]...)
		offset += 5 + size
		if len(handshake) < 4 {
			continue
		}
		if handshake[0] != 1 {
			return "", true
		}
		length := int(handshake[1])<<16 | int(handshake[2])<<8 | int(handshake[3])
		if length > 65000 {
			return "", true
		}
		if len(handshake) < length+4 {
			continue
		}
		body := handshake[4 : length+4]
		if len(body) < 35 {
			return "", true
		}
		p := 34
		take := func(n int) []byte {
			if n < 0 || p+n > len(body) {
				p = len(body) + 1
				return nil
			}
			v := body[p : p+n]
			p += n
			return v
		}
		session := take(1)
		if session == nil || take(int(session[0])) == nil {
			return "", true
		}
		cipher := take(2)
		if cipher == nil || take(int(binary.BigEndian.Uint16(cipher))) == nil {
			return "", true
		}
		compression := take(1)
		if compression == nil || take(int(compression[0])) == nil {
			return "", true
		}
		count := take(2)
		if count == nil {
			return "", true
		}
		ext := take(int(binary.BigEndian.Uint16(count)))
		if ext == nil {
			return "", true
		}
		for len(ext) > 0 {
			if len(ext) < 4 {
				return "", true
			}
			kind := binary.BigEndian.Uint16(ext[:2])
			n := int(binary.BigEndian.Uint16(ext[2:4]))
			ext = ext[4:]
			if n > len(ext) {
				return "", true
			}
			v := ext[:n]
			ext = ext[n:]
			if kind == 0xfe0d {
				return "", true
			} // ECH hides the true destination: keep proxy.
			if kind == 0 {
				if host != "" || len(v) < 5 || int(binary.BigEndian.Uint16(v[:2])) != len(v)-2 || v[2] != 0 || int(binary.BigEndian.Uint16(v[3:5])) != len(v)-5 {
					return "", true
				}
				host = validHost(string(v[5:]))
				if host == "" {
					return "", true
				}
			}
		}
		return host, true
	}
	return "", false
}
