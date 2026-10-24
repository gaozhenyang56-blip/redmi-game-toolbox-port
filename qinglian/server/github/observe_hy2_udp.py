#!/usr/bin/env python3
"""Bounded packet-header counters only. Never writes a pcap or prints peer/payload."""
import json,sys
from ssh_common import connection,remote_json
SCRIPT=r'''
import collections,json,select,socket,sqlite3,struct,time
from pathlib import Path
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text())
route=Path('/proc/net/route').read_text().splitlines()[1:]
iface=next(line.split()[0] for line in route if len(line.split())>3 and line.split()[1]=='00000000' and int(line.split()[3],16)&1)
def udp():
 lines=Path('/proc/net/snmp').read_text().splitlines()
 for i,line in enumerate(lines[:-1]):
  if line.startswith('Udp:') and 'RcvbufErrors' in line:return dict(zip(line.split()[1:],map(int,lines[i+1].split()[1:])))
 return {}
before=udp();counts=collections.Counter();sizes=collections.defaultdict(list);ports=set();peak=0;states={};next_sample=0
start=time.monotonic();end=start+100
with socket.socket(socket.AF_PACKET,socket.SOCK_DGRAM,socket.htons(3)) as channel:
 channel.bind((iface,0));channel.setblocking(False)
 while time.monotonic()<end and sum(counts.values())<50000:
  if time.monotonic()>=next_sample:
   with sqlite3.connect('file:'+cfg['statePath']+'?mode=ro',uri=True) as db:
    states={row[0]:row[1] for row in db.execute("SELECT status,COUNT(*) FROM exports WHERE protocol='hysteria2' AND expires>? GROUP BY status",(int(time.time()),))}
   peak=max(peak,states.get('active',0));next_sample=time.monotonic()+3
  if not select.select([channel],[],[],.3)[0]:continue
  packet,address=channel.recvfrom(65535)
  if len(packet)<28 or packet[0]>>4!=4 or packet[9]!=17:continue
  offset=(packet[0]&15)*4
  if offset<20 or len(packet)<offset+8 or struct.unpack_from('!H',packet,6)[0]&8191:continue
  src,dst,length,_=struct.unpack_from('!HHHH',packet,offset)
  outgoing=address[2]==socket.PACKET_OUTGOING
  port=src if outgoing else dst
  if port!=443 and not 22000<=port<24000:continue
  label=('legacy443' if port==443 else 'accountRange')+('Tx' if outgoing else 'Rx')
  counts[label]+=1;ports.add(port)
  if len(sizes[label])<50000:sizes[label].append(length)
after=udp()
print(json.dumps({'observedSeconds':round(time.monotonic()-start,1),'packetCounts':dict(counts),'udpLengths':{key:{'min':min(value),'max':max(value)} for key,value in sizes.items()},'distinctServerPorts':len(ports),'peakActiveAccountHy2Workers':peak,'lastWorkerStates':states,'hostUdpCountersDelta':{key:after[key]-before.get(key,0) for key in after},'packetLimitReached':sum(counts.values())>=50000,'payloadOrPeerDataStored':False}))
'''
try:
 with connection() as ssh:print(json.dumps(remote_json(ssh,SCRIPT,timeout=130)))
except Exception as error:
 print('UDP observation stopped:',type(error).__name__,'; no private details printed.',file=sys.stderr);sys.exit(1)
