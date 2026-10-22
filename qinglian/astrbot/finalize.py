"""Prefer verified free models and verify image routing without exposing credentials."""
import json
from pathlib import Path
import sys

sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection,remote_json

SCRIPT=r'''
import json,os,shutil,subprocess,time,urllib.request
from pathlib import Path
root=Path('/opt/astrbot');path=root/'data'/'cmd_config.json'
report_path=root/'data'/'zhipu-verification.json'
report=json.loads(report_path.read_text())
config=json.loads(path.read_text(encoding='utf-8-sig'))
working={r['model'] for r in report['models'] if r['available']}
default=config['agent_runner']['config']['model']['provider_id']
config['agent_runner']['config']['model']['fallback_provider_ids']=[p['id'] for p in config['provider'] if p.get('provider_source_id')=='zhipu-free' and p['model'] in working and p['id']!=default]
subprocess.run(['systemctl','stop','astrbot'],check=True)
temporary=path.with_suffix('.json.new')
temporary.write_text(json.dumps(config,ensure_ascii=False,indent=2));os.chmod(temporary,0o600)
shutil.chown(temporary,user='astrbot',group='astrbot');temporary.replace(path)
subprocess.run(['systemctl','start','astrbot'],check=True)
for _ in range(60):
 try:
  with urllib.request.urlopen('http://127.0.0.1:6185/',timeout=3) as r:
   if r.status==200:break
 except Exception:pass
 time.sleep(2)
else:raise RuntimeError('Dashboard readiness failed')
test=r"""
import asyncio,base64,io,json,os,sys
from pathlib import Path
os.chdir('/opt/astrbot');sys.path.insert(0,'/opt/astrbot')
from PIL import Image
from astrbot.core.provider.entities import ProviderRequest
from astrbot.core.provider.sources.zhipu_source import ProviderZhipu
from astrbot.core.astr_main_agent import _select_image_chat_provider
cfg=json.loads(Path('data/cmd_config.json').read_text(encoding='utf-8-sig'))
source=next(s for s in cfg['provider_sources'] if s['id']=='zhipu-free')
providers={p['id']:ProviderZhipu({**source,**p},cfg['provider_settings']) for p in cfg['provider'] if p.get('provider_source_id')=='zhipu-free'}
settings=cfg['agent_runner']['config']['model']
buf=io.BytesIO();Image.new('RGB',(128,128),'red').save(buf,format='PNG')
url='data:image/png;base64,'+base64.b64encode(buf.getvalue()).decode()
req=ProviderRequest(prompt='图片是什么颜色？只回复颜色。',image_urls=[url])
selected=_select_image_chat_provider(providers[settings['provider_id']],req,[providers[p] for p in settings['fallback_provider_ids']])
assert selected.get_model()=='glm-4.1v-thinking-flash','Image routed to an unverified model'
async def main():
 try:
  result=await selected.text_chat(prompt=req.prompt,image_urls=req.image_urls,request_max_retries=1)
  assert '红' in result.completion_text or 'red' in result.completion_text.lower()
  print('ROUTING_JSON='+json.dumps({'automaticImageRouting':True,'selectedModel':selected.get_model()}))
 finally:
  for provider in providers.values():await provider.terminate()
asyncio.run(main())
"""
p=subprocess.run([str(root/'.venv/bin/python'),'-'],input=test,text=True,capture_output=True,timeout=180)
summary=next((line.split('=',1)[1] for line in p.stdout.splitlines() if line.startswith('ROUTING_JSON=')),None)
if p.returncode or not summary:raise RuntimeError('Automatic image routing verification failed; private logs suppressed')
routing=json.loads(summary);report.update(routing)
report['fallbackModels']=[p.removeprefix('zhipu-free/') for p in config['agent_runner']['config']['model']['fallback_provider_ids']]
report['autostart']=subprocess.check_output(['systemctl','is-enabled','astrbot'],text=True).strip()
report['service']=subprocess.check_output(['systemctl','is-active','astrbot'],text=True).strip()
report['xui']=subprocess.check_output(['systemctl','is-active','x-ui'],text=True).strip()
report['exports']=subprocess.check_output(['systemctl','is-active','qinglian-exports'],text=True).strip()
report_path.write_text(json.dumps(report,ensure_ascii=False,indent=2));os.chmod(report_path,0o600)
print(json.dumps(report,ensure_ascii=False))
'''
with connection() as client:
 result=remote_json(client,SCRIPT,timeout=360)
 print('ASTRBOT_FINAL_VERIFICATION='+json.dumps(result,ensure_ascii=False),flush=True)
