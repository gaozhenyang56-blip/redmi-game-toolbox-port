"""Fixed loopback-only browser PAC. No arbitrary rules, files or request logs."""
import http.server
import secrets
import threading

PROTECTED=('openai.com','chatgpt.com','oaistatic.com','oaiusercontent.com','auth0.com')
def script():
    import json
    return '''function FindProxyForURL(url, host) {
 host = host.toLowerCase(); if (host.charAt(host.length-1)==='.') host=host.substring(0,host.length-1);
 var domains='''+json.dumps(PROTECTED)+''';
 for(var i=0;i<domains.length;i++) {
  if(host===domains[i] || dnsDomainIs(host,'.'+domains[i])) return 'PROXY 127.0.0.1:10809';
 }
 return 'DIRECT';
}'''
class BrowserPAC:
    def __init__(self):
        self.token=secrets.token_hex(16);token=self.token;self.loaded=threading.Event();loaded=self.loaded
        class Handler(http.server.BaseHTTPRequestHandler):
            def log_message(self,*args):pass
            def do_GET(self):
                if self.path!='/'+token+'/browser.pac':self.send_error(404);return
                body=script().encode('ascii');self.send_response(200);self.send_header('Content-Type','application/x-ns-proxy-autoconfig');self.send_header('Cache-Control','no-store');self.send_header('Content-Length',str(len(body)));self.end_headers();self.wfile.write(body);loaded.set()
        self.server=http.server.ThreadingHTTPServer(('127.0.0.1',0),Handler);self.server.daemon_threads=True
        self.port=self.server.server_port;self.url=f'http://127.0.0.1:{self.port}/{self.token}/browser.pac'
        threading.Thread(target=self.server.serve_forever,daemon=True).start()
    def close(self):self.server.shutdown();self.server.server_close()
