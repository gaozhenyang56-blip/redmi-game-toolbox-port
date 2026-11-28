"""Disposable CI only: exercise shipped browser engine and real proxy transition.
No production API credentials, website traffic, or global default-route changes.
"""
import hashlib,json,os,queue,sys,tempfile,threading,time,urllib.request,zipfile
from pathlib import Path
if os.name!='nt' or os.environ.get('QINGLIAN_CI_WINDOWS')!='1':raise SystemExit('Disposable Windows runner only')
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'windows'))
import win_platform as platform
import tun
from browser_pac import BrowserPAC
phase='proxy-before'
try:
 before=platform.proxy_values();proxy=platform.ProxySettings()
 try:
  phase='proxy-enable';proxy.enable()
  expected=platform.read(proxy.path)['ours'];actual=platform.proxy_values()
  print(json.dumps({'phase':phase,'differentKeys':[k for k in expected if expected[k]!=actual.get(k)]}))
  phase='proxy-switch';proxy.enable_tun_only()
  print(json.dumps({'phase':phase,'ok':True}))
 finally:
  phase_before_cleanup=phase;proxy.close();assert platform.proxy_values()==before
  print(json.dumps({'phase':'proxy-restored','ok':True}));phase=phase_before_cleanup
 phase='release-assets'
 with tempfile.TemporaryDirectory() as directory:
  root=Path(directory);archive=root/'package.zip'
  with urllib.request.urlopen('https://github.com/gaozhenyang56-blip/redmi-game-toolbox-port/releases/download/qinglian-windows-v1.0.0-preview8/Qinglian-1.0.0-preview8-windows-x64-portable.zip',timeout=90) as response,archive.open('wb') as output:
   import shutil;shutil.copyfileobj(response,output)
  assert hashlib.sha256(archive.read_bytes()).hexdigest()=='e3b4317fd9a50a8e759289af8ece99de0a1331cd3fdc683e7f0e9ec3a544877f'
  with zipfile.ZipFile(archive) as z:
   for name in ('browser-tun.exe','wintun.dll'):(root/name).write_bytes(z.read('Qinglian/_internal/resources/'+name))
  baseline=tun.powershell("@(Get-NetRoute|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/0','::/0')}|Select-Object DestinationPrefix,InterfaceIndex,NextHop,RouteMetric|Sort-Object DestinationPrefix,InterfaceIndex,NextHop)|ConvertTo-Json -Compress")
  index=int(tun.powershell("(Get-NetRoute -AddressFamily IPv4 -DestinationPrefix '0.0.0.0/0'|Sort-Object RouteMetric|Select-Object -First 1).InterfaceIndex"));pac=BrowserPAC();process=None
  try:
   phase='shipped-browser-engine-launch'
   process=platform.spawn([str(root/'browser-tun.exe'),'--owner',str(os.getpid()),'--upstream',str(index),'--pac-port',str(pac.port),'--pac-token',pac.token],cwd=root,stdout=__import__('subprocess').PIPE)
   events=queue.Queue()
   def read():
    for line in process.stdout:events.put(line)
    events.put(None)
   threading.Thread(target=read,daemon=True).start()
   for command,want in ((None,False),(b'enable\n',True),(b'disable\n',False),(b'enable\n',False)):
    if command:process.stdin.write(command);process.stdin.flush()
    deadline=time.monotonic()+15
    while True:
     assert process.poll() is None
     line=events.get(timeout=max(.1,deadline-time.monotonic()));assert line is not None and len(line)<4096
     try:value=json.loads(line)
     except ValueError:continue
     assert set(value)=={'type','enabled','pids','direct','proxy'}
     if value['enabled']==want:break
     assert time.monotonic()<deadline
   print(json.dumps({'phase':phase,'initialProxyAndEnableAndSealedDisableVerified':True}))
  finally:
   if process:platform.stop_process(process)
   pac.close()
  assert tun.powershell("@(Get-NetRoute|Where-Object {$_.DestinationPrefix -in @('0.0.0.0/0','::/0')}|Select-Object DestinationPrefix,InterfaceIndex,NextHop,RouteMetric|Sort-Object DestinationPrefix,InterfaceIndex,NextHop)|ConvertTo-Json -Compress")==baseline
 print(json.dumps({'ok':True,'globalRoutesPreserved':True}))
except Exception as error:
 print(json.dumps({'ok':False,'phase':phase,'errorType':type(error).__name__}));raise SystemExit(1)
