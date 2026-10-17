#!/usr/bin/env python3
"""Private device presence server. Bind to loopback behind an HTTPS reverse proxy."""
import base64, hashlib, hmac, ipaddress, json, os, secrets, sqlite3, threading, time, uuid
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

DB=os.environ.get('QINGLIAN_DB','qinglian.sqlite3')
CLIENT_TOKEN=os.environ.get('QINGLIAN_CLIENT_TOKEN','')
ADMIN_USER=os.environ.get('QINGLIAN_ADMIN_USER','admin')
ADMIN_PASSWORD=os.environ.get('QINGLIAN_ADMIN_PASSWORD','')
TTL=30
LOCK=threading.Lock()

def init_db():
    with sqlite3.connect(DB) as c:
        c.execute('PRAGMA journal_mode=WAL')
        c.execute('''CREATE TABLE IF NOT EXISTS devices (
         id TEXT PRIMARY KEY, session TEXT NOT NULL, name TEXT, brand TEXT, model TEXT,
         android TEXT, app TEXT, ip TEXT, started REAL, seen REAL, online INTEGER,
         up INTEGER, down INTEGER, up_rate REAL, down_rate REAL, generation INTEGER NOT NULL DEFAULT 0, sequence INTEGER NOT NULL DEFAULT 0)''')
        columns={r[1] for r in c.execute("PRAGMA table_info(devices)")}
        for name in ("generation","sequence"):
            if name not in columns:c.execute(f"ALTER TABLE devices ADD COLUMN {name} INTEGER NOT NULL DEFAULT 0")

def snapshot(now=None):
    now=time.time() if now is None else now
    with sqlite3.connect(DB) as c:
        c.row_factory=sqlite3.Row
        rows=[dict(r) for r in c.execute('SELECT * FROM devices WHERE seen>? ORDER BY seen DESC',(now-86400*7,))]
    for row in rows:
        row['online']=bool(row['online'] and now-row['seen']<=TTL)
    return {'online':sum(r['online'] for r in rows),'devices':rows,'serverTime':now,'ttl':TTL}

def heartbeat(data,ip,now=None):
    now=time.time() if now is None else now
    device=str(uuid.UUID(data['deviceId']));session=str(uuid.UUID(data['sessionId']))
    def txt(k,default='',limit=96):
        value=data.get(k,default)
        if not isinstance(value,str):raise ValueError('invalid text')
        return ''.join(x for x in value[:limit] if ord(x)>=32)
    def integer(k):
        v=data.get(k,0)
        if isinstance(v,bool) or not isinstance(v,int) or not 0<=v<=2**63-1:raise ValueError('invalid integer')
        return v
    def rate(k):
        v=data.get(k,0)
        if isinstance(v,bool) or not isinstance(v,(int,float)) or not 0<=v<=1e13:raise ValueError('invalid rate')
        return float(v)
    online=data.get('online')
    if type(online) is not bool:raise ValueError('invalid state')
    generation=integer('generation');sequence=integer('sequence')
    if generation==0 or sequence==0:raise ValueError('missing session ordering')
    up,down=integer('uploadBytes'),integer('downloadBytes')
    up_rate,down_rate=rate('uploadRate'),rate('downloadRate')
    details=(txt('deviceName','Android 设备'),txt('brand'),txt('model'),txt('androidVersion'),txt('appVersion'))
    with LOCK,sqlite3.connect(DB) as c:
        # Keep the last generation as a tombstone, even after the seven-day detail window.
        # Otherwise a very late online event could resurrect a retired session.
        c.execute("UPDATE devices SET name='',brand='',model='',android='',app='',ip='',up=0,down=0,up_rate=0,down_rate=0,online=0 WHERE seen<?",(now-86400*7,))
        old=c.execute('SELECT session,started,online,generation,sequence FROM devices WHERE id=?',(device,)).fetchone()
        if old:
            if generation<old[3]:return
            if generation==old[3]:
                if session!=old[0] or sequence<=old[4] or (online and not old[2]):return
        started=old[1] if old and old[0]==session else now
        c.execute('INSERT OR REPLACE INTO devices (id,session,name,brand,model,android,app,ip,started,seen,online,up,down,up_rate,down_rate,generation,sequence) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',(
          device,session,*details,ip,started,now,int(online),up,down,up_rate if online else 0,down_rate if online else 0,generation,sequence))

