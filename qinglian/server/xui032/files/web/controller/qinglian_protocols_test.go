package controller

import (
	"testing"
	"x-ui/database/model"
)

func TestQProtocolNodeConversionAndRejections(t *testing.T) {
	a := &QinglianController{cfg: qConfig{ServerAddress: "192.0.2.1"}}
	for _, p := range []string{"vmess", "vless", "trojan", "shadowsocks"} {
		settings := `{"clients":[{"id":"11111111-1111-4111-8111-111111111111","password":"fixture","alterId":0}]}`
		tls := "none"
		if p == "trojan" {
			tls = "tls"
		}
		if p == "shadowsocks" {
			settings = `{"method":"aes-128-gcm","password":"fixture"}`
		}
		row := model.Inbound{Port: 443, Protocol: model.Protocol(p), Settings: settings, StreamSettings: `{"network":"tcp","security":"` + tls + `","tcpSettings":{"header":{"type":"none"}}}`}
		node, err := a.node(&row)
		if err != nil || node["protocol"] != p {
			t.Fatal(p, err)
		}
		row.StreamSettings = `{"network":"ws","security":"tls","tlsSettings":{"serverName":"example.com"},"wsSettings":{"path":"/fixture","headers":{"Host":"example.com"}}}`
		node, err = a.node(&row)
		if err != nil || node["sni"] != "example.com" || node["path"] != "/fixture" {
			t.Fatal("TLS websocket", p, err)
		}
		row.StreamSettings = `{"network":"grpc","security":"none"}`
		if _, err = a.node(&row); err == nil {
			t.Fatal("unsupported transport accepted")
		}
	}
	for _, settings := range []string{`{"clients":[{"id":"bad"}]}`, `{"clients":[{"id":"11111111-1111-4111-8111-111111111111","flow":"xtls-rprx-vision"}]}`, `{"clients":[]}`} {
		row := model.Inbound{Protocol: model.VLESS, Port: 443, Settings: settings, StreamSettings: `{"network":"tcp","security":"none"}`}
		if _, err := a.node(&row); err == nil {
			t.Fatal("invalid client accepted")
		}
	}
	row := model.Inbound{Protocol: model.Trojan, Port: 443, Settings: `{"clients":[{"password":"fixture"}]}`, StreamSettings: `{"network":"tcp","security":"none"}`}
	if _, err := a.node(&row); err == nil {
		t.Fatal("plaintext Trojan accepted")
	}
}
