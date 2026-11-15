import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as c:
 print(json.dumps(remote_json(c,r'''
import json,re,subprocess,time
from pathlib import Path
stages=sorted(Path('/root').glob('dsh-apply-*'),key=lambda p:p.stat().st_mtime)
s=stages[-1] if stages else None
processes=[]
for p in Path('/proc').glob('[0-9]*/cmdline'):
 try:
  words=p.read_bytes().split(b'\0')
  if not words:continue
  kind=Path(words[0].decode(errors='ignore')).name
  if kind in ('tar','gzip','chown','node','runuser'):processes.append(kind)
 except OSError:pass
status=subprocess.run(['systemctl','is-active','dsh'],capture_output=True,text=True).stdout.strip()
log=(s/'apply.log').read_text(errors='replace') if s and (s/'apply.log').exists() else ''
print(json.dumps({'dshState':status,'activeOperationKinds':processes,
 'runtimeArchiveBytes':(s/'runtime.tar.gz').stat().st_size if s and (s/'runtime.tar.gz').exists() else 0,
 'homeArchiveBytes':(s/'home.tar.gz').stat().st_size if s and (s/'home.tar.gz').exists() else 0,
 'applyLogExists':bool(log),'patchResultLines':sum('patch #' in l for l in log.splitlines()),
 'applyFinished':'All done' in log,
 'privateLogErrorCategories':sorted(set(re.findall(r'\b(?:EACCES|EPERM|ENOENT|ENOSPC|SyntaxError|TypeError|ReferenceError)\b',log)))}))
''')))
