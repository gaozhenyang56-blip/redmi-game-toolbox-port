#!/usr/bin/env python3
"""Bounded read-only network diagnostics. Never logs peers, credentials or profiles."""
import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,os,re,subprocess,time,urllib.request,concurrent.futures,sqlite3
from pathlib import Path
def command(args):
 p=subprocess.run(args,capture_output=True,text=True,timeout=15);return p.stdout.strip() if p.returncode==0 else 'unavailable'
keys=['net.ipv4.tcp_congestion_control','net.ipv4.tcp_available_congestion_control','net.core.default_qdisc','net.ipv4.tcp_rmem','net.ipv4.tcp_wmem','net.core.rmem_max','net.core.wmem_max','net.ipv4.tcp_moderate_rcvbuf','net.ipv4.tcp_mtu_probing','net.ipv4.tcp_no_metrics_save']
settings={key:command(['sysctl','-n',key]) for key in keys}
# A matched live inbound is read only in memory. Never return UUID, port or peer.
cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());store=sqlite3.connect('file:'+cfg['statePath']+'?mode=ro',uri=True)
selection=store.execute("SELECT inbound FROM preferences WHERE id=1").fetchone()
db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True)
row=db.execute('SELECT port FROM inbounds WHERE id=?',(int(selection[0]),)).fetchone() if selection else None
# Initial bootstrap fallback matches existing controller behavior without exposing identifiers.
if not row:
 for entry in db.execute('SELECT port,settings FROM inbounds'):
  try:
   if any(c.get('id')==cfg.get('nodeUuid') for c in json.loads(entry[1]).get('clients',[])):row=entry;break
  except Exception:pass
def sockets():
 if not row:return {'available':False}
 raw=command(['ss','-tinm','state','established','sport','=',':'+str(row[0])]);flows=[]
 for line in raw.splitlines():
  if 'rtt:' not in line:continue
  item={}
  for field in ['rtt','rto','cwnd','mss','pmtu','bytes_sent','bytes_retrans','reordering','snd_wnd','rcv_space','delivery_rate','pacing_rate']:
   match=re.search(r'(?:^|\s)'+field+r'[: ]([0-9.]+)',line)
   if match:item[field]=float(match.group(1))
  item['bbr']='bbr' in line;flows.append(item)
 return {'available':True,'activeFlows':len(flows),'flows':flows[:12]}
def counters():
 lines=Path('/proc/net/snmp').read_text().splitlines()
 for i in range(len(lines)-1):
  if lines[i].startswith('Tcp:') and 'RetransSegs' in lines[i]:return {k:int(v) for k,v in zip(lines[i].split()[1:],lines[i+1].split()[1:]) if k in ['OutSegs','RetransSegs','InErrs','OutRsts']}
 return {}
def transfer(size):
 start=time.monotonic();count=0
 try:
  req=urllib.request.Request('https://speed.cloudflare.com/__down?bytes='+str(size),headers={'Accept-Encoding':'identity','User-Agent':'Qinglian-bounded-diagnostic'})
  with urllib.request.urlopen(req,timeout=12) as response:
   if response.status!=200:return {'ok':False,'reason':'http'}
   while count<size and time.monotonic()-start<20:
    part=response.read(min(65536,size-count))
    if not part:break
    count+=len(part)
  elapsed=time.monotonic()-start
  return {'ok':count==size,'bytes':count,'seconds':round(elapsed,3),'Mbps':round(count*8/elapsed/1e6,2)}
 except Exception as error:return {'ok':False,'bytes':count,'reason':type(error).__name__}
before=counters();flows=sockets();single=transfer(16*1024*1024);start=time.monotonic()
with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:parallel=list(pool.map(transfer,[8*1024*1024]*4))
elapsed=time.monotonic()-start;after=counters()
print(json.dumps({'cpuCount':os.cpu_count(),'load':list(os.getloadavg()),'kernel':os.uname().release,'sysctl':settings,'qdisc':command(['tc','qdisc','show']),'selectedInboundTCP':flows,'serverDownloadSingle':single,'serverDownloadParallel':{'streams':parallel,'aggregateMbps':round(sum(p.get('bytes',0) for p in parallel)*8/elapsed/1e6,2)},'tcpCounterDelta':{k:after[k]-before.get(k,0) for k in after},'xuiActive':command(['systemctl','is-active','x-ui']),'availableMemoryKiB':next((int(line.split()[1]) for line in Path('/proc/meminfo').read_text().splitlines() if line.startswith('MemAvailable:')),None)}))
'''
try:
 with connection() as ssh:result=remote_json(ssh,SCRIPT,timeout=150)
 print(json.dumps(result))
except Exception as error:
 print('Performance diagnostic failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
