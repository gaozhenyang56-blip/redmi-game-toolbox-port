package controller

import (
	"archive/zip"
	"crypto/sha256"
	"database/sql"
	"encoding/hex"
	"encoding/json"
	"github.com/gin-gonic/gin"
	"io"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"time"
)

const qMaxAPK = 64 << 20

type qUI struct {
	NavHeight    int  `json:"navHeight"`
	NavIcon      int  `json:"navIcon"`
	NavText      int  `json:"navText"`
	NavGap       int  `json:"navGap"`
	GlassMargin  int  `json:"glassMargin"`
	GlassEnabled bool `json:"glassEnabled"`
}

func qDefaultUI() qUI { return qUI{80, 24, 12, 2, 12, true} }
func (u qUI) valid() bool {
	return u.NavHeight >= 64 && u.NavHeight <= 96 && u.NavIcon >= 18 && u.NavIcon <= 30 && u.NavText >= 10 && u.NavText <= 16 && u.NavGap >= 0 && u.NavGap <= 10 && u.GlassMargin >= 0 && u.GlassMargin <= 16
}

type qAPK struct {
	VersionCode int64  `json:"versionCode"`
	VersionName string `json:"versionName"`
	SHA256      string `json:"sha256"`
	Size        int64  `json:"size"`
	Notes       string `json:"notes"`
}

func (p *qAPK) valid() bool {
	if p == nil {
		return true
	}
	return p.VersionCode > 0 && p.VersionCode <= 2147483647 && len(p.VersionName) > 0 && len(p.VersionName) <= 64 && len(p.Notes) <= 1000 && qDigest(p.SHA256) && p.Size > 0 && p.Size <= qMaxAPK
}
func qDigest(s string) bool {
	if len(s) != 64 || strings.ToLower(s) != s {
		return false
	}
	_, err := hex.DecodeString(s)
	return err == nil
}

type qUpdate struct {
	Schema   int   `json:"schema"`
	Revision int64 `json:"revision"`
	UI       qUI   `json:"ui"`
	APK      *qAPK `json:"apk"`
}

