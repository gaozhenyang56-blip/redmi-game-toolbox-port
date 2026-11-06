import asyncio,json,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
from local_download import safe_name,source_url,fetch_file,LocalDownloads
class Content:
 def __init__(self,data):self.data=data
 async def iter_chunked(self,n):
  for start in range(0,len(self.data),n):yield self.data[start:start+n]
class Response:
 def __init__(self,data=b'',status=200,headers=None):self.status=status;self.headers=headers if headers is not None else {'Content-Length':str(len(data))};self.content=Content(data);self.closed=False
 def release(self):self.closed=True
class Session:
 def __init__(self,responses):self.responses=list(responses);self.calls=[]
 async def get(self,url,**kwargs):self.calls.append((url,kwargs));return self.responses.pop(0)
class Tests(unittest.IsolatedAsyncioTestCase):
 def test_filename_and_host_rules(self):
  self.assertEqual(safe_name('../../bad\\file?.txt'),'file_.txt');self.assertNotIn('/',safe_name('..'))
  self.assertLessEqual(len(safe_name('鲸'*200).encode()),220)
  self.assertTrue(source_url('http://d.pcs.baidu.com/file?a=1').startswith('https://'))
  for url in ['http://127.0.0.1/a','https://baidu.com.evil.test/a','file:///etc/passwd','https://u:p@baidu.com/a']:
   with self.assertRaises(ValueError):source_url(url)
 async def test_stream_to_atomic_file(self):
  with tempfile.TemporaryDirectory() as temp:
   target=Path(temp)/'job'/'test.bin';target.parent.mkdir();r=Response(b'hello-world');s=Session([r])
   count=await fetch_file(s,'https://d.pcs.baidu.com/file',target,'private',max_file=100,max_total=200,reserve=0,expected=11)
   self.assertEqual(count,11);self.assertEqual(target.read_bytes(),b'hello-world');self.assertFalse(target.with_name('test.bin.part').exists());self.assertTrue(r.closed)
 async def test_unsafe_redirect_no_second_request(self):
  with tempfile.TemporaryDirectory() as temp:
   target=Path(temp)/'job'/'test.bin';target.parent.mkdir();s=Session([Response(status=302,headers={'Location':'http://127.0.0.1/secret'})])
   with self.assertRaises(ValueError):await fetch_file(s,'https://d.pcs.baidu.com/file',target,'private',max_file=100,max_total=200,reserve=0)
   self.assertEqual(len(s.calls),1);self.assertFalse(target.exists())
 async def test_cookie_not_sent_to_storage_cdn(self):
  with tempfile.TemporaryDirectory() as temp:
   target=Path(temp)/'job'/'test.bin';target.parent.mkdir();s=Session([Response(status=302,headers={'Location':'https://example.bcebos.com/file'}),Response(b'ok')])
   await fetch_file(s,'https://d.pcs.baidu.com/file',target,'private',max_file=100,max_total=200,reserve=0)
   self.assertIn('Cookie',s.calls[0][1]['headers']);self.assertNotIn('Cookie',s.calls[1][1]['headers'])
 async def test_size_failure_removes_partial(self):
  with tempfile.TemporaryDirectory() as temp:
   target=Path(temp)/'job'/'test.bin';target.parent.mkdir();s=Session([Response(b'123456',headers={})])
   with self.assertRaises(ValueError):await fetch_file(s,'https://d.pcs.baidu.com/file',target,'',max_file=4,max_total=200,reserve=0)
   self.assertFalse(target.exists());self.assertFalse(target.with_name('test.bin.part').exists())
 async def test_truncation_not_published(self):
  with tempfile.TemporaryDirectory() as temp:
   target=Path(temp)/'job'/'test.bin';target.parent.mkdir();s=Session([Response(b'abc',headers={'Content-Length':'5'})])
   with self.assertRaises(ValueError):await fetch_file(s,'https://d.pcs.baidu.com/file',target,'',max_file=100,max_total=200,reserve=0)
   self.assertFalse(target.exists())
 async def test_signed_public_link_contains_no_admin_token(self):
  manager=LocalDownloads({'openlist_public_url':'http://example.test:5244'})
  async def api(*args):return {'sign':'file-sign:1000','raw_url':'http://127.0.0.1:5244/d/ignored'}
  manager.api=api
  url=await manager.signed_link(None,'/本地下载/job/文件.txt','private-admin-token')
  self.assertIn('file-sign',url);self.assertNotIn('private-admin-token',url);self.assertNotIn('127.0.0.1',url)
 async def test_whole_cache_limit(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);(root/'existing').write_bytes(b'12345678');target=root/'job'/'test';target.parent.mkdir();s=Session([Response(b'abc',headers={})])
   with self.assertRaises(ValueError):await fetch_file(s,'https://d.pcs.baidu.com/file',target,'',max_file=100,max_total=10,reserve=0)
   self.assertFalse(target.exists())
if __name__=='__main__':unittest.main()
