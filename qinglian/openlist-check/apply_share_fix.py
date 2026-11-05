import ast,json,os,re,shutil,subprocess,sys
from pathlib import Path
STAGE=Path('/opt/openlist-astrbot/share-fix-update');sys.path.insert(0,str(STAGE))
from share_page import extract_share_data
plugin=Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl');source_path=plugin/'main.py'
try:
 cached=extract_share_data(Path('/opt/openlist-astrbot/diagnostics/share-original-private.html').read_text())
 raw=cached.get('file_list',{});roots=raw if isinstance(raw,list) else raw.get('list',[])
 assert cached.get('shareid') and cached.get('share_uk') and roots,'No cached share file information'
 source=source_path.read_text(encoding='utf-8-sig');original=source
 if 'from .share_page import extract_share_data' not in source:
  start=source.index('                match = re.search(r"(?:yunData\\.setData|locals\\.mset)\\(", html)')
  end=source.index('                uk = int(shared_data.get(',start)
  source=source[:start]+'''                try:
                    shared_data = extract_share_data(html)
                except ValueError as exc:
                    return {"success": False, "error": str(exc)}

'''+source[end:]
  source=source.replace('import re\n','import re\nfrom .share_page import extract_share_data\n',1)
 ast.parse(source)
 backup=Path('/opt/openlist-astrbot/baidu-share-fix-backup');backup.mkdir(mode=0o700,exist_ok=True)
 for name in ['main.py','metadata.yaml']:
  if (plugin/name).exists() and not (backup/name).exists():shutil.copy2(plugin/name,backup/name)
 owner=source_path.stat()
 helper=plugin/'share_page.py';helper.write_text((STAGE/'share_page.py').read_text());helper.chmod(0o644);os.chown(helper,owner.st_uid,owner.st_gid)
 temp=source_path.with_suffix('.patched');temp.write_text(source);temp.chmod(owner.st_mode&0o777);os.chown(temp,owner.st_uid,owner.st_gid);os.replace(temp,source_path)
 metadata=plugin/'metadata.yaml';meta=metadata.read_text();meta=re.sub(r'^version:.*$', 'version: v8.6.0+sharepage.1',meta,flags=re.M);metadata.write_text(meta)
 probe=r'''
import importlib.util,sys,json,pathlib,logging
logging.disable(logging.CRITICAL)
p=pathlib.Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl')
spec=importlib.util.spec_from_file_location('baidu_share_fix_probe',p/'main.py',submodule_search_locations=[str(p)])
m=importlib.util.module_from_spec(spec);sys.modules[spec.name]=m;spec.loader.exec_module(m);m.logger=logging.getLogger('silent_share_probe')
cfg=json.loads(pathlib.Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'));sample=json.loads(cfg['motrix_rpc_token'])
obj=m.BaiduCurlPlugin.__new__(m.BaiduCurlPlugin);obj.baidu_cookies=cfg['baidu_cookies']
result=obj._list_share_files_sync(sample['surl'],sample['pwd'])
print(json.dumps({'success':bool(result.get('success')),'file_count':len(result.get('files',[])),'root_count':len(result.get('tree',[])),'has_transfer_metadata':bool(result.get('uk') and result.get('share_id')),'error':result.get('error') if not result.get('success') else None}))
'''
 result=subprocess.run(['/opt/astrbot/.venv/bin/python','-c',probe],cwd='/opt/astrbot',capture_output=True,text=True,timeout=150)
 if result.returncode:
  raise RuntimeError('Patched module probe failed; private stderr suppressed')
 live=json.loads(result.stdout.splitlines()[-1])
 # Do not expose private upstream error strings (may include paths/URLs).
 if not live.get('success'):live['error']='Upstream share listing failed after parsing'
 print(json.dumps({'ok':bool(live.get('success')),'patch_installed':True,'cached_page_parsed':True,'cached_root_count':len(roots),'live_share':live,'qq_message_sent':False,'transfer_performed':False}),flush=True)
except Exception as exc:
 print(json.dumps({'ok':False,'failure_type':type(exc).__name__,'safe_error':str(exc) if isinstance(exc,(AssertionError,RuntimeError)) else 'Share fix failed','line':__import__('traceback').extract_tb(exc.__traceback__)[-1].lineno}),flush=True)
