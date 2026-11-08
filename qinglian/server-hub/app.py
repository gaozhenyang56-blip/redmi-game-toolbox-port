import hashlib,hmac,ipaddress,json,secrets,time,threading
from pathlib import Path
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from http.cookies import SimpleCookie
DATA=Path('/var/lib/server-hub');STATIC=Path(__file__).parent/'static'
class Handler(BaseHTTPRequestHandler):
 protocol_version='HTTP/1.0'
 def log_message(self,*args):pass
 def obj(self,name):return json.loads((DATA/name).read_text())
 def route(self):
  path=self.path.split('?',1)[0]
  return path[6:] if path.startswith('/panel/') else path
 def cookie_options(self):
  prefix='/panel/' if self.path.split('?',1)[0].startswith('/panel/') else '/'
  secure=self.client_address[0] in ('127.0.0.1','::1') and self.headers.get('X-Forwarded-Proto')=='https'
  return '; Path='+prefix+'; HttpOnly; SameSite=Strict'+('; Secure' if secure else '')
 def peer(self):
  if self.client_address[0] in ('127.0.0.1','::1'):
   try:return str(ipaddress.ip_address(self.headers.get('X-Forwarded-For','')))
   except ValueError:pass
  return self.client_address[0]
 def reply(self,status,data,ctype='application/json',cookie=None):
  body=json.dumps(data,ensure_ascii=False).encode() if ctype=='application/json' else data
  self.send_response(status);self.send_header('Content-Type',ctype);self.send_header('Content-Length',str(len(body)));self.send_header('Cache-Control','no-store');self.send_header('X-Content-Type-Options','nosniff');self.send_header('X-Frame-Options','DENY');self.send_header('Content-Security-Policy',"default-src 'self'; style-src 'self' 'unsafe-inline'; script-src 'self'; connect-src 'self'; frame-ancestors 'none'; base-uri 'none'; form-action 'self'")
  if cookie:self.send_header('Set-Cookie',cookie)
  self.end_headers();self.wfile.write(body)
 def auth(self):
  try:
   jar=SimpleCookie(self.headers.get('Cookie',''));token=jar['server_hub_session'].value;stamp,nonce,version,sig=token.split('.');now=time.time();assert 0<=now-int(stamp)<=2592000;auth=self.obj('auth.json');assert hmac.compare_digest(version,auth['hash'][:16]);expected=hmac.new((DATA/'session-key').read_bytes(),('.'.join([stamp,nonce,version])).encode(),hashlib.sha256).hexdigest();return hmac.compare_digest(sig,expected)
  except Exception:return False
 def do_GET(self):
  if self.path.split('?',1)[0]=='/panel':
   self.send_response(308);self.send_header('Location','/panel/');self.send_header('Content-Length','0');self.end_headers();return
  path=self.route()
  if path in ('/','/app.js','/style.css'):
   name='index.html' if path=='/' else path[1:];ctype={'index.html':'text/html; charset=utf-8','app.js':'text/javascript; charset=utf-8','style.css':'text/css; charset=utf-8'}[name];return self.reply(200,(STATIC/name).read_bytes(),ctype)
  if path=='/health':return self.reply(200,{'ok':True,'service':'server-hub'})
  if not self.auth():return self.reply(401,{'error':'请先登录'})
  if path=='/api/status':
   try:
    data=self.obj('status.json');data['stale']=time.time()-data['sampled_at']>45;return self.reply(200,data)
   except (OSError,ValueError):return self.reply(503,{'error':'等待首次采集'})
  return self.reply(404,{'error':'页面不存在'})
 def do_POST(self):
  origin=self.headers.get('Origin');host=self.headers.get('Host','')
  if origin and origin not in ('http://'+host,'https://'+host):return self.reply(403,{'error':'请求来源不匹配'})
  if self.route()=='/api/logout':return self.reply(200,{'ok':True},cookie='server_hub_session=; Max-Age=0'+self.cookie_options())
  if self.route()!='/api/login':return self.reply(404,{'error':'页面不存在'})
  now=time.time();ip=self.peer()
  with self.server.rate_lock:
   attempts=[t for t in self.server.attempts.get(ip,[]) if now-t<300]
   self.server.attempts={k:v for k,v in self.server.attempts.items() if v and now-v[-1]<300};self.server.attempts[ip]=attempts
   if len(attempts)>=10:return self.reply(429,{'error':'尝试过多，请五分钟后重试'})
   attempts.append(now)
  try:
   length=int(self.headers.get('Content-Length','0'));assert 0<length<=4096
   data=json.loads(self.rfile.read(length));auth=self.obj('auth.json');candidate=hashlib.pbkdf2_hmac('sha256',str(data.get('password','')).encode(),bytes.fromhex(auth['salt']),auth['iterations']).hex()
   if not (hmac.compare_digest(str(data.get('username','')),auth['username']) and hmac.compare_digest(candidate,auth['hash'])):return self.reply(401,{'error':'账号或密码错误'})
   body=str(int(now))+'.'+secrets.token_hex(16)+'.'+auth['hash'][:16];token=body+'.'+hmac.new((DATA/'session-key').read_bytes(),body.encode(),hashlib.sha256).hexdigest()
   return self.reply(200,{'ok':True},cookie='server_hub_session='+token+'; Max-Age=2592000'+self.cookie_options())
  except Exception:return self.reply(400,{'error':'登录请求无效'})
class Server(ThreadingHTTPServer):
 daemon_threads=True;request_queue_size=16
 def __init__(self,*args):super().__init__(*args);self.rate_lock=threading.Lock();self.attempts={}
 def get_request(self):
  sock,addr=super().get_request();sock.settimeout(8);return sock,addr
if __name__=='__main__':
 config=json.loads((DATA/'config.json').read_text());Server(('0.0.0.0',config['port']),Handler).serve_forever()
