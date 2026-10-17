package web

import (
	"html/template"
	"testing"
)

func TestQinglianEmbeddedTemplate(t *testing.T) {
	s := NewServer()
	parsed, err := s.getHtmlTemplate(template.FuncMap{"i18n": func(key string, args ...string) string { return key }})
	if err != nil {
		t.Fatal(err)
	}
	if parsed.Lookup("qinglian.html") == nil {
		t.Fatal("device page not embedded")
	}
}
