import json,tempfile,threading,time,unittest,urllib.request,urllib.error
from pathlib import Path
from app import Store,Service,Handler,ThreadingHTTPServer
class Tests(unittest.TestCase):
 def test_progress_wave_and_eta_without_modifying_download(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp)/'downloads';job=root/'job';job.mkdir(parents=True);p=job/'测试.mp4.part';p.write_bytes(b'a'*100);db=Store(Path(temp)/'monitor/state.sqlite3')
   db.scan(root,{'测试.mp4':1000},now=1000);p.write_bytes(b'a'*200);before=p.stat();db.scan(root,{'测试.mp4':1000},now=1003)
   f=db.snapshot(now=1003)['files'][0];self.assertEqual(f['progress'],20);self.assertGreater(f['speed'],0);self.assertGreater(f['eta'],0);self.assertEqual(len(f['history']),2);self.assertEqual(p.stat().st_mtime_ns,before.st_mtime_ns);self.assertEqual(p.stat().st_size,200)
   p.rename(job/'测试.mp4');db.scan(root,now=1006);self.assertEqual(db.snapshot(now=1006)['files'][0]['status'],'completed');self.assertEqual(len(list(job.iterdir())),1)
 def test_unknown_total_does_not_invent_eta(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp)/'downloads';job=root/'job';job.mkdir(parents=True);p=job/'unknown.part';p.write_bytes(b'a');db=Store(Path(temp)/'monitor.sqlite3');db.scan(root,now=1000);p.write_bytes(b'abc');db.scan(root,now=1003)
   f=db.snapshot(now=1003)['files'][0];self.assertIsNone(f['total']);self.assertIsNone(f['eta']);self.assertIsNone(f['progress'])
 def test_disappearing_partial_not_reported_complete(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp)/'downloads';job=root/'job';job.mkdir(parents=True);p=job/'a.part';p.write_bytes(b'a');db=Store(Path(temp)/'monitor.sqlite3');db.scan(root,now=1000);p.unlink();db.scan(root,now=1003)
   self.assertEqual(db.snapshot(now=1003)['files'][0]['status'],'interrupted')
 def test_symlink_outside_root_ignored(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp)/'downloads';root.mkdir();outside=Path(temp)/'secret';outside.mkdir();(outside/'private').write_text('secret');(root/'bad').symlink_to(outside);db=Store(Path(temp)/'monitor.sqlite3');db.scan(root);self.assertEqual(db.snapshot()['files'],[])
 def test_authentication_and_readonly_routes(self):
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp)/'downloads';root.mkdir();db=Store(Path(temp)/'monitor.sqlite3');service=Service({'download_root':str(root),'openlist_api':'http://127.0.0.1:5244'},db)
   def fake(path,body=None,token=''):
    if path=='/api/auth/login':
     if body!={'username':'admin','password':'fixture-password'}:raise ValueError('wrong password')
     return {'token':'fixture-token'}
    if path=='/api/me':return {'role':2,'username':'admin'}
    raise ValueError('Unexpected upstream request')
   service.api=fake;server=ThreadingHTTPServer(('127.0.0.1',0),Handler);server.daemon_threads=True;server.service=service;threading.Thread(target=server.serve_forever,daemon=True).start();base='http://127.0.0.1:'+str(server.server_port)
   try:
    with self.assertRaises(urllib.error.HTTPError) as e:urllib.request.urlopen(base+'/api/progress')
    self.assertEqual(e.exception.code,401)
    req=urllib.request.Request(base+'/api/login',data=json.dumps({'username':'admin','password':'fixture-password'}).encode(),headers={'Content-Type':'application/json'})
    with urllib.request.urlopen(req) as r:cookie=r.headers['Set-Cookie'].split(';')[0]
    with urllib.request.urlopen(urllib.request.Request(base+'/api/progress',headers={'Cookie':cookie})) as r:self.assertTrue(json.load(r)['read_only'])
    req=urllib.request.Request(base+'/api/login',data=b'{}',headers={'Content-Type':'application/json','Origin':'http://evil.example'})
    with self.assertRaises(urllib.error.HTTPError) as e:urllib.request.urlopen(req)
    self.assertEqual(e.exception.code,403)
    req=urllib.request.Request(base+'/api/cancel',data=b'{}',headers={'Cookie':cookie,'Content-Type':'application/json'})
    with self.assertRaises(urllib.error.HTTPError) as e:urllib.request.urlopen(req)
    self.assertEqual(e.exception.code,404)
   finally:server.shutdown();server.server_close()
if __name__=='__main__':unittest.main()
