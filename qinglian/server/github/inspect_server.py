#!/usr/bin/env python3
"""GitHub runner SSH inspection. Never installs, restarts or edits server files."""
import base64,hashlib,json,os,socket,sys
import paramiko
host=os.environ.get('QINGLIAN_SSH_HOST','').strip()
password=os.environ.get('QINGLIAN_SSH_PASSWORD','')
if not host or not password:
    raise SystemExit('Configure repository Actions secrets QINGLIAN_SSH_HOST and QINGLIAN_SSH_PASSWORD; optional USER/PORT and HOST_KEY.')
user=os.environ.get('QINGLIAN_SSH_USER') or 'root'
port=int(os.environ.get('QINGLIAN_SSH_PORT') or '22')
pinned=os.environ.get('QINGLIAN_SSH_HOST_KEY','').strip()
class HostPolicy(paramiko.MissingHostKeyPolicy):
    def missing_host_key(self,client,hostname,key):
        fingerprint='SHA256:'+base64.b64encode(hashlib.sha256(key.asbytes()).digest()).decode().rstrip('=')
        if pinned and fingerprint!=pinned:raise paramiko.SSHException('host key mismatch')
        print('SSH server host key fingerprint:',fingerprint)
        if not pinned:print('First-contact host key recorded in this run; pin QINGLIAN_SSH_HOST_KEY for later connections.')
        client.get_host_keys().add(hostname,key.get_name(),key)
