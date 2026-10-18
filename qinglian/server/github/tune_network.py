#!/usr/bin/env python3
"""Raise only dynamic buffer ceilings; preserve BBR/default allocation and rollback state."""
import json,os,sys
from pathlib import Path
from ssh_common import connection,remote_json
SCRIPT=r'''
import base64,json,os,socket,subprocess,tempfile
from pathlib import Path
mode=MODE
assert mode in ['apply','rollback']
backup=Path('/etc/x-ui/qinglian/network-tuning-backup.json')
conf=Path('/etc/sysctl.d/99-zz-qinglian-buffers.conf')
keys=['net.core.rmem_max','net.core.wmem_max','net.ipv4.tcp_rmem','net.ipv4.tcp_wmem']
def get(key):return ' '.join(subprocess.check_output(['sysctl','-n',key],text=True).split())
def set_values(values):
 for key,value in values.items():subprocess.run(['sysctl','-w',key+'='+value],check=True,capture_output=True,text=True,timeout=10)
def write_conf(payload):
 fd,name=tempfile.mkstemp(prefix='.qinglian-buffer-',dir=str(conf.parent))
 try:
  with os.fdopen(fd,'wb') as output:output.write(payload);output.flush();os.fsync(output.fileno())
  os.chmod(name,0o644);os.replace(name,conf)
 finally:
  if os.path.exists(name):os.unlink(name)
def restore(state):
 set_values(state['before'])
 if state['previousConf'] is None:conf.unlink(missing_ok=True)
 else:write_conf(base64.b64decode(state['previousConf']))
before={key:get(key) for key in keys};congestion=get('net.ipv4.tcp_congestion_control')
if mode=='rollback':
 state=json.loads(backup.read_text());assert before==state['expected'],'Settings changed independently; refusal protects newer configuration'
 restore(state);assert {key:get(key) for key in keys}==state['before'];backup.rename(backup.with_suffix('.rolled-back.json'))
 print(json.dumps({'rolledBack':True,'sysctl':state['before'],'congestionControl':congestion}))
else:
 assert int(Path('/proc/meminfo').read_text().split('MemTotal:')[1].split()[0])>=1024*1024,'Insufficient memory for this bounded tuning'
 expected={}
 for key,value in before.items():
  numbers=[int(n) for n in value.split()];assert len(numbers)==(3 if key.startswith('net.ipv4.') else 1) and all(n>0 for n in numbers)
  numbers[-1]=max(numbers[-1],32*1024*1024);expected[key]=' '.join(map(str,numbers))
 if backup.exists():
  state=json.loads(backup.read_text());assert before==state['expected'],'Existing tuning state differs'
  assert conf.exists(),'Missing managed config';expected=state['expected']
 else:
  assert not conf.exists(),'Refusing to overwrite an unmanaged config'
  state={'before':before,'expected':expected,'previousConf':None}
  fd=os.open(str(backup),os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600)
  with os.fdopen(fd,'w') as output:json.dump(state,output);output.flush();os.fsync(output.fileno())
 try:
  write_conf(('# Qinglian: dynamic buffer ceilings only; original defaults/minimums retained.\n'+'\n'.join(key+' = '+value for key,value in expected.items())+'\n').encode())
  set_values(expected)
  assert {key:get(key) for key in keys}==expected
  assert get('net.ipv4.tcp_congestion_control')==congestion
  assert subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()=='active'
  with socket.create_connection(('127.0.0.1',11452),timeout=5):pass
 except BaseException:
  restore(state);raise
 print(json.dumps({'applied':True,'sysctl':expected,'defaultsAndMinimumsPreserved':True,'congestionControl':congestion,'serviceRestarted':False,'rollbackSaved':True}))
'''
try:
 mode=os.environ.get('QINGLIAN_NETWORK_MODE','apply');assert mode in ['apply','rollback']
 with connection() as ssh:result=remote_json(ssh,SCRIPT.replace('MODE',repr(mode)),timeout=90)
 print(json.dumps(result))
except Exception as error:
 print('Network tuning failed:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
