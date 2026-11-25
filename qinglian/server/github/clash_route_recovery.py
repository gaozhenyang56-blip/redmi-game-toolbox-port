"""Restore last verified binary after detecting an unrelated route regression."""
import json
from ssh_common import connection,remote_json
script=r'''
import hashlib,json,os,shutil,subprocess
from pathlib import Path
binary=Path('/usr/local/x-ui/x-ui');digest=hashlib.sha256(binary.read_bytes()).hexdigest()
matched=[]
for stage in Path('/tmp').glob('qinglian-ssh-*'):
 try:
  m=json.loads((stage/'metadata.json').read_text())
  if m.get('newSha')==digest and m.get('oldSha')!=digest:matched.append((stage.stat().st_mtime,stage,m))
 except (OSError,ValueError):pass
assert matched
_,stage,m=max(matched,key=lambda x:x[0]);backup=binary.with_name('x-ui.before-ssh-'+m['oldSha'][:12])
assert hashlib.sha256(backup.read_bytes()).hexdigest()==m['oldSha']
assert hashlib.sha256(Path('/etc/x-ui/qinglian.json').read_bytes()).hexdigest()==m['configSha']
subprocess.run(['systemctl','stop','x-ui'],check=True,timeout=30,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
target=binary.with_name('.clash-route-recovery');shutil.copy2(backup,target);os.replace(target,binary)
subprocess.run(['systemctl','start','x-ui'],check=True,timeout=30,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
sources=[]
for root in ('/tmp','/root','/opt'):
 for base,dirs,files in os.walk(root):
  depth=len(Path(base).relative_to(root).parts)
  if depth>=4:dirs[:]=[]
  dirs[:]=[d for d in dirs if not d.startswith('.') and d not in ('node_modules','site-packages','venv','__pycache__')]
  for name in files:
   if name.startswith('qinglian_') and name.endswith('.go') and ('domain' in name or 'dsh' in name):sources.append(str(Path(base)/name))
print(json.dumps({'previousBinaryRestored':True,'originalConfigurationPreserved':True,'routeSourceCandidates':sources[:30]}))
'''
with connection() as ssh:print(json.dumps(remote_json(ssh,script,timeout=100)))
