import base64, http.client, io, json, sys, tempfile, threading, unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from file_manager import Files,FileError
import server

class FileTests(unittest.TestCase):
 def setUp(self):
  self.temp=tempfile.TemporaryDirectory();self.root=Path(self.temp.name);self.base=self.root/'base';self.base.mkdir();(self.base/'data.xp3').write_bytes(b'original archive');(self.base/'config.tjs').write_bytes('中文原版'.encode('utf-16'))
  self.manifest=self.root/'game-manifest.json';self.manifest.write_text(json.dumps({'root':str(self.base),'files':['data.xp3','config.tjs'],'overrides':{}}))
  self.files=Files(self.root/'state',self.manifest)
 def tearDown(self):self.temp.cleanup()
 def upload(self,name,value,version=None):self.files.upload(name,io.BytesIO(value),len(value),version or self.files.version(name))
 def test_versioned_override_delete_restore_and_base_unchanged(self):
  original=self.files.version('data.xp3');self.upload('data.xp3',b'patch',original)
  with self.assertRaises(FileError) as e:self.upload('data.xp3',b'conflict',original)
  self.assertEqual(e.exception.status,409)
  self.files.delete('data.xp3',self.files.version('data.xp3'));self.assertIsNone(self.files.target('data.xp3'))
  self.assertEqual((self.base/'data.xp3').read_bytes(),b'original archive')
  h=self.files.listing()['history'][0];self.files.restore(h['id'],'data.xp3','new');self.assertEqual(self.files.target('data.xp3').read_bytes(),b'patch')
  self.files.reset('data.xp3',self.files.version('data.xp3'));self.assertEqual(self.files.target('data.xp3').read_bytes(),b'original archive')
 def test_interrupted_upload_never_publishes(self):
  with self.assertRaises(FileError):self.files.upload('data.xp3',io.BytesIO(b'x'),50,self.files.version('data.xp3'))
  self.assertEqual(self.files.target('data.xp3').read_bytes(),b'original archive');self.assertFalse(list(self.files.root.glob('upload-*')))
 def test_paths_and_symlinks(self):
  for name in ['../data.xp3','/etc/config.txt','a/../../data.xp3','a\\b.xp3','a//b.xp3','.hidden.txt','savedata/data.txt','adult.xp3','x.html','x.dll','a:b.txt']:
   with self.subTest(name=name),self.assertRaises(FileError):self.upload(name,b'x')
  (self.files.files/'link').symlink_to(self.base,target_is_directory=True)
  with self.assertRaises(FileError):self.upload('link/config.tjs',b'x')
 def test_rename_persist_and_namespace_isolation(self):
  self.files.rename('data.xp3','patch/test.xp3',self.files.version('data.xp3'))
  self.assertIsNone(self.files.target('data.xp3'));self.assertEqual(self.files.target('patch/test.xp3').read_bytes(),b'original archive')
  again=Files(self.files.root,self.manifest);self.assertEqual(again.target('patch/test.xp3').read_bytes(),b'original archive')
  other=Files(self.root/'production-state',self.manifest);self.assertIsNotNone(other.target('data.xp3'));self.assertIsNone(other.target('patch/test.xp3'))

