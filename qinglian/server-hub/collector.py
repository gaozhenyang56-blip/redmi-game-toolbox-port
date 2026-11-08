"""Privileged, read-only inventory collector. Never runs service controls or exposes secrets."""
import concurrent.futures,hashlib,hmac,ipaddress,json,os,pwd,re,secrets,shutil,socket,sqlite3,subprocess,time,urllib.error,urllib.request
from pathlib import Path
DATA=Path('/var/lib/server-hub')
KNOWN={
 'astrbot.service':('AstrBot','对话机器人与插件后台',6185,'/'),
 'napcat-login.service':('NapCat','QQ 协议端与扫码登录',6099,'/health'),
 'openlist-astrbot.service':('OpenList','网盘与文件管理',5244,'/api/public/init_status'),
 'openlist-progress.service':('下载进度','速度波形、剩余时间与空间',5245,'/'),
 'x-ui.service':('x-ui / 轻连管理','节点、账号与轻连项目管理',11451,'/'),
 'qinglian-exports.service':('轻连转发服务','兼容节点与导出服务',11456,None),
 'qinglian-hy2.service':('轻连加速服务','Hysteria 2 加速通道',11453,None),
 'qinglian-remote.service':('轻连远程服务','远程控制与连接桥接',18443,None),
 'server-hub.service':('服务聚合面板','服务器状态与后台导航',9178,'/'),
}
SKIP_HTTP=('ssh','xray','v2ray','hysteria','mysql','mariadb','postgres','redis','systemd','containerd','docker')
def command(args,timeout=8):
 try:return subprocess.run(args,capture_output=True,text=True,timeout=timeout).stdout
 except (OSError,subprocess.TimeoutExpired):return ''
def read_json(path,default):
 try:return json.loads(Path(path).read_text(encoding="utf-8-sig"))
 except (OSError,ValueError):return default

def scope(address):
 address=address.strip('[]').split('%')[0]
 if address=='*':return 'public'
 try:
  ip=ipaddress.ip_address(address)
  if ip.is_loopback:return 'local'
  return 'public' if ip.is_unspecified or ip.is_global else 'private'
 except ValueError:return 'private'

def listeners(text=None,proc=Path('/proc')):
 result=[];seen=set()
 for line in (command(['ss','-H','-lntup']) if text is None else text).splitlines():
  fields=line.split()
  if len(fields)<5:continue
  address,_,port=fields[4].rpartition(':')
  if not port.isdigit():continue
  match=re.search(r'users:\(\(\"([^\"]+)\",pid=(\d+)',line);name=match[1] if match else 'unknown';pid=int(match[2]) if match else 0;unit='';container=''
  try:
   cgroup=(proc/str(pid)/'cgroup').read_text();m=re.search(r'/([^/\n]+\.service)(?:/|$)',cgroup,re.M);unit=m[1] if m else '';m=re.search(r'docker[-/]([a-f0-9]{64})',cgroup);container=m[1][:12] if m else ''
  except OSError:pass
  row={'protocol':fields[0],'address':address.strip('[]'),'port':int(port),'scope':scope(address),'process':name,'pid':pid,'unit':unit,'container':container}
  key=(row['protocol'],row['port'],row['scope'],pid)
  if key not in seen:result.append(row);seen.add(key)
 return sorted(result,key=lambda r:(r['port'],r['protocol']))

def unit_states(names):
 properties=['Id','LoadState','ActiveState','SubState','MainPID','MemoryCurrent','CPUUsageNSec','ActiveEnterTimestampMonotonic','NRestarts']
 output=command(['systemctl','show',*sorted(names),'--property='+','.join(properties)],timeout=12);result={}
 for block in output.strip().split('\n\n'):
  data=dict(line.split('=',1) for line in block.splitlines() if '=' in line)
  if data.get('Id'):result[data['Id']]=data
 return result

def containers():
 template='{"id":"{{.ID}}","name":"{{.Names}}","image":"{{.Image}}","state":"{{.State}}","status":"{{.Status}}","ports":"{{.Ports}}"}'
 result=[]
 for line in command(['docker','ps','-a','--format',template],timeout=10).splitlines():
  try:result.append(json.loads(line))
  except ValueError:pass
 return result

class NoRedirect(urllib.request.HTTPRedirectHandler):
 def redirect_request(self,*args,**kwargs):return None
OPENER=urllib.request.build_opener(NoRedirect())
def http_probe(url):
 start=time.monotonic()
 try:
  request=urllib.request.Request(url,headers={'User-Agent':'ServerHubHealth/1.0','Range':'bytes=0-4095'})
  with OPENER.open(request,timeout=2) as response:status=response.status;ctype=response.headers.get('Content-Type','')
 except urllib.error.HTTPError as error:status=error.code;ctype=error.headers.get('Content-Type','')
 except Exception:return {'reachable':False,'http_status':None,'latency_ms':None}
 return {'reachable':True,'http_status':status,'latency_ms':round((time.monotonic()-start)*1000),'content_type':ctype[:80]}

