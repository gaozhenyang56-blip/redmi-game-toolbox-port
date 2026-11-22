"""Protect shared HTTPS latency by bounding the DSH compute workload live."""
import http.client,json,os,pwd,re,shutil,socket,ssl,subprocess,tempfile,time,traceback
from pathlib import Path

def run(*args):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=30).stdout.strip()
def properties():
 text=run('systemctl','show','dsh.service','--property=ControlGroup,MemoryHigh,MemoryMax,CPUWeight,CPUQuotaPerSecUSec,ActiveState,MainPID')
 return dict(l.split('=',1) for l in text.splitlines() if '=' in l)
def mem_events(group):
 p=Path('/sys/fs/cgroup'+group)/'memory.events'
 return dict((k,int(v)) for k,v in (line.split() for line in p.read_text().splitlines()))
def available():return next(int(l.split()[1])*1024 for l in Path('/proc/meminfo').read_text().splitlines() if l.startswith('MemAvailable:'))
class Origin(http.client.HTTPSConnection):
 def connect(self):self.sock=self._context.wrap_socket(socket.create_connection(('127.0.0.1',443),8),server_hostname='gaozy.tech')
def origin():
 c=Origin('gaozy.tech',context=ssl.create_default_context(),timeout=10)
 try:
  start=time.monotonic();c.request('GET','/',headers={'Host':'gaozy.tech'});r=c.getresponse();r.read(512);return {'status':r.status,'seconds':round(time.monotonic()-start,3)}
 finally:c.close()
backup=None;dropin=Path('/etc/systemd/system/dsh.service.d/60-domain-resource-protection.conf');changed=False;before=None
try:
 assert os.geteuid()==0
 before=properties();assert before['ActiveState']=='active'
 group=before['ControlGroup'];assert group.startswith('/') and group.endswith('/dsh.service')
 root=Path('/sys/fs/cgroup'+group);quota_raw,period_raw=(root/'cpu.max').read_text().split()
 ratio=1.0 if dropin.exists() or quota_raw=='max' else min(1.0,int(quota_raw)/int(period_raw))
 old_high=int(before['MemoryHigh']);max_mem=int(before['MemoryMax'])
 initial_events=mem_events(group);time.sleep(2);baseline_events=mem_events(group)
 # Maintain the existing hard ceiling; relax only an observed soft-limit stall.
 target_high=old_high
 if baseline_events.get('high',0)>0 and available()>384*1024**2 and old_high<640*1024**2:
  target_high=min(640*1024**2,max_mem)
 old_weight=int(before['CPUWeight']) if before['CPUWeight'].isdigit() else 100
 weight=min(old_weight,20)
 backup=Path(tempfile.mkdtemp(prefix='domain-resource-',dir='/root'));backup.chmod(0o700)
 if dropin.exists():shutil.copy2(dropin,backup/'dropin.before')
 dropin.parent.mkdir(parents=True,exist_ok=True)
 contents='[Service]\nCPUAccounting=true\nCPUQuota='+str(ratio*100)+'%\nCPUWeight='+str(weight)+'\nMemoryHigh='+str(target_high)+'\nNice=0\n'
 temp=dropin.with_suffix('.new');temp.write_text(contents);temp.chmod(0o644);temp.replace(dropin);changed=True
 run('systemctl','daemon-reload')
 run('systemctl','set-property','--runtime','dsh.service','CPUQuota='+str(ratio*100)+'%','CPUWeight='+str(weight),'MemoryHigh='+str(target_high))
 uid=pwd.getpwnam('dsh').pw_uid;adjusted=0;frontend_threads=0
 for proc in Path('/proc').glob('[0-9]*'):
  try:
   if proc.stat().st_uid!=uid or not re.search(r'/dsh\.service(?:/|\n|$)',(proc/'cgroup').read_text()):continue
   args=(proc/'cmdline').read_bytes().split(b'\0')
   frontend=b'web' in args and any(b'/node_modules/@deepseek-ai/dsh/lib/bin.js' in word for word in args)
   for thread in (proc/'task').glob('[0-9]*'):
    tid=int(thread.name);nice=os.getpriority(os.PRIO_PROCESS,tid)
    desired=min(nice,0) if frontend else max(nice,15)
    if desired!=nice:os.setpriority(os.PRIO_PROCESS,tid,desired);adjusted+=1
    if frontend:frontend_threads+=1
  except (ProcessLookupError,FileNotFoundError):pass
 now_events=mem_events(group);time.sleep(8);after_events=mem_events(group);after=properties()
 assert after['ActiveState']=='active' and after['MainPID']==before['MainPID']
 assert int(after['MemoryMax'])==max_mem and int(after['MemoryHigh'])==target_high
 checks=[origin() for _ in range(3)];assert all(c['status']==200 for c in checks)
 actual_quota,actual_period=(root/'cpu.max').read_text().split();assert actual_quota!='max' and int(actual_quota)/int(actual_period)<=ratio+.001
 print(json.dumps({'ok':True,'dshCpuQuotaCores':round(int(actual_quota)/int(actual_period),3),'dshCpuWeight':after['CPUWeight'],
  'memoryHighBeforeMiB':old_high//1024**2,'memoryHighAfterMiB':target_high//1024**2,'memoryHardLimitUnchanged':True,
  'memoryHighStallsInBaseline2Seconds':baseline_events.get('high',0)-initial_events.get('high',0),
  'memoryHighStallsAfterFix8Seconds':after_events.get('high',0)-now_events.get('high',0),
  'threadsPrioritiesAdjusted':adjusted,'frontendThreadsPrioritized':frontend_threads,'existingDshProcessPreserved':True,'originHttpsChecks':checks,'persistentAcrossRestarts':True}))
except Exception as e:
 if changed and before:
  try:
   if (backup/'dropin.before').exists():shutil.copy2(backup/'dropin.before',dropin)
   elif dropin.exists():dropin.unlink()
   run('systemctl','daemon-reload')
   oldquota='infinity' if quota_raw=='max' else str(int(quota_raw)*100/int(period_raw))+'%'
   run('systemctl','set-property','--runtime','dsh.service','CPUQuota='+oldquota,'CPUWeight='+str(old_weight),'MemoryHigh='+before['MemoryHigh'])
  except Exception:pass
 print(json.dumps({'ok':False,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
