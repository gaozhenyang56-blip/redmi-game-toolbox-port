import importlib.util
import json
import tempfile
import threading
import unittest
from pathlib import Path
from urllib.error import HTTPError
from urllib.request import Request, urlopen

spec = importlib.util.spec_from_file_location('remote', Path(__file__).parents[1] / 'server.py')
m = importlib.util.module_from_spec(spec)
spec.loader.exec_module(m)


class FakeDevice(m.Device):
    def __init__(self):
        super().__init__('test-serial')
        self.commands = []
        self.offline = False

    def run(self, *args, **kwargs):
        self.commands.append(args)
        if self.offline:
            raise m.DeviceError('offline')
        return {('get-state',): 'device', ('shell', 'dumpsys', 'power'): 'Display Power: state=OFF',
                ('shell', 'dumpsys', 'window', 'policy'): 'mShowingLockscreen=true',
                ('shell', 'wm', 'size'): 'Physical size: 1080x2400\nOverride size: 720x1600'}.get(args, '')


class DeviceTests(unittest.TestCase):
    def test_display_variants_and_unknown(self):
        for raw, expected in [('ON','on'),('OFF','off'),('DOZE','doze'),('DOZE_SUSPEND','doze')]:
            self.assertEqual(m.display_state('Display Power: state='+raw), expected)
        self.assertEqual(m.display_state('mWakefulness=Awake'), 'unknown')
        self.assertEqual(m.display_state('mScreenOn=false'), 'off')
        self.assertEqual(m.display_state('', 'mGlobalDisplayState=ON'), 'on')
        self.assertIsNone(m.lock_state('nothing'))

    def test_status_offline_clears_previous_state(self):
        d = FakeDevice()
        state = d.refresh()
        self.assertEqual((state['screen'], state['width'], state['locked']), ('off', 720, True))
        d.offline = True
        self.assertEqual(d.refresh()['screen'], 'unknown')
        self.assertIsNone(d.snapshot()['width'])

    def test_idempotent_controls(self):
        d = FakeDevice()
        d.control({'action':'wake'})
        d.control({'action':'sleep'})
        d.control({'action':'unlock'})
        self.assertIn(('shell','input','keyevent','224'), d.commands)
        self.assertIn(('shell','input','keyevent','223'), d.commands)
        self.assertIn(('shell','wm','dismiss-keyguard'), d.commands)
        self.assertNotIn(('shell','input','keyevent','26'), d.commands)

    def test_input_injection_and_invalid_coordinates(self):
        d = FakeDevice()
        for value in ['a;id', '$(id)', '`id`', 'x\ny', 'a%s', '中文']:
            with self.assertRaises(ValueError):
                d.control({'action':'text', 'text':value})
        with self.assertRaises(ValueError):
            d.control({'action':'tap','width':100,'height':100,'x':100,'y':0})
        with self.assertRaises(ValueError):
            d.control({'action':'shell','command':'id'})
        self.assertEqual(d.commands, [])


class AuthTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.path = Path(self.tmp.name) / 'step'
        self.now = 59
        self.secret = b'12345678901234567890'
        self.auth = m.Authentication('t'*32, self.secret, self.path, lambda:self.now)

    def tearDown(self):
        self.tmp.cleanup()

    def test_rfc6238_and_replay_across_restart(self):
        self.assertEqual(self.auth.code(1), '287082')
        session, status = self.auth.login('t'*32, '287082')
        self.assertEqual(status, 200)
        self.assertTrue(self.auth.authorized(session))
        self.assertEqual(self.auth.login('t'*32, '287082')[1], 401)
        restarted = m.Authentication('t'*32,self.secret,self.path,lambda:self.now)
        self.assertEqual(restarted.login('t'*32,'287082')[1],401)
        self.assertFalse(restarted.authorized(session))
        self.auth.logout(session)
        self.assertFalse(self.auth.authorized(session))

    def test_unicode_token_rejected(self):
        self.assertEqual(self.auth.login('错误令牌', '287082')[1], 401)

    def test_rate_limit_and_expiry(self):
        for _ in range(5):
            self.assertEqual(self.auth.login('wrong','000000')[1],401)
        self.assertEqual(self.auth.login('t'*32,'287082')[1],429)
        self.now += 61
        session, status = self.auth.login('t'*32,self.auth.code(int(self.now//30)))
        self.assertEqual(status,200)
        self.now += 12*3600
        self.assertFalse(self.auth.authorized(session))

    def test_http_enforces_totp_for_all_controls(self):
        server = m.Server(('127.0.0.1',0),FakeDevice(),self.auth)
        threading.Thread(target=server.serve_forever,daemon=True).start()
        base = 'http://127.0.0.1:'+str(server.server_port)
        def request(path, data=None, token=''):
            return urlopen(Request(base+path, data=json.dumps(data).encode() if data is not None else None,
                headers={'Content-Type':'application/json','Authorization':'Bearer '+token}),timeout=3)
        try:
            for path in ['/api/status','/api/screen','/api/control']:
                with self.assertRaises(HTTPError) as error:
                    request(path, {} if path.endswith('control') else None, 't'*32)
                self.assertEqual(error.exception.code,401)
            with request('/api/login',{'token':'t'*32,'otp':'287082'}) as r:
                session = json.load(r)['session']
            with request('/api/status',token=session) as r:
                self.assertEqual(r.status,200)
                self.assertEqual(r.headers['Cache-Control'],'no-store')
            with request('/api/control',{'action':'wake'},session) as r:
                self.assertEqual(json.load(r)['screen'],'off')
            with request('/api/logout',{},session) as r:
                self.assertEqual(r.status,200)
            with self.assertRaises(HTTPError):
                request('/api/status',token=session)
        finally:
            server.shutdown()
            server.server_close()


if __name__ == '__main__':
    unittest.main()

class EnrollmentTests(unittest.TestCase):
    def test_backend_generation_confirmation_rotation_and_reload(self):
        import base64
        with tempfile.TemporaryDirectory() as directory:
            clock=[120]
            path=Path(directory)/'step'
            auth=m.Authentication('a'*32,None,path,lambda:clock[0])
            self.assertEqual(auth.begin_enrollment('wrong')[1],401)
            enrollment,status=auth.begin_enrollment('a'*32)
            self.assertEqual(status,200)
            self.assertIsNone(auth.secret)
            helper=m.Authentication('a'*32,base64.b32decode(enrollment['secret']),Path(directory)/'unused',lambda:clock[0])
            code=helper.code(4)
            self.assertEqual(auth.confirm_enrollment('a'*32,enrollment['enrollment'],'bad')[1],401)
            session,status=auth.confirm_enrollment('a'*32,enrollment['enrollment'],code)
            self.assertEqual(status,200)
            self.assertTrue(auth.authorized(session))
            self.assertEqual(auth.begin_enrollment('a'*32)[1],401)
            restarted=m.Authentication('a'*32,None,path,lambda:clock[0])
            self.assertEqual(restarted.secret,helper.secret)
            self.assertEqual(restarted.login('a'*32,code)[1],401)
            clock[0]+=30
            new,status=auth.begin_enrollment('a'*32,helper.code(5))
            self.assertEqual(status,200)
            helper.secret=base64.b32decode(new['secret'])
            new_session,status=auth.confirm_enrollment('a'*32,new['enrollment'],helper.code(5))
            self.assertEqual(status,200)
            self.assertFalse(auth.authorized(session))
            self.assertTrue(auth.authorized(new_session))


class RelayTests(unittest.TestCase):
    state=dict(connected=True,screen='off',locked=True,width=1080,height=2400)

    def test_phone_pull_and_result_no_replay(self):
        relay=m.RelayDevice(timeout=1)
        relay.update(self.state)
        results=[]
        thread=threading.Thread(target=lambda:results.append(relay.control({'action':'wake'})))
        thread.start()
        command=relay.poll(self.state)
        self.assertEqual(command['data']['action'],'wake')
        self.assertTrue(relay.result({'id':command['id'],'state':{**self.state,'screen':'on'}}))
        self.assertFalse(relay.result({'id':command['id'],'state':self.state}))
        thread.join(2)
        self.assertEqual(results[0]['screen'],'on')
        self.assertFalse(relay.result({'id':command['id'],'state':self.state}))
        self.assertEqual(len(relay.pending),0)

    def test_offline_and_timeout_dont_replay(self):
        relay=m.RelayDevice(timeout=.02)
        with self.assertRaises(m.DeviceError):
            relay.control({'action':'wake'})
        relay.update(self.state)
        with self.assertRaises(m.DeviceError):
            relay.control({'action':'wake'})
        self.assertEqual(len(relay.pending),0)
        self.assertEqual(len(relay.commands),0)
        relay.last_seen-=50
        self.assertFalse(relay.snapshot()['connected'])
        self.assertEqual(relay.snapshot()['screen'],'unknown')

    def test_http_agent_cannot_use_controller_api(self):
        with tempfile.TemporaryDirectory() as directory:
            auth=m.Authentication('t'*32,b'12345678901234567890',Path(directory)/'step')
            server=m.Server(('127.0.0.1',0),m.RelayDevice(),auth,'p'*32)
            threading.Thread(target=server.serve_forever,daemon=True).start()
            base='http://127.0.0.1:'+str(server.server_port)
            try:
                for path,token in [('/api/status','p'*32),('/agent/poll','t'*32)]:
                    req=Request(base+path,headers={'Authorization':'Bearer '+token},data=b'{}' if path.startswith('/agent/') else None)
                    with self.assertRaises(HTTPError) as error: urlopen(req,timeout=2)
                    self.assertEqual(error.exception.code,401)
            finally: server.shutdown(); server.server_close()
