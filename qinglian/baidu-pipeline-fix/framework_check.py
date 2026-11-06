import asyncio,importlib.util,json,logging,pathlib,sys,time,types
sys.path.insert(0,'/opt/astrbot')
from astrbot.core.pipeline.scheduler import PipelineScheduler
from astrbot.core.pipeline.context_utils import call_handler
from astrbot.core.message.message_event_result import MessageEventResult
logging.disable(logging.CRITICAL)
PLUGIN=pathlib.Path('/opt/astrbot/data/plugins/astrbot_plugin_baidu_curl')
def load(path,name):
 spec=importlib.util.spec_from_file_location(name,path,submodule_search_locations=[str(PLUGIN)])
 module=importlib.util.module_from_spec(spec);sys.modules[name]=module;spec.loader.exec_module(module);module.logger=logging.getLogger('pipeline-test');return module
class Event:
 session_id='1483685769'
 def __init__(self,text):self.message_str=text;self.stopped=False;self.result=None;self.sent=[]
 def stop_event(self):self.stopped=True
 def is_stopped(self):return self.stopped
 def plain_result(self,text):return MessageEventResult().message(text)
 def set_result(self,result):self.result=result
 def get_result(self):return self.result
 def clear_result(self):self.result=None
 async def send(self,result):self.sent.append(''.join(getattr(x,'text','') for x in result.chain))
class HandlerStage:
 def __init__(self,handler):self.handler=handler
 async def process(self,event):
  async for result in call_handler(event,self.handler):yield result
class ResponseStage:
 def __init__(self):self.calls=0
 async def process(self,event):
  if event.is_stopped():return
  self.calls+=1
  if event.get_result():await event.send(event.get_result());event.clear_result()
async def dispatch(obj,event):
 scheduler=PipelineScheduler.__new__(PipelineScheduler);response=ResponseStage();scheduler.stages=[HandlerStage(obj.on_message),response]
 await scheduler._process_stages(event)
 return response.calls

def factory(module):
 obj=module.BaiduCurlPlugin.__new__(module.BaiduCurlPlugin)
 obj.allow_sessions=['1483685769'];obj._openlist_local_modes={};obj.baidu_cookies='test';obj.enable_file_selection=False;obj.folder_browse_threshold=0
 pending={};counters={'listed':0,'transferred':0}
 async def get(sid):return pending.get(sid)
 async def put(sid,state):pending[sid]=state
 async def remove(sid):pending.pop(sid,None)
 async def none(*args):return None
 async def share(*args):
  counters['listed']+=1
  return {'success':True,'files':[{'name':f'file-{i}.txt','fs_id':i,'path':f'/file-{i}.txt','size':10} for i in range(1,10)],'uk':123,'share_id':456,'share_url':'test'}
 async def transfer(*args):
  counters['transferred']+=1
  yield Event('').plain_result('transfer-start')
  yield Event('').plain_result('download-start')
  yield Event('').plain_result('done')
 obj._get_pending_state=get;obj._set_pending_state=put;obj._remove_pending_state=remove;obj._get_pending_push=none;obj._list_share_files=share;obj._do_transfer_and_dlinks=transfer
 return obj,pending,counters
async def main():
 old=load(pathlib.Path('/opt/openlist-astrbot/pipeline-fix-backup/main.py'),'baidu_pipeline_old')
 old_obj,_,old_count=factory(old);old_event=Event('网盘下载 https://pan.baidu.com/s/1stubLink?pwd=abcd')
 await dispatch(old_obj,old_event)
 assert old_count['listed']==0,'Old early-stop regression was not reproduced'
 new=load(PLUGIN/'main.py','baidu_pipeline_new');obj,pending,count=factory(new)
 event=Event('网盘下载 https://pan.baidu.com/s/1stubLink?pwd=abcd');downstream=await dispatch(obj,event)
 assert count['listed']==1 and len(event.sent)==3 and '9' in event.sent[-1]
 assert event.is_stopped() and downstream==0
 assert len(pending[event.session_id]['share_files'])==9
 saved=dict(pending[event.session_id])
 selected=Event('1');await dispatch(obj,selected)
 assert selected.sent[-1]=='done' and len(selected.sent)==4 and count['transferred']==1
 pending[event.session_id]=saved;too_many=Event('all');await dispatch(obj,too_many)
 assert len(too_many.sent)==1 and '最多' in too_many.sent[0] and pending.get(event.session_id) and count['transferred']==1
 async def legacy(*args):
  yield Event('').plain_result('legacy-one')
  yield Event('').plain_result('legacy-two')
 pending.clear();obj._run=legacy;plain=Event('https://pan.baidu.com/s/1stubLink?pwd=abcd');await dispatch(obj,plain)
 assert plain.sent==['legacy-one','legacy-two'] and not plain.is_stopped()
 print(json.dumps({'ok':True,'native_scheduler_used':True,'previous_early_stop_reproduced':True,'full_listing_sent':True,'numeric_selection_completes_all_steps':True,'local_selection_works_when_global_selection_disabled':True,'too_many_selection_keeps_pending_state':True,'legacy_share_flow_preserved':True,'qq_message_sent':False}))
asyncio.run(main())
