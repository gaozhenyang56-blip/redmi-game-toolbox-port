#!/usr/bin/env python3
"""Owner-triggered, bounded server-side App API and native data-path self-test."""
import argparse,copy,http.client,json,os,secrets,signal,socket,sqlite3,ssl,subprocess,tempfile,time,urllib.error,urllib.request,uuid
from pathlib import Path
os.umask(0o077)
SIZE=1024
class Cancelled(Exception):pass
def cancel(*_):raise Cancelled()
signal.signal(signal.SIGTERM,cancel)
def code(error):
 if isinstance(error,Cancelled):return 'CANCELLED'
 if isinstance(error,ssl.SSLCertVerificationError):return 'TLS_CERTIFICATE'
 if isinstance(error,urllib.error.HTTPError):return 'HTTP_'+str(error.code)
 if isinstance(error,(TimeoutError,socket.timeout,subprocess.TimeoutExpired)):return 'TIMEOUT'
 if isinstance(error,FileNotFoundError):return 'NATIVE_FILE_MISSING'
 if isinstance(error,sqlite3.Error):return 'DATABASE_ERROR'
 return 'TEST_FAILED'
def read_json(response):
 data=response.read(65537)
 if len(data)>65536:raise ValueError('response too large')
 return json.loads(data)
def free_port():
 with socket.socket() as s:s.bind(('127.0.0.1',0));return s.getsockname()[1]
def client_config(node,port,hy_port):
 p=node['protocol'];server={'address':node['add'],'port':int(node['port'])}
 if p=='hysteria2':out={'protocol':'socks','settings':{'servers':[{'address':'127.0.0.1','port':hy_port}]}}
 else:
  if p in ('vmess','vless'):
   user={'id':node['id'],**({'alterId':0,'security':'auto'} if p=='vmess' else {'encryption':'none'})};server['users']=[user];settings={'vnext':[server]}
  elif p in ('trojan','shadowsocks'):
   server['password']=node['password']
   if p=='shadowsocks':server['method']=node['method']
   settings={'servers':[server]}
  else:raise ValueError('unsupported protocol')
  stream={'network':node.get('net','tcp'),'security':node.get('tls','none')}
  if stream['network']=='ws':stream['wsSettings']={'path':node['path'],'headers':{'Host':node['host']}}
  if stream['security']=='tls':
   stream['tlsSettings']={'serverName':node.get('sni',node['add']),'allowInsecure':False}
   if node.get('caPem'):stream['tlsSettings']['certificates']=[{'usage':'verify','certificate':node['caPem'].strip().splitlines()}]
  out={'protocol':p,'settings':settings,'streamSettings':stream}
 return {'log':{'loglevel':'none'},'inbounds':[{'listen':'127.0.0.1','port':port,'protocol':'http','settings':{}}],'outbounds':[out]}