def tcp_probe(port):
 start=time.monotonic()
 try:
  with socket.create_connection(('127.0.0.1',port),timeout=1):pass
  return {'reachable':True,'latency_ms':round((time.monotonic()-start)*1000),'http_status':None}
 except OSError:return {'reachable':False,'latency_ms':None,'http_status':None}

def napcat_status():
 # Read the existing portal's status using its own stateless local session.
 # No QQ login, logout, quick-login, QR refresh or message-send actions are called.
 if not Path('/opt/napcat-login/session-signing.key').exists():return {'qq_online':None}
 script="""import importlib.util,json,urllib.request
s=importlib.util.spec_from_file_location('hub_portal_read','/opt/napcat-login/portal.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
r=urllib.request.Request('http://127.0.0.1:6099/api/status',headers={'Cookie':'napcat_session='+m.sign_session()})
with urllib.request.urlopen(r,timeout=4) as response:d=json.load(response)
print(json.dumps({'qq_online':d.get('isLogin'),'qq_core_ready':d.get('coreReady')}))
"""
 try:
  p=subprocess.run(['/opt/napcat-login/venv/bin/python','-c',script],capture_output=True,text=True,timeout=6)
  return json.loads(p.stdout) if p.returncode==0 else {'qq_online':None}
 except Exception:return {'qq_online':None}

def atomic(path,data,mode=0o640):
 path=Path(path);tmp=path.with_suffix('.tmp');tmp.write_text(json.dumps(data,ensure_ascii=False));tmp.chmod(mode)
 try:os.chown(tmp,0,pwd.getpwnam('server-hub').pw_gid)
 except KeyError:pass
 os.replace(tmp,path)

def sync_auth(state):
 cfg=read_json('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json',{})
 username=cfg.get('openlist_user');password=cfg.get('openlist_pass')
 if not username or not password:return
 secret=(DATA/'collector-key').read_bytes();fingerprint=hmac.new(secret,(username+'\0'+password).encode(),hashlib.sha256).hexdigest()
 if fingerprint!=state.get('auth_fingerprint') or not (DATA/'auth.json').exists():
  salt=secrets.token_hex(16);iterations=310000;hashed=hashlib.pbkdf2_hmac('sha256',password.encode(),bytes.fromhex(salt),iterations).hex()
  atomic(DATA/'auth.json',{'username':username,'salt':salt,'iterations':iterations,'hash':hashed});state['auth_fingerprint']=fingerprint

def system_metrics(previous,now):
 values=[int(v) for v in Path('/proc/stat').read_text().splitlines()[0].split()[1:]];total=sum(values[:8]);idle=values[3]+values[4];cpu=None
 if 'cpu_total' in previous and total>previous['cpu_total']:cpu=round(100*(1-(idle-previous['cpu_idle'])/(total-previous['cpu_total'])),1)
 mem={}
 for line in Path('/proc/meminfo').read_text().splitlines():
  k,v=line.split(':',1);mem[k]=int(v.split()[0])*1024
 disk=shutil.disk_usage('/');uptime=float(Path('/proc/uptime').read_text().split()[0])
 return {'cpu_percent':max(0,min(100,cpu)) if cpu is not None else None,'cpu_cores':os.cpu_count(),'load':list(os.getloadavg()),'memory_total':mem['MemTotal'],'memory_used':mem['MemTotal']-mem.get('MemAvailable',mem.get('MemFree',0)),'disk_total':disk.total,'disk_free':disk.free,'uptime_seconds':int(uptime)}, {'cpu_total':total,'cpu_idle':idle}

def number(value):
 try:return int(value) if int(value)<2**60 else None
 except (ValueError,TypeError):return None