class HTTPTests(FileTests):
 def setUp(self):
  super().setUp();self.oldroot=server.ROOT;server.ROOT=self.root
  self.http=server.ThreadingHTTPServer(('127.0.0.1',0),server.Handler);self.http.files=self.files;self.http.admin_token='csrf-test';self.http.preview_auth='Basic '+base64.b64encode(b'owner:test-password').decode()
  self.thread=threading.Thread(target=self.http.serve_forever,daemon=True);self.thread.start()
 def tearDown(self):
  self.http.shutdown();self.http.server_close();self.thread.join();server.ROOT=self.oldroot;super().tearDown()
 def request(self,method,path,data=None,headers=None,auth=True):
  c=http.client.HTTPConnection('127.0.0.1',self.http.server_port,timeout=5);h={'Authorization':self.http.preview_auth} if auth else {};h.update(headers or {})
  c.request(method,path,data,h);r=c.getresponse();result=(r.status,dict(r.getheaders()),r.read());c.close();return result
 def post(self,action,data,headers=None):return self.request('POST','/api/admin/'+action,json.dumps(data).encode(),{'X-Admin-Token':'csrf-test','Content-Type':'application/json',**(headers or {})})
 def test_auth_csrf_and_limits(self):
  self.assertEqual(self.request('GET','/api/admin/files',auth=False)[0],401)
  self.assertEqual(self.request('PUT','/api/admin/upload?path=patch.xp3',b'x')[0],403)
  self.assertEqual(self.post('delete',{'path':'data.xp3','version':self.files.version('data.xp3')},{'Sec-Fetch-Site':'cross-site'})[0],403)
  self.assertEqual(self.request('PUT','/api/admin/upload?path=a.xp3',headers={'X-Admin-Token':'csrf-test','Content-Length':str(5*1024**3),'X-File-Version':'new'})[0],413)
  self.assertEqual(self.request('PUT','/api/admin/upload?path=..%2Fdata.xp3',b'x',{'X-Admin-Token':'csrf-test','X-File-Version':'new'})[0],400)
 def test_upload_is_visible_in_game_and_webdav(self):
  status,_,raw=self.request('GET','/api/admin/files');self.assertEqual(status,200);self.assertEqual(json.loads(raw)['token'],'csrf-test')
  self.assertEqual(self.request('PUT','/api/admin/upload?path=patch.xp3',b'new patch',{'X-Admin-Token':'csrf-test','X-File-Version':'new'})[0],200)
  status,_,raw=self.request('GET','/game/patch.xp3',headers={'Range':'bytes=0-2'});self.assertEqual((status,raw),(206,b'new'))
  status,_,raw=self.request('PROPFIND','/game/');self.assertEqual(status,207);self.assertIn(b'patch.xp3',raw)
  self.assertEqual(self.request('GET','/api/admin/download?path=patch.xp3')[1]['Content-Type'],'application/octet-stream')
 def test_utf16_edit_and_conflict(self):
  status,_,raw=self.request('GET','/api/admin/text?path=config.tjs');data=json.loads(raw);self.assertEqual(status,200);self.assertEqual(data['text'],'中文原版');self.assertEqual(data['encoding'],'utf-16')
  edit={'path':'config.tjs','text':'修改中文','encoding':data['encoding'],'version':data['version']}
  self.assertEqual(self.post('edit',edit)[0],200);self.assertEqual(self.post('edit',edit)[0],409)
  self.assertEqual(self.files.target('config.tjs').read_text(encoding='utf-16'),'修改中文')
  self.assertEqual((self.base/'config.tjs').read_text(encoding='utf-16'),'中文原版')
 def test_keepalive_propfind_body_is_consumed(self):
  c=http.client.HTTPConnection('127.0.0.1',self.http.server_port,timeout=5)
  c.request('PROPFIND','/game/',b'<propfind/>',{'Authorization':self.http.preview_auth})
  r=c.getresponse();self.assertEqual(r.version,11);self.assertEqual(r.status,207);r.read()
  c.request('GET','/game/data.xp3',headers={'Authorization':self.http.preview_auth})
  r=c.getresponse();self.assertEqual(r.status,200);self.assertEqual(r.read(),b'original archive');c.close()
 def test_archive_http_preview_then_deploy(self):
  import zipfile
  out=io.BytesIO()
  with zipfile.ZipFile(out,'w') as z:z.writestr('materials/example.pimg',b'example')
  status,_,raw=self.request('PUT','/api/admin/archive?filename=patch.zip',out.getvalue(),{'X-Admin-Token':'csrf-test'})
  self.assertEqual(status,200);preview=json.loads(raw)
  self.assertEqual(self.request('GET','/game/materials/example.pimg')[0],404)
  self.assertEqual(self.post('archive-deploy',{'id':preview['id']})[0],200)
  self.assertEqual(self.request('GET','/game/materials/example.pimg')[2],b'example')
 def test_xp3_overlay_http_ranges_and_webdav_size(self):
  from test_resource_overlay import xp3
  xp3(self.base/'data.xp3',[('scenario/start.ks',b'original text',False,False)])
  self.files.upload('unencrypted/scenario/start.ks',io.BytesIO(b'updated dialogue'),16,'new')
  status,headers,body=self.request('GET','/game/data.xp3');self.assertEqual(status,200)
  status,range_headers,part=self.request('GET','/game/data.xp3',headers={'Range':'bytes=9-24'})
  self.assertEqual(status,206);self.assertEqual(part,body[9:25]);self.assertEqual(int(headers['Content-Length']),len(body))
  status,_,xml=self.request('PROPFIND','/game/');self.assertEqual(status,207);self.assertIn(('<d:getcontentlength>'+str(len(body))+'</d:getcontentlength>').encode(),xml)
  self.assertEqual((self.base/'data.xp3').stat().st_size<len(body),True)
 def test_admin_disabled_on_production(self):
  self.http.files=None
  self.assertEqual(self.request('GET','/admin')[0],404);self.assertEqual(self.request('GET','/api/admin/files')[0],404)
  self.assertEqual(self.request('POST','/api/admin/delete',b'{}',{'X-Admin-Token':'csrf-test'})[0],404)

if __name__=='__main__':unittest.main()
