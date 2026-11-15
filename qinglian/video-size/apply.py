"""Back up and patch only HelloTik's video size configuration and guards."""
import hashlib,json,os,shutil,subprocess,tempfile,time,urllib.request
from pathlib import Path
from patch import transform,schema_update
from verify import verify

plugin=Path('/opt/astrbot/data/plugins/astrbot_plugin_hellotik_video')
config=Path('/opt/astrbot/data/config/astrbot_plugin_hellotik_video_config.json')
backup=None;changed=False;phase='preflight'
def run(*args,timeout=45):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=timeout).stdout.strip()
def signature(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()
def write(path,text):
 temporary=path.with_name(path.name+'.unlimited-new');temporary.write_text(text)
 shutil.copystat(path,temporary);stat=path.stat();os.chown(temporary,stat.st_uid,stat.st_gid);os.replace(temporary,path)
try:
 assert run('systemctl','is-active','astrbot')=='active'
 config_before=json.loads(config.read_text(encoding='utf-8-sig'))
 names=('main.py','client.py','quality.py','_conf_schema.json')
 originals={name:(plugin/name).read_text() for name in names}
 replacements={name:transform(name,originals[name]) for name in names[:3]}
 replacements['_conf_schema.json']=schema_update(originals['_conf_schema.json'])
 with tempfile.TemporaryDirectory() as folder:
  candidate=Path(folder)
  for name,text in replacements.items():(candidate/name).write_text(text)
  phase='preinstall_streaming_tests';tests=verify(candidate)
 phase='backup'
 backup=Path(tempfile.mkdtemp(prefix='hellotik-video-size-',dir='/root'));backup.chmod(0o700)
 for name in names:shutil.copy2(plugin/name,backup/name)
 shutil.copy2(config,backup/'config.json');(backup/'config.json').chmod(0o600)
 units=['x-ui','dsh','napcat-login','openlist-astrbot','openlist-progress','server-hub','qinglian-exports','qinglian-hy2']
 identities={name:run('systemctl','show',name,'--property=MainPID,ActiveEnterTimestampMonotonic') for name in units}
 before_other={str(p):signature(p) for p in config.parent.glob('*_config.json') if p!=config}
 phase='apply';changed=True
 for name,text in replacements.items():
  assert (plugin/name).read_text()==originals[name]
  write(plugin/name,text)
 updated=dict(config_before);updated['max_video_mb']=0
 write(config,json.dumps(updated,ensure_ascii=False,indent=2)+'\n')
 assert json.loads(config.read_text())==updated
 phase='installed_streaming_tests';assert verify(plugin)==tests
 phase='restart_astrbot';started=int(time.time());run('systemctl','restart','astrbot',timeout=90)
 opener=urllib.request.build_opener(urllib.request.ProxyHandler({}))
 phase='startup_validation'
 for attempt in range(45):
  try:
   assert run('systemctl','is-active','astrbot')=='active'
   with opener.open('http://127.0.0.1:6185/',timeout=3) as response:assert response.status==200
   logs=run('journalctl','-u','astrbot','--since','@'+str(started),'--no-pager','-o','cat')
   lines=[line for line in logs.splitlines() if 'hellotik' in line.lower()]
   errors=[line for line in lines if any(word in line.lower() for word in ('traceback','error','failed','失败'))]
   assert lines and not errors
   break
  except Exception:
   if attempt==44:raise
   time.sleep(1)
 assert json.loads(config.read_text())['max_video_mb']==0
 assert {k:v for k,v in json.loads(config.read_text()).items() if k!='max_video_mb'}=={k:v for k,v in config_before.items() if k!='max_video_mb'}
 assert all(signature(path)==value for path,value in before_other.items())
 assert all(run('systemctl','show',name,'--property=MainPID,ActiveEnterTimestampMonotonic')==identity for name,identity in identities.items())
 print(json.dumps({'ok':True,'plugin':plugin.name,'previous_max_video_mb':config_before.get('max_video_mb'),'max_video_mb':0,'unlimited':True,'tests':tests,'astrbot_active':True,'webui_healthy':True,'plugin_seen_in_startup':True,'other_plugin_settings_preserved':True,'other_services_not_restarted':True,'backup':str(backup)}))
except Exception as error:
 restored=False
 if changed:
  try:
   for name in names:shutil.copy2(backup/name,plugin/name)
   shutil.copy2(backup/'config.json',config)
   run('systemctl','restart','astrbot',timeout=90);restored=True
  except Exception:pass
 print(json.dumps({'ok':False,'rolled_back':restored,'phase':phase,'error_type':type(error).__name__,'script_lines':[f.lineno for f in __import__('traceback').extract_tb(error.__traceback__) if f.filename.endswith(('apply.py','verify.py'))]}))