def collect(config):
 now=time.time();state=read_json(DATA/'collector-state.json',{});sync_auth(state);ports=listeners();docker=containers();unit_names={p['unit'] for p in ports if p['unit']}|set(KNOWN)
 unit_names.update(state.get('discovered_units',[]));units=unit_states(unit_names);metrics,cpu=system_metrics(state,now);metrics['container_running']=sum(d['state']=='running' for d in docker)
 by_unit={u:[p for p in ports if p['unit']==u] for u in units};projects=[];checks=[]
 for unit,(name,description,default_port,health_path) in KNOWN.items():
  props=units.get(unit,{})
  if props.get('LoadState')=='not-found' and unit not in ('astrbot.service','napcat-login.service'):continue
  project_ports=by_unit.get(unit,[])
  if unit=='napcat-login.service':project_ports=project_ports+[p for p in ports if p['process'].lower()=='qq']
  if unit=='server-hub.service':default_port=config['port']
  port=default_port;public=any(p['protocol']=='tcp' and p['port']==port and p['scope']=='public' for p in project_ports)
  url='http://'+config['host']+':'+str(port)+'/' if public else None
  if unit=='x-ui.service':url=config.get('management_url') or url
  if unit.startswith('qinglian-'):url=config.get('management_url')
  item={'id':unit,'name':name,'description':description,'unit':unit,'active_state':props.get('ActiveState','unknown'),'sub_state':props.get('SubState','unknown'),'status':'healthy' if props.get('ActiveState')=='active' else 'offline','url':url,'ports':sorted({(p['port'],p['protocol'],p['scope']) for p in project_ports}),'memory_bytes':number(props.get('MemoryCurrent')),'cpu_percent':None,'uptime_seconds':None,'restarts':number(props.get('NRestarts')),'discovered':False}
  started=number(props.get('ActiveEnterTimestampMonotonic'))
  if started:item['uptime_seconds']=max(0,int(metrics['uptime_seconds']-started/1000000))
  ticks=number(props.get('CPUUsageNSec'));old=state.get('unit_cpu',{}).get(unit)
  if ticks is not None and old and now>state.get('sampled_at',now):item['cpu_percent']=round(max(0,(ticks-old)/1e9/(now-state['sampled_at'])*100),1)
  projects.append(item)
  if props.get('ActiveState')=='active':
   probe_url='http://127.0.0.1:'+str(port)+(health_path or '/')
   if unit=='x-ui.service':probe_url=config.get('management_url') or probe_url
   checks.append((item,probe_url if health_path else port))
 # Discover additional HTTP projects from actual listeners, without touching proxy/DB/SSH ports.
 cache=state.get('http_discovery',{});new_checks=[]
 for p in ports:
  if p['protocol']!='tcp' or p['unit'] in KNOWN or p['process'].lower()=='qq' or any(word in p['process'].lower() for word in SKIP_HTTP):continue
  if not any(word in p['process'].lower() for word in ('python','node','java','nginx','caddy','php','uvicorn','gunicorn','http','server')):continue
  key=str(p['port'])
  if key not in cache or now-cache[key]['checked']>600:new_checks.append(p)
 for p in new_checks[:8]:
  probe=http_probe('http://127.0.0.1:'+str(p['port'])+'/');cache[str(p['port'])]={'checked':now,'is_http':bool(probe['reachable'] and probe.get('http_status') in (200,201,301,302,303,307,308,401,403) and any(t in probe.get('content_type','') for t in ('html','json','text')))}
 for p in ports:
  if p['unit'] in KNOWN or p['protocol']!='tcp' or not cache.get(str(p['port']),{}).get('is_http'):continue
  ident=p['unit'] or 'port-'+str(p['port'])
  if any(project['id']==ident for project in projects):continue
  props=units.get(p['unit'],{});item={'id':ident,'name':p['unit'].removesuffix('.service') if p['unit'] else p['process']+' :'+str(p['port']),'description':'自动发现的网页服务','unit':p['unit'],'active_state':props.get('ActiveState','active'),'sub_state':props.get('SubState','running'),'status':'healthy','url':'http://'+config['host']+':'+str(p['port'])+'/' if p['scope']=='public' else None,'ports':[(p['port'],'tcp',p['scope'])],'memory_bytes':number(props.get('MemoryCurrent')),'cpu_percent':None,'uptime_seconds':None,'restarts':None,'discovered':True};projects.append(item);checks.append((item,'http://127.0.0.1:'+str(p['port'])+'/'))
 with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
  futures=[(item,pool.submit(http_probe,target) if isinstance(target,str) else pool.submit(tcp_probe,target)) for item,target in checks]
  for item,future in futures:
   result=future.result();item.update(result)
   if not result['reachable'] or (result.get('http_status') or 0)>=500:item['status']='degraded'
   if result.get('http_status') in (401,403):item['auth_required']=True
 for item in projects:
  if item['id']=='napcat-login.service':item.update(napcat_status());item['container_state']=next((d['state'] for d in docker if d['name']=='napcat-astrbot'),'missing')
 status={'sampled_at':now,'interval_seconds':10,'host':config['host'],'metrics':metrics,'projects':projects,'ports':[{k:v for k,v in p.items() if k not in ('pid','container')} for p in ports],'containers':docker,'units':[{'name':name,'active':data.get('ActiveState'),'sub':data.get('SubState')} for name,data in units.items() if data.get('LoadState')!='not-found'],'read_only':True}
 state.update(cpu);state.update({'sampled_at':now,'http_discovery':cache,'unit_cpu':{u:number(v.get('CPUUsageNSec')) for u,v in units.items()},'discovered_units':[p['unit'] for p in projects if p.get('discovered') and p['unit']]})
 atomic(DATA/'status.json',status);atomic(DATA/'collector-state.json',state,0o600)
 return status
if __name__=='__main__':
 config=read_json(DATA/'config.json',{});collect(config)
