"""Runs privately on the target server; emits only sanitized test results."""
import asyncio
import base64
import io
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import time
import urllib.request

ROOT=Path('/opt/astrbot')
os.chdir(ROOT)
sys.path.insert(0,str(ROOT))
from PIL import Image
from astrbot.core.agent.tool import FunctionTool,ToolSet
from astrbot.core.provider.sources.zhipu_source import ProviderZhipu

credentials=json.loads(Path(sys.argv[1]).read_text())
key=credentials['api_key']
config_path=ROOT/'data'/'cmd_config.json'
config=json.loads(config_path.read_text(encoding='utf-8-sig'))
source={'id':'zhipu-free','provider':'zhipu','type':'zhipu_chat_completion',
        'provider_type':'chat_completion','enable':True,'key':[key],
        'api_base':'https://open.bigmodel.cn/api/paas/v4/', 'timeout':60,
        'proxy':'','custom_headers':{}}
models=[
 ('glm-4.7-flash',['text','tool_use']),
 ('glm-4-flash-250414',['text','tool_use']),
 ('glm-4.6v-flash',['text','image','tool_use']),
 ('glm-4.1v-thinking-flash',['text','image']),
]
providers=[]
for model,modalities in models:
 body={'max_tokens':2048}
 if model!='glm-4.1v-thinking-flash':body['thinking']={'type':'disabled'}
 providers.append({'id':'zhipu-free/'+model,'provider_source_id':'zhipu-free',
  'model':model,'enable':True,'modalities':modalities,'custom_extra_body':body})

buffer=io.BytesIO();Image.new('RGB',(128,128),'red').save(buffer,format='PNG')
image_url='data:image/png;base64,'+base64.b64encode(buffer.getvalue()).decode()
results=[]
async def test_models():
 for entry in providers:
  merged={**source,**entry};p=ProviderZhipu(merged,config['provider_settings'])
  visual='image' in entry['modalities']
  try:
   kwargs={'prompt':'这张图片是什么颜色？请只回复颜色。' if visual else '只回复：连接成功',
           'request_max_retries':1}
   if visual:kwargs['image_urls']=[image_url]
   response=await p.text_chat(**kwargs)
   text=response.completion_text or ''
   valid=('红' in text or 'red' in text.lower()) if visual else bool(text.strip())
   results.append({'model':entry['model'],'available':valid,'imageVerified':valid if visual else None})
  except Exception as e:
   results.append({'model':entry['model'],'available':False,'errorType':type(e).__name__,
                   'http':getattr(e,'status_code',None)})
  finally:await p.terminate()
asyncio.run(test_models())
available={r['model'] for r in results if r['available']}
default='glm-4.7-flash' if 'glm-4.7-flash' in available else 'glm-4-flash-250414'
assert default in available, 'No working free text model'
assert 'glm-4.6v-flash' in available, 'Primary free vision model unavailable'
config['provider_sources']=[s for s in config.get('provider_sources',[]) if s.get('id')!='zhipu-free']+[source]
config['provider']=[p for p in config.get('provider',[]) if not str(p.get('id','')).startswith('zhipu-free/')]+providers
agent=config['agent_runner'];agent['runner_type']='local'
agent['config']['model'].update(provider_id='zhipu-free/'+default,
 fallback_provider_ids=[p['id'] for p in providers if p['model']!=default],request_max_retries=2)
agent['config']['misc']['max_steps']=8
agent['config']['compression'].update(max_turns=20,trim_turns=2,overflow_strategy='truncate_by_turns')
config['provider_settings'].update(enable=True,default_image_caption_provider_id='zhipu-free/glm-4.6v-flash')
backup=config_path.with_name('cmd_config.before-zhipu.json')
if not backup.exists():shutil.copy2(config_path,backup);os.chmod(backup,0o600)
subprocess.run(['systemctl','stop','astrbot'],check=True)
temporary=config_path.with_suffix('.json.new')
temporary.write_text(json.dumps(config,ensure_ascii=False,indent=2));os.chmod(temporary,0o600)
shutil.chown(temporary,user='astrbot',group='astrbot');temporary.replace(config_path)
subprocess.run(['systemctl','start','astrbot'],check=True)
for _ in range(60):
 try:
  with urllib.request.urlopen('http://127.0.0.1:6185/',timeout=3) as r:
   if r.status==200:break
 except Exception:pass
 time.sleep(2)
else:raise RuntimeError('Dashboard did not restart')

# Confirm that the live AstrBot process has loaded the models.
def http(path,payload=None,token=None):
 headers={'Content-Type':'application/json'}
 if token:headers['Authorization']='Bearer '+token
 request=urllib.request.Request('http://127.0.0.1:6185'+path,
  data=json.dumps(payload).encode() if payload is not None else None,headers=headers)
 with urllib.request.urlopen(request,timeout=120) as r:return json.load(r)
login=http('/api/auth/login',{'username':'astrbot','password':credentials['dashboard_password']})
token=login['data']['token']
loaded=http('/api/v1/providers',token=token)
loaded_text=json.dumps(loaded)
assert all(p['id'] in loaded_text for p in providers),'Live process did not load configured models'
runtime_test=http('/api/v1/providers/test',{'provider_id':'zhipu-free/'+default},token)
assert runtime_test['data']['status']=='available','Live AstrBot provider test failed'

async def tool_test():
 entry=next(p for p in providers if p['model']==default)
 provider=ProviderZhipu({**source,**entry},config['provider_settings'])
 tools=ToolSet([FunctionTool(name='add_numbers',description='计算两个整数之和',
  parameters={'type':'object','properties':{'a':{'type':'integer'},'b':{'type':'integer'}},'required':['a','b']})])
 try:
  prompt='必须调用 add_numbers 工具计算 19 加 23。'
  response=await provider.text_chat(prompt=prompt,func_tool=tools,request_max_retries=1)
  assert 'add_numbers' in response.tools_call_name,'No tool call returned'
  contexts=[{'role':'user','content':prompt},response.raw_completion.choices[0].message.model_dump(exclude_none=True)]
  for i,name in enumerate(response.tools_call_name):
   assert name=='add_numbers'
   args=response.tools_call_args[i]
   value=int(args['a'])+int(args['b'])
   contexts.append({'role':'tool','tool_call_id':response.tools_call_ids[i],'content':str(value)})
  final=await provider.text_chat(contexts=contexts,request_max_retries=1)
  assert '42' in final.completion_text,'Tool result not reflected in reply'
  return True
 finally:await provider.terminate()
try:tool_ok=asyncio.run(tool_test())
except Exception as e:tool_ok=False;tool_error=type(e).__name__
report={'configured':True,'default':default,'imageModel':'glm-4.6v-flash','models':results,
 'liveAstrBotProviderTest':True,'toolRoundTrip':tool_ok,
 'service':subprocess.check_output(['systemctl','is-active','astrbot'],text=True).strip(),
 'xui':subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()}
if not tool_ok:report['toolErrorType']=tool_error
(ROOT/'data'/'zhipu-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2))
print('ASTRBOT_VERIFY_JSON='+json.dumps(report,ensure_ascii=False))