class Handler(BaseHTTPRequestHandler):
    server_version='Qinglian'
    def log_message(self,*args):pass  # Tokens, device records and URLs are not logged.
    def send(self,code,body,kind='application/json; charset=utf-8',auth=False):
        body=body if isinstance(body,bytes) else json.dumps(body,ensure_ascii=False).encode()
        self.send_response(code)
        self.send_header('Content-Type',kind);self.send_header('Content-Length',str(len(body)))
        self.send_header('Cache-Control','no-store');self.send_header('X-Content-Type-Options','nosniff')
        self.send_header('Referrer-Policy','no-referrer')
        self.send_header('Content-Security-Policy',"default-src 'self'; script-src 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline'; frame-ancestors 'none'")
        if auth:self.send_header('WWW-Authenticate','Basic realm="Qinglian Admin", charset="UTF-8"')
        self.end_headers();self.wfile.write(body)
    def client(self):return bool(CLIENT_TOKEN) and hmac.compare_digest(self.headers.get('Authorization',''),'Bearer '+CLIENT_TOKEN)
    def admin(self):
        try:
            scheme,value=self.headers.get('Authorization','').split(' ',1)
            if scheme!='Basic':return False
            expected=(ADMIN_USER+':'+ADMIN_PASSWORD).encode()
            return bool(ADMIN_PASSWORD) and hmac.compare_digest(base64.b64decode(value,validate=True),expected)
        except Exception:return False
    def ip(self):
        peer=self.client_address[0]
        if peer in ('127.0.0.1','::1'):
            forwarded=self.headers.get('X-Forwarded-For','').split(',')[-1].strip()
            try:return str(ipaddress.ip_address(forwarded))
            except ValueError:pass
        return peer
    def do_GET(self):
        if self.path=='/health':self.send(200,{'ok':True});return
        if self.path=='/api/v1/quota':
            if not self.client():self.send(401,{'error':'unauthorized'});return
            # No guessed x-ui schema or invented quota. Wire a version-matched read-only adapter.
            self.send(503,{'error':'quota source not configured'});return
        if self.path=='/api/v1/online':
            if not self.client():self.send(401,{'error':'unauthorized'});return
            data=snapshot();self.send(200,{'online':data['online'],'ttl':TTL,'serverTime':data['serverTime']});return
        if self.path in ('/admin','/admin/','/admin/api/devices'):
            if not self.admin():self.send(401,{'error':'unauthorized'},auth=True);return
            if self.path.endswith('/devices'):self.send(200,snapshot());return
            self.send(200,Path(__file__).with_name('dashboard.html').read_bytes(),'text/html; charset=utf-8');return
        self.send(404,{'error':'not found'})
    def do_POST(self):
        self.connection.settimeout(5)
        if self.path!='/api/v1/heartbeat':self.send(404,{'error':'not found'});return
        if not self.client():self.send(401,{'error':'unauthorized'});return
        try:
            n=int(self.headers.get('Content-Length','0'))
            if not 0<n<=8192:raise ValueError()
            heartbeat(json.loads(self.rfile.read(n)),self.ip())
            self.send(200,{'ok':True,'online':snapshot()['online']})
        except (ValueError,KeyError,TypeError,OverflowError,json.JSONDecodeError):self.send(400,{'error':'invalid request'})
        except Exception:self.send(500,{'error':'internal error'})

if __name__=='__main__':
    if len(CLIENT_TOKEN)<32 or len(ADMIN_PASSWORD)<16:raise SystemExit('Set a client token >=32 characters and admin password >=16 characters.')
    os.umask(0o077);init_db()
    ThreadingHTTPServer((os.environ.get('QINGLIAN_BIND','127.0.0.1'),int(os.environ.get('QINGLIAN_PORT','8765'))),Handler).serve_forever()
