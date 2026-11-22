"""Unprivileged loopback dashboard. Credentials verified only by the root helper."""
import hashlib,hmac,json,secrets,socket,threading,time
from pathlib import Path
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from http.cookies import SimpleCookie
SOCKET='/run/dsh-control-helper/control.sock'
PREFIX='/panel/dsh/'
ROOT=Path(__file__).parent
KEY=Path('/var/lib/dsh-control/session-key')

def helper(data):
 with socket.socket(socket.AF_UNIX,socket.SOCK_STREAM) as s:
  s.settimeout(20);s.connect(SOCKET);s.sendall(json.dumps(data).encode()+b'\n')
  with s.makefile('rb') as f:
   raw=f.readline(524289)
   if len(raw)>524288:raise ValueError()
   return json.loads(raw)

class Handler(BaseHTTPRequestHandler):
 def log_message(self,*args):pass
 def reply(self,status,data,ctype='application/json; charset=utf-8',cookie=None):
  body=json.dumps(data,ensure_ascii=False).encode() if isinstance(data,dict) else data
  self.send_response(status)
  for k,v in {'Content-Type':ctype,'Content-Length':str(len(body)),'Cache-Control':'no-store','X-Content-Type-Options':'nosniff','X-Frame-Options':'DENY','Content-Security-Policy':"default-src 'self'; script-src 'self'; style-src 'self'; connect-src 'self'; frame-ancestors 'none'; base-uri 'none'; form-action 'self'"}.items():self.send_header(k,v)
  if cookie:self.send_header('Set-Cookie',cookie)
  self.end_headers();self.wfile.write(body)
 def token(self):
  try:
   token=SimpleCookie(self.headers.get('Cookie',''))['dsh_control_session'].value
   stamp,nonce,sig=token.split('.');body=stamp+'.'+nonce
   if not 0<=time.time()-int(stamp)<43200:return None
   if hmac.compare_digest(sig,hmac.new(KEY.read_bytes(),body.encode(),hashlib.sha256).hexdigest()):return token
  except Exception:pass
  return None
 def csrf(self,token):return hmac.new(KEY.read_bytes(),('csrf:'+token).encode(),hashlib.sha256).hexdigest()
 def route(self):return self.path.split('?',1)[0]
 def do_GET(self):
  path=self.route()
  if path in ('/','/app.js','/style.css'):
   name={'/':'index.html','/app.js':'app.js','/style.css':'style.css'}[path]
   return self.reply(200,(ROOT/name).read_bytes(),{'/':'text/html; charset=utf-8','/app.js':'text/javascript; charset=utf-8','/style.css':'text/css; charset=utf-8'}[path])
  token=self.token()
  if not token:return self.reply(401,{'error':'请登录 DSH 管理账户'})
  if path=='/api/session':return self.reply(200,{'ok':True,'csrf':self.csrf(token)})
  return self.reply(404,{'error':'页面不存在'})
 def do_POST(self):
  # Only this public HTTPS origin may issue browser mutations, even through the local proxy.
  if self.headers.get('Origin')!='https://gaozy.tech':return self.reply(403,{'error':'请求来源无效'})
  try:
   length=int(self.headers.get('Content-Length','0'))
   if not 0<length<=4096:raise ValueError()
   data=json.loads(self.rfile.read(length))
   if not isinstance(data,dict):raise ValueError()
  except Exception:return self.reply(400,{'error':'请求无效'})
  path=self.route()
  if path=='/api/login':
   # Global bounded rate limit cannot be bypassed by spoofed forwarding headers.
   with self.server.lock:
    now=time.monotonic();self.server.attempts=[t for t in self.server.attempts if now-t<300]
    if len(self.server.attempts)>=12:return self.reply(429,{'error':'尝试过多，请五分钟后重试'})
    self.server.attempts.append(now)
   try:valid=helper({'op':'auth','username':data.get('username',''),'password':data.get('password','')}).get('ok')
   except Exception:return self.reply(503,{'error':'管理助手暂不可用'})
   if not valid:return self.reply(401,{'error':'账号或密码错误'})
   body=str(int(time.time()))+'.'+secrets.token_hex(24);token=body+'.'+hmac.new(KEY.read_bytes(),body.encode(),hashlib.sha256).hexdigest()
   return self.reply(200,{'ok':True},cookie='dsh_control_session='+token+'; Path='+PREFIX+'; Max-Age=43200; Secure; HttpOnly; SameSite=Strict')
  token=self.token()
  if not token:return self.reply(401,{'error':'请先登录'})
  if not hmac.compare_digest(self.headers.get('X-CSRF-Token',''),self.csrf(token)):return self.reply(403,{'error':'登录验证已过期，请刷新页面'})
  if path=='/api/logout':return self.reply(200,{'ok':True},cookie='dsh_control_session=; Path='+PREFIX+'; Max-Age=0; Secure; HttpOnly; SameSite=Strict')
  if path!='/api/command' or data.get('op') not in ('status','logs','start','stop','restart'):return self.reply(400,{'error':'不支持的操作'})
  try:
   result=helper({k:v for k,v in data.items() if k in ('op','source','lines')})
   return self.reply(200 if result.get('ok') else 409,result)
  except Exception:return self.reply(503,{'error':'管理助手暂不可用，请稍后重试'})

class Server(ThreadingHTTPServer):
 daemon_threads=True;request_queue_size=16
 def __init__(self,*args):self.lock=threading.Lock();self.attempts=[];self.slots=threading.BoundedSemaphore(16);super().__init__(*args)
 def get_request(self):
  sock,addr=super().get_request();sock.settimeout(10);return sock,addr
 def process_request(self,*args):
  if not self.slots.acquire(blocking=False):self.shutdown_request(args[0]);return
  try:super().process_request(*args)
  except Exception:self.slots.release();raise
 def process_request_thread(self,*args):
  try:super().process_request_thread(*args)
  finally:self.slots.release()

if __name__=='__main__':Server(('127.0.0.1',1378),Handler).serve_forever()
