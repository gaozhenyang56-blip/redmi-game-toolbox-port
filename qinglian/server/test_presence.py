"""Local reference-store tests; not a deployed x-ui integration test."""
import json
import sqlite3
import tempfile
import unittest
import uuid
from pathlib import Path
import server

class PresenceTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory()
        self.previous=server.DB
        server.DB=str(Path(self.temp.name)/'presence.sqlite3')
        server.init_db()
        self.device=str(uuid.uuid4())
        self.session=str(uuid.uuid4())
    def tearDown(self):
        server.DB=self.previous
        self.temp.cleanup()
    def event(self,generation=1,sequence=1,online=True,session=None,**extra):
        return dict(deviceId=self.device,sessionId=session or self.session,generation=generation,sequence=sequence,
                    online=online,deviceName='Fixture',uploadBytes=10,downloadBytes=20,uploadRate=1,downloadRate=2,**extra)
    def send(self,event,now=100):server.heartbeat(event,'192.0.2.1',now)
    def test_two_devices_and_ttl(self):
        self.send(self.event())
        second=self.event();second['deviceId']=str(uuid.uuid4());self.send(second)
        self.assertEqual(2,server.snapshot(129)['online'])
        self.assertEqual(0,server.snapshot(131)['online'])
        self.send(self.event(sequence=2),132)
        self.assertEqual(1,server.snapshot(132)['online'])
    def test_old_session_offline_and_online_cannot_replace_reconnect(self):
        self.send(self.event())
        new_session=str(uuid.uuid4())
        self.send(self.event(generation=2,session=new_session),101)
        self.send(self.event(sequence=2,online=False),102)
        self.send(self.event(sequence=3),103)
        row=server.snapshot(103)['devices'][0]
        self.assertTrue(row['online']);self.assertEqual(new_session,row['session'])
        self.assertEqual(101,row['seen'])
    def test_closed_session_cannot_be_resurrected(self):
        self.send(self.event(sequence=2,online=False))
        self.send(self.event(sequence=1),101)
        self.send(self.event(sequence=3),102)
        self.assertEqual(0,server.snapshot(102)['online'])
        self.send(self.event(generation=2,session=str(uuid.uuid4())),103)
        self.assertEqual(1,server.snapshot(103)['online'])
    def test_reordered_same_session_request_is_ignored(self):
        newer=self.event(sequence=4);newer['downloadBytes']=200
        self.send(newer)
        self.send(self.event(sequence=3),101)
        row=server.snapshot(101)['devices'][0]
        self.assertEqual(200,row['down']);self.assertEqual(100,row['seen'])
    def test_invalid_numbers_do_not_mutate_record(self):
        self.send(self.event())
        for key,value in [('generation',True),('sequence',0),('uploadBytes',-1),('uploadRate',True),('downloadRate',float('nan')),('online',1)]:
            event=self.event(sequence=2);event[key]=value
            with self.assertRaises((ValueError,TypeError)):self.send(event,101)
        self.assertEqual(100,server.snapshot(101)['devices'][0]['seen'])
    def test_expired_details_are_redacted_but_generation_remains(self):
        self.send(self.event(generation=5))
        self.send(self.event(generation=4),86400*8)
        self.assertEqual([],server.snapshot(86400*8)['devices'])
        with sqlite3.connect(server.DB) as c:
            row=c.execute('SELECT name,ip,generation FROM devices WHERE id=?',(self.device,)).fetchone()
        self.assertEqual(('', '',5),row)
    def test_migrates_old_prototype_without_erasing_rows(self):
        Path(server.DB).unlink()
        with sqlite3.connect(server.DB) as c:
            c.execute('CREATE TABLE devices (id TEXT PRIMARY KEY, session TEXT, name TEXT, brand TEXT, model TEXT, android TEXT, app TEXT, ip TEXT, started REAL, seen REAL, online INTEGER, up INTEGER, down INTEGER, up_rate REAL, down_rate REAL)')
            c.execute('INSERT INTO devices (id,session,seen,online) VALUES (?,?,?,?)',(self.device,self.session,100,1))
        server.init_db();self.assertEqual(1,server.snapshot(101)['online'])
        self.send(self.event(generation=1,online=False),102)
        self.assertEqual(0,server.snapshot(102)['online'])

class ApiBoundaryTests(unittest.TestCase):
    def setUp(self):
        import threading
        self.temp=tempfile.TemporaryDirectory();self.saved=(server.DB,server.CLIENT_TOKEN,server.ADMIN_PASSWORD)
        server.DB=str(Path(self.temp.name)/'api.sqlite3');server.CLIENT_TOKEN='fixture-client-token';server.ADMIN_PASSWORD='fixture-admin-password'
        server.init_db()
        self.http=server.ThreadingHTTPServer(('127.0.0.1',0),server.Handler)
        self.thread=threading.Thread(target=self.http.serve_forever,daemon=True);self.thread.start()
    def tearDown(self):
        self.http.shutdown();self.http.server_close();self.thread.join(timeout=2)
        server.DB,server.CLIENT_TOKEN,server.ADMIN_PASSWORD=self.saved;self.temp.cleanup()
    def request(self,path,token=None,data=None):
        import urllib.request,urllib.error
        request=urllib.request.Request('http://127.0.0.1:'+str(self.http.server_port)+path,
            data=json.dumps(data).encode() if data is not None else None)
        if token:request.add_header('Authorization','Bearer '+token)
        try:response=urllib.request.build_opener(urllib.request.ProxyHandler({})).open(request,timeout=2)
        except urllib.error.HTTPError as error:response=error
        with response:return response.status,json.load(response)
    def test_requires_auth_and_never_exposes_details_to_app(self):
        self.assertEqual(401,self.request('/api/v1/online')[0])
        self.assertEqual(401,self.request('/api/v1/heartbeat',data={'online':True})[0])
        self.assertEqual(401,self.request('/admin/api/devices',server.CLIENT_TOKEN)[0])
        status,body=self.request('/api/v1/online',server.CLIENT_TOKEN)
        self.assertEqual(200,status);self.assertEqual(0,body['online']);self.assertNotIn('devices',body)
    def test_quota_stays_unavailable_until_real_source_is_wired(self):
        self.assertEqual(401,self.request('/api/v1/quota')[0])
        status,body=self.request('/api/v1/quota',server.CLIENT_TOKEN)
        self.assertEqual(503,status);self.assertNotIn('total',body)
    def test_authenticated_heartbeat_updates_count_and_offline(self):
        data=dict(deviceId=str(uuid.uuid4()),sessionId=str(uuid.uuid4()),generation=1,sequence=1,online=True)
        self.assertEqual(200,self.request('/api/v1/heartbeat',server.CLIENT_TOKEN,data)[0])
        self.assertEqual(1,self.request('/api/v1/online',server.CLIENT_TOKEN)[1]['online'])
        data.update(sequence=2,online=False)
        self.assertEqual(200,self.request('/api/v1/heartbeat',server.CLIENT_TOKEN,data)[0])
        self.assertEqual(0,self.request('/api/v1/online',server.CLIENT_TOKEN)[1]['online'])

if __name__=='__main__':unittest.main()