client=paramiko.SSHClient();client.load_system_host_keys();client.set_missing_host_key_policy(HostPolicy())
try:
    client.connect(host,port=port,username=user,password=password,look_for_keys=False,allow_agent=False,timeout=15,banner_timeout=15,auth_timeout=15)
    # Only whitelisted metadata. Never print environment, users, passwords, node settings or database records.
    script=r'''python3 - <<'PY'
import json,os,re,sqlite3,subprocess,ssl,urllib.request,urllib.error
from pathlib import Path
def run(args):
    p=subprocess.run(args,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,text=True,timeout=10)
    return p.stdout.strip()[:2048] if p.returncode==0 else ''
release={}
for line in Path('/etc/os-release').read_text().splitlines():
    if '=' in line:
        k,v=line.split('=',1)
        if k in ('ID','VERSION_ID'):release[k]=v.strip('"')
result={'serverUtc':run(['date','-u','+%Y-%m-%dT%H:%M:%SZ']),'os':release,'architecture':run(['uname','-m']),'libc':run(['ldd','--version']).splitlines()[:1],
        'serviceActive':run(['systemctl','is-active','x-ui']),
        'serviceUnit':run(['systemctl','show','x-ui','-p','FragmentPath','--value']),
        'workingDirectory':run(['systemctl','show','x-ui','-p','WorkingDirectory','--value'])}
command=run(['systemctl','show','x-ui','-p','ExecStart','--value'])
m=re.search(r'path=([^ ;]+)',command);binary=m.group(1) if m else '/usr/local/x-ui/x-ui'
result['binary']=binary
if Path(binary).is_file():result['panelVersion']=run([binary,'-v'])
db=Path('/etc/x-ui/x-ui.db');result['standardDatabaseExists']=db.is_file()
if db.is_file():
    connection=sqlite3.connect('file:'+str(db)+'?mode=ro',uri=True)
    result['schema']={table:[(r[1],r[2]) for r in connection.execute('PRAGMA table_info('+table+')')]
                      for table in ('inbounds','users','settings')}
    result['inboundCount']=connection.execute('SELECT count(*) FROM inbounds').fetchone()[0]
    connection.close()
diagnostic=subprocess.run(['journalctl','-u','qinglian-hy2','-n','100','--no-pager','-o','cat'],capture_output=True,text=True,timeout=10).stdout
result['hy2Errors']=[line.strip()[:220] for line in diagnostic.splitlines() if re.match(r'^(?:sqlite3\.)?(?:PermissionError|FileNotFoundError|OperationalError|NameError|ModuleNotFoundError|SyntaxError|ImportError):',line.strip())]
# Aggregate-only incident telemetry: never user names, tokens, addresses or domains.
result['exportsService']=run(['systemctl','show','qinglian-exports','-p','ActiveState','-p','Result','-p','NRestarts','-p','MemoryCurrent','-p','MemoryPeak','-p','MemoryMax','-p','OOMPolicy','-p','ControlGroup'])
cgroup=run(['systemctl','show','qinglian-exports','-p','ControlGroup','--value'])
if cgroup.startswith('/'):
 for field in ('memory.events','memory.peak','memory.current','memory.max'):
  path=Path('/sys/fs/cgroup'+cgroup)/field
  if path.is_file():result[field]=path.read_text()[:1024]
journal=run(['journalctl','-u','qinglian-exports','--since','12 hours ago','--no-pager','-o','cat'])
result['serviceIncidentCounts']={word:len(re.findall(word,journal,re.I)) for word in ['oom','killed','memory','failed','restart','traceback']}
stat=os.statvfs('/etc/x-ui');result['availableDiskBytes']=stat.f_bavail*stat.f_frsize
result['hy2Service']=run(['systemctl','show','qinglian-hy2','-p','ActiveState','-p','Result','-p','NRestarts','-p','User'])
result['apiCaCertificate']=run(['openssl','x509','-in','/etc/x-ui/qinglian/ca.pem','-noout','-fingerprint','-sha256','-dates'])
result['apiLeafCertificate']=run(['openssl','x509','-in','/etc/x-ui/qinglian/server.pem','-noout','-fingerprint','-sha256','-dates'])
# Listener metadata only: omit peer endpoints, process command lines and settings.
listeners=run(['ss','-H','-lntu'])
result['listeningPorts']=sorted({(line.split()[0],line.split()[4].rsplit(':',1)[-1]) for line in listeners.splitlines() if len(line.split())>=5})
connection=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True)
result['inboundPorts']=[list(row) for row in connection.execute('SELECT protocol,port,enable FROM inbounds')];connection.close()
config=Path('/etc/x-ui/qinglian.json')
if config.is_file():
 cfg=json.loads(config.read_text())
 try:
  db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True)
  row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone();db.close();base=row[0] if row else '/'
  request=urllib.request.Request('https://127.0.0.1:'+str(cfg['tls']['port'])+base+'api/v1/quota',headers={'Authorization':'Bearer '+cfg['clientToken']})
  opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem')))
  with opener.open(request,timeout=3) as response:result['localQuotaApiStatus']=response.status
 except urllib.error.HTTPError as error:result['localQuotaApiStatus']=error.code
 except Exception as error:result['localQuotaApiError']=type(error).__name__
 connection=sqlite3.connect('file:'+cfg['statePath']+'?mode=ro',uri=True)
 result['nodeStates']=[list(row) for row in connection.execute('SELECT kind,protocol,status,COUNT(*),MAX(up+down) FROM exports GROUP BY kind,protocol,status')]
 result['nodeDataTypes']=[list(row) for row in connection.execute('SELECT typeof(up),typeof(down),COUNT(*) FROM exports GROUP BY typeof(up),typeof(down)')]
 connection.close()
 connection=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True)
 result['parentQuotaStates']=[list(row) for row in connection.execute('SELECT enable,total,up,down,expiry_time FROM inbounds')];connection.close()
print(json.dumps(result,ensure_ascii=False))
PY'''
    _,out,err=client.exec_command(script,timeout=30)
    data=out.read(32768);status=out.channel.recv_exit_status()
    if status!=0:raise RuntimeError('remote inspection failed')
    result=json.loads(data)
    # The whitelist above contains no addresses or credential fields. Mask host if a path unexpectedly includes it.
    print(json.dumps(result,ensure_ascii=False).replace(host,'[server]'))
    print('SSH inspection successful; server files and services unchanged.')
except Exception as error:
    print('SSH inspection failed:',type(error).__name__,file=sys.stderr)
    raise SystemExit(1)
finally:client.close()
