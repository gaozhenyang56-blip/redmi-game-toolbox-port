package controller

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	"html/template"
	"net/http"
	"net/http/cookiejar"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"
	"x-ui/database/model"
	"x-ui/web/session"
)

func TestQDiagnosticOwnerOriginConcurrencyAndCancellation(t *testing.T) {
	cfg := qConfig{OwnerID: 7, NodeUUID: qTestID, ClientToken: strings.Repeat("f", 64), StatePath: filepath.Join(t.TempDir(), "state.db")}
	data, _ := json.Marshal(cfg)
	path := filepath.Join(t.TempDir(), "config.json")
	os.WriteFile(path, data, 0600)
	t.Setenv("QINGLIAN_CONFIG", path)
	router := gin.New()
	router.Use(sessions.Sessions("session", cookie.NewStore([]byte(strings.Repeat("s", 32)))))
	router.GET("/owner", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 7}); c.Status(200) })
	router.GET("/other", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 8}); c.Status(200) })
	a := NewQinglianController(router.Group("/"))
	defer a.Close()
	a.diagnostic.run = func(ctx context.Context, mode string) (*qDiagnosticResult, error) {
		<-ctx.Done()
		return nil, errors.New("secret must not appear")
	}
	srv := httptest.NewTLSServer(router)
	defer srv.Close()
	client := srv.Client()
	client.Jar, _ = cookiejar.New(nil)
	request := func(method, body, origin string) *http.Response {
		req, _ := http.NewRequest(method, srv.URL+"/xui/qinglian/diagnostics", strings.NewReader(body))
		req.Header.Set("Origin", origin)
		req.Header.Set("X-Requested-With", "XMLHttpRequest")
		req.Header.Set("Authorization", "Bearer "+cfg.ClientToken)
		r, e := client.Do(req)
		if e != nil {
			t.Fatal(e)
		}
		return r
	}
	r := request("GET", "", srv.URL)
	if r.StatusCode == 200 {
		t.Fatal("App token allowed")
	}
	r.Body.Close()
	login := func(who string) {
		r, e := client.Get(srv.URL + "/" + who)
		if e != nil {
			t.Fatal(e)
		}
		r.Body.Close()
	}
	login("other")
	r = request("GET", "", srv.URL)
	if r.StatusCode == 200 {
		t.Fatal("non-owner allowed")
	}
	r.Body.Close()
	login("owner")
	for _, v := range []struct {
		body, origin string
		status       int
	}{{`{"mode":"all"}`, "https://evil.example", 403}, {`{"mode":"command"}`, srv.URL, 400}, {`{"mode":"all","command":"x"}`, srv.URL, 400}, {`{"mode":"all"}`, srv.URL, 202}, {`{"mode":"all"}`, srv.URL, 409}} {
		r = request("POST", v.body, v.origin)
		if r.StatusCode != v.status {
			t.Fatalf("status %d want %d", r.StatusCode, v.status)
		}
		r.Body.Close()
	}
	a.diagnostic.Lock()
	jobID := a.diagnostic.job.ID
	a.diagnostic.Unlock()
	cancelRequest, _ := http.NewRequest("POST", srv.URL+"/xui/qinglian/diagnostics/cancel", strings.NewReader(`{"id":"`+jobID+`"}`))
	cancelRequest.Header.Set("Origin", srv.URL)
	cancelRequest.Header.Set("X-Requested-With", "XMLHttpRequest")
	cancelResponse, cancelErr := client.Do(cancelRequest)
	if cancelErr != nil {
		t.Fatal(cancelErr)
	}
	if cancelResponse.StatusCode != 202 {
		t.Fatal("cancel denied", cancelResponse.StatusCode)
	}
	cancelResponse.Body.Close()
	for i := 0; i < 100; i++ {
		r = request("GET", "", srv.URL)
		var job qDiagnosticJob
		json.NewDecoder(r.Body).Decode(&job)
		r.Body.Close()
		if !job.Running {
			if job.Error != "CANCELLED" {
				t.Fatalf("unsanitized error: %s", job.Error)
			}
			return
		}
		time.Sleep(time.Millisecond * 10)
	}
	t.Fatal("cancel did not finish")
}
func TestQDiagnosticRejectsUntrustedResult(t *testing.T) {
	valid := qDiagnosticResult{Schema: 1, Scope: "server", Steps: []qDiagnosticStep{{Key: "compatibility", Status: "passed", Code: "OK", Bytes: 1024}}}
	if !qValidDiagnostic(&valid) {
		t.Fatal("valid result rejected")
	}
	valid.Steps[0].Code = "raw secret"
	if qValidDiagnostic(&valid) {
		t.Fatal("unbounded error accepted")
	}
	valid.Steps[0].Code = "OK"
	valid.Steps[0].Bytes = 1025
	if qValidDiagnostic(&valid) {
		t.Fatal("oversize accepted")
	}
}

func TestQDiagnosticPageRenders(t *testing.T) {
	tpl, e := template.New("").ParseFiles("../html/common/head.html", "../html/common/js.html", "../html/xui/common_sider.html", "../html/xui/qinglian.html")
	if e != nil {
		t.Fatal(e)
	}
	var b bytes.Buffer
	if e = tpl.ExecuteTemplate(&b, "qinglian.html", map[string]interface{}{"title": "Diagnostic fixture", "base_path": "/", "cur_ver": "0.3.2", "request_uri": "/xui/qinglian/manage/diagnostics"}); e != nil {
		t.Fatal(e)
	}
	if path := os.Getenv("QINGLIAN_DIAGNOSTIC_RENDER"); path != "" {
		if e = os.WriteFile(path, b.Bytes(), 0600); e != nil {
			t.Fatal(e)
		}
	}
}
