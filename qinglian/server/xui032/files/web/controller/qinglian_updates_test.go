package controller

import (
	"archive/zip"
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	"io"
	"mime/multipart"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"x-ui/database/model"
	"x-ui/web/session"
)

func TestQUpdatePublishingCASAndRollbackAreAuthenticated(t *testing.T) {
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
	engine.GET("/other", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 8}); c.Status(200) })
	controller := NewQinglianController(engine.Group("/"))
	defer controller.Close()
	call := func(method, path string, body []byte, cookies []*http.Cookie, origin bool) *httptest.ResponseRecorder {
		req := httptest.NewRequest(method, path, bytes.NewReader(body))
		req.Header.Set("Authorization", "Bearer "+token)
		req.Header.Set("X-Requested-With", "XMLHttpRequest")
		if origin {
			req.Header.Set("Origin", "http://example.com")
		}
		for _, cookie := range cookies {
			req.AddCookie(cookie)
		}
		r := httptest.NewRecorder()
		engine.ServeHTTP(r, req)
		return r
	}
	cookies := call("GET", "/login", nil, nil, false).Result().Cookies()
	other := call("GET", "/other", nil, nil, false).Result().Cookies()
	initial := call("GET", "/api/v1/updates", nil, nil, false)
	var value qUpdate
	if initial.Code != 200 || json.Unmarshal(initial.Body.Bytes(), &value) != nil || value.Revision != 0 {
		t.Fatal("default manifest")
	}
	value.UI.NavGap = 6
	body, _ := json.Marshal(value)
	if call("POST", "/xui/qinglian/updates", body, nil, true).Code != 401 {
		t.Fatal("bearer published")
	}
	if call("POST", "/xui/qinglian/updates", body, other, true).Code != 403 {
		t.Fatal("other owner published")
	}
	if call("POST", "/xui/qinglian/updates", body, cookies, false).Code != 403 {
		t.Fatal("origin not required")
	}
	if r := call("POST", "/xui/qinglian/updates", body, cookies, true); r.Code != 200 {
		t.Fatal(r.Code, r.Body.String())
	}
	if call("POST", "/xui/qinglian/updates", body, cookies, true).Code == 200 {
		t.Fatal("stale publication overwrote current")
	}
	result := call("GET", "/api/v1/updates", nil, nil, false)
	json.Unmarshal(result.Body.Bytes(), &value)
	if value.Revision != 1 || value.UI.NavGap != 6 {
		t.Fatal("App did not receive patch")
	}
	value.UI.NavHeight = 1000
	body, _ = json.Marshal(value)
	if call("POST", "/xui/qinglian/updates", body, cookies, true).Code != 400 {
		t.Fatal("bad bounds")
	}
	if call("POST", "/xui/qinglian/updates", []byte(`{"schema":1,"revision":1,"ui":{"script":"evil"}}`), cookies, true).Code != 400 {
		t.Fatal("code fields accepted")
	}
	r := call("POST", "/xui/qinglian/updates/rollback", nil, cookies, true)
	if r.Code != 200 {
		t.Fatal(r.Code)
	}
	json.Unmarshal(r.Body.Bytes(), &value)
	if value.Revision != 2 || value.UI.NavGap != 2 {
		t.Fatal("rollback did not publish new revision")
	}
}
func TestQAPKUploadAndAuthenticatedDigestDownload(t *testing.T) {
	root := t.TempDir()
	store, err := qOpen(filepath.Join(root, "devices.db"))
	if err != nil {
		t.Fatal(err)
	}
	defer store.db.Close()
	a := &QinglianController{store: store, cfg: qConfig{OwnerID: 7, ClientToken: strings.Repeat("k", 40), StatePath: filepath.Join(root, "devices.db")}}
	engine := gin.New()
	engine.Use(sessions.Sessions("session", cookie.NewStore([]byte(strings.Repeat("s", 32)))))
	engine.GET("/login", func(c *gin.Context) { session.SetLoginUser(c, &model.User{Id: 7}); c.Status(200) })
	engine.POST("/upload", a.uploadAPK)
	engine.GET("/api/apk/:digest", a.client, a.downloadAPK)
	login := httptest.NewRecorder()
	engine.ServeHTTP(login, httptest.NewRequest("GET", "/login", nil))
	var apk bytes.Buffer
	archive := zip.NewWriter(&apk)
	entry, _ := archive.Create("AndroidManifest.xml")
	entry.Write([]byte("test-only manifest"))
	archive.Close()
	var form bytes.Buffer
	writer := multipart.NewWriter(&form)
	file, _ := writer.CreateFormFile("apk", "fixture.apk")
	file.Write(apk.Bytes())
	writer.WriteField("versionCode", "8")
	writer.WriteField("versionName", "fixture")
	writer.WriteField("notes", "test")
	writer.Close()
	request := httptest.NewRequest("POST", "/upload", &form)
	request.Header.Set("Content-Type", writer.FormDataContentType())
	request.Header.Set("Origin", "http://example.com")
	request.Header.Set("X-Requested-With", "XMLHttpRequest")
	for _, c := range login.Result().Cookies() {
		request.AddCookie(c)
	}
	uploaded := httptest.NewRecorder()
	engine.ServeHTTP(uploaded, request)
	if uploaded.Code != 200 {
		t.Fatal(uploaded.Code, uploaded.Body.String())
	}
	hash := sha256.Sum256(apk.Bytes())
	digest := hex.EncodeToString(hash[:])
	var update qUpdate
	json.Unmarshal(uploaded.Body.Bytes(), &update)
	if update.APK == nil || update.APK.SHA256 != digest || update.Revision != 1 {
		t.Fatal("metadata mismatch")
	}
	for _, authorized := range []bool{false, true} {
		req := httptest.NewRequest("GET", "/api/apk/"+digest, nil)
		if authorized {
			req.Header.Set("Authorization", "Bearer "+a.cfg.ClientToken)
		}
		r := httptest.NewRecorder()
		engine.ServeHTTP(r, req)
		if !authorized && r.Code != 401 {
			t.Fatal("anonymous download")
		}
		if authorized {
			data, _ := io.ReadAll(r.Result().Body)
			if r.Code != 200 || !bytes.Equal(data, apk.Bytes()) {
				t.Fatal("download mismatch")
			}
		}
	}
}
