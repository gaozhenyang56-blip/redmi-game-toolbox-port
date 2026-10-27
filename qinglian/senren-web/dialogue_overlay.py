"""Read-only XP3 views for ordinary resource overrides, without Windows injection.

Compatibility reference: arcusmaximus/KirikiriTools, KirikiriUnencryptedArchive.
Text, script, image, audio and font resource reads can be redirected. Game archives remain untouched.
"""
import io,struct,zlib,threading
from collections import OrderedDict
from pathlib import Path,PurePosixPath
from types import SimpleNamespace

MAGIC=b'XP3\r\n \n\x1a\x8bg\x01'
RESOURCE={'.ks','.tjs','.txt','.csv','.json','.ini','.cfg','.pimg','.png','.jpg','.jpeg','.webp','.ogg','.wav','.mp3','.ttf','.otf'}
LIMIT=32*1024**2


def chunk(tag,data):return tag+struct.pack('<Q',len(data))+data

def chunks(data):
 pos=0
 while pos<len(data):
  if pos+12>len(data):raise ValueError('XP3索引截断')
  tag,length=struct.unpack_from('<4sQ',data,pos);end=pos+12+length
  if end>len(data):raise ValueError('XP3索引长度无效')
  yield tag,data[pos+12:end];pos=end

def unpack(data,limit):
 decoder=zlib.decompressobj();out=decoder.decompress(data,limit+1)
 if len(out)>limit or not decoder.eof:raise ValueError('XP3压缩数据超出限制或不完整')
 return out

def index(path):
 with path.open('rb') as source:
  header=source.read(19)
  if len(header)!=19 or header[:11]!=MAGIC:raise ValueError('不是XP3文件')
  offset=struct.unpack_from('<Q',header,11)[0];parts=[];total=0;visited=set();size=path.stat().st_size
  for _ in range(32):
   if offset in visited or not 19<=offset<size:raise ValueError('XP3索引地址无效')
   visited.add(offset);source.seek(offset);flag=source.read(1)[0];raw=source.read(8)
   if len(raw)!=8:raise ValueError('XP3索引截断')
   packed=struct.unpack('<Q',raw)[0]
   if packed>LIMIT:raise ValueError('XP3索引过大')
   if flag&7==1:
    expected=source.read(8)
    if len(expected)!=8:raise ValueError('XP3索引截断')
    expected=struct.unpack('<Q',expected)[0]
    if expected>LIMIT:raise ValueError('XP3索引过大')
    data=unpack(source.read(packed),expected)
    if len(data)!=expected:raise ValueError('XP3索引不完整')
   elif flag&7==0:data=source.read(packed)
   else:raise ValueError('不支持此XP3索引编码')
   total+=len(data)
   if total>LIMIT:raise ValueError('XP3索引过大')
   parts.append(data)
   if not flag&128:return list(chunks(b''.join(parts)))
   next_offset=source.read(8)
   if len(next_offset)!=8:raise ValueError('XP3连续索引截断')
   offset=struct.unpack('<Q',next_offset)[0]
  raise ValueError('XP3连续索引过多')

def record(data):
 parts=dict(chunks(data));info=parts[b'info']
 if len(info)<22:raise ValueError('XP3文件记录无效')
 length=struct.unpack_from('<H',info,20)[0]
 if len(info)<22+length*2:raise ValueError('XP3文件名不完整')
 name=info[22:22+length*2].decode('utf-16-le').replace('\\','/')
 return name,parts

def safe(name):
 return name and len(name)<=500 and not name.startswith('/') and ':' not in name and not any(ord(c)<32 for c in name) and all(p and p not in ('.','..') for p in name.split('/'))

class FileContent:
 def __init__(self,path):self.path=path;self.size=path.stat().st_size;self.stamp=path.stat().st_mtime_ns
 def __len__(self):return self.size
 def __getitem__(self,key):
  start,stop,step=key.indices(self.size)
  if step!=1:raise ValueError('Only contiguous reads are supported')
  with self.path.open('rb') as source:source.seek(start);return source.read(max(0,stop-start))

class EntryContent:
 cache=OrderedDict();cache_bytes=0;lock=threading.RLock();budget=64*1024**2
 def __init__(self,path,segments,size):self.path=path;self.segments=segments;self.size=size;self.stamp=path.stat().st_mtime_ns
 def __len__(self):return self.size
 def __getitem__(self,key):
  start,stop,step=key.indices(self.size)
  if step!=1:raise ValueError('Only contiguous reads are supported')
  out=bytearray();position=0
  with self.path.open('rb') as source:
   for flags,offset,full,packed in self.segments:
    left=max(start,position);right=min(stop,position+full)
    if right>left:
     if flags&1:
      cache_key=(str(self.path),self.stamp,offset,packed,full)
      with self.lock:
       value=self.cache.pop(cache_key,None)
       if value is None:
        source.seek(offset);value=unpack(source.read(packed),full)
        if full<=self.budget:
         while self.cache and self.cache_bytes+len(value)>self.budget:
          _,removed=self.cache.popitem(last=False);type(self).cache_bytes-=len(removed)
         type(self).cache_bytes+=len(value)
       if full<=self.budget:self.cache[cache_key]=value
       out.extend(value[left-position:right-position])
     else:
      source.seek(offset+left-position);out.extend(source.read(right-left))
    position+=full
  return bytes(out)

