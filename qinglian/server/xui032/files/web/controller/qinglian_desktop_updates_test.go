package controller

import (
	"archive/zip"
	"bytes"
	"encoding/json"
	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"x-ui/database/model"
	"x-ui/web/session"
)

func TestWindowsDataOnlyOwnerPublicationAndCAS(t *testing.T) {
	root := t.TempDir()
	token := strings.Repeat("fixture", 8)
	cfg := qConfig{OwnerID: 7, ClientToken: token, NodeUUID: qTestID, StatePath: filepath.Join(root, "devices.db")}
	data, _ := json.Marshal(cfg)
	path := filepath.Join(root, "config.json")
	os.WriteFile(path, data, 0600)
	t.Setenv("QINGLIAN_CONFIG", path)
	engine := gin.New()
	engine.Use(sessions.Sessions("session", cookie.NewStore([]byte(strings.Repeat("s", 32)))))
	engine.GET("/login", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 7}); c.Status(200) })
	a := NewQinglianController(engine.Group("/"))
	defer a.Close()
	call := func(method, path string, data []byte, cookies []*http.Cookie, origin bool) *httptest.ResponseRecorder {
		r := httptest.NewRequest(method, path, bytes.NewReader(data))
		r.Header.Set("Authorization", "Bearer "+token)
		r.Header.Set("X-Requested-With", "XMLHttpRequest")
		if origin {
			r.Header.Set("Origin", "http://example.com")
		}
		for _, cookie := range cookies {
			r.AddCookie(cookie)
		}
		w := httptest.NewRecorder()
		engine.ServeHTTP(w, r)
		return w
	}
	cookies := call("GET", "/login", nil, nil, false).Result().Cookies()
	initial := call("GET", "/api/v1/windows/updates", nil, nil, false)
	var v qWinUpdate
	if initial.Code != 200 || json.Unmarshal(initial.Body.Bytes(), &v) != nil || v.Revision != 0 {
		t.Fatal("baseline")
	}
	v.UI.Accent = "teal"
	body, _ := json.Marshal(v)
	if call("POST", "/xui/qinglian/windows", body, nil, true).Code != 401 {
		t.Fatal("bootstrap cannot publish")
	}
	if call("POST", "/xui/qinglian/windows", body, cookies, false).Code != 403 {
		t.Fatal("origin required")
	}
	if call("POST", "/xui/qinglian/windows", body, cookies, true).Code != 200 {
		t.Fatal("owner publish")
	}
	if call("POST", "/xui/qinglian/windows", body, cookies, true).Code != 409 {
		t.Fatal("stale revision accepted")
	}
	if call("POST", "/xui/qinglian/windows", []byte(`{"schema":1,"revision":1,"ui":{"script":"evil"}}`), cookies, true).Code != 400 {
		t.Fatal("script accepted")
	}
	if call("POST", "/xui/qinglian/windows/import", []byte(`{"version":"https://evil/"}`), cookies, true).Code != 400 {
		t.Fatal("arbitrary import URL")
	}
	if call("GET", "/api/v1/windows/package/"+strings.Repeat("a", 64), nil, nil, false).Code != 404 {
		t.Fatal("unpublished download")
	}
	v.Revision = 1
	v.UI.Density = "compact"
	body, _ = json.Marshal(v)
	if call("POST", "/xui/qinglian/windows", body, cookies, true).Code != 200 {
		t.Fatal("second publish")
	}
	rolled := call("POST", "/xui/qinglian/windows/rollback", nil, cookies, true)
	if rolled.Code != 200 || !strings.Contains(rolled.Body.String(), `"density":"comfortable"`) {
		t.Fatal("UI rollback")
	}
}
func TestWindowsArchiveValidation(t *testing.T) {
	for _, bad := range []string{"", "Qinglian/../escape", "Qinglian\\escape", "Qinglian/_internal/x:stream"} {
		path := filepath.Join(t.TempDir(), "test.zip")
		file, _ := os.Create(path)
		z := zip.NewWriter(file)
		exe, _ := z.Create("Qinglian/Qinglian.exe")
		exe.Write([]byte("MZfixture"))
		info, _ := z.Create("Qinglian/_internal/resources/build-info.json")
		info.Write([]byte(`{"version":"1.0.0-preview5","architecture":"x64"}`))
		if bad != "" {
			f, _ := z.Create(bad)
			f.Write([]byte("fixture"))
		}
		z.Close()
		file.Close()
		if qWinArchive(path, "1.0.0-preview5") != (bad == "") {
			t.Fatal("archive path validation", bad)
		}
		if qWinArchive(path, "1.0.0-preview6") {
			t.Fatal("wrong version accepted")
		}
	}
}
