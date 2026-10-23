"""Authenticated QR login portal. NapCat administration stays on loopback."""
import asyncio
import hashlib
import io
import json
import secrets
import time
from pathlib import Path
from urllib.parse import urlsplit

import aiohttp
from aiohttp import web
import qrcode
import qrcode.image.svg

ROOT = Path('/opt/napcat-login')
SESSIONS = {}
ATTEMPTS = {}
NAPCAT = 'http://127.0.0.1:16099'
ASTRBOT = 'http://127.0.0.1:6185'
credential = None
credential_until = 0
nc_lock = asyncio.Lock()

@web.middleware
async def security(request, handler):
    if request.method == 'POST':
        origin = request.headers.get('Origin')
        if origin and urlsplit(origin).netloc != request.host:
            raise web.HTTPForbidden()
        if request.headers.get('Sec-Fetch-Site') == 'cross-site':
            raise web.HTTPForbidden()
    if request.path not in ('/', '/api/login', '/health'):
        sid = request.cookies.get('napcat_session', '')
        item = SESSIONS.get(sid)
        if not item or item['expires'] < time.time():
            raise web.HTTPUnauthorized(text='请先登录')
        if item['checked'] < time.time() - 30:
            try:
                async with request.app['http'].get(ASTRBOT+'/api/v1/bots/stats', headers={'Authorization':'Bearer '+item['token']}) as res:
                    if res.status != 200:
                        SESSIONS.pop(sid,None)
                        raise web.HTTPUnauthorized()
                item['checked'] = time.time()
            except aiohttp.ClientError:
                raise web.HTTPServiceUnavailable(text='AstrBot 暂时不可用')
    try:
        response = await handler(request)
    except web.HTTPException as exc:
        response = exc
    response.headers.update({'Cache-Control':'no-store','X-Content-Type-Options':'nosniff','Referrer-Policy':'no-referrer','X-Frame-Options':'DENY'})
    return response

async def nc(app, path, payload=None):
    global credential, credential_until
    async with nc_lock:
        if not credential or credential_until < time.monotonic():
            token = json.loads(Path('/opt/napcat-stack/config/webui.json').read_text())['token']
            hashed = hashlib.sha256((token+'.napcat').encode()).hexdigest()
            async with app['http'].post(NAPCAT+'/api/auth/login',json={'hash':hashed}) as res:
                result = await res.json()
            credential = result.get('data',{}).get('Credential')
            if not credential:
                raise RuntimeError('NapCat 登录服务尚未就绪')
            credential_until = time.monotonic()+3000
        async with app['http'].post(NAPCAT+'/api/'+path,json=payload or {},headers={'Authorization':'Bearer '+credential}) as res:
            result = await res.json()
        if result.get('code') != 0:
            credential = None
            credential_until = 0
            raise RuntimeError('NapCat 暂未就绪，请稍后重试')
        return result.get('data',{})

async def index(request):
    return web.FileResponse(ROOT/'index.html')

async def login(request):
    ip = request.remote
    attempts = [t for t in ATTEMPTS.get(ip,[]) if t > time.time()-60]
    if len(attempts) >= 5:
        raise web.HTTPTooManyRequests(text='请一分钟后再试')
    if len(ATTEMPTS)>1000: ATTEMPTS.clear()
    attempts.append(time.time()); ATTEMPTS[ip]=attempts
    body = await request.json()
    try:
        async with request.app['http'].post(ASTRBOT+'/api/auth/login',json={'username':str(body.get('username',''))[:100],'password':str(body.get('password',''))[:300]}) as res:
            result = await res.json()
        token = (result.get('data') or {}).get('token')
        if not token: raise web.HTTPUnauthorized(text='账号或密码错误')
        if len(SESSIONS)>500:
            for key in list(SESSIONS):
                if SESSIONS[key]['expires']<time.time():SESSIONS.pop(key,None)
            if len(SESSIONS)>500: raise web.HTTPServiceUnavailable()
        sid=secrets.token_urlsafe(32)
        SESSIONS[sid]={'token':token,'expires':time.time()+12*3600,'checked':time.time()}
        response=web.json_response({'ok':True})
        response.set_cookie('napcat_session',sid,httponly=True,samesite='Strict',max_age=12*3600,secure=request.secure)
        return response
    except (aiohttp.ClientError,asyncio.TimeoutError):
        raise web.HTTPServiceUnavailable(text='AstrBot 登录服务暂时不可用')

async def status(request):
    try:
        data=await nc(request.app,'QQLogin/CheckLoginStatus')
        return web.json_response({k:data.get(k) for k in ['isLogin','isOffline','loginPhase','qrcodeurl','loginError','qrLoginAccepted','coreReady']})
    except (RuntimeError,aiohttp.ClientError,asyncio.TimeoutError,ValueError):
        return web.json_response({'error':'NapCat 正在启动，请稍后重试'},status=503)

async def qr(request):
    try:
        data=await nc(request.app,'QQLogin/CheckLoginStatus')
        value=data.get('qrcodeurl')
        if not value: raise web.HTTPNotFound(text='暂无二维码')
        if not isinstance(value,str) or len(value)>4096:raise web.HTTPBadGateway()
        img=qrcode.make(value,image_factory=qrcode.image.svg.SvgPathImage,box_size=8,border=4)
        output=io.BytesIO();img.save(output)
        return web.Response(body=output.getvalue(),content_type='image/svg+xml')
    except (RuntimeError,aiohttp.ClientError,asyncio.TimeoutError):
        raise web.HTTPServiceUnavailable()

async def refresh(request):
    try:
        await nc(request.app,'QQLogin/RefreshQRcode')
        return web.json_response({'ok':True})
    except (RuntimeError,aiohttp.ClientError,asyncio.TimeoutError):
        return web.json_response({'error':'刷新失败，请稍后再试'},status=503)

async def health(request):return web.json_response({'service':'napcat-login','ok':True})
async def client_context(app):
    async with aiohttp.ClientSession(timeout=aiohttp.ClientTimeout(total=15)) as session:
        app['http']=session
        yield

app=web.Application(middlewares=[security],client_max_size=8192)
app.cleanup_ctx.append(client_context)
app.router.add_get('/',index)
app.router.add_get('/health',health)
app.router.add_post('/api/login',login)
app.router.add_get('/api/status',status)
app.router.add_get('/api/qr.svg',qr)
app.router.add_post('/api/refresh',refresh)
if __name__=='__main__':web.run_app(app,host='0.0.0.0',port=6099,access_log=None,print=None)
