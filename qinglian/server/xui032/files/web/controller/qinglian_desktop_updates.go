package controller

import (
	"archive/zip"
	"crypto/sha256"
	"database/sql"
	"encoding/hex"
	"encoding/json"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"sync"
	"time"

	"github.com/gin-gonic/gin"
)

const qWinMax = 256 << 20

var qWinVersion = regexp.MustCompile(`^1\.0\.0-preview([1-9][0-9]{0,5})$`)

type qWinUI struct {
	Accent   string `json:"accent"`
	Density  string `json:"density"`
	Notice   string `json:"notice"`
	Material bool   `json:"material"`
}

func (u qWinUI) valid() bool {
	return (u.Accent == "blue" || u.Accent == "teal" || u.Accent == "purple") && (u.Density == "comfortable" || u.Density == "compact") && len([]rune(u.Notice)) <= 300
}

type qWinPackage struct {
	Version string `json:"version"`
	SHA256  string `json:"sha256"`
	Size    int64  `json:"size"`
}

func (p *qWinPackage) valid() bool {
	return p == nil || qWinVersion.MatchString(p.Version) && qDigest(p.SHA256) && p.Size > 0 && p.Size <= qWinMax
}

type qWinUpdate struct {
	Schema   int          `json:"schema"`
	Revision int64        `json:"revision"`
	UI       qWinUI       `json:"ui"`
	Package  *qWinPackage `json:"package"`
}

func (a *QinglianController) winState() (qWinUpdate, error) {
	result := qWinUpdate{Schema: 1, UI: qWinUI{"blue", "comfortable", "", true}}
	var data []byte
	err := a.store.db.QueryRow("SELECT data FROM windows_updates ORDER BY revision DESC LIMIT 1").Scan(&data)
	if err == sql.ErrNoRows {
		return result, nil
	}
	if err != nil {
		return result, err
	}
	err = json.Unmarshal(data, &result)
	return result, err
}
func (a *QinglianController) winPath(hash string) string {
	return filepath.Join(filepath.Dir(a.cfg.StatePath), "windows-releases", hash+".zip")
}
func (a *QinglianController) winPublish(value qWinUpdate) error {
	if value.Schema != 1 || !value.UI.valid() || !value.Package.valid() {
		return qUnavailable
	}
	if value.Package != nil {
		info, e := os.Stat(a.winPath(value.Package.SHA256))
		if e != nil || !info.Mode().IsRegular() || info.Size() != value.Package.Size {
			return qUnavailable
		}
	}
	a.store.mu.Lock()
	defer a.store.mu.Unlock()
	tx, e := a.store.db.Begin()
	if e != nil {
		return e
	}
	defer tx.Rollback()
	var revision int64
	if e = tx.QueryRow("SELECT COALESCE(MAX(revision),0) FROM windows_updates").Scan(&revision); e != nil {
		return e
	}
	if revision != value.Revision || revision >= 2147483647 {
		return qUnavailable
	}
	value.Revision++
	data, e := json.Marshal(value)
	if e != nil {
		return e
	}
	if _, e = tx.Exec("INSERT INTO windows_updates(revision,data) VALUES(?,?)", value.Revision, data); e != nil {
		return e
	}
	if _, e = tx.Exec("DELETE FROM windows_updates WHERE revision NOT IN (SELECT revision FROM windows_updates ORDER BY revision DESC LIMIT 20)"); e != nil {
		return e
	}
	return tx.Commit()
}
func (a *QinglianController) windowsUpdates(c *gin.Context) {
	value, e := a.winState()
	if e != nil {
		c.Status(503)
		return
	}
	c.Header("Cache-Control", "no-store")
	c.JSON(200, value)
}
func (a *QinglianController) adminWindows(c *gin.Context) {
	if a.panelAuth(c) {
		a.windowsUpdates(c)
	}
}
func (a *QinglianController) saveWindows(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 8192)
	var value qWinUpdate
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	if decoder.Decode(&value) != nil || decoder.Decode(new(interface{})) != io.EOF || !value.UI.valid() || !value.Package.valid() || value.Schema != 1 {
		c.Status(400)
		return
	}
	// This form changes data-only UI settings. Packages originate exclusively from
	// the fixed official release importer, never caller-supplied executable URLs.
	current, e := a.winState()
	if e != nil {
		c.Status(503)
		return
	}
	x, _ := json.Marshal(current.Package)
	y, _ := json.Marshal(value.Package)
	if string(x) != string(y) {
		c.Status(400)
		return
	}
	if a.winPublish(value) != nil {
		c.Status(409)
		return
	}
	a.windowsUpdates(c)
}
func (a *QinglianController) rollbackWindows(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	var data []byte
	if a.store.db.QueryRow("SELECT data FROM windows_updates ORDER BY revision DESC LIMIT 1 OFFSET 1").Scan(&data) != nil {
		c.Status(409)
		return
	}
	var value qWinUpdate
	current, e := a.winState()
	if e != nil || json.Unmarshal(data, &value) != nil {
		c.Status(503)
		return
	}
	// Roll back UI without asking clients to downgrade executable code.
	value.Revision = current.Revision
	value.Package = current.Package
	if a.winPublish(value) != nil {
		c.Status(409)
		return
	}
	a.windowsUpdates(c)
}
func (a *QinglianController) downloadWindows(c *gin.Context) {
	hash := c.Param("digest")
	if !qDigest(hash) {
		c.Status(404)
		return
	}
	rows, e := a.store.db.Query("SELECT data FROM windows_updates ORDER BY revision DESC LIMIT 20")
	if e != nil {
		c.Status(503)
		return
	}
	found := false
	for rows.Next() {
		var data []byte
		var v qWinUpdate
		if rows.Scan(&data) == nil && json.Unmarshal(data, &v) == nil && v.Package != nil && v.Package.SHA256 == hash {
			found = true
			break
		}
	}
	rows.Close()
	if !found {
		c.Status(404)
		return
	}
	info, e := os.Stat(a.winPath(hash))
	if e != nil || !info.Mode().IsRegular() {
		c.Status(404)
		return
	}
	c.Header("Content-Type", "application/zip")
	c.Header("Content-Disposition", `attachment; filename="Qinglian-windows.zip"`)
	c.File(a.winPath(hash))
}

