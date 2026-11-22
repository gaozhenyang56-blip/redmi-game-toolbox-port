"""Repair inherited small output budgets and verify a real live DSH request."""
import hashlib,http.cookiejar,json,os,shutil,subprocess,tempfile,time,traceback,urllib.request,uuid
from pathlib import Path
import yaml
home=Path('/var/lib/dsh');patch=home/'profiles/web/cordis.patch.yml';credentials=home/'.credentials.yaml'
backup=None;changed=False
TARGETS={'glm-4.7-flash':8192,'glm-4-flash-250414':8192,'glm-4.6v-flash':8192,'glm-4.1v-thinking-flash':8192,
 'deepseek-flash':32768,'deepseek-ai/DeepSeek-V4.1-Flash-1017':32768}

def rpc_client():
 jar=http.cookiejar.CookieJar();opener=urllib.request.build_opener(urllib.request.HTTPCookieProcessor(jar))
 launch=(home/'entry-url.txt').read_text().strip()
 with opener.open(urllib.request.Request('http://127.0.0.1:3080/?'+launch.split('?',1)[1],headers={'Host':'gaozy.tech'}),timeout=15) as response:assert response.status==200
 def rpc(method,args=None):
  body=json.dumps({'type':'client-request','rpcId':str(uuid.uuid4()),'method':method,'payload':{'args':args or {}}}).encode()
  request=urllib.request.Request('http://127.0.0.1:3080/api/'+method,data=body,headers={'Host':'gaozy.tech','Content-Type':'application/json'})
  with opener.open(request,timeout=45) as response:result=json.load(response)['result']
  if not result.get('ok'):raise RuntimeError('DSH RPC '+result.get('error',{}).get('code','failed'))
  return result.get('value')
 return rpc
try:
 original=patch.read_bytes();config=yaml.safe_load(original) or [];after=json.loads(json.dumps(config))
 credential_sha=hashlib.sha256(credentials.read_bytes()).hexdigest()
 row=next(r for r in after if isinstance(r,dict) and r.get('id')=='llm-pi-ai')
 modifications=[];untouched_small=[]
 for route in row['config']['providers'].values():
  targets=[]
  for model in route.get('models',[]):
   name=model.get('id');current=model.get('maxTokens',route.get('defaultMaxTokens',2048))
   target=TARGETS.get(name)
   context=model.get('contextWindow',route.get('defaultContextWindow',32768))
   if target is None:
    if isinstance(context,int) and context<=16384:untouched_small.append(name)
    continue
   assert isinstance(current,int) and isinstance(context,int)
   target=max(current,min(target,context//4))
   targets.append(target)
   if target>current:model['maxTokens']=target;modifications.append({'model':name,'before':current,'after':target})
  if targets:route['defaultMaxTokens']=max(route.get('defaultMaxTokens',0),min(targets))
 assert modifications, 'No inherited small output limits found'
 backup=Path(tempfile.mkdtemp(prefix='dsh-output-budget-',dir='/root'));backup.chmod(0o700)
 shutil.copy2(patch,backup/'cordis.patch.yml')
 candidate=backup/'provider-candidate.json';candidate.write_text(json.dumps(row['config']));candidate.chmod(0o600)
 code="""import fs from 'node:fs';import {Config} from '/opt/dsh/runtime/node_modules/@deepseek-ai/dsh-llm-pi-ai/lib/index.js';Config(JSON.parse(fs.readFileSync(process.argv[1],'utf8')));console.log('OK')"""
 validated=subprocess.run(['/opt/dsh/node/bin/node','--input-type=module','-e',code,str(candidate)],capture_output=True,text=True,timeout=30)
 assert validated.returncode==0 and validated.stdout.strip()=='OK'
 assert patch.read_bytes()==original,'Concurrent settings edit'
 temp=patch.with_suffix('.yml.output-budget');temp.write_text(yaml.safe_dump(after,allow_unicode=True,sort_keys=False));temp.chmod(0o600);shutil.chown(temp,user='dsh',group='dsh');temp.replace(patch);changed=True
 # Profile HMR updates future requests; do not interrupt existing user jobs.
 time.sleep(5)
 rpc=rpc_client();catalog=rpc('session/modelCatalog');selection=catalog.get('default') or {}
 assert selection.get('model') in TARGETS,'Default model changed during repair'
 created=rpc('session/create',{'request':{'cwd':'/srv/dsh-workspace'}});sid=created['sessionId']
 rpc('session/rename',{'request':{'sessionId':sid,'title':'DSH output budget verification'}})
 rpc('session/prompt',{'request':{'sessionId':sid,'requestId':str(uuid.uuid4()),'mode':'queue','content':[{'type':'text','text':'This is a configuration check. Reply only OK. Do not use tools.'}]}})
 wait=rpc('session/wait',{'request':{'sessionId':sid,'timeoutMs':30000,'maxMessages':4}})
 if wait.get('reason')=='timeout':wait=rpc('session/wait',{'request':{'sessionId':sid,'timeoutMs':30000,'maxMessages':4}})
 history=rpc('session/events',{'request':{'address':{'kind':'session','sessionId':sid},'maxMessages':12}})
 limits=[];event_types=[]
 def walk(value,path=''):
  if isinstance(value,dict):
   for key,item in value.items():
    current=path+'.'+key
    if key in ('maxTokens','max_tokens','maxOutputTokens','max_output_tokens','max_completion_tokens') and isinstance(item,(int,float)):limits.append({'field':current,'value':item})
    walk(item,current)
  elif isinstance(value,list):
   for item in value:walk(item,path+'[]')
 for record in history.get('records',[]):
  event=record.get('event',record)
  kind=event.get('type','');event_types.append(kind)
  if kind in ('request/header','request/start','assistant/request','step/start'):walk(event,kind)
 text=json.dumps(history,ensure_ascii=False)
 reply_ok='OK' in json.dumps(wait.get('output',{}))
 unknown_variable='unknown prompt variable' in text
 assert not unknown_variable
 assert credential_sha==hashlib.sha256(credentials.read_bytes()).hexdigest()
 other=lambda rows:[r for r in rows if not isinstance(r,dict) or r.get('id')!='llm-pi-ai']
 assert other(config)==other(yaml.safe_load(patch.read_text()))
 audit={'changedModels':modifications,'smallContextModelsUnchanged':untouched_small,'selectionModel':selection.get('model'),
 'testSessionId':sid,'liveRequestLimits':limits,'testEventTypes':event_types,'replyOK':reply_ok,'waitReason':wait.get('reason')}
 (backup/'verification.json').write_text(json.dumps(audit,ensure_ascii=False,indent=2));(backup/'verification.json').chmod(0o600)
 print(json.dumps({'ok':True,'changedModels':modifications,'smallContextModelsUnchanged':untouched_small,'credentialsPreserved':True,
 'serviceRestarted':False,'testMessageSubmitted':True,'testReplyOK':reply_ok,'testWaitReason':wait.get('reason'),
 'liveRequestLimits':limits,'testEventTypes':event_types,'unknownPromptVariable':unknown_variable}))
except Exception as e:
 restored=False
 if changed and backup:
  try:shutil.copy2(backup/'cordis.patch.yml',patch);shutil.chown(patch,user='dsh',group='dsh');restored=True
  except Exception:pass
 print(json.dumps({'ok':False,'restored':restored,'errorType':type(e).__name__,'line':traceback.extract_tb(e.__traceback__)[-1].lineno}))