def main(mode):
 result={'schema':1,'scope':'server','ok':False,'steps':[],'testGuestStopped':True};started=False;processes=[]
 def step(key,status,reason='OK',duration=0,size=0):result['steps'].append({'key':key,'status':status,'code':reason,'durationMs':max(0,int(duration*1000)),'bytes':size})
 def stop_clients():
  while processes:
   p=processes.pop()
   if p.poll() is None:
    p.terminate()
    try:p.wait(timeout=2)
    except subprocess.TimeoutExpired:p.kill();p.wait(timeout=2)
 with tempfile.TemporaryDirectory(prefix='qinglian-diagnostic-') as directory:
  work=Path(directory);phase='storage'
  try:
   cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());engine=json.loads(Path('/etc/x-ui/qinglian/exports.json').read_text());ca=Path(engine['certificate']).with_name('ca.pem')
   now=time.monotonic();disk=os.statvfs('/etc/x-ui');assert disk.f_bavail*disk.f_frsize>=64*1024**2
   with sqlite3.connect('file:'+cfg['statePath']+'?mode=ro',uri=True) as db:
    deadline=time.monotonic()+4;db.set_progress_handler(lambda: int(time.monotonic()>deadline),1000);assert db.execute('PRAGMA quick_check(1)').fetchone()[0]=='ok'
   step('storage','passed',duration=time.monotonic()-now)
   with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone();base_path=row[0] if row else '/'
   assert base_path.startswith('/') and not any(c in base_path for c in '\r\n?#')
   context=ssl.create_default_context(cafile=str(ca));opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=context))
   class NoRedirect(urllib.request.HTTPRedirectHandler):
    def redirect_request(self,*args,**kwargs):return None
   opener.add_handler(NoRedirect())
   device=secrets.token_hex(32);key=secrets.token_hex(32);base='https://127.0.0.1:'+str(cfg['tls']['port'])+base_path+'api/v1/'
   def request(path,body=None):
    token=key if path.startswith('guest/') and path!='guest/start' else cfg['clientToken']
    req=urllib.request.Request(base+path,data=None if body is None else json.dumps(body).encode(),headers={'Content-Type':'application/json','Authorization':'Bearer '+token,'X-Qinglian-Device':device,'User-Agent':'Qinglian/PanelDiagnostic'})
    with opener.open(req,timeout=5) as response:return read_json(response)
   phase='api';now=time.monotonic();request('quota');step('api','passed',duration=time.monotonic()-now)
   phase='workers';now=time.monotonic();plain=urllib.request.build_opener(urllib.request.ProxyHandler({}));req=urllib.request.Request('http://127.0.0.1:'+str(engine['controlPort'])+'/status',headers={'Authorization':'Bearer '+engine['managementToken']})
   try:
    with plain.open(req,timeout=3) as response:health=read_json(response)
    healthy=health.get('ready',health.get('running',False)) and not health.get('historyFailed',False)
    step('workers','passed' if healthy else 'failed','OK' if healthy else 'WORKER_NOT_READY',time.monotonic()-now)
   except Exception as error:step('workers','failed',code(error),time.monotonic()-now)
   phase='allocation';now=time.monotonic();request('guest/start',{'requestId':str(uuid.uuid4()),'sessionKey':key});started=True;result['testGuestStopped']=False;profile={}
   for _ in range(24):
    profile=request('guest/profile',{'labHy2':mode in ('all','hy2'),'cdnCompatibility':True})
    compat=bool(profile.get('compatibilityReady',profile.get('ready')));hy=bool((profile.get('acceleration') or {}).get('ready',profile.get('ready')))
    if (mode=='compatibility' and compat) or (mode=='hy2' and hy) or (mode=='all' and compat and hy):break
    time.sleep(.5)
   ready={'compatibility':compat,'hy2':hy};selected_ready=all(ready[k] for k in (['compatibility','hy2'] if mode=='all' else [mode]));step('allocation','passed' if selected_ready else 'failed','OK' if selected_ready else 'NODE_NOT_READY',time.monotonic()-now)
   for channel in (['compatibility','hy2'] if mode=='all' else [mode]):
    phase=channel;now=time.monotonic()
    if not ready[channel]:step(channel,'skipped','NODE_NOT_READY');continue
    try:
     node=copy.deepcopy(profile['node'] if channel=='compatibility' else profile['acceleration']['node']);assert node['add'] in (cfg['serverAddress'],cfg['tls'].get('domainName'))
     port=free_port();hy_port=free_port()
     if channel=='hy2':
      native_ca=work/'ca.pem';native_ca.write_text(node.get('caPem',''));native_ca.chmod(0o600)
      high=node.get('hy2Performance')=='aggressive-v1';hy_cfg={'server':node['add']+':'+str(node['port']),'auth':node['auth'],'tls':{'sni':node.get('sni',node['add']),'ca':str(native_ca),'insecure':False},'socks5':{'listen':'127.0.0.1:'+str(hy_port)},'lazy':True,'congestion':{'type':'bbr','bbrProfile':'aggressive' if high else 'conservative'},'quic':{'disablePathMTUDiscovery':True,'keepAlivePeriod':'10s'}}
      if high:hy_cfg['quic'].update({'initStreamReceiveWindow':8388608,'maxStreamReceiveWindow':33554432,'initConnReceiveWindow':16777216,'maxConnReceiveWindow':67108864})
      path=work/'hy.json';path.write_text(json.dumps(hy_cfg));processes.append(subprocess.Popen([engine['hy2Binary'],'client','--config',str(path),'--log-level','error','--disable-update-check'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL))
     path=work/'client.json';path.write_text(json.dumps(client_config(node,port,hy_port)));processes.append(subprocess.Popen([engine['xrayBinary'],'run','--config',str(path)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL))
     for _ in range(50):
      if any(p.poll() is not None for p in processes):raise RuntimeError('native stopped')
      try:
       with socket.create_connection(('127.0.0.1',port),.1):break
      except OSError:time.sleep(.05)
     else:raise TimeoutError()
     # Explicit CONNECT guarantees the test cannot silently bypass the proxy.
     connection=http.client.HTTPSConnection('127.0.0.1',port,timeout=15,context=context);connection.set_tunnel(cfg['serverAddress'],int(cfg['tls']['port']))
     try:
      connection.request('GET',base_path+'api/v1/guest/speed?bytes='+str(SIZE),headers={'Authorization':'Bearer '+key,'X-Qinglian-Device':device,'Accept-Encoding':'identity','Connection':'close'})
      response=connection.getresponse();assert response.status==200 and response.getheader('X-Qinglian-Speed')=='server-v1' and response.getheader('Content-Length')==str(SIZE) and len(response.read(SIZE+1))==SIZE
     finally:connection.close()
     step(channel,'passed',duration=time.monotonic()-now,size=SIZE)
    except Cancelled:raise
    except Exception as error:step(channel,'failed',code(error),time.monotonic()-now)
    finally:stop_clients()
  except Exception as error:step(phase,'failed',code(error))
  finally:
   stop_clients()
   if started:
    try:request('guest/stop',{});result['testGuestStopped']=True;step('cleanup','passed')
    except Exception:step('cleanup','failed','CLEANUP_PENDING')
 result['ok']=bool(result['steps']) and all(s['status']=='passed' for s in result['steps']);return result
if __name__=='__main__':
 parser=argparse.ArgumentParser();parser.add_argument('--mode',choices=['compatibility','hy2','all'],required=True);args=parser.parse_args()
 print(json.dumps(main(args.mode)))
