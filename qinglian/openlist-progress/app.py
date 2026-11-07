"""Read-only sidecar for existing AstrBot local downloads. No task controls."""
import collections,hashlib,http.cookies,json,os,secrets,shutil,sqlite3,threading,time,urllib.error,urllib.parse,urllib.request
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from pathlib import Path

INTERVAL=3

def safe_name(name):
    import re
    name=str(name or 'download.bin').replace('\\','/').rsplit('/',1)[-1]
    name=re.sub(r'[\x00-\x1f\x7f-\x9f<>:"|?*]','_',name).strip(' .')
    return name.encode('utf-8')[:220].decode('utf-8','ignore').rstrip(' .') or 'download.bin'

class Store:
    def __init__(self,db):
        self.db=Path(db);self.db.parent.mkdir(mode=0o700,parents=True,exist_ok=True)
        with self.connect() as c:
            c.execute('PRAGMA journal_mode=WAL')
            c.execute('CREATE TABLE IF NOT EXISTS files(id TEXT PRIMARY KEY,rel TEXT,name TEXT,status TEXT,size INTEGER,total INTEGER,started REAL,updated REAL,seen REAL,speed REAL,eta REAL)')
            c.execute('CREATE TABLE IF NOT EXISTS points(id TEXT,t REAL,speed REAL)')
            c.execute('CREATE INDEX IF NOT EXISTS points_id_time ON points(id,t)')
        self.db.chmod(0o600);self.error='';self.last_scan=0;self.capacity={}
    def connect(self):return sqlite3.connect(self.db,timeout=10)
    def scan(self,root,totals=None,now=None):
        now=time.time() if now is None else now;totals=totals or {};root=Path(root);found=[]
        try:
            if not root.is_dir():raise OSError('download directory unavailable')
            directories=list(root.iterdir());complete=len(directories)<=2000
            for directory in directories[:2000]:
                if directory.is_symlink() or not directory.is_dir():continue
                entries=list(directory.iterdir());complete=complete and len(entries)<=10
                for file in entries[:10]:
                    if file.is_symlink() or not file.is_file():continue
                    partial=file.name.endswith('.part');name=file.name[:-5] if partial else file.name
                    # A real source file ending .part is distinguishable if metadata is known.
                    if partial and file.name in totals and name not in totals:partial=False;name=file.name
                    stat=file.stat();rel=directory.name+'/'+name;ident=hashlib.sha256(rel.encode()).hexdigest()[:24]
                    found.append((ident,rel,name,partial,stat.st_size,directory.stat().st_mtime))
        except OSError:
            self.error='暂时无法读取下载目录，保留上次状态。';return
        disk=shutil.disk_usage(root);self.capacity={'disk_total':disk.total,'disk_free':disk.free,'disk_used':disk.used,'cache_used':sum(row[4] for row in found),'cache_measurement_complete':complete}
        self.error='';seen=set();overall=0
        with self.connect() as c:
            for ident,rel,name,partial,size,started in found:
                seen.add(ident);old=c.execute('SELECT size,seen,started,total,status FROM files WHERE id=?',(ident,)).fetchone()
                elapsed=now-old[1] if old else 0
                speed=max(0,(size-old[0])/elapsed) if old and 0<elapsed<30 and partial else 0
                total=totals.get(name) or (old[3] if old else 0) or (size if not partial else None)
                if partial or not old or old[4]!='completed':c.execute('INSERT INTO points VALUES(?,?,?)',(ident,now,speed))
                speeds=[r[0] for r in c.execute('SELECT speed FROM points WHERE id=? AND t>=? ORDER BY t DESC LIMIT 10',(ident,now-30))]
                avg=sum(speeds)/len(speeds) if speeds else 0
                state='downloading' if partial else 'completed'
                if partial and old and size==old[0] and elapsed>=0:
                    last_change=c.execute('SELECT updated FROM files WHERE id=?',(ident,)).fetchone()[0]
                    if now-last_change>=30:state='waiting'
                changed=now if not old or size!=old[0] or old[4] not in ('downloading','waiting',state) else c.execute('SELECT updated FROM files WHERE id=?',(ident,)).fetchone()[0]
                eta=max(0,(total-size)/avg) if partial and total and avg>0 else None
                c.execute('INSERT OR REPLACE INTO files VALUES(?,?,?,?,?,?,?,?,?,?,?)',(ident,rel,name,state,size,total,old[2] if old else min(started,now),changed,now,avg if partial else 0,eta))
                if partial:overall+=speed
            for ident,state in c.execute("SELECT id,status FROM files WHERE status IN ('downloading','waiting','completed')").fetchall():
                if ident not in seen:c.execute("UPDATE files SET status=?,speed=0,eta=NULL,updated=? WHERE id=?",('removed' if state=='completed' else 'interrupted',now,ident))
            c.execute('INSERT INTO points VALUES(?,?,?)',('_all',now,overall))
            c.execute('DELETE FROM points WHERE t<?',(now-1800,))
        self.last_scan=now
    def snapshot(self,now=None):
        now=now or time.time()
        with self.connect() as c:
            c.row_factory=sqlite3.Row
            rows=c.execute("SELECT * FROM files ORDER BY CASE WHEN status IN ('downloading','waiting') THEN 0 WHEN status='interrupted' THEN 1 ELSE 2 END,seen DESC LIMIT 100").fetchall()
            files=[]
            for row in rows:
                item=dict(row);item.pop('rel');item['progress']=min(100,round(item['size']/item['total']*100,2)) if item['total'] else None
                item['history']=[[r['t'],r['speed']] for r in c.execute('SELECT t,speed FROM points WHERE id=? AND t>=? ORDER BY t DESC LIMIT 60',(item['id'],now-900))][::-1]
                files.append(item)
            history=[[r['t'],r['speed']] for r in c.execute("SELECT t,speed FROM points WHERE id='_all' AND t>=? ORDER BY t",(now-900,))]
        active=[f for f in files if f['status'] in ('downloading','waiting')]
        return {'files':files,'history':history,'speed':sum(f['speed'] for f in active),'active':len(active),'completed':sum(f['status']=='completed' for f in files),'sampled_at':self.last_scan,'monitor_error':self.error,'read_only':True,'capacity':dict(self.capacity)}
    def completed_path(self,ident):
        with self.connect() as c:row=c.execute("SELECT rel FROM files WHERE id=? AND status='completed'",(ident,)).fetchone()
        return row[0] if row else None

