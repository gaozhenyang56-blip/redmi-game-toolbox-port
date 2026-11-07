package controller

import (
	"encoding/json"
	"github.com/gin-gonic/gin"
	"strings"
	"testing"
)

func TestQServerBootstrapExportsOnlyClientAccessAndPublicCA(t *testing.T) {
	cfg := qConfig{OwnerID: 7, ServerAddress: "203.0.113.10", ClientToken: strings.Repeat("a", 64), NodeUUID: qTestID, TLS: qTLSConfig{Port: 11452, DomainName: "panel.example", PrivateKey: "private-key-path"}}
	result := qServerBootstrap(cfg, "/custom/api/v1/", "PUBLIC_CA_FIXTURE")
	data, _ := json.Marshal(result)
	for _, secret := range []string{qTestID, "private-key-path", "ownerId", "managementToken"} {
		if strings.Contains(string(data), secret) {
			t.Fatal("private server field exposed")
		}
	}
	profile := result["profile"].(gin.H)
	if profile["url"] != "https://203.0.113.10:11452/custom/api/v1/profile" || profile["cdnUrl"] != "https://panel.example/custom/api/v1/profile" || profile["clientToken"] != cfg.ClientToken || profile["caPem"] != "PUBLIC_CA_FIXTURE" {
		t.Fatal("bootstrap routes or trust missing")
	}
}
