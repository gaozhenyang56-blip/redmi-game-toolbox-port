#!/usr/bin/env python3
"""Ephemeral Actions-only fresh systemd install test; all API traffic is loopback."""
import argparse,json,os,secrets,shutil,sqlite3,ssl,subprocess,time,urllib.request,uuid
from pathlib import Path

def main():
 if os.geteuid()!=0 or os.environ.get('GITHUB_ACTIONS')!='true' or os.environ.get('QINGLIAN_CI_FRESH_INSTALL')!='1':raise SystemExit('仅限显式授权的临时 GitHub Actions root 测试，禁止在实际服务器运行')
 p=argparse.ArgumentParser();p.add_argument('--bundle',type=Path,required=True);a=p.parse_args();bundle=a.bundle.resolve()
 directories=[Path('/etc/x-ui'),Path('/usr/local/x-ui'),Path('/usr/local/lib/qinglian')];names=['x-ui','qinglian-hy2','qinglian-exports'];units=[Path('/etc/systemd/system')/(s+'.service') for s in names]
 assert all(not d.exists() for d in directories+units),'refusing an existing installation'
 password=secrets.token_urlsafe(24);device=secrets.token_hex(32);key=secrets.token_hex(32);started=False;result={}
 try:
  # Public IPv4 is only a certificate/profile fixture. Never dial it in this test.
  command=['python3',str(bundle/'install.py'),'--server-ip','8.8.8.8','--admin-name','fixture-admin']
  check=subprocess.run(command+['--check'],capture_output=True,timeout=30);assert check.returncode==0,'fresh preflight failed'
  done=subprocess.run(command,input=(password+'\n'+password+'\n').encode(),capture_output=True,timeout=150)
  assert done.returncode==0,'fresh installation failed (private output withheld)'
  result['freshInstallCompleted']=True
  assert all(subprocess.check_output(['systemctl','is-active',s],text=True).strip()=='active' for s in names)
  cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text());context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem')
  api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=context));base='https://127.0.0.1:11452/api/v1/'
  def request(path,body=None):
   token=cfg['clientToken'] if path in ('quota','guest/start') else key
   req=urllib.request.Request(base+path,None if body is None else json.dumps(body).encode(),headers={'Authorization':'Bearer '+token,'Content-Type':'application/json','X-Qinglian-Device':device})
   with api.open(req,timeout=5) as response:return json.load(response)
  for _ in range(30):
   try:request('quota');break
   except Exception:time.sleep(.3)
  else:raise AssertionError('strict loopback API failed')
  request('guest/start',{'requestId':str(uuid.uuid4()),'sessionKey':key});started=True
  for _ in range(40):
   profile=request('guest/profile',{'labHy2':True,'cdnCompatibility':False})
   if profile.get('ready') and (profile.get('acceleration') or {}).get('node'):break
   time.sleep(.5)
  else:raise AssertionError('fresh TCP/HY2 allocation failed')
  result['strictApiAndBothWorkersReady']=True
  request('guest/stop',{});started=False;result['testGuestStopped']=True
  exported=json.loads(Path('/etc/x-ui/qinglian/client-server.json').read_text());assert exported['kind']=='qinglian-server' and exported['profile']['clientToken']==cfg['clientToken'] and 'PRIVATE KEY' not in exported['profile']['caPem']
  assert Path('/etc/x-ui/qinglian/client-server.json').stat().st_mode&0o077==0
  result['privateBootstrapGenerated']=True
 finally:
  if started:
   try:request('guest/stop',{})
   except Exception:pass
  subprocess.run(['systemctl','disable','--now',*names],capture_output=True,timeout=45)
  for unit in units:unit.unlink(missing_ok=True)
  for directory in directories:
   if directory.exists():shutil.rmtree(directory)
  subprocess.run(['systemctl','daemon-reload'],capture_output=True,timeout=15)
 assert all(not p.exists() for p in directories+units)
 result['removedTestInstallation']=True;result['externalVpnTransferClaimed']=False;print(json.dumps(result))
if __name__=='__main__':main()
