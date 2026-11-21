"""Stop this DSH deployment and its dedicated-user workers; retain all data."""
import json,os,pwd,signal,socket,subprocess,time,traceback
from pathlib import Path

def run(*args,check=True):
 return subprocess.run(args,check=check,capture_output=True,text=True,timeout=70).stdout.strip()
def properties(unit):
 text=run('systemctl','show',unit,'--property=User,WorkingDirectory,ExecStart',check=False)
 return dict(line.split('=',1) for line in text.splitlines() if '=' in line)
def live_processes(uid):
 found=[]
 for entry in Path('/proc').glob('[0-9]*'):
  try:
   lines=(entry/'status').read_text().splitlines()
   owner=next(int(l.split()[1]) for l in lines if l.startswith('Uid:'))
   state=next(l.split()[1] for l in lines if l.startswith('State:'))
   if owner==uid and state!='Z':found.append(int(entry.name))
  except (OSError,StopIteration,ValueError):pass
 return found
try:
 assert os.geteuid()==0
 account=pwd.getpwnam('dsh');assert account.pw_dir=='/var/lib/dsh' and account.pw_uid!=0
 known=properties('dsh.service');assert known.get('User')=='dsh'
 protected=['x-ui','astrbot','qinglian-exports','server-hub']
 identities={s:run('systemctl','show',s,'--property=MainPID,ActiveEnterTimestampMonotonic',check=False) for s in protected}
 units={'dsh.service'}
 listing=run('systemctl','list-unit-files','--no-legend','--no-pager',check=False)
 available={line.split()[0] for line in listing.splitlines() if line.split()}
 for name in available:
  if not name.endswith('.service') or not name.startswith(('dsh','deepseek')):continue
  p=properties(name)
  if p.get('User')=='dsh' or any(root in p.get('WorkingDirectory','') or root in p.get('ExecStart','') for root in ('/opt/dsh/','/var/lib/dsh/','/srv/dsh-workspace')):units.add(name)
 for name in list(units):
  stem=name[:-len('.service')]
  units.update(u for u in (stem+'.timer',stem+'.socket',stem+'.path') if u in available)
 # Stop activators first, then every attributed service. Disable automatic boot.
 order=sorted(units,key=lambda u:u.endswith('.service'))
 for unit in order:
  subprocess.run(['systemctl','disable','--now',unit],check=True,capture_output=True,text=True,timeout=70)
 # Plugins and detached jobs all run under the dedicated DSH account.
 for pid in live_processes(account.pw_uid):
  try:os.kill(pid,signal.SIGTERM)
  except ProcessLookupError:pass
 deadline=time.monotonic()+5
 while live_processes(account.pw_uid) and time.monotonic()<deadline:time.sleep(.2)
 for pid in live_processes(account.pw_uid):
  # Recheck ownership immediately before killing an escaped worker.
  try:
   if Path('/proc',str(pid)).stat().st_uid==account.pw_uid:os.kill(pid,signal.SIGKILL)
  except ProcessLookupError:pass
 deadline=time.monotonic()+5
 while live_processes(account.pw_uid) and time.monotonic()<deadline:time.sleep(.2)
 states={u:run('systemctl','is-active',u,check=False) for u in order}
 enabled={u:run('systemctl','is-enabled',u,check=False) for u in order}
 residual=live_processes(account.pw_uid)
 listeners=run('ss','-H','-lnt','sport = :3080',check=False)
 assert not residual and not listeners
 assert all(v in ('inactive','failed','unknown') for v in states.values())
 assert all(v in ('disabled','static','indirect','masked','masked-runtime') for v in enabled.values())
 unchanged=all(run('systemctl','show',s,'--property=MainPID,ActiveEnterTimestampMonotonic',check=False)==value for s,value in identities.items())
 print(json.dumps({'ok':True,'unitsStopped':len(units),'mainServiceState':states['dsh.service'],
  'mainServiceEnabled':enabled['dsh.service'],'remainingProjectProcesses':len(residual),
  'port3080Closed':not bool(listeners),'otherApplicationServicesUnchanged':unchanged,'configurationAndDataRetained':True}))
except Exception as e:
 print(json.dumps({'ok':False,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
