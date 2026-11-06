"""Bounded local downloads exposed through OpenList's native signed /d links."""
import asyncio
import json
import os
import re
import shutil
import time
import urllib.parse
import uuid
from pathlib import Path

import aiohttp

GIB=1024**3
BAIDU_HOSTS=('baidu.com','baidupcs.com','baidubce.com','bcebos.com')
MODE=re.compile(r'网盘下载|本地下载|openlist下载|下载到\s*openlist',re.I)

def safe_name(name):
    name=str(name or 'download.bin').replace('\\','/').rsplit('/',1)[-1]
    name=re.sub(r'[\x00-\x1f\x7f-\x9f<>:"|?*]','_',name).strip(' .')
    if not name or name in ('.','..'):name='download.bin'
    return name.encode('utf-8')[:220].decode('utf-8','ignore').rstrip(' .') or 'download.bin'

def source_url(value):
    parsed=urllib.parse.urlsplit(str(value))
    host=(parsed.hostname or '').lower()
    if parsed.scheme not in ('https','http') or parsed.username or parsed.password or parsed.port not in (None,80,443):
        raise ValueError('百度下载链接格式不受支持。')
    if not any(host==base or host.endswith('.'+base) for base in BAIDU_HOSTS):
        raise ValueError('下载链接不是受支持的百度下载域名。')
    return urllib.parse.urlunsplit(('https',parsed.netloc.removesuffix(':80'),parsed.path,parsed.query,''))

def disk_usage(root):
    return sum(p.stat().st_size for p in Path(root).rglob('*') if p.is_file() and not p.is_symlink())

def budget_check(root,incoming,max_file,max_total,reserve,current=0):
    if incoming and incoming>max_file:raise ValueError('文件超过单文件下载大小限制。')
    used=disk_usage(root)
    if used+max(0,incoming-current)>max_total:raise ValueError('本地缓存已达总容量限制，请先清理已下载文件。')
    if shutil.disk_usage(root).free-max(0,incoming-current)<reserve:raise ValueError('服务器剩余空间不足，已保留系统所需磁盘空间。')

async def fetch_file(session,url,destination,cookie,*,max_file,max_total,reserve,expected=0):
    url=source_url(url);root=destination.parent.parent
    budget_check(root,expected,max_file,max_total,reserve)
    response=None
    for count in range(6):
        host=urllib.parse.urlsplit(url).hostname
        headers={'User-Agent':'pan.baidu.com','Accept-Encoding':'identity'}
        if cookie and (host=='baidu.com' or host.endswith('.baidu.com') or host=='baidupcs.com' or host.endswith('.baidupcs.com')):
            headers['Cookie']='BDUSS='+cookie
        response=await session.get(url,headers=headers,allow_redirects=False)
        if response.status in (301,302,303,307,308):
            location=response.headers.get('Location','');response.release()
            if not location:raise ValueError('百度下载跳转缺少目标地址。')
            url=source_url(urllib.parse.urljoin(url,location));continue
        break
    else:raise ValueError('百度下载跳转次数过多。')
    partial=destination.with_name(destination.name+'.part')
    try:
        if response.status!=200:raise ValueError('百度文件下载失败（HTTP '+str(response.status)+'），未返回本地链接。')
        length=int(response.headers.get('Content-Length') or 0)
        if response.headers.get('Content-Encoding','identity').lower() not in ('','identity'):raise ValueError('下载响应压缩格式异常。')
        if expected and length and expected!=length:raise ValueError('下载响应大小与网盘文件不一致，未保存。')
        budget_check(root,max(length,expected),max_file,max_total,reserve)
        initial_used=disk_usage(root)
        total=0;last_check=0
        fd=os.open(partial,os.O_CREAT|os.O_EXCL|os.O_WRONLY,0o640)
        with os.fdopen(fd,'wb') as output:
            async for chunk in response.content.iter_chunked(64*1024):
                if initial_used+total+len(chunk)>max_total:raise ValueError('本地缓存已达总容量限制，已停止。')
                if total+len(chunk)>max_file:raise ValueError('文件超过单文件下载大小限制，已停止。')
                if total-last_check>=4*1024*1024 or not total:
                    budget_check(root,total+len(chunk),max_file,max_total,reserve,current=total);last_check=total
                output.write(chunk);total+=len(chunk)
            output.flush();os.fsync(output.fileno())
        if (length and total!=length) or (expected and total!=expected):raise ValueError('文件下载不完整，未返回链接。')
        os.replace(partial,destination);os.chmod(destination,0o640)
        return total
    finally:
        if response is not None:response.release()
        partial.unlink(missing_ok=True)

