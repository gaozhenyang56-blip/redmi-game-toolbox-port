"""An isolated, versioned overlay for user-managed game resources."""
import json, os, shutil, tempfile, threading, time, uuid
from pathlib import Path, PurePosixPath

class FileError(Exception):
 def __init__(self,status,message):super().__init__(message);self.status=status

class Files:
 MAX_UPLOAD=4*1024**3
 TEXT={'.txt','.ks','.tjs','.csv','.json','.ini','.cfg'}
 ALLOWED=TEXT|{'.xp3','.png','.jpg','.jpeg','.webp','.pimg','.ogg','.wav','.mp3','.ttf','.otf'}
 def __init__(self,root,manifest):
  self.root=Path(root);self.root.mkdir(parents=True,exist_ok=True,mode=0o700)
  self.files=self.root/'files';self.files.mkdir(exist_ok=True,mode=0o700)
  self.history=self.root/'history';self.history.mkdir(exist_ok=True,mode=0o700)
  self.manifest=Path(manifest);self.lock=threading.RLock()
  self.state=self.root/'state.json'
  self.data=json.loads(self.state.read_text()) if self.state.exists() else {'deleted':[],'history':[]}
 def name(self,name):
  if not isinstance(name,str) or len(name)>500:raise FileError(400,'文件路径无效')
  p=PurePosixPath(name)
  if not name or p.is_absolute() or '\\' in name or ':' in name or any(ord(c)<32 for c in name) or any(x in ('','.','..') or x.startswith('.') for x in name.split('/')):raise FileError(400,'文件路径无效')
  if any(x.casefold().startswith('adult') or x.casefold() in ('save','savedata','saves','userdata','private') for x in p.parts):raise FileError(400,'此目录不属于本体资源管理范围')
  if p.suffix.lower() not in self.ALLOWED:raise FileError(400,'不支持此文件类型')
  target=self.files/name
  if not target.resolve().is_relative_to(self.files.resolve()) or any(p.is_symlink() for p in [target,*target.parents] if p!=self.root.parent):raise FileError(400,'不允许符号链接')
  return name
 def config(self):
  config=json.loads(self.manifest.read_text()) if self.manifest.exists() else {'root':str(self.root/'missing'),'files':[],'overrides':{}}
  names=set(config['files']);overrides=dict(config.get('overrides',{}))
  with self.lock:
   for p in self.files.rglob('*'):
    if p.is_file() and not p.is_symlink():
     n=p.relative_to(self.files).as_posix();names.add(n);overrides[n]=str(p)
   names-=set(self.data['deleted'])
  return {**config,'files':sorted(names),'overrides':overrides}
 def target(self,name):
  c=self.config()
  if name not in c['files']:return None
  p=Path(c['overrides'].get(name,str(Path(c['root'])/name)))
  return p if p.is_file() else None
 def version(self,name):
  p=self.target(name)
  if p is None:return 'new'
  s=p.stat();return f'{s.st_size}-{s.st_mtime_ns}-'+('custom' if p.is_relative_to(self.files) else 'base')
 def listing(self):
  c=self.config();entries=[]
  for n in c['files']:
   try:self.name(n)
   except FileError:continue
   p=self.target(n)
   if p:
    s=p.stat();entries.append({'path':n,'bytes':s.st_size,'modified':s.st_mtime,'version':self.version(n),'custom':p.is_relative_to(self.files),'editable':p.suffix.lower() in self.TEXT and s.st_size<=2*1024**2})
  return {'files':entries,'deleted':self.data['deleted'],'history':list(reversed(self.data['history'])),'freeBytes':shutil.disk_usage(self.root).free,'maxUpload':self.MAX_UPLOAD}
 def persist(self):
  tmp=self.root/'state.new';tmp.write_text(json.dumps(self.data,ensure_ascii=False));os.replace(tmp,self.state)
 def backup(self,name):
  p=self.files/name
  if p.is_file():
   identity=uuid.uuid4().hex;os.link(p,self.history/identity)
   self.data['history'].append({'id':identity,'path':name,'bytes':p.stat().st_size,'created':time.time()})
 def check(self,name,version):
  if not isinstance(version,str) or version!=self.version(name):raise FileError(409,'文件已变化，请刷新列表后重试')
 def upload(self,name,source,length,version):
  name=self.name(name)
  if not 0<=length<=self.MAX_UPLOAD:raise FileError(413,'单文件最大4 GiB')
  # Serialize streamed writes to avoid quota races and incomplete publication.
  with self.lock:
   self.check(name,version)
   if shutil.disk_usage(self.root).free<length+512*1024**2:raise FileError(507,'空间不足，需保留512 MiB运行空间')
   fd,tmp=tempfile.mkstemp(prefix='upload-',dir=self.root)
   try:
    with os.fdopen(fd,'wb') as out:
     remaining=length
     while remaining:
      chunk=source.read(min(1024**2,remaining))
      if not chunk:raise FileError(400,'上传中断，原文件已保留')
      out.write(chunk);remaining-=len(chunk)
     out.flush();os.fsync(out.fileno())
    self.backup(name);target=self.files/name;target.parent.mkdir(parents=True,exist_ok=True);os.replace(tmp,target)
    self.data['deleted']=[n for n in self.data['deleted'] if n!=name];self.persist()
   finally:Path(tmp).unlink(missing_ok=True)
 def delete(self,name,version):
  name=self.name(name)
  with self.lock:
   self.check(name,version)
   if self.target(name) is None:raise FileError(404,'文件不存在')
   self.backup(name);(self.files/name).unlink(missing_ok=True)
   if name not in self.data['deleted']:self.data['deleted'].append(name)
   self.persist()
 def reset(self,name,version):
  name=self.name(name)
  with self.lock:
   self.check(name,version);self.backup(name);(self.files/name).unlink(missing_ok=True)
   self.data['deleted']=[n for n in self.data['deleted'] if n!=name];self.persist()
 def rename(self,name,destination,version):
  name=self.name(name);destination=self.name(destination)
  if name==destination:return
  with self.lock:
   self.check(name,version)
   if self.target(destination):raise FileError(409,'目标文件已存在')
   source=self.target(name)
   if source is None:raise FileError(404,'文件不存在')
   target=self.files/destination;target.parent.mkdir(parents=True,exist_ok=True)
   try:os.link(source,target)
   except OSError:
    if shutil.disk_usage(self.root).free<source.stat().st_size+512*1024**2:raise FileError(507,'空间不足')
    shutil.copyfile(source,target)
   self.delete(name,version)
   self.data['deleted']=[n for n in self.data['deleted'] if n!=destination];self.persist()
 def restore(self,identity,name,version):
  name=self.name(name)
  with self.lock:
   item=next((x for x in self.data['history'] if x['id']==identity and x['path']==name),None)
   if item is None:raise FileError(404,'历史版本不存在')
   p=self.history/item['id']
   with p.open('rb') as source:self.upload(name,source,p.stat().st_size,version)
