import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT=r'''
import json,re,subprocess,pathlib
p=subprocess.run(['ss','-H','-lntup'],capture_output=True,text=True,timeout=10)
rows=[]
for line in p.stdout.splitlines():
 fields=line.split()
 if len(fields)<5:continue
 endpoint=fields[4];port=endpoint.rsplit(':',1)[-1]
 if not port.isdigit():continue
 process=re.search(r'users:\(\(\"([^\"]+)\",pid=(\d+)',line);name=process[1] if process else 'unknown';unit=''
 if process:
  try:
   cgroup=pathlib.Path('/proc/'+process[2]+'/cgroup').read_text();match=re.search(r'/([^/\n]+\.service)(?:/|$)',cgroup,re.M);unit=match[1] if match else ''
  except OSError:pass
 address=endpoint.rsplit(':',1)[0].strip('[]')
 rows.append({'protocol':fields[0],'port':int(port),'process':name,'unit':unit,'scope':'local' if address in ('127.0.0.1','::1') else 'public'})
unique={json.dumps(r,sort_keys=True):r for r in rows}
units=subprocess.run(['systemctl','list-units','--type=service','--state=running','--no-legend','--plain'],capture_output=True,text=True,timeout=15)
projects=[line.split()[0] for line in units.stdout.splitlines() if any(x in line.lower() for x in ['astrbot','napcat','openlist','qinglian','x-ui','nginx','docker'])]
docker=subprocess.run(['docker','ps','--format','{{.Names}}\t{{.Status}}'],capture_output=True,text=True,timeout=15)
print(json.dumps({'listeners':list(unique.values()),'project_units':projects,'running_containers':[line.split('\t',1) for line in docker.stdout.splitlines()]}))
'''
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=50)
 print('SERVER_HUB_INVENTORY='+json.dumps(result),flush=True)
