"""Put browser compatibility setup before the original archived startup script."""
import argparse,json,struct,zlib
from pathlib import Path

def chunk(tag,data):return tag+struct.pack('<Q',len(data))+data
def chunks(data):
 pos=0
 while pos+12<=len(data):
  tag,size=struct.unpack_from('<4sQ',data,pos);yield tag,data[pos+12:pos+12+size];pos+=12+size
parser=argparse.ArgumentParser();parser.add_argument('--game-dir',type=Path,required=True);args=parser.parse_args()
path=args.game_dir/'data.xp3';marker=path.with_suffix('.web-boot.json')
if marker.exists():raise SystemExit(0)
with path.open('r+b') as f:
 f.seek(11);offset=struct.unpack('<Q',f.read(8))[0];original_index=offset;f.seek(offset);flag=f.read(1)[0]
 if flag!=1:raise ValueError('Expected normalized compressed index')
 packed,size=struct.unpack('<QQ',f.read(16));index=zlib.decompress(f.read(packed));records=[];original=None
 for tag,block in chunks(index):
  parts=list(chunks(block));info=next(value for key,value in parts if key==b'info');length=struct.unpack_from('<H',info,20)[0];name=info[22:22+length*2].decode('utf-16-le')
  if name=='startup.tjs':original=parts
  records.append((tag,parts,name))
 if original is None:raise ValueError('Original startup missing')
 identity=struct.unpack('<I',next(v for k,v in original if k==b'adlr'))[0];raw=b''
 for flags,offset,full,packed in struct.iter_unpack('<IQQQ',next(v for k,v in original if k==b'segm')):
  f.seek(offset);data=f.read(packed);raw+=zlib.decompress(data) if flags&1 else data
 if zlib.adler32(bytes(c^1 for c in raw))&0xffffffff!=identity:raise ValueError('Unsupported startup encoding')
 bootstrap=b'''try { Plugins.link("motionplayer.dll"); if(typeof Motion.D3DAdaptor=="undefined") { with(Motion.Player){.useD3D=0;} } else { &Motion.Player.useD3D=0; } System.setArgument("-hdresomode","1080"); Window.movieQualitySelectMenuItem=%["children"=>%[]]; } catch(e) { Debug.message("[port] graphics: "+e.message); }
try { Plugins.link("krkrsteam.dll"); Steam.getLanguage=function(){return "schinese";}; Debug.message("[port] Simplified Chinese selected"); } catch(e) { Debug.message("[port] language: "+e.message); }
Scripts.execStorage("data.xp3>web-original-startup.tjs");
'''
 if len(bootstrap)>len(raw):raise ValueError('Bootstrap exceeds verified transform span')
 f.seek(0,2);start=f.tell();f.write(bytes(c^1 for c in bootstrap));output=[]
 for tag,parts,name in records:
  newname='web-original-startup.tjs' if name=='startup.tjs' else name
  rebuilt=[]
  for key,value in parts:
   if key==b'info' and name=='startup.tjs':
    encoded=newname.encode('utf-16-le');value=value[:20]+struct.pack('<H',len(encoded)//2)+encoded
   rebuilt.append(chunk(key,value))
  output.append(chunk(tag,b''.join(rebuilt)))
 newinfo=struct.pack('<IQQH',0x80000000,len(bootstrap),len(bootstrap),len('startup.tjs'))+'startup.tjs'.encode('utf-16-le')
 output.append(chunk(b'File',chunk(b'adlr',struct.pack('<I',identity))+chunk(b'segm',struct.pack('<IQQQ',0,start,len(bootstrap),len(bootstrap)))+chunk(b'info',newinfo)))
 plain=b''.join(output);packed=zlib.compress(plain);f.seek(0,2);new=f.tell();f.write(b'\x01'+struct.pack('<QQ',len(packed),len(plain))+packed);f.flush();f.seek(11);f.write(struct.pack('<Q',new));f.flush()
marker.write_text(json.dumps({'originalIndexOffset':original_index,'bootstrapBytes':len(bootstrap)}))
print('Archived startup compatibility adapter installed')
