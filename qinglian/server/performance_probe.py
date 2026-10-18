#!/usr/bin/env python3
"""Bounded read-only network diagnostics. Never logs peers, credentials or profiles."""
import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,os,re,subprocess,time,urllib.request,urllib.error,concurrent.futures,sqlite3
from pathlib import Path
def command(args):
 p=subprocess.run(args,capture_output=True,text=True,timeout=15);return p.stdout.strip() if p.returncode==0 else 'unavailable'
keys=['net.ipv4.tcp_congestion_control','net.ipv4.tcp_available_congestion_control','net.core.default_qdisc','net.ipv4.tcp_rmem','net.ipv4.tcp_wmem','net.core.rmem_max','net.core.wmem_max','net.ipv4.tcp_moderate_rcvbuf','net.ipv4.tcp_mtu_probing','net.ipv4.tcp_no_metrics_save','net.ipv4.tcp_sack','net.ipv4.tcp_timestamps','net.ipv4.tcp_window_scaling','net.ipv4.tcp_reordering','net.ipv4.tcp_max_reordering','net.ipv4.tcp_recovery','net.ipv4.tcp_fastopen','net.ipv4.tcp_slow_start_after_idle','net.ipv4.tcp_ecn','net.core.netdev_max_backlog']
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
 raw=command(['ss','-tinmHO','state','established','sport','=',':'+str(row[0])]);flows=[]
 for line in raw.splitlines():
  if 'rtt:' not in line:continue
  item={}
  for field in ['rtt','rto','cwnd','mss','pmtu','bytes_sent','bytes_retrans','reordering','snd_wnd','rcv_space','delivery_rate','pacing_rate','rwnd_limited','sndbuf_limited','busy','notsent']:
   match=re.search(r'(?:^|\s)'+field+r'[: ]([0-9.]+)',line)
   if match:item[field]=float(match.group(1))
  memory=re.search(r'skmem:\(r(\d+),rb(\d+),t(\d+),tb(\d+)',line)
  if memory:item['receiveBufferBytes']=int(memory[2]);item['sendBufferBytes']=int(memory[4])
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
 except urllib.error.HTTPError as error:return {'ok':False,'bytes':count,'httpStatus':error.code}
 except Exception as error:return {'ok':False,'bytes':count,'reason':type(error).__name__}
def cpu():return list(map(int,Path('/proc/stat').read_text().splitlines()[0].split()[1:]))
def processes():
 result={}
 for entry in Path('/proc').iterdir():
  if not entry.name.isdigit():continue
  try:
   exe=(entry/'exe').resolve();name=exe.name
   if not (name.startswith('xray') or name=='x-ui'):continue
   data=(entry/'stat').read_text();fields=data[data.rfind(')')+2:].split()
   result[entry.name]={'name':'xray' if name.startswith('xray') else 'panel','ticks':int(fields[11])+int(fields[12]),'rssKiB':int(fields[21])*os.sysconf('SC_PAGE_SIZE')//1024}
  except (OSError,ValueError):pass
 return result
started=time.monotonic();cpu_before=cpu();process_before=processes()
before=counters();flows=sockets();single=transfer(8*1024*1024);start=time.monotonic()
with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:parallel=list(pool.map(transfer,[8*1024*1024]*4))
elapsed=time.monotonic()-start
samples=[]
for i in range(4):
 samples.append(sockets());time.sleep(3)
after=counters();cpu_after=cpu();process_after=processes();span=time.monotonic()-started
process_load=[]
for pid,value in process_after.items():
 if pid in process_before:process_load.append({'name':value['name'],'oneCoreCpuPercent':round((value['ticks']-process_before[pid]['ticks'])/os.sysconf('SC_CLK_TCK')/span*100,2),'rssKiB':value['rssKiB']})
delta=[a-b for a,b in zip(cpu_after,cpu_before)];total=sum(delta[:8]);steal=round(delta[7]/total*100,2) if total else 0
xray=Path('/usr/local/x-ui/bin/xray-linux-amd64');version=command([str(xray),'version']).splitlines()[:1] if xray.exists() else []
config_path=Path('/usr/local/x-ui/bin/config.json');config=json.loads(config_path.read_text()) if config_path.exists() else {}
policy=config.get('policy',{});safe_policy={key:policy.get(key,{}) for key in ['system','levels']}
flags=set(next((line.split(':',1)[1].split() for line in Path('/proc/cpuinfo').read_text().splitlines() if line.startswith('flags')),[]))
extra={'tcpSamples':samples,'sampleSeconds':round(span,2),'processLoad':process_load,'cpuStealPercent':steal,'cpuCrypto':{key:key in flags for key in ['aes','avx','avx2']},'xrayVersion':version,'xrayPolicy':safe_policy,'sniffingEnabledCount':sum(bool(i.get('sniffing',{}).get('enabled',False)) for i in config.get('inbounds',[])),'qdiscStatistics':command(['tc','-s','qdisc','show']),'interfaceCounters':{key:int(Path('/sys/class/net/eth0/statistics/'+key).read_text()) for key in ['rx_dropped','tx_dropped','rx_errors','tx_errors'] if Path('/sys/class/net/eth0/statistics/'+key).exists()}}

print(json.dumps({'deep':extra,'cpuCount':os.cpu_count(),'load':list(os.getloadavg()),'kernel':os.uname().release,'sysctl':settings,'qdisc':command(['tc','qdisc','show']),'selectedInboundTCP':flows,'selectedInboundTCPAfter':sockets(),'serverDownloadSingle':single,'serverDownloadParallel':{'streams':parallel,'aggregateMbps':round(sum(p.get('bytes',0) for p in parallel)*8/elapsed/1e6,2)},'tcpCounterDelta':{k:after[k]-before.get(k,0) for k in after},'xuiActive':command(['systemctl','is-active','x-ui']),'availableMemoryKiB':next((int(line.split()[1]) for line in Path('/proc/meminfo').read_text().splitlines() if line.startswith('MemAvailable:')),None)}))
'''
try:
 with connection() as ssh:result=remote_json(ssh,SCRIPT,timeout=150)
 print(json.dumps(result))
except Exception as error:
 print('Performance diagnostic failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
