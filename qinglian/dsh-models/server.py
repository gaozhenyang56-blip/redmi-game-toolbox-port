"""Import model credentials on-host. Publish counts only, never configuration values."""
import base64,collections,hashlib,json,os,re,shutil,subprocess,tempfile,time,traceback,urllib.request
from pathlib import Path
import yaml
home=Path('/var/lib/dsh');patchfile=home/'profiles/web/cordis.patch.yml';credfile=home/'.credentials.yaml'
backup=None;changed=False

def run(*args,timeout=30):return subprocess.run(args,check=True,capture_output=True,text=True,timeout=timeout).stdout.strip()
def write(path,value):
 temp=path.with_name(path.name+'.astrbot-new')
 temp.write_text(yaml.safe_dump(value,allow_unicode=True,sort_keys=False));temp.chmod(0o600);shutil.chown(temp,user='dsh',group='dsh');temp.replace(path)
try:
 sourcefile=Path('/opt/astrbot/data/cmd_config.json');original=sourcefile.read_bytes();cfg=json.loads(original.decode('utf-8-sig'))
 sources={s['id']:s for s in cfg.get('provider_sources',[])};entries=cfg.get('provider',[])
 patch=yaml.safe_load(patchfile.read_text()) or [];credentials=yaml.safe_load(credfile.read_text())
 assert isinstance(patch,list) and credentials.get('version')==1
 credentials.setdefault('refs',{})
 providers={};mapping=[];extra_options=0;disabled=0;covered=set();seenkeys=set()
 for index,entry in enumerate(entries):
  sourceid=entry.get('provider_source_id') or entry.get('id') or str(index)
  source=sources.get(sourceid,{})
  effective={**source,**entry}
  kind=effective.get('type','')
  assert kind in ('zhipu_chat_completion','openai_chat_completion'), 'Unsupported protocol'
  model=entry.get('model');assert isinstance(model,str) and model
  endpoint=effective.get('api_base') or source.get('api_base');assert isinstance(endpoint,str) and endpoint.startswith(('https://','http://'))
  keys=effective.get('key') or source.get('key') or []
  if isinstance(keys,str):keys=[keys]
  keys=list(dict.fromkeys(k for k in keys if isinstance(k,str) and k.strip()))
  assert keys, 'Missing configured API credential'
  body=entry.get('custom_extra_body') or {};compat={'supportsDeveloperRole':False,'maxTokensField':'max_tokens'}
  reasoning=None;model_profile={'id':model}
  modalities=entry.get('modalities',[])
  model_profile['input']=['text']+(['image'] if 'image' in modalities else [])
  if isinstance(entry.get('max_context_tokens'),int) and entry['max_context_tokens']>0:model_profile['contextWindow']=entry['max_context_tokens']
  if isinstance(body.get('max_tokens'),int) and body['max_tokens']>0:model_profile['maxTokens']=body['max_tokens']
  if isinstance(body.get('thinking'),dict) and body['thinking'].get('type') in ('enabled','disabled'):
   compat['thinkingFormat']='zai' if kind=='zhipu_chat_completion' else 'deepseek'
   reasoning='off' if body['thinking']['type']=='disabled' else 'high'
  template=body.get('chat_template_kwargs')
  if isinstance(template,dict) and isinstance(template.get('enable_thinking'),bool):
   compat['thinkingFormat']='qwen-chat-template';reasoning='high' if template['enable_thinking'] else 'off'
   extra_options+=len(set(template)-{'enable_thinking'})
  extra_options+=len(set(body)-{'thinking','max_tokens','chat_template_kwargs'})
  if reasoning is not None:model_profile['reasoningEfforts']={'off':None,'high':'high'}
  enabled=bool(source.get('enable',True)) and bool(entry.get('enable',True))
  if not enabled:
   disabled+=1;model_profile['name']=model+' (AstrBot: previously disabled)'
  headers=effective.get('custom_headers') or {}
  assert isinstance(headers,dict) and all(isinstance(k,str) and isinstance(v,str) for k,v in headers.items())
  for key_index,key in enumerate(keys):
   group={'source':sourceid,'endpoint':endpoint.rstrip('/'),'key':key,'headers':headers,'reasoning':reasoning,'compat':compat,'timeout':effective.get('timeout',60)}
   fingerprint=hashlib.sha256(json.dumps(group,sort_keys=True).encode()).hexdigest()[:12]
   slug=re.sub('[^a-z0-9-]+','-',sourceid.lower()).strip('-')[:35] or 'provider'
   route='astrbot-'+slug+'-'+fingerprint[:6]
   ref='ASTRBOT_'+fingerprint.upper()+'_API_KEY'
   credentials['refs'][ref]=key;seenkeys.add(ref)
   if route not in providers:
    providers[route]={'displayName':'AstrBot · '+sourceid,'apiKeyEnv':ref,'api':'openai-completions','baseURL':endpoint.rstrip('/'),
     'models':[],'compat':compat,'defaultContextWindow':32768,'defaultMaxTokens':2048,'timeoutMs':max(1000,int(group['timeout'] or 60)*1000)}
    if headers:providers[route]['headers']=headers
    if reasoning is not None:providers[route]['reasoning']=reasoning
   if not any(m['id']==model for m in providers[route]['models']):providers[route]['models'].append(model_profile.copy())
   mapping.append({'source':sourceid,'astrbotModelId':entry.get('id'),'provider':route,'model':model,'wasEnabled':enabled,'keyIndex':key_index})
  covered.add(sourceid)
 assert set(sources)<=covered, 'Some API sources have no configured model'
 assert len(mapping)>=len(entries)
 row=next((p for p in patch if isinstance(p,dict) and p.get('id')=='llm-pi-ai'),None)
 if row is None:row={'id':'llm-pi-ai','config':{}};patch.append(row)
 oldproviders=row.setdefault('config',{}).setdefault('providers',{})
 for key,value in providers.items():
  assert key not in oldproviders or oldproviders[key].get('apiKeyEnv')==value['apiKeyEnv'], 'Provider collision'
  oldproviders[key]=value
 backup=Path(tempfile.mkdtemp(prefix='dsh-model-import-',dir='/root'));backup.chmod(0o700)
 for p in (patchfile,credfile):shutil.copy2(p,backup/p.name)
 (backup/'astrbot-source.json').write_bytes(original);(backup/'astrbot-source.json').chmod(0o600)
 candidate=backup/'candidate-providers.json';candidate.write_text(json.dumps({'providers':providers}));candidate.chmod(0o600)
 checker="""import fs from 'node:fs';import {Config} from '/opt/dsh/runtime/node_modules/@deepseek-ai/dsh-llm-pi-ai/lib/index.js';try{Config(JSON.parse(fs.readFileSync(process.argv[1],'utf8')));console.log('SCHEMA_OK')}catch(e){console.log('SCHEMA_REJECTED');process.exit(1)}"""
 assert run('/opt/dsh/node/bin/node','--input-type=module','-e',checker,str(candidate),timeout=60)=='SCHEMA_OK'
 # Stop only DSH to prevent concurrent settings writes. Source application stays live.
 run('systemctl','stop','dsh');changed=True
 assert patchfile.read_bytes()==(backup/patchfile.name).read_bytes() and credfile.read_bytes()==(backup/credfile.name).read_bytes(), 'Concurrent settings edit'
 write(credfile,credentials);write(patchfile,patch)
 manifest=home/'astrbot-import.json'
 manifest.write_text(json.dumps({'version':1,'sources':len(sources),'models':mapping,'extraOptionsNotRepresented':extra_options},ensure_ascii=False,indent=2))
 manifest.chmod(0o600);shutil.chown(manifest,user='dsh',group='dsh')
 entryurl=home/'entry-url.txt'
 if entryurl.exists():entryurl.unlink()
 run('systemctl','start','dsh')
 for _ in range(100):
  if entryurl.exists():
   try:
    launch=entryurl.read_text().strip()
    request=urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'})
    with urllib.request.urlopen(request,timeout=5) as response:assert response.status==200
    break
   except Exception:pass
  time.sleep(2)
 else:raise RuntimeError('DSH readiness failed')
 saved=yaml.safe_load(credfile.read_text());assert all(saved['refs'][k]==credentials['refs'][k] for k in seenkeys)
 assert sourcefile.read_bytes()==original
 assert run('systemctl','is-active','astrbot')=='active'
 print(json.dumps({'ok':True,'apiSources':len(sources),'configuredProviderRoutes':len(providers),'models':len(entries),
 'importedCredentials':len(seenkeys),'previouslyDisabledModelsLabelled':disabled,'unmappedExtraOptionCount':extra_options,
 'schemaValidated':True,'dshActive':True,'astrbotUnchanged':True}))
except Exception as e:
 restored=False
 if changed and backup:
  try:
   run('systemctl','stop','dsh')
   for p in (patchfile,credfile):shutil.copy2(backup/p.name,p);p.chmod(0o600);shutil.chown(p,user='dsh',group='dsh')
   run('systemctl','start','dsh');restored=True
  except Exception:pass
 print(json.dumps({'ok':False,'restored':restored,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
