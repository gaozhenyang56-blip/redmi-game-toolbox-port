"""Inspect output-limit metadata only; keep API secrets and conversation text private."""
import json,re,subprocess,traceback
from pathlib import Path
import yaml
try:
 home=Path('/var/lib/dsh');patch=yaml.safe_load((home/'profiles/web/cordis.patch.yml').read_text()) or []
 models=[];defaults=[]
 for row in patch:
  if not isinstance(row,dict):continue
  config=row.get('config') or {}
  if row.get('id')=='llm-pi-ai':
   for index,(provider,route) in enumerate((config.get('providers') or {}).items()):
    for model in route.get('models',[]):
     models.append({'providerIndex':index,'model':model.get('id'),'maxTokens':model.get('maxTokens'),
      'defaultMaxTokens':route.get('defaultMaxTokens'),'contextWindow':model.get('contextWindow',route.get('defaultContextWindow'))})
  if row.get('id')=='agent-default-model':defaults.append({k:config.get(k) for k in ('model','reasoningEffort','maxTokens') if k in config})
 wanted=sorted({m['model'] for m in models if isinstance(m.get('model'),str)})
 program=r"""const url=import.meta.resolve('@earendil-works/pi-ai/providers/all','file:///opt/dsh/runtime/node_modules/@deepseek-ai/dsh-llm-pi-ai/lib/index.js');const {getAllBuiltinModels}=await import(url);const wanted=new Set(JSON.parse(process.argv[1]));const found=[];const seen=new WeakSet();function walk(o,key='',depth=0){if(!o||typeof o!=='object'||depth>14||seen.has(o))return;seen.add(o);const id=typeof o.id==='string'?o.id:key;if(wanted.has(id)){const limits={};function numeric(x,path='',d=0){if(!x||typeof x!=='object'||d>5)return;for(const [k,v]of Object.entries(x)){const p=path?path+'.'+k:k;if(typeof v==='number'&&/token|context|output/i.test(p))limits[p]=v;else if(v&&typeof v==='object')numeric(v,p,d+1)}}numeric(o);found.push({model:id,limits})}if(o instanceof Map){for(const[k,v]of o)walk(v,String(k),depth+1)}else for(const[k,v]of Object.entries(o))walk(v,k,depth+1)}walk(getAllBuiltinModels());console.log(JSON.stringify(found));"""
 probe=subprocess.run(['/opt/dsh/node/bin/node','--experimental-import-meta-resolve','--input-type=module','-e',program,json.dumps(wanted)],capture_output=True,text=True,timeout=25)
 catalog=json.loads(probe.stdout) if probe.returncode==0 else {'unavailable':True,'errorCategory':next((line.strip()[:200] for line in probe.stderr.splitlines() if line.startswith(('Error','TypeError','SyntaxError'))),'unspecified')}
 runtime=home/'runtime.log';flags={}
 if runtime.exists():
  with runtime.open('rb') as f:f.seek(max(0,runtime.stat().st_size-512*1024));tail=f.read().decode(errors='replace')
  flags={k:len(re.findall(pattern,tail,re.I)) for k,pattern in {'outputLimit':r'output.token.limit|maximum.output|MAX_TOKENS|已达到输出','lengthFinish':r'finish.reason.{0,12}length','contextLimit':r'context.length|context.window|context limit'}.items()}
 print(json.dumps({'ok':True,'models':models,'selectedDefault':defaults,'installedCatalog':catalog,'runtimeErrorCategoryCounts':flags}))
except Exception as e:print(json.dumps({'ok':False,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
