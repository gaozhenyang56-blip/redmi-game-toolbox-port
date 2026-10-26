"""Account-isolated, versioned save snapshots. No game assets enter the save database."""
import hashlib,hmac,io,json,re,secrets,sqlite3,threading,time,unicodedata,zipfile
from pathlib import Path,PurePosixPath

class AccountError(Exception):
 def __init__(self,status,message,data=None):super().__init__(message);self.status=status;self.data=data or {}

class Accounts:
 MAX_ZIP=32*1024*1024
 def __init__(self,directory,clock=time.time):
  self.root=Path(directory);self.root.mkdir(mode=0o700,parents=True,exist_ok=True);self.path=self.root/'accounts.sqlite3';self.clock=clock;self.lock=threading.Lock();self.failures={}
  invite=self.root/'invite-code'
  if not invite.exists():invite.write_text(secrets.token_urlsafe(24));invite.chmod(0o600)
  self.invite=invite.read_text().strip()
  with self.db() as db:
   db.executescript('''PRAGMA journal_mode=WAL;
CREATE TABLE IF NOT EXISTS users(id TEXT PRIMARY KEY,name TEXT NOT NULL,normalized TEXT UNIQUE NOT NULL,salt BLOB NOT NULL,password BLOB NOT NULL,created REAL NOT NULL);
CREATE TABLE IF NOT EXISTS sessions(token TEXT PRIMARY KEY,user_id TEXT NOT NULL,expires REAL NOT NULL);
CREATE TABLE IF NOT EXISTS saves(user_id TEXT NOT NULL,version INTEGER NOT NULL,created REAL NOT NULL,sha256 TEXT NOT NULL,data BLOB NOT NULL,PRIMARY KEY(user_id,version));
''')
  self.path.chmod(0o600)
 def db(self):
  db=sqlite3.connect(self.path,timeout=15);db.row_factory=sqlite3.Row;return db
 def public_user(self,row):return {'id':row['id'],'name':row['name']}
 def password_hash(self,password,salt):return hashlib.scrypt(password.encode(),salt=salt,n=16384,r=8,p=1,dklen=32)
 def throttle(self,peer):
  now=self.clock()
  with self.lock:
   self.failures={p:[t for t in times if now-t<60] for p,times in self.failures.items() if any(now-t<60 for t in times)}
   if len(self.failures.get(peer,[]))>=8:raise AccountError(429,'尝试过多，请一分钟后重试')
 def failed(self,peer):
  with self.lock:
   if len(self.failures)>2048:self.failures.clear()
   self.failures.setdefault(peer,[]).append(self.clock())
 def authenticate(self,action,data,peer):
  self.throttle(peer)
  name=unicodedata.normalize('NFKC',str(data.get('username',''))).strip();password=data.get('password')
  if not re.fullmatch(r'[\w\-\u4e00-\u9fff]{3,32}',name) or not isinstance(password,str) or not 10<=len(password)<=128:
   self.failed(peer);raise AccountError(400,'用户名需3–32字，密码需10–128字')
  with self.db() as db:
   if action=='register':
    invite=data.get('invite','')
    if not isinstance(invite,str) or not hmac.compare_digest(invite.encode(),self.invite.encode()):self.failed(peer);raise AccountError(403,'邀请码无效')
    salt=secrets.token_bytes(16);key=self.password_hash(password,salt);identity=secrets.token_hex(16)
    try:db.execute('INSERT INTO users VALUES(?,?,?,?,?,?)',(identity,name,name.casefold(),salt,key,self.clock()))
    except sqlite3.IntegrityError:raise AccountError(409,'该用户名已被使用')
    row=db.execute('SELECT * FROM users WHERE id=?',(identity,)).fetchone()
   else:
    row=db.execute('SELECT * FROM users WHERE normalized=?',(name.casefold(),)).fetchone()
    salt=row['salt'] if row else b'\0'*16;expected=row['password'] if row else b'\0'*32
    if not hmac.compare_digest(self.password_hash(password,salt),expected):self.failed(peer);raise AccountError(401,'用户名或密码错误')
   token=secrets.token_urlsafe(32);digest=hashlib.sha256(token.encode()).hexdigest()
   db.execute('DELETE FROM sessions WHERE expires<?',(self.clock(),));db.execute('INSERT INTO sessions VALUES(?,?,?)',(digest,row['id'],self.clock()+7*86400))
   return self.public_user(row),token
 def user(self,token):
  if not token:return None
  with self.db() as db:
   row=db.execute('SELECT u.* FROM users u JOIN sessions s ON u.id=s.user_id WHERE s.token=? AND s.expires>?',(hashlib.sha256(token.encode()).hexdigest(),self.clock())).fetchone()
   return self.public_user(row) if row else None
 def logout(self,token):
  with self.db() as db:db.execute('DELETE FROM sessions WHERE token=?',(hashlib.sha256(token.encode()).hexdigest(),))
 def metadata(self,row):return {'version':row['version'],'createdAt':row['created'],'sha256':row['sha256'],'bytes':len(row['data'])}
 def cloud(self,user,version=None):
  with self.db() as db:
   row=db.execute('SELECT * FROM saves WHERE user_id=? '+('ORDER BY version DESC LIMIT 1' if version is None else 'AND version=?'),(user,) if version is None else (user,version)).fetchone()
   return (self.metadata(row),row['data']) if row else ({'version':0},None)
 def history(self,user):
  with self.db() as db:return [self.metadata(row) for row in db.execute('SELECT * FROM saves WHERE user_id=? ORDER BY version DESC LIMIT 10',(user,))]
 def validate_zip(self,data):
  if not data or len(data)>self.MAX_ZIP:raise AccountError(413,'存档压缩包不能超过32 MiB')
  try:
   with zipfile.ZipFile(io.BytesIO(data)) as archive:
    files=[item for item in archive.infolist() if not item.is_dir()]
    if not files or len(files)>1000 or sum(item.file_size for item in files)>64*1024*1024:raise ValueError('limits')
    for item in files:
     path=PurePosixPath(item.filename)
     if '\\' in item.filename or path.is_absolute() or '..' in path.parts or ':' in item.filename or not path.parts or path.parts[0] not in ('savedata','save'):raise ValueError('path')
     if item.flag_bits&1:raise ValueError('encrypted archive')
    if archive.testzip() is not None:raise ValueError('crc')
  except (ValueError,zipfile.BadZipFile,RuntimeError,NotImplementedError):raise AccountError(400,'存档ZIP损坏、加密或包含无效路径')
 def upload(self,user,data,base):
  self.validate_zip(data)
  if type(base) is not int or base<0:raise AccountError(400,'缺少有效的云端版本号')
  digest=hashlib.sha256(data).hexdigest()
  with self.db() as db:
   db.execute('BEGIN IMMEDIATE')
   current=db.execute('SELECT * FROM saves WHERE user_id=? ORDER BY version DESC LIMIT 1',(user,)).fetchone()
   if current and current['sha256']==digest:return self.metadata(current)
   version=current['version'] if current else 0
   if base!=version:raise AccountError(409,'另一台设备更新了存档，请选择保留的版本',{'cloudVersion':version})
   now=self.clock();db.execute('INSERT INTO saves VALUES(?,?,?,?,?)',(user,version+1,now,digest,data));db.execute('DELETE FROM saves WHERE user_id=? AND version<=?',(user,version-9))
   return {'version':version+1,'createdAt':now,'sha256':digest,'bytes':len(data)}
