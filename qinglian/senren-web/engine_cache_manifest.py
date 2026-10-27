"""Versioned public engine assets, separate from game resource caching."""
import hashlib,json,re
from functools import lru_cache
from pathlib import Path
from urllib.parse import urlsplit,parse_qs,quote

@lru_cache(maxsize=256)
def content_hash(path,size,modified):
 with Path(path).open('rb') as source:return hashlib.file_digest(source,'sha256').hexdigest()

def engine_manifest(root):
 engine=(root/'engine').resolve();html=(engine/'index.html').read_text();aliases={}
 for match in re.finditer(r'src=(?:"([^"]+)"|([^\s>]+))',html):
  source=(match[1] or match[2]).replace('&amp;','&');url=urlsplit(source)
  if url.scheme or url.netloc:continue
  path=url.path if url.path.startswith('/') else '/engine/'+url.path
  aliases[path]=path+('?' +url.query if url.query else '')
 version=parse_qs(urlsplit(aliases.get('/engine/index.js','')).query).get('v')
 if version:aliases['/engine/index.wasm']='/engine/index.wasm?v='+quote(version[0])
 assets={}
 for target in engine.rglob('*'):
  if target.is_file() and target.resolve().is_relative_to(engine):assets['/engine/'+target.relative_to(engine).as_posix()]=target
 for name in ('session-saves.js','preload-cache.js','engine-cache.js'):
  target=root/'web'/name
  if target.is_file():assets['/'+name]=target
 files=[]
 for path,target in sorted(assets.items()):
  stat=target.stat();files.append({'url':aliases.get(path,path),'size':stat.st_size,'etag':f'"{stat.st_size}-{stat.st_mtime_ns}"','sha256':content_hash(str(target),stat.st_size,stat.st_mtime_ns)})
 if not any(item['url'].startswith('/engine/index.wasm') for item in files):raise ValueError('Engine unavailable')
 identity=[(item['url'],item['size'],item['sha256']) for item in files]
 return {'schema':1,'revision':hashlib.sha256(json.dumps(identity,separators=(',',':')).encode()).hexdigest(),'totalBytes':sum(item['size'] for item in files),'files':files}