def plain_entries(path):
 result={};total=0
 with path.open('rb') as source:
  size=path.stat().st_size
  for tag,data in index(path):
   if tag!=b'File':continue
   name,parts=record(data)
   if not safe(name) or PurePosixPath(name).suffix.lower() not in RESOURCE:continue
   if parts.get(b'adlr')!=b'\0'*4:raise ValueError('明文XP3资源条目的hash必须为0')
   original=struct.unpack_from('<Q',parts[b'info'],4)[0]
   segments=list(struct.iter_unpack('<IQQQ',parts[b'segm']))
   if sum(v[2] for v in segments)!=original:raise ValueError('XP3资源数据不完整')
   for flags,offset,full,packed in segments:
    if offset+packed>size or (not flags&1 and full!=packed) or flags&~1:raise ValueError('XP3资源数据段无效')
    if flags&1 and (full>128*1024**2 or packed>128*1024**2):raise ValueError('单个压缩资源段上限128 MiB')
   if name.casefold() in result:raise ValueError('XP3资源重名')
   result[name.casefold()]=EntryContent(path,segments,original);total+=original
   if total>2*1024**3:raise ValueError('资源补丁展开总量上限2 GiB')
 return result

class ViewReader(io.RawIOBase):
 def __init__(self,view):self.view=view;self.position=0;self.source=view.path.open('rb')
 def readable(self):return True
 def seekable(self):return True
 def tell(self):return self.position
 def seek(self,offset,whence=0):
  position=offset+(self.position if whence==1 else self.view.size if whence==2 else 0)
  if position<0 or whence not in (0,1,2):raise ValueError('Invalid seek')
  self.position=position;return position
 def read(self,length=-1):
  remaining=max(0,self.view.size-self.position)
  if length>=0:remaining=min(remaining,length)
  out=bytearray()
  for start,end,value in self.view.spans:
   if remaining==0:break
   if self.position>=end:continue
   offset=self.position-start;take=min(remaining,end-self.position)
   if value is None:
    self.source.seek(self.position);data=self.source.read(take)
   else:data=value[offset:offset+take]
   if len(data)!=take:raise OSError('Underlying archive changed')
   out.extend(data);self.position+=take;remaining-=take
  return bytes(out)
 def close(self):
  self.source.close();super().close()

class ArchiveView:
 def __init__(self,path,records,replacements,generation):
  self.path=path;self.suffix=path.suffix;size=path.stat().st_size;self.spans=[];output=[];self.replaced=[];payload=[]
  for tag,data in records:
   if tag==b'File':
    name,parts=record(data);value=replacements.get(name.casefold())
    if value is not None:
     encoded=name.encode('utf-16-le')
     data=chunk(b'info',struct.pack('<IQQH',0,len(value),len(value),len(encoded)//2)+encoded)+chunk(b'adlr',b'\0'*4)+chunk(b'segm',struct.pack('<IQQQ',0,size,len(value),len(value)))
     payload.append((size,size+len(value),value));size+=len(value);self.replaced.append(name)
   output.append(chunk(tag,data))
  packed=zlib.compress(b''.join(output));tail=b'\1'+struct.pack('<QQ',len(packed),sum(map(len,output)))+packed
  self.spans=[(0,19,MAGIC+struct.pack('<Q',size)),(19,path.stat().st_size,None),*payload,(size,size+len(tail),tail)]
  self.size=size+len(tail);self.generation=max(path.stat().st_mtime_ns,generation)
 def __str__(self):return str(self.path)
 def is_file(self):return self.path.is_file()
 def is_relative_to(self,other):return self.path.is_relative_to(other)
 def stat(self):return SimpleNamespace(st_size=self.size,st_mtime_ns=self.generation)
 def open(self,mode='rb'):
  if mode!='rb':raise ValueError('Read-only XP3 view')
  return ViewReader(self)

def build(config,generation):
 paths={name:Path(config.get('overrides',{}).get(name,str(Path(config['root'])/name))) for name in config['files']}
 loose={};packed={};total=0;views={};report={'scope':'resources','archives':{},'unmatched':[],'errors':[]}
 try:
  for name,path in paths.items():
   relative=PurePosixPath(name)
   if relative.parts and relative.parts[0].casefold()=='unencrypted' and relative.suffix.lower() in RESOURCE and path.is_file():
    key='/'.join(relative.parts[1:]).casefold()
    if not safe(key):raise ValueError('资源补丁路径无效')
    loose[key]=FileContent(path);total+=len(loose[key])
   elif name.casefold()=='unencrypted.xp3' and path.is_file():packed=plain_entries(path)
  if total+sum(map(len,packed.values()))>2*1024**3:raise ValueError('资源补丁展开总量上限2 GiB')
  used=set()
  if not loose and not packed:return views,report
  for archive,path in paths.items():
   if path.suffix.lower()!='.xp3' or archive.casefold()=='unencrypted.xp3':continue
   records=index(path);selected={}
   for tag,data in records:
    if tag!=b'File':continue
    name,_=record(data);key=name.casefold()
    if key in loose:selected[key]=loose[key];used.add(key)
    elif key in packed:selected[key]=packed[key];used.add(key)
    elif PurePosixPath(key).name in packed:selected[key]=packed[PurePosixPath(key).name];used.add(PurePosixPath(key).name)
   if selected:
    view=ArchiveView(path,records,selected,max((getattr(value,'stamp',0) for value in selected.values()),default=0));views[archive]=view;report['archives'][archive]=view.replaced
  report['unmatched']=sorted((set(loose)|set(packed))-used)
 except (OSError,ValueError,KeyError,struct.error,UnicodeError) as error:
  views={};report['archives']={};report['errors']=[str(error)]
 return views,report
