from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import sys


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == "/fixture":
            body = Path(__file__).with_name("fixture.html").read_bytes()
            mime = "text/html; charset=utf-8"
        elif self.path == "/fixture-download":
            body = b"remote browser download"
            mime = "application/octet-stream"
            self.send_response(200)
            self.send_header("Content-Disposition", 'attachment; filename="remote-fixture.txt"')
            self.send_header("Content-Type", mime)
            self.send_header("Content-Length", str(len(body)))
            self.end_headers()
            self.wfile.write(body)
            return
        else:
            self.send_error(404)
            return
        self.send_response(200)
        self.send_header("Content-Type", mime)
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)


ThreadingHTTPServer(("127.0.0.1", int(sys.argv[1])), Handler).serve_forever()
