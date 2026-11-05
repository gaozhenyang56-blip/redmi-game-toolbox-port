import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
SCRIPT='import pathlib,re,json\nhtml=pathlib.Path(\'/opt/openlist-astrbot/diagnostics/share-original-private.html\').read_text()\npatterns=[r\'(?:yunData\\s*\\.\\s*setData|locals\\s*\\.\\s*mset)\\s*\\(\',r\'(?:window\\s*\\.\\s*)?yunData\\s*=\',r\'(?:window\\s*\\.\\s*)?locals\\s*=\',r\'(?:window\\s*\\.\\s*)?__INITIAL_STATE__\\s*=\']\nresults=[]\nfor pattern in patterns:\n for match in list(re.finditer(pattern,html))[:6]:\n  raw=html[match.end():].lstrip()\n  try:\n   value,used=json.JSONDecoder().raw_decode(raw)\n   results.append({\'pattern\':pattern,\'json_type\':type(value).__name__,\'keys\':list(value)[:35] if isinstance(value,dict) else [],\'has_files\':bool(value.get(\'file_list\')) if isinstance(value,dict) else False})\n  except Exception:results.append({\'pattern\':pattern,\'json_decoded\':False,\'prefix_kind\':\'JSON.parse\' if raw.startswith(\'JSON.parse\') else \'other\'})\npreviews=[]\nfor match in list(re.finditer(r\'(?:window\\.)?(?:yunData|locals)[^\\n<>]{0,240}\',html))[:15]:\n s=match.group();s=re.sub(r\'"(?:\\\\.|[^"\\\\])*"|\\x27(?:\\\\.|[^\\x27\\\\])*\\x27\',\'"[value]"\',s);s=re.sub(r\'\\b\\d+\\b\',\'0\',s)\n previews.append(s[:200])\nprint(json.dumps({\'ok\':True,\'candidates\':results,\'syntax\':previews}))\n'
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=30)
 print('BAIDU_SHARE_SYNTAX='+json.dumps(result),flush=True)