class Service:
    def __init__(self,config,store):
        self.config=config;self.store=store;self.sessions={};self.lock=threading.Lock();self.failures=collections.defaultdict(collections.deque);self.totals={};self.metadata_at=0;self.stop=threading.Event()
    def api(self,path,body=None,token=''):
        headers={'Content-Type':'application/json','Accept-Encoding':'identity'}
        if token:headers['Authorization']=token
        req=urllib.request.Request(self.config['openlist_api']+path,data=json.dumps(body).encode() if body is not None else None,headers=headers)
        with urllib.request.urlopen(req,timeout=8) as response:data=json.load(response)
        if data.get('code')!=200:raise ValueError('OpenList authentication or metadata request failed')
        return data.get('data') or {}
    def login(self,username,password,client):
        now=time.time()
        with self.lock:
            queue=self.failures[client]
            while queue and now-queue[0]>300:queue.popleft()
            if len(queue)>=5:raise PermissionError('尝试次数过多，请5分钟后再试。')
        try:
            auth=self.api('/api/auth/login',{'username':username,'password':password});token=auth['token'];me=self.api('/api/me',token=token)
            if me.get('role')!=2 or me.get('disabled'):raise ValueError('not administrator')
        except Exception:
            with self.lock:self.failures[client].append(now)
            raise ValueError('账号或密码错误，或 OpenList 暂时不可用。')
        key=secrets.token_urlsafe(32)
        with self.lock:
            self.failures.pop(client,None)
            for old in [k for k,v in self.sessions.items() if now-v['last']>86400]:self.sessions.pop(old,None)
            if len(self.sessions)>=64:self.sessions.pop(next(iter(self.sessions)))
            self.sessions[key]={'token':token,'name':me['username'],'last':now,'checked':now}
        return key
    def session(self,cookie):
        jar=http.cookies.SimpleCookie()
        try:jar.load(cookie or '');key=jar['op_progress'].value
        except Exception:return None
        with self.lock:
            result=self.sessions.get(key)
            if not result or time.time()-result['last']>86400:return None
            result['last']=time.time()
        if time.time()-result['checked']>60:
            try:
                me=self.api('/api/me',token=result['token'])
                if me.get('role')!=2:raise ValueError('not admin')
            except Exception:
                with self.lock:self.sessions.pop(key,None)
                return None
            result['checked']=time.time()
        return result
    def snapshot(self):
        data=self.store.snapshot();capacity=data['capacity'];limit=self.config.get('cache_limit_bytes',4*1024**3);reserve=self.config.get('reserve_bytes',2*1024**3)
        capacity.update({'cache_limit':limit,'system_reserve':reserve,'available_for_download':max(0,min(limit-capacity.get('cache_used',0),capacity.get('disk_free',0)-reserve)) if capacity.get('cache_measurement_complete') else None})
        return data
    def update_metadata(self):
        now=time.time()
        if now-self.metadata_at<60:return
        self.metadata_at=now
        with self.lock:sessions=list(self.sessions.values())
        if not sessions:return
        try:
            data=self.api('/api/fs/list',{'path':self.config['source_path'],'password':'','page':1,'per_page':1000,'refresh':False},sessions[-1]['token'])
            sizes=collections.defaultdict(set)
            for item in data.get('content') or []:
                if not item.get('is_dir') and item.get('size') is not None:sizes[safe_name(item.get('name'))].add(int(item['size']))
            self.totals={name:next(iter(values)) for name,values in sizes.items() if len(values)==1}
        except Exception:pass
    def watch(self):
        while not self.stop.is_set():
            try:self.store.scan(self.config['download_root'],self.totals)
            except Exception:self.store.error='状态采样暂时失败，正在重试。'
            self.stop.wait(INTERVAL)
    def metadata_loop(self):
        while not self.stop.is_set():
            self.update_metadata();self.stop.wait(5)

