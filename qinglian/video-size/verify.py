"""Exercise the installed download and rendition code without network or bot messages."""
import ast,asyncio,ipaddress,socket,sys,tempfile,types
from pathlib import Path
from unittest.mock import AsyncMock,Mock,patch
from urllib.parse import urlsplit,urljoin

class ParseError(Exception):pass
class MediaTooLarge(ParseError):pass
class MediaHTTPError(ParseError):pass

class Stream:
 def __init__(self,size):self.size=size
 async def iter_chunked(self,chunk_size):
  chunk=b'\0'*chunk_size
  for offset in range(0,self.size,chunk_size):yield chunk[:min(chunk_size,self.size-offset)]
class Response:
 def __init__(self,size,declared):
  self.status=200;self.content_length=declared;self.content=Stream(size);self.headers={'Content-Type':'video/mp4'}
 async def __aenter__(self):return self
 async def __aexit__(self,*args):return False

def function(source,name,namespace):
 tree=ast.parse(source)
 node=next(n for n in ast.walk(tree) if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name==name)
 exec(compile(ast.Module(body=[node],type_ignores=[]),'<installed-plugin>','exec'),namespace)
 return namespace[name]

def verify(root):
 root=Path(root);main=ast.parse((root/'main.py').read_text())
 assignment=next(n for n in ast.walk(main) if isinstance(n,ast.Assign) and any(isinstance(t,ast.Name) and t.id=='limit' for t in n.targets))
 expression=compile(ast.Expression(assignment.value),'<installed-limit>','eval')
 for mb in (0,50,100):
  assert eval(expression,{'self':types.SimpleNamespace(config={'max_video_mb':mb})})==mb*1024**2
 namespace={'asyncio':asyncio,'socket':socket,'ipaddress':ipaddress,'urlsplit':urlsplit,'urljoin':urljoin,'public_url':lambda url:url,'aiohttp':types.SimpleNamespace(ClientTimeout=lambda **kwargs:None),'ParseError':ParseError,'MediaTooLarge':MediaTooLarge,'MediaHTTPError':MediaHTTPError}
 inspect=Mock(side_effect=lambda path:{'size':path.stat().st_size});namespace['inspect_mp4']=inspect
 download=function((root/'client.py').read_text(),'_download_once',namespace)
 quality_namespace={'__name__':'video_size_fixture'}
 rendition=function((root/'quality.py').read_text(),'download_rendition',quality_namespace)
 fake_module=types.ModuleType('client');fake_module.ParseError=ParseError;fake_module.MediaTooLarge=MediaTooLarge
 async def checks():
  total=51*1024**2
  with tempfile.TemporaryDirectory() as folder:
   path=Path(folder)/'fixture.mp4'
   async def attempt(size,declared,limit):
    client=types.SimpleNamespace(open=AsyncMock(),session=types.SimpleNamespace(get=lambda *args,**kwargs:Response(size,declared)),last_download_report={})
    with patch.object(asyncio.get_running_loop(),'getaddrinfo',new=AsyncMock(return_value=[(socket.AF_INET,socket.SOCK_STREAM,6,'',('93.184.216.34',443))])):
     return await download(client,'https://media.example/video.mp4',path,limit)
   for declared in (total,None):
    result=await attempt(total,declared,0);assert result['size']==total and path.stat().st_size==total
   assert inspect.call_count==2
   for declared in (total,None):
    try:await attempt(total,declared,50*1024**2);raise AssertionError('Finite cap ignored')
    except MediaTooLarge:assert not path.exists()
   with patch.dict(sys.modules,{'client':fake_module}):
    variants=[{'url':'https://media.example/high.mp4','height':1080,'size':120*1024**2,'label':'1080p'},{'url':'https://media.example/low.mp4','height':720,'size':10*1024**2,'label':'720p'}]
    client=types.SimpleNamespace(download=AsyncMock(side_effect=lambda *a,**k:{}))
    result=await rendition(client,{'url':variants[0]['url'],'variants':variants},path,0)
    assert result['resolution']==1080 and not result['auto_downgraded']
    assert client.download.await_args.args[0]==variants[0]['url']
    client.download.reset_mock()
    result=await rendition(client,{'url':variants[0]['url'],'variants':variants},path,50*1024**2)
    assert result['resolution']==720 and result['auto_downgraded']
    assert client.download.await_args.args[0]==variants[1]['url']
 asyncio.run(checks())
 return {'limit_zero_is_unlimited':True,'custom_cap_above_50_supported':True,'streamed_51_mib_with_and_without_content_length':True,'finite_caps_and_partial_cleanup_preserved':True,'highest_quality_not_downgraded_for_size':True,'mp4_inspection_still_called':True,'no_network_or_bot_messages':True}