class LocalDownloads:
    def __init__(self,cfg):
        self.enabled=bool(cfg.get('openlist_local_download_enable',True))
        self.root=Path(cfg.get('openlist_local_download_dir','/opt/astrbot/data/plugin_data/astrbot_plugin_baidu_curl/local_downloads'))
        self.mount=cfg.get('openlist_local_mount','/本地下载').rstrip('/')
        self.public=cfg.get('openlist_public_url','http://107.150.7.124:5244').rstrip('/')
        self.api_base=cfg.get('openlist_url','').rstrip('/')
        self.username=cfg.get('openlist_user','');self.password=cfg.get('openlist_pass','')
        self.max_file=int(cfg.get('openlist_local_max_file_mb',1024))*1024**2
        self.max_total=int(cfg.get('openlist_local_max_total_mb',4096))*1024**2
        self.reserve=int(cfg.get('openlist_local_reserve_mb',2048))*1024**2
        self.lock=asyncio.Lock()
    async def api(self,session,path,body,token=''):
        async with session.post(self.api_base+path,json=body,headers={'Authorization':token} if token else {},timeout=aiohttp.ClientTimeout(total=25)) as response:
            if response.status!=200:raise ValueError('OpenList 接口暂不可用。')
            data=await response.json(content_type=None)
        if data.get('code')!=200:raise ValueError('OpenList 登录或签名链接生成失败。')
        return data.get('data') or {}
    async def signed_link(self,session,path,token):
        data=await self.api(session,'/api/fs/get',{'path':path,'password':''},token)
        sign=data.get('sign') or urllib.parse.parse_qs(urllib.parse.urlsplit(data.get('raw_url','')).query).get('sign',[''])[0]
        if not sign:raise ValueError('OpenList 未返回下载签名，未公开文件。')
        return self.public+'/d'+urllib.parse.quote(path,safe='/')+'?'+urllib.parse.urlencode({'sign':sign})
    async def deliver(self,plugin,event,links):
        if not self.enabled:
            yield event.plain_result('本地下载功能尚未启用。');return
        if not self.root.is_dir():
            yield event.plain_result('本地下载目录未部署，请联系管理员。');return
        if not 1<=len(links)<=5:
            yield event.plain_result('本地下载每次最多选择5个文件，请重新发送链接并选择。');return
        if self.lock.locked():
            yield event.plain_result('已有本地下载任务正在进行，请稍后再试。');return
        async with self.lock:
            timeout=aiohttp.ClientTimeout(total=900,connect=30,sock_read=90)
            async with aiohttp.ClientSession(timeout=timeout,cookie_jar=aiohttp.DummyCookieJar(),auto_decompress=False) as session:
                auth=await self.api(session,'/api/auth/login',{'username':self.username,'password':self.password})
                token=auth['token'];bduss=plugin._get_bduss()
                for index,link in enumerate(links,1):
                    name=safe_name(link.get('name'));folder=self.root/uuid.uuid4().hex
                    folder.mkdir(mode=0o2750);os.chmod(folder,0o2750);target=folder/name
                    yield event.plain_result(f'⬇️ 本地下载 {index}/{len(links)}：{name}，完成后发送 OpenList 链接。')
                    try:
                        size=await fetch_file(session,link['dlink'],target,bduss,max_file=self.max_file,max_total=self.max_total,reserve=self.reserve,expected=int(link.get('size') or 0))
                        path=self.mount+'/'+folder.name+'/'+name
                        url=await self.signed_link(session,path,token)
                        yield event.plain_result(f'✅ {name} 已下载到服务器（{size/1024**2:.2f} MB）\nOpenList 下载链接（24小时有效）：\n{url}')
                    except asyncio.CancelledError:
                        if not target.exists():shutil.rmtree(folder,ignore_errors=True)
                        raise
                    except Exception as exc:
                        if not target.exists():shutil.rmtree(folder,ignore_errors=True)
                        message=str(exc) if isinstance(exc,ValueError) else '下载或签名链接生成失败，请稍后重试。'
                        yield event.plain_result('❌ '+name+'：'+message)
