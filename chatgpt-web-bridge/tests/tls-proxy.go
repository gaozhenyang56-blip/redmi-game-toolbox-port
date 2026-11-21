package main

import (
	"log"
	"net/http"
	"net/http/httputil"
	"net/url"
	"os"
	"time"
)

func main() {
	if len(os.Args) != 5 {
		log.Fatal("usage: tls-proxy address target cert key")
	}
	target, err := url.Parse(os.Args[2])
	if err != nil {
		log.Fatal(err)
	}
	server := http.Server{Addr: os.Args[1], Handler: httputil.NewSingleHostReverseProxy(target), ReadHeaderTimeout: 5 * time.Second}
	if err := server.ListenAndServeTLS(os.Args[3], os.Args[4]); err != nil {
		log.Fatal(err)
	}
}