class Handler(BaseHTTPRequestHandler):
    server_version='OpenListProgress'
    def log_message(self,*args):pass
    def setup(self):super().setup();self.connection.settimeout(10)
    @property
    def service(self):return self.server.service
    def respond(self,status,body,content_type='application/json; charset=utf-8',headers=None):
        if isinstance(body,(dict,list)):body=json.dumps(body,ensure_ascii=False).encode()
        elif isinstance(body,str):body=body.encode()
        self.send_response(status);self.send_header('Content-Type',content_type);self.send_header('Content-Length',str(len(body)));self.send_header('Cache-Control','no-store');self.send_header('X-Content-Type-Options','nosniff');self.send_header('X-Frame-Options','DENY');self.send_header('Referrer-Policy','no-referrer');self.send_header('Content-Security-Policy',"default-src 'self'; script-src 'self'; style-src 'self'; connect-src 'self'; img-src 'self' data:; frame-ancestors 'none'")
        for key,value in (headers or {}).items():self.send_header(key,value)
        self.end_headers();self.wfile.write(body)
    def do_GET(self):
        path=urllib.parse.urlsplit(self.path).path
        if path in ('/','/app.js','/style.css'):
            name={'/':'index.html','/app.js':'app.js','/style.css':'style.css'}[path];mime={'/':'text/html','/app.js':'text/javascript','/style.css':'text/css'}[path]
            return self.respond(200,(Path(__file__).parent/'static'/name).read_bytes(),mime+'; charset=utf-8')
        session=self.service.session(self.headers.get('Cookie'))
        if not session:return self.respond(401,{'error':'请先登录。'})
        if path=='/api/session':return self.respond(200,{'username':session['name']})
        if path=='/api/progress':return self.respond(200,self.service.snapshot())
        if path=='/api/link':
            ident=urllib.parse.parse_qs(urllib.parse.urlsplit(self.path).query).get('id',[''])[0];rel=self.service.store.completed_path(ident)
            if not rel:return self.respond(404,{'error':'文件未完成或不存在。'})
            root=Path(self.service.config['download_root']).resolve();target=(root/rel).resolve()
            if not target.is_relative_to(root) or not target.is_file():return self.respond(404,{'error':'文件不存在。'})
            try:
                mount=self.service.config['mount'].rstrip('/')+'/'+rel;data=self.service.api('/api/fs/get',{'path':mount,'password':''},session['token']);sign=data.get('sign') or urllib.parse.parse_qs(urllib.parse.urlsplit(data.get('raw_url','')).query).get('sign',[''])[0]
                if not sign:raise ValueError('missing signature')
                url=self.service.config['public_openlist']+'/d'+urllib.parse.quote(mount,safe='/')+'?'+urllib.parse.urlencode({'sign':sign});return self.respond(200,{'url':url})
            except Exception:return self.respond(502,{'error':'暂时无法生成下载链接，请稍后再试。'})
        self.respond(404,{'error':'Not found'})
    def do_POST(self):
        origin=self.headers.get('Origin')
        if origin and urllib.parse.urlsplit(origin).netloc!=self.headers.get('Host'):return self.respond(403,{'error':'来源不匹配。'})
        path=urllib.parse.urlsplit(self.path).path
        if path=='/api/login':
            try:
                length=int(self.headers.get('Content-Length') or 0)
                if length<1 or length>4096:raise ValueError('Invalid body')
                data=json.loads(self.rfile.read(length));key=self.service.login(str(data.get('username','')),str(data.get('password','')),self.client_address[0])
                self.service.metadata_at=0
                return self.respond(200,{'ok':True},'application/json; charset=utf-8',{'Set-Cookie':'op_progress='+key+'; Path=/; HttpOnly; SameSite=Strict; Max-Age=86400'})
            except PermissionError as exc:return self.respond(429,{'error':str(exc)})
            except Exception:return self.respond(401,{'error':'账号或密码错误，或 OpenList 暂时不可用。'})
        if path=='/api/logout':
            jar=http.cookies.SimpleCookie()
            try:
                jar.load(self.headers.get('Cookie',''))
                with self.service.lock:self.service.sessions.pop(jar['op_progress'].value,None)
            except Exception:pass
            return self.respond(200,{'ok':True},headers={'Set-Cookie':'op_progress=; Path=/; Max-Age=0; HttpOnly; SameSite=Strict'})
        self.respond(404,{'error':'Not found'})

def main():
    import argparse
    parser=argparse.ArgumentParser();parser.add_argument('--config',required=True);args=parser.parse_args();config=json.loads(Path(args.config).read_text())
    store=Store(config['database']);service=Service(config,store)
    for target in [service.watch,service.metadata_loop]:threading.Thread(target=target,daemon=True).start()
    server=ThreadingHTTPServer((config.get('bind','0.0.0.0'),config['port']),Handler);server.daemon_threads=True;server.service=service;server.serve_forever(poll_interval=1)
if __name__=='__main__':main()
