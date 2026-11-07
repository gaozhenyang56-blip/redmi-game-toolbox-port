#!/usr/bin/env python3
"""Fresh-server installer. Refuses to replace any existing x-ui installation/data."""
import argparse,getpass,hashlib,ipaddress,platform,json,os,re,secrets,shutil,socket,sqlite3,ssl,subprocess,time,urllib.request,uuid
from pathlib import Path
ROOT=Path('/etc/x-ui');PRIVATE=ROOT/'qinglian';BINARY=Path('/usr/local/x-ui');LIB=Path('/usr/local/lib/qinglian')
def run(*args):return subprocess.run(list(map(str,args)),check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=60)
def write(path,value):
 path=Path(path);path.parent.mkdir(parents=True,exist_ok=True,mode=0o700)
 fd=os.open(path,os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600)
 with os.fdopen(fd,'w') as f:f.write(value if isinstance(value,str) else json.dumps(value))
def certificates(address):
 run('openssl','req','-x509','-newkey','rsa:3072','-nodes','-keyout',PRIVATE/'ca.key','-out',PRIVATE/'ca.pem','-days','3650','-subj','/CN=Qinglian private API CA','-addext','basicConstraints=critical,CA:TRUE,pathlen:0','-addext','keyUsage=critical,keyCertSign,cRLSign')
 run('openssl','req','-new','-newkey','rsa:2048','-nodes','-keyout',PRIVATE/'server.key','-out',PRIVATE/'server.csr','-subj','/CN=Qinglian API')
 write(PRIVATE/'server.ext','basicConstraints=critical,CA:FALSE\nkeyUsage=critical,digitalSignature,keyEncipherment\nextendedKeyUsage=serverAuth\nsubjectAltName=IP:'+address+',IP:127.0.0.1\n')
 run('openssl','x509','-req','-in',PRIVATE/'server.csr','-CA',PRIVATE/'ca.pem','-CAkey',PRIVATE/'ca.key','-CAcreateserial','-out',PRIVATE/'server.pem','-days','825','-sha256','-extfile',PRIVATE/'server.ext')
def unit(name,command,runtime=None):
 restrictions='\nNoNewPrivileges=true\nPrivateTmp=true\nProtectHome=true\nProtectSystem=strict\nReadWritePaths=/etc/x-ui /run/'+runtime+'\nRuntimeDirectory='+runtime+'\nRuntimeDirectoryMode=0700\nMemoryMax=768M' if runtime else ''
 write(Path('/etc/systemd/system')/(name+'.service'),'[Unit]\nDescription=Qinglian '+name+'\nAfter=network-online.target\nWants=network-online.target\n[Service]\nType=simple\nWorkingDirectory=/usr/local/x-ui\nExecStart='+command+'\nRestart=on-failure\nRestartSec=5\nKillMode=control-group\nUMask=0077'+restrictions+'\n[Install]\nWantedBy=multi-user.target\n')