func (a *QinglianController) updateState() (qUpdate, error) {
	result := qUpdate{Schema: 1, UI: qDefaultUI()}
	var data []byte
	err := a.store.db.QueryRow("SELECT data FROM updates ORDER BY revision DESC LIMIT 1").Scan(&data)
	if err == sql.ErrNoRows {
		return result, nil
	}
	if err != nil {
		return result, err
	}
	err = json.Unmarshal(data, &result)
	return result, err
}
func (a *QinglianController) publishUpdate(value qUpdate) error {
	if value.Schema != 1 || !value.UI.valid() || !value.APK.valid() {
		return qUnavailable
	}
	if value.APK != nil {
		info, err := os.Stat(a.apkPath(value.APK.SHA256))
		if err != nil || info.Size() != value.APK.Size {
			return qUnavailable
		}
	}
	a.store.mu.Lock()
	defer a.store.mu.Unlock()
	tx, err := a.store.db.Begin()
	if err != nil {
		return err
	}
	defer tx.Rollback()
	var revision int64
	if err = tx.QueryRow("SELECT COALESCE(MAX(revision),0) FROM updates").Scan(&revision); err != nil {
		return err
	}
	if value.Revision != revision {
		return qUnavailable
	}
	value.Revision = revision + 1
	if value.Revision > 2147483647 {
		return qUnavailable
	}
	data, err := json.Marshal(value)
	if err != nil {
		return err
	}
	if _, err = tx.Exec("INSERT INTO updates(revision,data) VALUES (?,?)", value.Revision, data); err != nil {
		return err
	}
	if _, err = tx.Exec("DELETE FROM updates WHERE revision NOT IN (SELECT revision FROM updates ORDER BY revision DESC LIMIT 20)"); err != nil {
		return err
	}
	return tx.Commit()
}
func (a *QinglianController) updates(c *gin.Context) {
	result, err := a.updateState()
	if err != nil {
		c.JSON(503, gin.H{"error": "updates unavailable"})
		return
	}
	c.JSON(200, result)
}
func (a *QinglianController) adminUpdates(c *gin.Context) {
	if a.panelAuth(c) {
		a.updates(c)
	}
}
func (a *QinglianController) updateWriteAuth(c *gin.Context) bool {
	if !a.panelAuth(c) {
		return false
	}
	parsed, err := url.Parse(c.GetHeader("Origin"))
	if c.GetHeader("X-Requested-With") != "XMLHttpRequest" || err != nil || (parsed.Scheme != "http" && parsed.Scheme != "https") || parsed.Host != c.Request.Host {
		c.JSON(403, gin.H{"error": "same-origin request required"})
		return false
	}
	return true
}
func (a *QinglianController) saveUpdates(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 8192)
	var value qUpdate
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	if decoder.Decode(&value) != nil || decoder.Decode(new(interface{})) != io.EOF || value.Schema != 1 || !value.UI.valid() || !value.APK.valid() {
		c.JSON(400, gin.H{"error": "invalid update"})
		return
	}
	if a.publishUpdate(value) != nil {
		c.JSON(503, gin.H{"error": "publish failed"})
		return
	}
	a.updates(c)
}
func (a *QinglianController) rollbackUpdates(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	var data []byte
	if err := a.store.db.QueryRow("SELECT data FROM updates ORDER BY revision DESC LIMIT 1 OFFSET 1").Scan(&data); err != nil {
		c.JSON(409, gin.H{"error": "no previous publication"})
		return
	}
	var value qUpdate
	current, err := a.updateState()
	if err != nil {
		c.Status(503)
		return
	}
	if json.Unmarshal(data, &value) != nil {
		c.Status(503)
		return
	}
	value.Revision = current.Revision
	if a.publishUpdate(value) != nil {
		c.JSON(503, gin.H{"error": "rollback failed"})
		return
	}
	a.updates(c)
}
func (a *QinglianController) apkPath(digest string) string {
	return filepath.Join(filepath.Dir(a.cfg.StatePath), "releases", digest+".apk")
}
func (a *QinglianController) downloadAPK(c *gin.Context) {
	digest := c.Param("digest")
	if !qDigest(digest) {
		c.Status(404)
		return
	}
	// Only published files are accessible to App tokens, never staged uploads.
	rows, err := a.store.db.Query("SELECT data FROM updates ORDER BY revision DESC LIMIT 20")
	if err != nil {
		c.Status(503)
		return
	}
	found := false
	for rows.Next() {
		var data []byte
		var value qUpdate
		if rows.Scan(&data) == nil && json.Unmarshal(data, &value) == nil && value.APK != nil && value.APK.SHA256 == digest {
			found = true
			break
		}
	}
	rows.Close()
	if !found {
		c.Status(404)
		return
	}
	info, err := os.Stat(a.apkPath(digest))
	if err != nil || !info.Mode().IsRegular() {
		c.Status(404)
		return
	}
	c.Header("Content-Type", "application/vnd.android.package-archive")
	c.Header("Content-Disposition", `attachment; filename="Qinglian.apk"`)
	c.File(a.apkPath(digest))
}
func (a *QinglianController) uploadAPK(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, qMaxAPK+65536)
	if c.Request.ParseMultipartForm(1<<20) != nil {
		c.JSON(400, gin.H{"error": "APK too large or invalid form"})
		return
	}
	defer c.Request.MultipartForm.RemoveAll()
	version, err := strconv.ParseInt(c.PostForm("versionCode"), 10, 64)
	if err != nil {
		c.Status(400)
		return
	}
	descriptor := &qAPK{VersionCode: version, VersionName: c.PostForm("versionName"), Notes: c.PostForm("notes")}
	file, _, err := c.Request.FormFile("apk")
	if err != nil {
		c.Status(400)
		return
	}
	defer file.Close()
	directory := filepath.Dir(a.apkPath("staging"))
	if os.MkdirAll(directory, 0700) != nil {
		c.Status(503)
		return
	}
	temp, err := os.CreateTemp(directory, "upload-*")
	if err != nil {
		c.Status(503)
		return
	}
	defer os.Remove(temp.Name())
	hash := sha256.New()
	size, err := io.Copy(io.MultiWriter(temp, hash), io.LimitReader(file, qMaxAPK+1))
	syncErr := temp.Sync()
	temp.Close()
	if err != nil || syncErr != nil || size == 0 || size > qMaxAPK {
		c.Status(400)
		return
	}
	descriptor.Size = size
	descriptor.SHA256 = hex.EncodeToString(hash.Sum(nil))
	if !descriptor.valid() {
		c.Status(400)
		return
	}
	archive, err := zip.OpenReader(temp.Name())
	if err != nil {
		c.JSON(400, gin.H{"error": "not an APK ZIP"})
		return
	}
	manifest := false
	for _, entry := range archive.File {
		if entry.Name == "AndroidManifest.xml" {
			manifest = true
		}
	}
	archive.Close()
	if !manifest {
		c.Status(400)
		return
	}
	// Publication is serialized with UI updates. App separately verifies Android
	// package name, higher version, exact descriptor and original signing cert.
	if os.Rename(temp.Name(), a.apkPath(descriptor.SHA256)) != nil {
		c.Status(503)
		return
	}
	current, err := a.updateState()
	if err != nil {
		c.Status(503)
		return
	}
	current.APK = descriptor
	if a.publishUpdate(current) != nil {
		c.Status(503)
		return
	}
	files, _ := os.ReadDir(directory)
	type oldFile struct {
		name string
		time time.Time
	}
	var old []oldFile
	for _, entry := range files {
		if strings.HasSuffix(entry.Name(), ".apk") {
			if info, e := entry.Info(); e == nil {
				old = append(old, oldFile{entry.Name(), info.ModTime()})
			}
		}
	}
	sort.Slice(old, func(i, j int) bool { return old[i].time.After(old[j].time) })
	for i := 3; i < len(old); i++ {
		if old[i].name != descriptor.SHA256+".apk" {
			os.Remove(filepath.Join(directory, old[i].name))
		}
	}
	a.updates(c)
}
