package controller

import (
	"context"
	"crypto/tls"
	"net/http/httptest"
	"strings"
	"testing"
)

func TestQSpeedAuthenticatedMeteredPathExactSizeAndBounds(t *testing.T) {
	a, r, token, device := qExportFixture(t)
	qExportRequest(r, "POST", "/exports/bind", `{"historyConsent":"domains-permanent-v1"}`, token, device)
	r.GET("/exports/speed", a.exportAuth, a.speedDownload)
	request := func(peer, path, credential string, cancel bool) *httptest.ResponseRecorder {
		req := httptest.NewRequest("GET", path, nil)
		req.RemoteAddr = peer
		req.TLS = &tls.ConnectionState{}
		req.Header.Set("Authorization", "Bearer "+credential)
		req.Header.Set("X-Qinglian-Device", device)
		req.Header.Set("X-Forwarded-For", "127.0.0.1")
		if cancel {
			ctx, stop := context.WithCancel(req.Context())
			stop()
			req = req.WithContext(ctx)
		}
		w := httptest.NewRecorder()
		r.ServeHTTP(w, req)
		return w
	}
	if request("198.51.100.2:1234", "/exports/speed?bytes=71617", token, false).Code != 403 {
		t.Fatal("direct/unmetered or spoofed forwarded source allowed")
	}
	if request("127.0.0.1:1234", "/exports/speed?bytes=71617", strings.Repeat("0", 64), false).Code != 401 {
		t.Fatal("invalid credential allowed")
	}
	for _, size := range []string{"0", "-1", "33554433", "no"} {
		if request("127.0.0.1:1234", "/exports/speed?bytes="+size, token, false).Code != 400 {
			t.Fatal("invalid size accepted")
		}
	}
	w := request("127.0.0.1:1234", "/exports/speed?bytes=71617", token, false)
	if w.Code != 200 || w.Body.Len() != 71617 || w.Header().Get("X-Qinglian-Speed") != "server-v1" || w.Header().Get("Content-Length") != "71617" {
		t.Fatal("wrong stream size/identity")
	}
	qSpeedSlots.Lock()
	qSpeedSlots.total = 4
	qSpeedSlots.users["fixture"] = 4
	qSpeedSlots.Unlock()
	w = request("127.0.0.1:1234", "/exports/speed?bytes=1", token, false)
	qSpeedSlots.Lock()
	qSpeedSlots.total = 0
	delete(qSpeedSlots.users, "fixture")
	qSpeedSlots.Unlock()
	if w.Code != 429 || w.Header().Get("Retry-After") == "" {
		t.Fatal("four-lane per-account limit missing")
	}
	w = request("127.0.0.1:1234", "/exports/speed?bytes=33554432", token, true)
	if w.Body.Len() != 0 {
		t.Fatal("cancelled request kept streaming")
	}
	qSpeedSlots.Lock()
	defer qSpeedSlots.Unlock()
	if qSpeedSlots.total != 0 || len(qSpeedSlots.users) != 0 {
		t.Fatal("cancelled stream leaked a slot")
	}
}