// Only public assets in the existing fixed repository are fetched. No API/App
// credentials are attached to these requests, including redirects.
func qWinFetch(url string, output io.Writer, limit int64) error {
	client := &http.Client{Timeout: 120 * time.Second, CheckRedirect: func(req *http.Request, via []*http.Request) error {
		if len(via) > 4 || req.URL.Scheme != "https" || req.URL.User != nil || req.URL.Port() != "" || (req.URL.Hostname() != "github.com" && req.URL.Hostname() != "release-assets.githubusercontent.com" && req.URL.Hostname() != "objects.githubusercontent.com") {
			return qUnavailable
		}
		return nil
	}}
	response, e := client.Get(url)
	if e != nil {
		return e
	}
	defer response.Body.Close()
	if response.StatusCode != 200 || response.ContentLength > limit {
		return qUnavailable
	}
	n, e := io.Copy(output, io.LimitReader(response.Body, limit+1))
	if e != nil || n > limit {
		return qUnavailable
	}
	return nil
}
func qWinArchive(path, version string) bool {
	archive, e := zip.OpenReader(path)
	if e != nil {
		return false
	}
	defer archive.Close()
	if len(archive.File) > 6000 {
		return false
	}
	var size uint64
	exe, manifest := false, false
	for _, f := range archive.File {
		name := f.Name
		if !strings.HasPrefix(name, "Qinglian/") || strings.Contains(name, "\\") || strings.Contains(name, ":") || strings.Contains(name, "\x00") || filepath.ToSlash(filepath.Clean(name)) != strings.TrimSuffix(name, "/") || f.Mode()&os.ModeSymlink != 0 {
			return false
		}
		size += f.UncompressedSize64
		if size > 1<<30 {
			return false
		}
		if name == "Qinglian/Qinglian.exe" {
			r, e := f.Open()
			if e != nil {
				return false
			}
			b := make([]byte, 2)
			_, e = io.ReadFull(r, b)
			r.Close()
			exe = e == nil && string(b) == "MZ"
		}
		if name == "Qinglian/_internal/resources/build-info.json" {
			r, e := f.Open()
			if e != nil {
				return false
			}
			var v struct {
				Version      string `json:"version"`
				Architecture string `json:"architecture"`
			}
			e = json.NewDecoder(io.LimitReader(r, 65536)).Decode(&v)
			r.Close()
			manifest = e == nil && v.Version == version && v.Architecture == "x64"
		}
	}
	return exe && manifest
}
func (a *QinglianController) importWindows(c *gin.Context) {
	if !a.updateWriteAuth(c) {
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 1024)
	var input struct {
		Version string `json:"version"`
	}
	decoder := json.NewDecoder(c.Request.Body)
	decoder.DisallowUnknownFields()
	if decoder.Decode(&input) != nil || decoder.Decode(new(interface{})) != io.EOF || !qWinVersion.MatchString(input.Version) {
		c.Status(400)
		return
	}
	// Serialize this expensive import without holding the account/database mutex.
	if !qWinImport.TryLock() {
		c.Status(429)
		return
	}
	defer qWinImport.Unlock()
	filename := "Qinglian-" + input.Version + "-windows-x64-portable.zip"
	base := "https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/releases/download/qinglian-windows-v" + input.Version + "/"
	var sums strings.Builder
	if qWinFetch(base+"SHA256SUMS.txt", &sums, 8192) != nil {
		c.Status(502)
		return
	}
	hash := ""
	for _, line := range strings.Split(sums.String(), "\n") {
		fields := strings.Fields(line)
		if len(fields) == 2 && fields[1] == filename && qDigest(fields[0]) {
			hash = fields[0]
		}
	}
	if hash == "" {
		c.Status(400)
		return
	}
	directory := filepath.Dir(a.winPath(hash))
	if os.MkdirAll(directory, 0700) != nil {
		c.Status(503)
		return
	}
	temp, e := os.CreateTemp(directory, "download-*")
	if e != nil {
		c.Status(503)
		return
	}
	defer os.Remove(temp.Name())
	digest := sha256.New()
	e = qWinFetch(base+filename, io.MultiWriter(temp, digest), qWinMax)
	syncErr := temp.Sync()
	info, statErr := temp.Stat()
	temp.Close()
	if e != nil || syncErr != nil || statErr != nil {
		c.Status(502)
		return
	}
	if hex.EncodeToString(digest.Sum(nil)) != hash || !qWinArchive(temp.Name(), input.Version) {
		c.Status(400)
		return
	}
	if os.Rename(temp.Name(), a.winPath(hash)) != nil {
		c.Status(503)
		return
	}
	current, e := a.winState()
	if e != nil {
		c.Status(503)
		return
	}
	current.Package = &qWinPackage{input.Version, hash, info.Size()}
	if a.winPublish(current) != nil {
		c.Status(409)
		return
	}
	a.windowsUpdates(c)
}

var qWinImport sync.Mutex
