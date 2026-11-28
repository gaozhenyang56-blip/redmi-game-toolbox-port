package main

import (
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

// Exact command-line argument, not a substring in another flag or file path.
func hasPAC(command, url string) bool {
	for _, arg := range strings.Fields(command) {
		if strings.Trim(arg, "\"") == "--proxy-pac-url="+url {
			return true
		}
	}
	return false
}
