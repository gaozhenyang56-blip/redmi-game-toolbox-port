import ast,json,os,re,shutil,subprocess,sys
from pathlib import Path
STAGE=Path('/opt/openlist-astrbot/pipeline-fix-update');sys.path.insert(0,str(STAGE))
from fix_source import patch
P=Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl');source=P/'main.py';backup=Path('/opt/openlist-astrbot/pipeline-fix-backup');backup.mkdir(mode=0o700,exist_ok=True)
original=source.read_text(encoding='utf-8-sig');owner=source.stat();old_meta=(P/'metadata.yaml').read_text()
try:
 if not (backup/'main.py').exists():shutil.copy2(source,backup/'main.py');shutil.copy2(P/'metadata.yaml',backup/'metadata.yaml')
 updated=patch(original);ast.parse(updated)
 temp=source.with_suffix('.pipeline-new');temp.write_text(updated);temp.chmod(owner.st_mode&0o777);os.chown(temp,owner.st_uid,owner.st_gid);os.replace(temp,source)
 result=subprocess.run(['/opt/astrbot/.venv/bin/python',str(STAGE/'framework_check.py')],cwd='/opt/astrbot',capture_output=True,text=True,timeout=60)
 if result.returncode:
  last=result.stderr.splitlines()[-1] if result.stderr else 'FrameworkTestError'
  kind=last.split(':',1)[0]
  if last.startswith('AssertionError:'):kind=last[:180]
  missing=re.search(r"No module named '([A-Za-z0-9_.]+)'",last)
  raise RuntimeError('Native pipeline regression check failed ('+kind+(' '+missing[1] if missing else '')+')')
 checks=json.loads(result.stdout.splitlines()[-1]);assert checks.get('ok')
 (P/'metadata.yaml').write_text(re.sub(r'^version:.*$','version: v8.6.0+localdownload.2',old_meta,flags=re.M))
 print(json.dumps({'ok':True,'patched':updated!=original,'checks':checks}))
except Exception as exc:
 source.write_text(original);(P/'metadata.yaml').write_text(old_meta)
 print(json.dumps({'ok':False,'rolled_back':True,'failure_type':type(exc).__name__,'safe_error':str(exc) if isinstance(exc,RuntimeError) else 'Pipeline fix failed','line':__import__('traceback').extract_tb(exc.__traceback__)[-1].lineno}))
