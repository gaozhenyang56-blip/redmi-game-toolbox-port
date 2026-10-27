"""A bounded startup working set, not an inventory to download the whole game."""
import struct
from pathlib import Path
from urllib.parse import quote
from dialogue_overlay import MAGIC,index,record

BLOCK=1024**2

def preload_plan(config,manager,mib,revision):
 budget=mib*BLOCK;files={};targets={}
 for name in config['files']:
  target=manager.game_target(name) if manager else Path(config.get('overrides',{}).get(name,str(Path(config['root'])/name)))
  if target is None or not target.is_file():continue
  stat=target.stat();files[name]={'path':name,'url':'/game/'+quote(name,safe='/'),'size':stat.st_size,'etag':f'"{stat.st_size}-{stat.st_mtime_ns}"'};targets[name]=target
 blocks=[];seen=set();total=0
 def add(name,position,length):
  nonlocal total
  item=files[name]
  if length<=0:return
  first=position//BLOCK;last=(position+length-1)//BLOCK
  for number in range(first,last+1):
   start=number*BLOCK;size=min(BLOCK,item['size']-start);key=(name,start)
   if key in seen or size<=0 or total+size>budget:continue
   seen.add(key);blocks.append({**item,'start':start,'length':size});total+=size
 for name in ('xp3filter.tjs','patch.tjs'):
  if name in files:add(name,0,files[name]['size'])
 archives=sorted((n for n in files if n.lower().endswith('.xp3')),key=lambda n:(n!='data.xp3',n))
 for name in archives:
  target=targets[name]
  with target.open('rb') as stream:header=stream.read(19)
  if len(header)==19 and header[:11]==MAGIC:
   add(name,0,19);offset=struct.unpack_from('<Q',header,11)[0]
   if 0<=offset<files[name]['size']:add(name,offset,min(BLOCK,files[name]['size']-offset))
 if 'data.xp3' in targets and total<budget:
  try:
   entries=[]
   for tag,value in index(targets['data.xp3']):
    if tag!=b'File':continue
    name,parts=record(value);lower=name.lower()
    priority=0 if lower=='startup.tjs' or lower.startswith(('system/','main/','sysscn/','k2compat/')) else 1 if lower.startswith('font/') else 2
    if priority<2:entries.append((priority,lower,parts))
   for _,_,parts in sorted(entries,key=lambda x:(x[0],x[1])):
    for flags,offset,full,packed in struct.iter_unpack('<IQQQ',parts[b'segm']):add('data.xp3',offset,packed)
    if total>=budget:break
  except (ValueError,KeyError,struct.error):pass
 return {'schema':1,'revision':revision,'budgetBytes':budget,'totalBytes':total,'cacheLimitBytes':256*BLOCK,'blockBytes':BLOCK,'blocks':blocks}
