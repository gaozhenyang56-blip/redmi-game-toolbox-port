"""Conservative, authenticated maintenance; never remove application state."""
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'github'))
from ssh_common import connection, remote_json

SCRIPT = r'''
import json,shutil,subprocess
from pathlib import Path

def command(args):
 result=subprocess.run(args,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,text=True,timeout=120)
 return {'returncode':result.returncode,'output':result.stdout[-16000:]}

before=shutil.disk_usage('/')
services=command(['systemctl','list-units','--type=service','--state=running','--no-legend','--no-pager'])
active_before=sorted(line.split()[0] for line in services['output'].splitlines() if line.strip())
actions={}
if shutil.which('apt-get'):
 actions['apt_archive_cache']=command(['apt-get','clean'])
if shutil.which('journalctl'):
 actions['journal_rotation']=command(['journalctl','--rotate'])
 actions['expired_journal']=command(['journalctl','--vacuum-time=7d','--vacuum-size=200M'])
# Only pip's explicitly disposable cache, never ~/.cache as a whole.
cache=Path('/root/.cache/pip')
if cache.is_dir() and not cache.is_symlink():
 actions['pip_cache_bytes']=sum(p.stat().st_size for p in cache.rglob('*') if p.is_file() and not p.is_symlink())
 shutil.rmtree(cache)
# Keep both deployed pointers plus the newest two releases for rollback.
root=Path('/opt/senren-web');releases=root/'releases'
if releases.is_dir():
 keep={(root/name).resolve() for name in ['preview','test'] if (root/name).exists()}
 candidates=sorted([p for p in releases.iterdir() if p.is_dir() and not p.is_symlink()],key=lambda p:p.stat().st_mtime,reverse=True)
 keep.update(candidates[:2]);removed=[]
 for path in candidates:
  if path.resolve() not in keep and len(path.name)==40 and all(c in '0123456789abcdef' for c in path.name):
   shutil.rmtree(path);removed.append(path.name)
 actions['inactive_senren_releases_removed']=removed
after=shutil.disk_usage('/')
usage={}
for directory in ['/var','/opt','/root','/tmp','/usr/local']:
 if Path(directory).exists():
  result=command(['du','-x','-B1','--max-depth=2',directory])
  lines=[]
  for line in result['output'].splitlines():
   size,_,path=line.partition('\t')
   if size.isdigit():lines.append((int(size),path))
  usage[directory]=sorted(lines,reverse=True)[:16]
running=command(['systemctl','list-units','--type=service','--state=running','--no-legend','--no-pager'])
active_after=sorted(line.split()[0] for line in running['output'].splitlines() if line.strip())
print(json.dumps({'before':dict(zip(['total','used','free'],before)),'after':dict(zip(['total','used','free'],after)),
 'freed_bytes':after.free-before.free,'actions':actions,'usage':usage,
 'services_no_longer_running':sorted(set(active_before)-set(active_after)),
 'mounts':command(['df','-B1','--output=source,size,used,avail,target'])}))
'''

with connection() as client:
    result = remote_json(client, SCRIPT, timeout=600)
print(json.dumps(result, ensure_ascii=False, indent=2))
