"""Deploy only the SSH-enabled panel binary after backup; preserve VPN config/data.
Public HTTPS/WSS check uses existing Secrets only in memory, never a terminal log.
"""
import hashlib
import http.cookiejar
import json
import os
from pathlib import Path
import secrets
import ssl
import tempfile
import urllib.parse
import urllib.request
import websocket
from ssh_common import connection,remote_json
os.umask(0o077)
preflight=r'''
import hashlib,json,sqlite3,tempfile
from pathlib import Path
c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());assert c['tls'].get('domainName')=='gaozy.tech'
db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row
rows=[dict(r) for r in db.execute('SELECT * FROM inbounds ORDER BY id')];db.close()
print(json.dumps({'stage':tempfile.mkdtemp(prefix='qinglian-ssh-'),'configSha':hashlib.sha256(Path('/etc/x-ui/qinglian.json').read_bytes()).hexdigest(),'oldSha':hashlib.sha256(Path('/usr/local/x-ui/x-ui').read_bytes()).hexdigest(),'rows':rows,'cfg':c}))
'''
install=r'''
import hashlib,json,os,shutil,sqlite3,ssl,subprocess,time,urllib.request
from pathlib import Path
stage=Path(STAGE);meta=json.loads((stage/'metadata.json').read_text());binary=Path('/usr/local/x-ui/x-ui')
assert hashlib.sha256(binary.read_bytes()).hexdigest()==meta['oldSha']
assert hashlib.sha256((stage/'x-ui').read_bytes()).hexdigest()==meta['newSha']
assert hashlib.sha256(Path('/etc/x-ui/qinglian.json').read_bytes()).hexdigest()==meta['configSha']
backup=binary.with_name('x-ui.before-ssh-'+meta['oldSha'][:12]);shutil.copy2(binary,backup)
def replace(path):
 subprocess.run(['systemctl','stop','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
 target=binary.with_name('.qinglian-ssh-swap');shutil.copyfile(path,target);target.chmod(0o755);os.replace(target,binary)
 subprocess.run(['systemctl','start','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30)
try:
 replace(stage/'x-ui')
 context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem');opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=context))
 for attempt in range(40):
  try:
   req=urllib.request.Request('https://127.0.0.1:11452/api/v1/quota',headers={'Authorization':'Bearer '+meta['cfg']['clientToken']})
   with opener.open(req,timeout=3) as response:assert response.status==200
   break
  except Exception:time.sleep(.25)
 else:raise RuntimeError('API startup failed')
 db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row;rows=[dict(r) for r in db.execute('SELECT * FROM inbounds ORDER BY id')];db.close()
 assert len(rows)==len(meta['rows'])
 for before,after in zip(meta['rows'],rows):
  assert {k:v for k,v in before.items() if k not in ('up','down')}=={k:v for k,v in after.items() if k not in ('up','down')}
  assert after['up']>=before['up'] and after['down']>=before['down']
 assert hashlib.sha256(Path('/etc/x-ui/qinglian.json').read_bytes()).hexdigest()==meta['configSha']
 print(json.dumps({'ok':True,'configNodesAndCountersPreserved':True}))
except Exception:
 replace(backup);print(json.dumps({'ok':False,'rolledBack':True}))
'''
rollback=r'''
import hashlib,json,os,shutil,subprocess
from pathlib import Path
s=Path(STAGE);m=json.loads((s/'metadata.json').read_text());binary=Path('/usr/local/x-ui/x-ui');backup=binary.with_name('x-ui.before-ssh-'+m['oldSha'][:12]);assert hashlib.sha256(backup.read_bytes()).hexdigest()==m['oldSha']
subprocess.run(['systemctl','stop','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30);temp=binary.with_name('.qinglian-ssh-rollback');shutil.copyfile(backup,temp);temp.chmod(0o755);os.replace(temp,binary);subprocess.run(['systemctl','start','x-ui'],check=True,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,timeout=30);print(json.dumps({'rolledBack':True}))
'''
def public_check(ssh,meta):
    user=remote_json(ssh,"import json,sqlite3;db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row;print(json.dumps(dict(db.execute('SELECT username,password FROM users WHERE id=?',("+str(int(meta['cfg']['ownerId']))+",)).fetchone())));db.close()")
    jar=http.cookiejar.CookieJar();opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPCookieProcessor(jar))
    origin='https://gaozy.tech';headers={'User-Agent':'Qinglian/PanelSshCheck'}
    request=urllib.request.Request(origin+'/login',urllib.parse.urlencode(user).encode(),headers=headers)
    with opener.open(request,timeout=15) as response:assert json.load(response)['success']
    for path,marker in [('/xui/qinglian/ssh',b'qinglian-ssh/xterm.js'),('/assets/qinglian-ssh/xterm.js',b'Terminal'),('/assets/qinglian-ssh/addon-fit.js',b'FitAddon')]:
        with opener.open(urllib.request.Request(origin+path,headers=headers),timeout=15) as response:assert response.status==200 and marker in response.read(1048576)
    ws=websocket.create_connection('wss://gaozy.tech/xui/qinglian/ssh/ws',origin=origin,cookie='; '.join(c.name+'='+c.value for c in jar),header=['User-Agent: Qinglian/PanelSshCheck'],timeout=15,sslopt={'cert_reqs':ssl.CERT_REQUIRED,'check_hostname':True})
    try:
        ws.send(json.dumps({'type':'auth','username':os.environ.get('QINGLIAN_SSH_USER') or 'root','password':os.environ['QINGLIAN_SSH_PASSWORD'],'cols':100,'rows':30}))
        for _ in range(40):
            value=ws.recv()
            if isinstance(value,str):
                message=json.loads(value)
                if message.get('type')=='error':raise RuntimeError('terminal authentication failed')
                if message.get('type')=='ready':break
        else:raise RuntimeError('terminal not ready')
        nonce=secrets.token_hex(8);marker=('QINGLIAN_SSH_OK_'+nonce).encode()
        ws.send(json.dumps({'type':'resize','cols':120,'rows':35}))
        ws.send(json.dumps({'type':'input','data':" printf '\\n%s%s\\n' QINGLIAN_SSH_ OK_"+nonce+'\n'}))
        observed=b''
        for _ in range(60):
            value=ws.recv()
            if isinstance(value,bytes):observed+=value
            if marker in observed:break
            if len(observed)>131072:raise RuntimeError('terminal fixture output cap')
        else:raise RuntimeError('terminal command not observed')
        ws.send(json.dumps({'type':'close'}))
    finally:ws.close()
    print(json.dumps({'httpsPanelOwnerVerified':True,'bundledTerminalAssetsVerified':True,'strictWssSshAuthenticationVerified':True,'realPtyResizeAndCommandVerified':True,'credentialsOrTerminalOutputLogged':False}))
try:
    with connection() as ssh,tempfile.TemporaryDirectory() as directory:
        meta=remote_json(ssh,preflight);stage=meta['stage'];assert stage.startswith('/tmp/qinglian-ssh-')
        binary=Path(os.environ['QINGLIAN_SERVER_BINARY']);meta['newSha']=hashlib.sha256(binary.read_bytes()).hexdigest();file=Path(directory)/'metadata.json';file.write_text(json.dumps(meta))
        with ssh.open_sftp() as sftp:sftp.put(str(file),stage+'/metadata.json');sftp.chmod(stage+'/metadata.json',0o600);sftp.put(str(binary),stage+'/x-ui');sftp.chmod(stage+'/x-ui',0o700)
        result=remote_json(ssh,'STAGE='+repr(stage)+'\n'+install,timeout=180)
        if not result.get('ok'):raise RuntimeError('binary upgrade rolled back')
        try:public_check(ssh,meta)
        except Exception:
            remote_json(ssh,'STAGE='+repr(stage)+'\n'+rollback,timeout=90);raise RuntimeError('public SSH verification failed and was rolled back') from None
        print(json.dumps(result))
except Exception as error:print(json.dumps({'ok':False,'errorType':type(error).__name__}));raise SystemExit(1)
