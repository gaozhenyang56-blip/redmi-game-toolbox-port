"""Normalize Yuzu Senren XP3 filename tables for a standard Kirikiri reader.
Filename-table layout follows GARbro YuzCrypt.cs / ArcXP3.cs (morkt, MIT).
Only archive metadata is rewritten; original content segments remain unchanged.
"""
import json,struct,zlib,argparse
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def chunk(tag,data):return tag+struct.pack('<Q',len(data))+data
def chunks(data):
 pos=0
 while pos+12<=len(data):
  tag,size=struct.unpack_from('<4sQ',data,pos);end=pos+12+size
  if end>len(data):raise ValueError('Invalid XP3 metadata')
  yield tag,data[pos+12:end];pos=end

def convert(path):
 marker=path.with_suffix(path.suffix+'.web-index.json')
 if marker.exists():return
 with path.open('r+b') as f:
  header=f.read(19)
  if header[:11]!=b'XP3\r\n \n\x1a\x8bg\x01':raise ValueError('Not an XP3 archive')
  offset=struct.unpack_from('<Q',header,11)[0];indexes=[]
  for depth in range(20):
   f.seek(offset);flag=f.read(1)[0]
   if flag&1:
    packed,size=struct.unpack('<QQ',f.read(16));index=zlib.decompress(f.read(packed))
   else:index=f.read(struct.unpack('<Q',f.read(8))[0])
   indexes.append(index)
   if not flag&128:break
   offset=struct.unpack('<Q',f.read(8))[0]
  records=list(chunks(b''.join(indexes)));names={}
  for tag,block in records:
   if tag==b'sen:':
    offset,unpacked,packed=struct.unpack_from('<QII',block);f.seek(offset);data=zlib.decompress(f.read(packed))
    for _,record in chunks(data):
     hash,length=struct.unpack_from('<IH',record);name=record[6:6+length*2].decode('utf-16-le')
     if name=='$':name='startup.tjs'
     names[hash]=name
  if not names:print(path.name,'no custom name table');return
  entries=[]
  for tag,block in records:
   if tag!=b'File':continue
   parts=list(chunks(block));hash=next((struct.unpack_from('<I',v)[0] for t,v in parts if t==b'adlr'),None)
   old=next(v for t,v in parts if t==b'info');n=struct.unpack_from('<H',old,20)[0];oldname=old[22:22+n*2].decode('utf-16-le')
   newname=names.get(hash,oldname)
   if newname.startswith(('/', '\\')) or '..' in Path(newname).parts:raise ValueError('Unsafe archive name')
   entries.append((oldname,newname,hash,parts))
  mapped={new for old,new,_,_ in entries if old!=new}
  output=[];rewritten=0;startup=None
  for old,new,hash,parts in entries:
   if old==new and new in mapped:continue
   rebuilt=[]
   for tag,value in parts:
    if tag==b'info':
     encoded=new.encode('utf-16-le');value=value[:20]+struct.pack('<H',len(encoded)//2)+encoded
    rebuilt.append(chunk(tag,value))
   if old!=new:rewritten+=1
   if new.lower()=='startup.tjs':
    segments=next(v for t,v in parts if t==b'segm');data=b''
    for pos in range(0,len(segments),28):
     flag,offset,size,packed=struct.unpack_from('<IQQQ',segments,pos);f.seek(offset);piece=f.read(packed);data+=zlib.decompress(piece) if flag&1 else piece
    startup={'size':len(data),'magic':data[:8].hex(),'checksumMatches':(zlib.adler32(data)&0xffffffff)==hash}
   output.append(chunk(b'File',b''.join(rebuilt)))
  packed=zlib.compress(b''.join(output),6);f.seek(0,2);append=f.tell();f.write(b'\x01'+struct.pack('<QQ',len(packed),sum(map(len,output)))+packed);f.flush()
  f.seek(11);f.write(struct.pack('<Q',append));f.flush()
  marker.write_text(json.dumps({'originalHeader':header.hex(),'newIndexOffset':append,'renamed':rewritten,'startup':startup},indent=2))
  print(path.name,'mapped',rewritten,'names; startup',startup)
parser=argparse.ArgumentParser();parser.add_argument('--game-dir',type=Path);args=parser.parse_args()
root=args.game_dir or next((ROOT/'private/extracted').glob('*/data.xp3')).parent
for path in sorted(root.glob('*.xp3')):
 if not path.name.casefold().startswith('adult'):convert(path)
