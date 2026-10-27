import io,json,struct,tempfile,unittest,zlib
from pathlib import Path
from dialogue_overlay import MAGIC,chunk,index,record,build,FileContent
from file_manager import Files

def xp3(path,entries):
 payload=bytearray();records=[]
 for name,value,zero,compressed in entries:
  raw=zlib.compress(value) if compressed else value;offset=19+len(payload);payload.extend(raw);encoded=name.encode('utf-16-le')
  entry=chunk(b'info',struct.pack('<IQQH',0,len(value),len(raw),len(encoded)//2)+encoded)+chunk(b'adlr',struct.pack('<I',0 if zero else zlib.adler32(value)))+chunk(b'segm',struct.pack('<IQQQ',1 if compressed else 0,offset,len(value),len(raw)))
  records.append(chunk(b'File',entry))
 data=b''.join(records);packed=zlib.compress(data);path.write_bytes(MAGIC+struct.pack('<Q',19+len(payload))+payload+b'\1'+struct.pack('<QQ',len(packed),len(data))+packed)

def extract(path,name):
 for tag,data in index(path):
  if tag==b'File':
   n,parts=record(data)
   if n==name:
    result=bytearray()
    with path.open('rb') as source:
     for flags,offset,full,packed in struct.iter_unpack('<IQQQ',parts[b'segm']):
      source.seek(offset);raw=source.read(packed);result.extend(zlib.decompress(raw) if flags&1 else raw)
    return bytes(result),struct.unpack('<I',parts[b'adlr'])[0]
 raise AssertionError('Missing entry '+name)

class OverlayTests(unittest.TestCase):
 def setUp(self):
  self.temp=tempfile.TemporaryDirectory();self.root=Path(self.temp.name);self.base=self.root/'base';self.base.mkdir();self.archive=self.base/'data.xp3'
  xp3(self.archive,[('scenario/start.ks',b'original dialogue',False,True),('image/background.pimg',b'original image',False,False),('config.tjs',b'unchanged config',False,False)])
  self.original=self.archive.read_bytes();manifest=self.root/'manifest.json';manifest.write_text(json.dumps({'root':str(self.base),'files':['data.xp3'],'overrides':{}}));self.files=Files(self.root/'state',manifest)
 def tearDown(self):self.temp.cleanup()
 def upload(self,path,value):self.files.upload(path,io.BytesIO(value),len(value),self.files.version(path))
 def materialize(self):
  view=self.files.game_target('data.xp3');p=self.root/'view.xp3'
  with view.open('rb') as source:p.write_bytes(source.read())
  return view,p
 def test_dialogue_replacement_zero_marker_and_original_fallback(self):
  self.upload('unencrypted/scenario/start.ks','修改后的普通对话'.encode('utf-16'))
  view,path=self.materialize();value,hash=extract(path,'scenario/start.ks');self.assertEqual(value.decode('utf-16'),'修改后的普通对话');self.assertEqual(hash,0)
  self.assertEqual(extract(path,'config.tjs')[0],b'unchanged config');self.assertEqual(self.archive.read_bytes(),self.original)
  for offset,length in [(0,11),(9,20),(18,40),(len(self.original)-4,35),(view.size-9,20)]:
   with view.open('rb') as source:source.seek(offset);self.assertEqual(source.read(length),path.read_bytes()[offset:offset+length])
 def test_texture_larger_than_text_limit_is_lazy_and_readable(self):
  texture=b'TEXTURE'+b'\x88'*(3*1024**2)
  self.upload('unencrypted/image/background.pimg',texture);view,path=self.materialize()
  self.assertTrue(any(isinstance(v,FileContent) for _,_,v in view.spans));self.assertEqual(extract(path,'image/background.pimg'),(texture,0))
 def test_unencrypted_xp3_basename_fallback_and_loose_priority(self):
  package=self.root/'package.xp3';xp3(package,[('start.ks',b'packed dialogue',True,True)])
  self.upload('unencrypted.xp3',package.read_bytes());_,path=self.materialize();self.assertEqual(extract(path,'scenario/start.ks'),(b'packed dialogue',0))
  self.upload('unencrypted/scenario/start.ks',b'loose has priority');_,path=self.materialize();self.assertEqual(extract(path,'scenario/start.ks')[0],b'loose has priority')
 def test_bad_patch_rejected_without_changing_base(self):
  self.upload('unencrypted.xp3',b'broken archive');target=self.files.game_target('data.xp3');self.assertEqual(target,self.archive)
  self.assertTrue(self.files.dialogue_views()[1]['errors']);self.assertEqual(self.archive.read_bytes(),self.original)
 def test_reset_and_unmatched_files_are_reported(self):
  self.upload('unencrypted/scenario/unknown.ks',b'unknown');self.assertEqual(self.files.dialogue_views()[1]['unmatched'],['scenario/unknown.ks'])
  self.upload('unencrypted/scenario/start.ks',b'override');self.files.reset('unencrypted/scenario/start.ks',self.files.version('unencrypted/scenario/start.ks'))
  self.assertEqual(self.files.game_target('data.xp3'),self.archive)

if __name__=='__main__':unittest.main()