def main():
 p=argparse.ArgumentParser();p.add_argument('--server-ip',required=True);p.add_argument('--admin-name',required=True);p.add_argument('--release-repository',default='gaozhenyang56-blip/qinglian-vpn');p.add_argument('--domain');p.add_argument('--tls-cert',type=Path);p.add_argument('--tls-key',type=Path);p.add_argument('--check',action='store_true');a=p.parse_args()
 if platform.machine().lower() not in ('x86_64','amd64'):raise SystemExit('安装包仅支持 amd64')
 address=str(ipaddress.IPv4Address(a.server_ip));assert ipaddress.ip_address(address).is_global,'需要本机公网IPv4'
 if not re.fullmatch('[A-Za-z0-9_.-]{3,64}',a.admin_name):raise SystemExit('管理用户名无效')
 if ROOT.exists() or BINARY.exists() or LIB.exists() or any(Path('/etc/systemd/system/'+s+'.service').exists() for s in ['x-ui','qinglian-hy2','qinglian-exports']):raise SystemExit('仅允许全新服务器；已存在的面板/配置/服务未被修改')
 if not re.fullmatch(r'[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+',a.release_repository):raise SystemExit('发行仓库必须为 owner/repo')
 if bool(a.domain)!=bool(a.tls_cert and a.tls_key):raise SystemExit('域名必须同时提供其有效证书和私钥')
 if a.domain:
  if not re.fullmatch(r'[a-z0-9-]+(?:\.[a-z0-9-]+)+',a.domain):raise SystemExit('域名无效')
  ctx=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER);ctx.load_cert_chain(a.tls_cert,a.tls_key)
  leaf=ssl._ssl._test_decode_cert(str(a.tls_cert));ssl.match_hostname(leaf,a.domain)
  if not ssl.cert_time_to_seconds(leaf['notBefore'])<=time.time()<ssl.cert_time_to_seconds(leaf['notAfter']):raise SystemExit('域名证书尚未生效或已过期')
 for cmd in ['openssl','systemctl']:assert shutil.which(cmd),cmd+' 缺失'
 bundle=Path(__file__).resolve().parent
 for line in (bundle/'SHA256SUMS').read_text().splitlines():
  sha,name=line.split('  ');assert Path(name).name==name and hashlib.sha256((bundle/name).read_bytes()).hexdigest()==sha,'安装包校验失败'
 for port in [443,11451,11452,11453,11456,10086]:
  with socket.socket() as s:s.bind(('0.0.0.0',port))
 if a.check:print('预检通过；未安装或修改系统。');return
 if os.geteuid()!=0:raise SystemExit('安装需要 root，请先审阅源码')
 password=getpass.getpass('设置面板管理员密码（不写入命令行/日志）：')
 if len(password)<12 or password!=getpass.getpass('再次输入密码：'):raise SystemExit('密码至少12字符且必须一致')
 os.umask(0o077);PRIVATE.mkdir(parents=True,mode=0o700);BINARY.mkdir(parents=True);(BINARY/'bin').mkdir();LIB.mkdir(parents=True)
 for name,dest in [('x-ui',BINARY/'x-ui'),('xray-linux-amd64',BINARY/'bin/xray-linux-amd64'),('hysteria',LIB/'hysteria')]:shutil.copy2(bundle/name,dest);dest.chmod(0o755)
 for name in ['geoip.dat','geosite.dat']:
  if (bundle/name).exists():shutil.copy2(bundle/name,BINARY/'bin'/name)
 for name in ['export_engine.py','hy2_manager.py','diagnostics.py']:shutil.copy2(bundle/name,LIB/name)
 run(BINARY/'x-ui','setting','-port','11451') # Initialize the exact upstream schema while no service is running.
 ident=str(uuid.uuid4());token=secrets.token_hex(32)
 with sqlite3.connect(ROOT/'x-ui.db') as db:
  db.execute('UPDATE users SET username=?,password=? WHERE id=(SELECT MIN(id) FROM users)',(a.admin_name,password));owner=db.execute('SELECT MIN(id) FROM users').fetchone()[0];assert owner
  for k,v in [('webListen','127.0.0.1'),('webPort','11451')]:db.execute('DELETE FROM settings WHERE key=?',(k,));db.execute('INSERT INTO settings(key,value) VALUES(?,?)',(k,v))
  db.execute('INSERT INTO inbounds(user_id,up,down,total,remark,enable,expiry_time,listen,port,protocol,settings,stream_settings,tag,sniffing) VALUES(?,0,0,0,?,1,0,?,10086,?,?,?, ?,?)',(owner,'轻连默认父节点','127.0.0.1','vmess',json.dumps({'clients':[{'id':ident,'alterId':0}]}),json.dumps({'network':'tcp','security':'none'}),'inbound-10086',json.dumps({'enabled':True,'destOverride':['http','tls']})))
  parent=db.execute('SELECT id FROM inbounds WHERE port=10086').fetchone()[0]
 certificates(address)
 tls={'port':11452,'httpsPort':443,'certificate':str(PRIVATE/'server.pem'),'privateKey':str(PRIVATE/'server.key')}
 if a.domain:
  shutil.copy2(a.tls_cert,PRIVATE/'domain.pem');shutil.copy2(a.tls_key,PRIVATE/'domain.key');tls.update(domainName=a.domain,domainCertificate=str(PRIVATE/'domain.pem'),domainPrivateKey=str(PRIVATE/'domain.key'))
 cfg={'ownerId':owner,'serverAddress':address,'clientToken':token,'nodeUuid':ident,'statePath':str(PRIVATE/'devices.sqlite3'),'trustedProxyCidrs':[],'releaseRepository':a.release_repository,'tls':tls}
 write(ROOT/'qinglian.json',cfg)
 write(PRIVATE/'exports.json',{'database':str(ROOT/'x-ui.db'),'ownerId':owner,'statePath':cfg['statePath'],'work':'/run/qinglian-exports','controlPort':11456,'managementToken':secrets.token_hex(32),'certificate':tls['certificate'],'privateKey':tls['privateKey'],'xrayBinary':str(BINARY/'bin/xray-linux-amd64'),'hy2Binary':str(LIB/'hysteria')})
 write(PRIVATE/'hy2.json',{'ownerId':owner,'port':443,'serverAddress':address,'certificate':tls['certificate'],'privateKey':tls['privateKey'],'caPem':(PRIVATE/'ca.pem').read_text(),'authSecret':secrets.token_urlsafe(48),'managementToken':secrets.token_urlsafe(48),'statsToken':secrets.token_urlsafe(48)})
 unit('x-ui',str(BINARY/'x-ui'));unit('qinglian-exports','/usr/bin/python3 '+str(LIB/'export_engine.py'),'qinglian-exports');unit('qinglian-hy2','/usr/bin/python3 '+str(LIB/'hy2_manager.py'),'qinglian-hy2')
 run('systemctl','daemon-reload');run('systemctl','enable','--now','x-ui')
 for _ in range(30):
  try:
   with sqlite3.connect(cfg['statePath']) as db:db.execute('INSERT OR REPLACE INTO preferences(id,inbound) VALUES(1,?)',(parent,))
   break
  except sqlite3.OperationalError:time.sleep(.5)
 else:raise RuntimeError('面板状态数据库尚未初始化，请检查 x-ui 服务')
 run('systemctl','enable','--now','qinglian-hy2','qinglian-exports')
 for _ in range(30):
  try:
   with sqlite3.connect(cfg['statePath']) as db:db.execute('INSERT OR REPLACE INTO acceleration(id,enabled,boundInbound) VALUES(1,1,?)',(parent,))
   break
  except sqlite3.OperationalError:time.sleep(.5)
 else:raise RuntimeError('HY2 状态尚未初始化，请检查 qinglian-hy2 服务')
 profile={'url':f'https://{address}:11452/api/v1/profile','clientToken':token,'caPem':(PRIVATE/'ca.pem').read_text()}
 if a.domain:profile['cdnUrl']='https://'+a.domain+'/api/v1/profile'
 write(PRIVATE/'client-server.json',{'schema':1,'kind':'qinglian-server','name':a.domain or '轻连面板','profile':profile})
 print('安装完成。客户端配置：/etc/x-ui/qinglian/client-server.json（请私下分发）。请按文档放行必要端口并运行面板连接测试。')
 print('面板：https://'+a.domain if a.domain else '面板仅监听127.0.0.1:11451，请使用SSH端口转发访问；生产建议配置域名HTTPS。')
if __name__=='__main__':main()
