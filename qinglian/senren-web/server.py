#!/usr/bin/env python3
import argparse,json,mimetypes,re,ssl,os,base64,hmac
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from pathlib import Path
from urllib.parse import unquote,urlsplit,quote
from xml.sax.saxutils import escape
ROOT=Path(__file__).resolve().parent
class Handler(BaseHTTPRequestHandler):
 def log_message(self,*args):pass
 def authorized(self):
  expected=self.server.preview_auth
  if expected is None:return True
  if hmac.compare_digest(self.headers.get('Authorization','').encode(),expected.encode()):return True
  self.send_response(401);self.common_headers();self.send_header('WWW-Authenticate','Basic realm="Senren Private Preview", charset="UTF-8"');self.send_header('Content-Length','0');self.end_headers();return False
 def do_HEAD(self):
  if self.authorized():self.handle_file(False)
 def do_GET(self):
  if self.authorized():self.handle_file(True)
 def handle_file(self,body):
  path=unquote(urlsplit(self.path).path)
  if path=='/favicon.ico':return self.send_data(204,b'','image/x-icon',body)
  if path=='/api/status':
   game=ROOT/'game-manifest.json';info=ROOT/'game-info.json'
   data={'ready':game.exists(),'engineReady':all((ROOT/'engine'/name).exists() for name in ['index.html','index.js','index.wasm','assets.zip'])}
   if info.exists():data.update(json.loads(info.read_text()))
   return self.send_data(200,json.dumps(data,ensure_ascii=False).encode(),'application/json',body)
  if path=='/':target=ROOT/'web/index.html'
  elif path=='/play':target=ROOT/'web/play.html'
  elif path in ['/app.js','/style.css','/play.js']:target=ROOT/'web'/path[1:]
  elif path=='/game.zip':target=ROOT/'game.zip'
  elif path.startswith('/game/'):
   manifest=ROOT/'game-manifest.json'
   if not manifest.exists():return self.send_data(404,b'Not ready','text/plain',body)
   config=json.loads(manifest.read_text());relative=path[len('/game/'):]
   if relative not in config['files']:return self.send_data(404,b'Not found','text/plain',body)
   base=Path(config['root']).resolve();target=Path(config.get('overrides',{}).get(relative,str(base/relative))).resolve()
   if relative not in config.get('overrides',{}) and not target.is_relative_to(base):return self.send_data(404,b'Not found','text/plain',body)
  elif path.startswith('/engine/'):
   target=(ROOT/path.lstrip('/')).resolve()
   if not target.is_relative_to(ROOT/'engine'):return self.send_data(404,b'Not found','text/plain',body)
  else:return self.send_data(404,b'Not found','text/plain',body)
  if not target.is_file():return self.send_data(404,b'Not found','text/plain',body)
  size=target.stat().st_size;etag='"'+str(size)+'-'+str(target.stat().st_mtime_ns)+'"'
  if self.headers.get('If-None-Match')==etag:
   self.send_response(304);self.common_headers();self.send_header('ETag',etag);self.end_headers();return
  start,end,status=0,size-1,200
  value=self.headers.get('Range')
  if value:
   match=re.fullmatch(r'bytes=(\d*)-(\d*)',value)
   if not match or not any(match.groups()):return self.invalid_range(size)
   try:
    if match[1]:start=int(match[1]);end=min(int(match[2]),size-1) if match[2] else size-1
    else:start=max(0,size-int(match[2]));end=size-1
   except ValueError:return self.invalid_range(size)
   if start>end or start>=size:return self.invalid_range(size)
   status=206
  self.send_response(status);self.common_headers()
  kind='application/wasm' if target.suffix=='.wasm' else mimetypes.guess_type(str(target))[0] or 'application/octet-stream'
  self.send_header('Content-Type',kind);self.send_header('Content-Length',str(end-start+1));self.send_header('Accept-Ranges','bytes');self.send_header('ETag',etag)
  self.send_header('Cache-Control','no-cache')
  if status==206:self.send_header('Content-Range',f'bytes {start}-{end}/{size}')
  self.end_headers()
  if body:
   try:
    with target.open('rb') as source:
     source.seek(start);remaining=end-start+1
     while remaining:
      data=source.read(min(1024*1024,remaining))
      if not data:break
      self.wfile.write(data);remaining-=len(data)
   except (BrokenPipeError,ConnectionResetError):pass
 def do_OPTIONS(self):
  self.send_response(200);self.common_headers();self.send_header('Allow','GET, HEAD, OPTIONS, PROPFIND');self.send_header('DAV','1');self.send_header('Content-Length','0');self.end_headers()
 def do_PROPFIND(self):
  if not self.authorized():return
  path=unquote(urlsplit(self.path).path)
  manifest=ROOT/'game-manifest.json'
  if not path.startswith('/game/') or not manifest.exists():return self.send_data(404,b'Not found','text/plain',True)
  config=json.loads(manifest.read_text());prefix=path[len('/game/'):].rstrip('/')
  names=set(config['files']);directories={''}
  for name in names:
   directories.update(str(parent) for parent in Path(name).parents if str(parent)!='.')
  if prefix not in directories and prefix not in names:return self.send_data(404,b'Not found','text/plain',True)
  entries=[prefix]
  if prefix in directories and self.headers.get('Depth','1')!='0':
   entries.extend(sorted(name for name in names|directories if name!=prefix and ('' if str(Path(name).parent)=='.' else str(Path(name).parent))==prefix))
  parts=['<?xml version="1.0" encoding="UTF-8"?><d:multistatus xmlns:d="DAV:">']
  for name in entries:
   folder=name in directories;href='/game/'+quote(name)+(('/' if name else '') if folder else '')
   length=0 if folder else Path(config.get('overrides',{}).get(name,str(Path(config['root'])/name))).stat().st_size
   resource='<d:collection/>' if folder else ''
   parts.append('<d:response><d:href>'+escape(href)+'</d:href><d:propstat><d:prop><d:displayname>'+escape(Path(name).name or 'Game')+'</d:displayname><d:resourcetype>'+resource+'</d:resourcetype><d:getcontentlength>'+str(length)+'</d:getcontentlength><d:getetag>"'+str(length)+'"</d:getetag></d:prop><d:status>HTTP/1.1 200 OK</d:status></d:propstat></d:response>')
  parts.append('</d:multistatus>')
  self.send_data(207,''.join(parts).encode(),'application/xml; charset=utf-8',True)
 def invalid_range(self,size):
  self.send_response(416);self.common_headers();self.send_header('Content-Range',f'bytes */{size}');self.send_header('Content-Length','0');self.end_headers()
 def common_headers(self):
  self.send_header('Cross-Origin-Opener-Policy','same-origin');self.send_header('Cross-Origin-Embedder-Policy','require-corp');self.send_header('Cross-Origin-Resource-Policy','same-origin');self.send_header('X-Content-Type-Options','nosniff');self.send_header('Referrer-Policy','no-referrer')
 def send_data(self,status,data,kind,body):
  self.send_response(status);self.common_headers();self.send_header('Content-Type',kind);self.send_header('Content-Length',str(len(data)));self.send_header('Cache-Control','no-store');self.end_headers()
  if body:self.wfile.write(data)
def main():
 parser=argparse.ArgumentParser(description='千恋万花私有网页运行器')
 parser.add_argument('--host',default='127.0.0.1');parser.add_argument('--port',type=int,default=8888);parser.add_argument('--cert');parser.add_argument('--key');args=parser.parse_args()
 if bool(args.cert)!=bool(args.key):parser.error('HTTPS需要同时指定证书和私钥')
 server=ThreadingHTTPServer((args.host,args.port),Handler)
 user=os.environ.get('SENREN_PREVIEW_USER');password=os.environ.get('SENREN_PREVIEW_PASSWORD')
 if bool(user)!=bool(password):parser.error('预览访问凭据配置不完整')
 server.preview_auth='Basic '+base64.b64encode((user+':'+password).encode()).decode() if user else None
 if args.cert:
  context=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER);context.minimum_version=ssl.TLSVersion.TLSv1_2;context.load_cert_chain(args.cert,args.key);server.socket=context.wrap_socket(server.socket,server_side=True)
 print(f'运行器已启动：{"https" if args.cert else "http"}://{args.host}:{args.port}',flush=True)
 try:server.serve_forever()
 except KeyboardInterrupt:pass
 finally:server.server_close()
if __name__=='__main__':main()
