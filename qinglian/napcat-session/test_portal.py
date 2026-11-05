import importlib.util,json,pathlib,tempfile,unittest
from unittest.mock import patch
import aiohttp
from aiohttp import web
from aiohttp.test_utils import TestClient,TestServer

class Sessions(unittest.IsolatedAsyncioTestCase):
    async def asyncSetUp(self):
        self.temp=tempfile.TemporaryDirectory()
        spec=importlib.util.spec_from_file_location('portal_test',pathlib.Path(__file__).with_name('portal.py'))
        self.m=importlib.util.module_from_spec(spec);spec.loader.exec_module(self.m)
        self.m.ROOT=pathlib.Path(self.temp.name)
        self.cfg=self.m.ROOT/'config.json'
        self.cfg.write_text(json.dumps({'dashboard':{'username':'tester','password':'hash-one','pbkdf2_password':'strong-hash-one'}}))
        self.m.Path=lambda value:self.cfg if str(value)=='/opt/astrbot/data/cmd_config.json' else pathlib.Path(value)
    async def asyncTearDown(self):self.temp.cleanup()

    async def test_no_expiration_restart_and_tampering(self):
        token=self.m.sign_session()
        with patch.object(self.m.time,'time',return_value=9999999999):self.assertTrue(self.m.valid_session(token))
        self.m.SESSION_KEY=None
        self.assertTrue(self.m.valid_session(token))
        self.assertFalse(self.m.valid_session(token+'x'))
        self.assertFalse(self.m.valid_session(''))
        self.assertEqual((self.m.ROOT/'session-signing.key').stat().st_mode&0o777,0o600)

    async def test_password_change_revokes_session(self):
        token=self.m.sign_session()
        self.cfg.write_text(json.dumps({'dashboard':{'username':'tester','password':'changed'}}))
        self.assertFalse(self.m.valid_session(token))

    async def test_login_auth_persistence_logout_and_csrf(self):
        async def auth(req):
            data=await req.json()
            if data=={'username':'tester','password':'correct'}:return web.json_response({'data':{'token':'short-lived-jwt'}})
            return web.json_response({'message':'用户名或密码错误'},status=401)
        fake=web.Application();fake.router.add_post('/api/auth/login',auth)
        async with TestServer(fake) as backend:
            self.m.ASTRBOT=str(backend.make_url('')).rstrip('/')
            async def nc(*args,**kwargs):return {'isLogin':True,'isOffline':False}
            self.m.nc=nc
            async with TestClient(TestServer(self.m.app),cookie_jar=aiohttp.CookieJar(unsafe=True)) as client:
                self.assertEqual((await client.get('/api/status')).status,401)
                r=await client.post('/api/login',json={'username':'tester','password':'wrong'})
                self.assertEqual(r.status,401);self.assertIn('账号或密码错误',await r.text())
                r=await client.post('/api/login',json={'username':'tester','password':'correct'})
                self.assertEqual(r.status,200)
                self.assertGreater(int(r.cookies['napcat_session']['max-age']),12*3600)
                await backend.close()
                self.assertEqual((await client.get('/api/status')).status,200)
                self.assertEqual((await client.post('/api/refresh',headers={'Origin':'https://outside.invalid'})).status,403)
                self.assertEqual((await client.post('/api/logout')).status,200)
                self.assertEqual((await client.get('/api/status')).status,401)

if __name__=='__main__':unittest.main()
