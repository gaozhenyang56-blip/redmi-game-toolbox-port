#!/usr/bin/env python3
import argparse,json,mimetypes,re,ssl,os,base64,hmac,secrets,io
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from pathlib import Path
from urllib.parse import unquote,urlsplit,quote,parse_qs
from file_manager import Files,FileError
from xml.sax.saxutils import escape
ROOT=Path(__file__).resolve().parent
class Handler(BaseHTTPRequestHandler):
 protocol_version='HTTP/1.1'
 def setup(self):
  super().setup();self.connection.settimeout(30)
 def log_message(self,*args):pass
 def authorized(self):
  expected=self.server.preview_auth
  if expected is None:return True
  if hmac.compare_digest(self.headers.get('Authorization','').encode(),expected.encode()):return True
  self.close_connection=True
  self.send_response(401);self.common_headers();self.send_header('WWW-Authenticate','Basic realm="Senren Private Preview", charset="UTF-8"');self.send_header('Content-Length','0');self.end_headers();return False
 def do_HEAD(self):
  if self.authorized():self.handle_file(False)
 def do_GET(self):
  if self.authorized():self.handle_file(True)
 def config(self):
  if self.server.files:return self.server.files.config()
  p=ROOT/'game-manifest.json'
  return json.loads(p.read_text()) if p.exists() else None
 def admin_api(self,body):
  manager=self.server.files
  if manager is None:return self.send_data(404,b'Not enabled','text/plain',body)
  path=urlsplit(self.path).path;query=parse_qs(urlsplit(self.path).query);name=query.get('path',[''])[0]
  try:
   if path=='/api/admin/files':
    data=manager.listing();data['token']=self.server.admin_token
    return self.send_data(200,json.dumps(data,ensure_ascii=False).encode(),'application/json',body)
   if path in ('/api/admin/text','/api/admin/download'):
    manager.name(name);target=manager.target(name)
    if target is None:raise FileError(404,'文件不存在')
    if path.endswith('/text'):
     if target.suffix.lower() not in manager.TEXT or target.stat().st_size>2*1024**2:raise FileError(400,'仅能编辑2 MiB以内的文本文件')
     raw=target.read_bytes();encoding=query.get('encoding',['auto'])[0]
     if encoding=='auto':encoding='utf-16' if raw.startswith((b'\xff\xfe',b'\xfe\xff')) else 'utf-8-sig' if raw.startswith(b'\xef\xbb\xbf') else 'utf-8'
     if encoding not in ('utf-8','utf-8-sig','utf-16','gb18030'):raise FileError(400,'不支持此编码')
     try:text=raw.decode(encoding)
     except UnicodeError:raise FileError(400,'不能按此编码读取，请选择其他编码；编译脚本不支持文本编辑')
     data={'text':text,'encoding':encoding,'version':manager.version(name)}
     return self.send_data(200,json.dumps(data,ensure_ascii=False).encode(),'application/json',body)
    self.send_response(200);self.common_headers();self.send_header('Content-Type','application/octet-stream');self.send_header('Content-Disposition',"attachment; filename*=UTF-8''"+quote(Path(name).name,safe=''));self.send_header('Content-Length',str(target.stat().st_size));self.send_header('Cache-Control','no-store');self.end_headers()
    if body:
     with target.open('rb') as stream:
      while chunk:=stream.read(1024**2):self.wfile.write(chunk)
    return
   raise FileError(404,'接口不存在')
  except FileError as error:return self.admin_error(error)
 def admin_error(self,error):
  self.close_connection=True
  return self.send_data(error.status,json.dumps({'error':str(error)},ensure_ascii=False).encode(),'application/json',True)
 def do_PUT(self):self.mutate_admin()
 def do_POST(self):self.mutate_admin()
 def mutate_admin(self):
  if not self.authorized():return
  try:
   if not self.server.files:raise FileError(404,'未启用文件后台')
   if self.headers.get('Sec-Fetch-Site')=='cross-site' or not hmac.compare_digest(self.headers.get('X-Admin-Token',''),self.server.admin_token):raise FileError(403,'验证已失效，请刷新后台')
   if self.headers.get('Transfer-Encoding'):raise FileError(400,'不支持此传输格式')
   try:length=int(self.headers.get('Content-Length','-1'))
   except ValueError:raise FileError(400,'内容长度无效')
   if length<0:raise FileError(411,'需要内容长度')
   manager=self.server.files;path=urlsplit(self.path).path
   self.connection.settimeout(180)
   if self.command=='PUT' and path=='/api/admin/archive':
    name=parse_qs(urlsplit(self.path).query).get('filename',[''])[0]
    preview=manager.preview_archive(name,self.rfile,length)
    return self.send_data(200,json.dumps(preview,ensure_ascii=False).encode(),'application/json',True)
   elif self.command=='POST' and path in ('/api/admin/archive-deploy','/api/admin/archive-cancel'):
    if length>1024:raise FileError(413,'请求过大')
    try:data=json.loads(self.rfile.read(length))
    except (ValueError,UnicodeError):raise FileError(400,'请求格式无效')
    if not isinstance(data,dict):raise FileError(400,'请求格式无效')
    if path.endswith('-deploy'):manager.deploy_archive(data.get('id'))
    else:manager.cancel_archive(data.get('id'))
   elif self.command=='PUT' and path=='/api/admin/upload':
    name=parse_qs(urlsplit(self.path).query).get('path',[''])[0]
    manager.upload(name,self.rfile,length,self.headers.get('X-File-Version'))
   elif self.command=='POST' and path in ('/api/admin/edit','/api/admin/delete','/api/admin/rename','/api/admin/reset','/api/admin/restore'):
    if length>3*1024**2:raise FileError(413,'请求过大')
    try:data=json.loads(self.rfile.read(length))
    except (ValueError,UnicodeError):raise FileError(400,'请求格式无效')
    if not isinstance(data,dict):raise FileError(400,'请求格式无效')
    name=manager.name(data.get('path'));version=data.get('version');action=path.rsplit('/',1)[1]
    if action=='edit':
     text=data.get('text');encoding=data.get('encoding')
     if Path(name).suffix.lower() not in manager.TEXT or not isinstance(text,str) or encoding not in ('utf-8','utf-8-sig','utf-16','gb18030'):raise FileError(400,'文本或编码无效')
     try:raw=text.encode(encoding)
     except UnicodeError:raise FileError(400,'此编码不能保存部分字符')
     if len(raw)>2*1024**2:raise FileError(413,'文本最大2 MiB')
     manager.upload(name,io.BytesIO(raw),len(raw),version)
    elif action=='delete':manager.delete(name,version)
    elif action=='reset':manager.reset(name,version)
    elif action=='rename':manager.rename(name,data.get('destination'),version)
    else:manager.restore(data.get('id'),name,version)
   else:raise FileError(404,'接口不存在')
   self.send_data(200,b'{"ok":true}','application/json',True)
  except FileError as error:self.admin_error(error)
  except (OSError,TimeoutError):self.admin_error(FileError(503,'文件操作未完成，请刷新检查；上传中断不会覆盖原文件'))
 def handle_file(self,body):
  path=unquote(urlsplit(self.path).path)
  if path.startswith('/api/admin/'):return self.admin_api(body)
  if path=='/favicon.ico':return self.send_data(204,b'','image/x-icon',body)
  if path=='/api/status':
   game=ROOT/'game-manifest.json';info=ROOT/'game-info.json'
   data={'ready':game.exists(),'engineReady':all((ROOT/'engine'/name).exists() for name in ['index.html','index.js','index.wasm','assets.zip'])}
   if info.exists():data.update(json.loads(info.read_text()))
   state=self.server.files.state if self.server.files else None
   data['resourceRevision']=str(game.stat().st_mtime_ns if game.exists() else 0)+'-'+str(state.stat().st_mtime_ns if state and state.exists() else 0)
   return self.send_data(200,json.dumps(data,ensure_ascii=False).encode(),'application/json',body)
  if path=='/':target=ROOT/'web/index.html'
  elif path=='/admin' and self.server.files:target=ROOT/'web/admin.html'
  elif path=='/play':target=ROOT/'web/play.html'
  elif path in ['/app.js','/style.css','/play.js','/admin.js','/admin.css']:target=ROOT/'web'/path[1:]
  elif path=='/game.zip':target=ROOT/'game.zip'
  elif path.startswith('/game/'):
   config=self.config()
   if not config:return self.send_data(404,b'Not ready','text/plain',body)
   relative=path[len('/game/'):]
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
  self.send_header('Cache-Control','private, max-age=86400' if target.is_relative_to(ROOT/'engine') and target.suffix in ('.wasm','.zip','.js','.png') else 'no-cache')
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
  try:length=int(self.headers.get('Content-Length','0'))
  except ValueError:length=-1
  if self.headers.get('Transfer-Encoding') or not 0<=length<=65536:
   self.close_connection=True;return self.send_data(400,b'Invalid request body','text/plain',True)
  if length:self.rfile.read(length)
  path=unquote(urlsplit(self.path).path)
  config=self.config()
  if not path.startswith('/game/') or not config:return self.send_data(404,b'Not found','text/plain',True)
  prefix=path[len('/game/'):].rstrip('/')
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
 admin_dir=os.environ.get('SENREN_FILES_DIR')
 if admin_dir and not server.preview_auth:parser.error('文件后台必须配置访问凭据')
 server.files=Files(admin_dir,ROOT/'game-manifest.json') if admin_dir else None
 server.admin_token=secrets.token_urlsafe(32)
 if args.cert:
  context=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER);context.minimum_version=ssl.TLSVersion.TLSv1_2;context.load_cert_chain(args.cert,args.key);server.socket=context.wrap_socket(server.socket,server_side=True)
 print(f'运行器已启动：{"https" if args.cert else "http"}://{args.host}:{args.port}',flush=True)
 try:server.serve_forever()
 except KeyboardInterrupt:pass
 finally:server.server_close()
if __name__=='__main__':main()
