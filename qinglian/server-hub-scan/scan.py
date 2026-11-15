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
# Report only non-secret identification metadata for newly observed web services.
extra={}
if any(r['unit']=='dsh.service' for r in rows):
 import http.client,html
 details=subprocess.run(['systemctl','show','dsh.service','--property=Description,WorkingDirectory'],capture_output=True,text=True,timeout=10)
 props=dict(line.split('=',1) for line in details.stdout.splitlines() if '=' in line)
 extra['dsh']={'description':props.get('Description'),'working_directory':props.get('WorkingDirectory')}
 try:
  connection=http.client.HTTPConnection('127.0.0.1',3080,timeout=5);connection.request('GET','/',headers={'Range':'bytes=0-4095'});response=connection.getresponse();body=response.read(4096).decode('utf-8','replace');title=re.search(r'<title[^>]*>(.*?)</title>',body,re.I|re.S)
  extra['dsh'].update(http_status=response.status,content_type=response.getheader('Content-Type'),title=html.unescape(title[1].strip())[:120] if title else None);connection.close()
 except Exception as error:extra['dsh']['probe_error_type']=type(error).__name__
 work=pathlib.Path(props.get('WorkingDirectory') or '/nonexistent')
 for filename in ('package.json','pyproject.toml'):
  if (work/filename).is_file():extra['dsh'].setdefault('manifest_files',[]).append(filename)
status_path=pathlib.Path('/var/lib/server-hub/status.json')
if status_path.exists():
 status=json.loads(status_path.read_text());extra['hub_sampled_at']=status.get('sampled_at');extra['hub_projects']=[{k:p.get(k) for k in ('id','name','unit','status','ports','discovered')} for p in status.get('projects',[])]
print(json.dumps({'listeners':list(unique.values()),'project_units':projects,'running_containers':[line.split('\t',1) for line in docker.stdout.splitlines()],'identification':extra}))
'''
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=50)
 print('SERVER_HUB_INVENTORY='+json.dumps(result),flush=True)
