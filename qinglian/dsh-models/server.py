import collections,json,subprocess,traceback
from pathlib import Path
try:
 import yaml
 cfg=json.loads(Path('/opt/astrbot/data/cmd_config.json').read_text(encoding='utf-8-sig'))
 sources=cfg.get('provider_sources',[]);models=cfg.get('provider',[])
 def shapes(rows):
  out={}
  for row in rows:
   kind=str(row.get('type') or row.get('provider_type') or 'unspecified')
   shape=out.setdefault(kind,{'count':0,'fields':{},'keyCounts':[]})
   shape['count']+=1
   shape['fields'].update({str(k):type(v).__name__ for k,v in row.items()})
   if 'key' in row:shape['keyCounts'].append(len(row['key']) if isinstance(row['key'],list) else int(bool(row['key'])))
  return out
 patch=yaml.safe_load(Path('/var/lib/dsh/profiles/web/cordis.patch.yml').read_text())
 creds=yaml.safe_load(Path('/var/lib/dsh/.credentials.yaml').read_text())
 print(json.dumps({'ok':True,'sourceShapes':shapes(sources),'modelShapes':shapes(models),'patchEntries':len(patch),'extraBodyFields':sorted({str(k) for m in models for k in m.get('custom_extra_body',{})}),'enabledSources':sum(bool(s.get('enable',True)) for s in sources),'enabledModels':sum(bool(m.get('enable',True)) for m in models),'sourceCustomHeaderCounts':[len(s.get('custom_headers',{})) for s in sources],'modelCustomHeaderCounts':[len(m.get('custom_headers',{})) for m in models],
 'credentialRefCount':len(creds.get('refs',{})),'credentialRecordCount':len(creds.get('records',{}))}))
except Exception as e:print(json.dumps({'ok':False,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
