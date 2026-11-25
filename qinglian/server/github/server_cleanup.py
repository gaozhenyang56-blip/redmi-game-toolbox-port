"""Inspect maintenance leftovers; remove only old inactive temporary staging.
Never walk user content, history databases, PKI, Docker volumes or backups in /root.
"""
import json,os
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,os,re,shutil,stat,time
from pathlib import Path
clean=CLEAN
now=time.time();root=shutil.disk_usage('/')
# Only stages created by Qinglian maintenance tooling, never generic /tmp files.
patterns=(re.compile(r'qinglian-ssh-[A-Za-z0-9_\-]{6,}$'),re.compile(r'qinglian-backup-[A-Za-z0-9_\-]{6,}$'))
active=set()
for process in Path('/proc').iterdir():
 if not process.name.isdigit():continue
 for name in ('cwd','root','exe'):
  try:active.add(os.readlink(process/name))
  except OSError:pass
 try:
  for fd in (process/'fd').iterdir():
   try:active.add(os.readlink(fd))
   except OSError:pass
 except OSError:pass
items=[];removed=0;errors=0
for path in Path('/tmp').iterdir():
 if not any(p.fullmatch(path.name) for p in patterns):continue
 try:
  info=path.lstat()
  if not stat.S_ISDIR(info.st_mode) or stat.S_ISLNK(info.st_mode) or info.st_uid!=0:continue
  if now-info.st_mtime<86400:continue
  if any(a==str(path) or a.startswith(str(path)+'/') for a in active):continue
  entries=[Path(base)/name for base,dirs,files in os.walk(path,followlinks=False) for name in dirs+files]
  if any(now<f.lstat().st_mtime+86400 for f in entries):continue
  size=sum(f.lstat().st_blocks*512 for f in entries if not f.is_symlink())
  items.append({'category':'old-maintenance-staging','bytes':size,'ageDays':int((now-info.st_mtime)//86400)})
  if clean:shutil.rmtree(path);removed+=size
 except OSError:errors+=1
# Do not automatically remove rollback binaries; list aggregate size for review.
rollbacks=[p for p in Path('/usr/local/x-ui').glob('x-ui.before-ssh-*') if p.is_file() and not p.is_symlink()]
after=shutil.disk_usage('/')
print(json.dumps({'mode':'clean' if clean else 'inspect','diskBefore':{'total':root.total,'used':root.used,'free':root.free},'diskAfter':{'used':after.used,'free':after.free},'candidates':items,'removedBytes':removed,'errors':errors,'rollbackCopies':len(rollbacks),'rollbackBytes':sum(p.stat().st_size for p in rollbacks),'protected':'accounts,nodes,history,PKI,root backups,rollback copies,other projects'}))
'''
if __name__=='__main__':
 with connection() as ssh:
  value=remote_json(ssh,'CLEAN='+repr(os.environ.get('QINGLIAN_CLEAN')=='1')+'\n'+SCRIPT,timeout=180)
 print(json.dumps(value))
