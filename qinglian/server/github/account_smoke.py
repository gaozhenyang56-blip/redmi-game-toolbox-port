#!/usr/bin/env python3
"""Public, bounded account/export smoke. No credentials printed or retained."""
import copy,hashlib,http.cookiejar,json,os,secrets,socket,ssl,subprocess,tempfile,time,urllib.error,urllib.request
from pathlib import Path
from ssh_common import connection,remote_json
os.umask(0o077)
def port():
 with socket.socket() as s:s.bind(('127.0.0.1',0));return s.getsockname()[1]
users=[]
with connection() as ssh,tempfile.TemporaryDirectory() as temp:
 root=Path(temp);cfg=remote_json(ssh,"import json;from pathlib import Path;c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());print(json.dumps({'host':c['serverAddress'],'port':c['tls']['port'],'statePath':c['statePath']}))")
 with ssh.open_sftp() as s:s.get('/etc/x-ui/qinglian/ca.pem',str(root/'ca.pem'))
 tls=ssl.create_default_context(cafile=str(root/'ca.pem'));opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=tls));base='https://'+cfg['host']+':'+str(cfg['port'])+'/api/v1/exports/'
 device=secrets.token_hex(32);name='probe-'+secrets.token_hex(8);password=secrets.token_hex(20)
 def request(path,body=None,token='',dev=None):
  r=urllib.request.Request(base+path,data=None if body is None else json.dumps(body).encode(),headers={'Content-Type':'application/json','Authorization':'Bearer '+token,'X-Qinglian-Device':dev or device})
  with opener.open(r,timeout=10) as response:return json.load(response)
 def rejected(code,*args,**kwargs):
  try:request(*args,**kwargs);raise AssertionError('request unexpectedly accepted')
  except urllib.error.HTTPError as e:assert e.code==code
 try:
  rejected(400,'register',{'username':name,'password':password})
  body={'username':name,'password':password,'historyConsent':'domains-permanent-v1'};account=request('register',body);token=account['token'];users.append(account['userId'])
  rejected(409,'register',dict(body,username=name+'b'));rejected(401,'login',dict(body,password='wrong-password'))
  other_device=secrets.token_hex(32);second=request('login',body,dev=other_device);assert second['userId']==account['userId'];request('quota',token=second['token'],dev=other_device);assert request('quota',token=token)['allocatedBytes']==0
  protocols=['vmess','vless','trojan','shadowsocks','hysteria2'];ids=[]
  for p in protocols:
   payload={'requestId':__import__('uuid').uuid4().hex,'protocol':p,'sizeMiB':2,'remark':'Smoke '+p}
   payload['requestId']=str(__import__('uuid').UUID(payload['requestId']));first=request('nodes',payload,token);again=request('nodes',payload,token);assert first['id']==again['id'];ids.append(first['id'])
  for _ in range(50):
   nodes=request('nodes',token=token)['nodes'];active={n['id']:n for n in nodes if n['status']=='active'}
   if all(i in active for i in ids):break
   time.sleep(.3)
  else:raise AssertionError('exports did not activate')
  def transfer(profile,p):
   client=copy.deepcopy(profile['clientConfig']);socks=port();hy=p=='hysteria2'
   if not hy:
    converted=subprocess.run(['java','-cp',os.environ['QINGLIAN_NODECONFIG_CP'],'NodeConfigCli'],input=json.dumps(profile['node']).encode(),capture_output=True,check=True);client=json.loads(converted.stdout);client['inbounds'][1]['port']=port()
   if hy:client['socks5']['listen']='127.0.0.1:'+str(socks);client['tls']['ca']=str(root/'ca.pem');binary=os.environ['QINGLIAN_HY2_BINARY'];args=['client','--log-level','error','--disable-update-check','--config']
   else:client['inbounds'][0]['port']=socks;binary=os.environ['QINGLIAN_V2RAY_BINARY'];args=['run','-c']
   path=root/'client.json';path.write_text(json.dumps(client));proc=subprocess.Popen([binary,*args,str(path)],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
   try:
    for _ in range(60):
     assert proc.poll() is None,'client startup failed'
     try:
      with socket.create_connection(('127.0.0.1',socks),.1):break
     except OSError:time.sleep(.05)
    result=subprocess.run(['curl','-fsS','--max-time','30','--noproxy','','--socks5-hostname','127.0.0.1:'+str(socks),'https://speed.cloudflare.com/__down?bytes=524288'],capture_output=True,timeout=35);assert result.returncode==0 and len(result.stdout)==524288,'bounded public transfer failed for '+p
   finally:proc.terminate();proc.wait(timeout=5)
  for ident in ids:
   node=active[ident];profile=node["profile"];assert profile["remark"]=="Smoke "+node["protocol"];assert "inbound" not in profile;transfer(profile,node["protocol"])
  for _ in range(20):
   primary=request('profile',{},token)
   if primary.get('ready'):break
   time.sleep(.3)
  assert primary.get('ready'),'main account workers unavailable'
  assert 'node' in primary and all(primary['node']!=n['profile']['node'] for n in active.values())
  main_nodes=[primary['node']]
  if primary.get('acceleration'):main_nodes.append(primary['acceleration']['node'])
  for n in main_nodes:
   protocol=n['protocol'];template=copy.deepcopy(next(v['profile'] for v in active.values() if v['protocol']==protocol));client=template['clientConfig']
   if protocol=='hysteria2':client['server']=n['add']+':'+str(n['port']);client['auth']=n['auth']
   else:
    settings=client['outbounds'][0]['settings'];entry=(settings.get('vnext') or settings.get('servers'))[0];entry['port']=n['port']
    if protocol in ('vmess','vless'):entry['users'][0]['id']=n['id']
    else:entry['password']=n['password']
   template["node"]=n;transfer(template,protocol)
  time.sleep(1);quota=request('quota',token=token);assert quota['allocatedBytes']==len(protocols)*2*1048576;assert quota['cumulativeTotalBytes']>=len(protocols)*524288
  history=request('history',token=token);assert history['retention']=='permanent' and any(r['domain']=='speed.cloudflare.com' for r in history['records']),'native domain capture unavailable'
  print(json.dumps({'passed':True,'protocols':protocols,'publicBytesEach':524288,'originalCAValidated':True,'deviceRegistrationLimited':True,'multiDeviceLogin':True,'idempotency':True,'remarks':True,'mainIndependent':True,'quotaIndependent':True,'cumulativeTraffic':True,'permanentDomains':True}))
 finally:
  # Remove only the random fixture account after stopping its workers.
  if users:
   prefix='STATE='+repr(cfg['statePath'])+'\nUSERS='+repr(users)+'\n'
   remote_json(ssh,prefix+"import sqlite3,json,time\nwith sqlite3.connect(STATE) as db:\n for u in USERS:db.execute(\"UPDATE exports SET status='revoked' WHERE user_id=?\",(u,))\ntime.sleep(3)\nwith sqlite3.connect(STATE) as db:\n for u in USERS:\n  for table in ['history','api_sessions','device_registrations','exports']:db.execute('DELETE FROM '+table+' WHERE user_id=?',(u,))\n  db.execute('DELETE FROM api_users WHERE id=?',(u,))\nprint(json.dumps({'fixturesRemoved':True}))",timeout=20)
