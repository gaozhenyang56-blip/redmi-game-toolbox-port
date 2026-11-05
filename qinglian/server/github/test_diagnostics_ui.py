"""Chromium panel diagnostics fixture: no server, credentials or VPN traffic."""
import json,mimetypes,os,sys,urllib.parse
from pathlib import Path
from playwright.sync_api import sync_playwright
rendered=Path(sys.argv[1]).read_bytes();assets=Path(sys.argv[2]).resolve()
with sync_playwright() as p:
 browser=p.chromium.launch(executable_path=os.environ.get('QINGLIAN_CHROME','/usr/bin/chromium'),headless=True)
 page=browser.new_page(viewport={'width':1200,'height':900});errors=[];page.on('pageerror',lambda e:errors.append(str(e)));state={'phase':0,'posts':[]}
 def route(r):
  path=urllib.parse.urlsplit(r.request.url).path
  if urllib.parse.urlsplit(r.request.url).hostname!='panel.test':r.abort();return
  if path=='/xui/qinglian/manage/diagnostics':r.fulfill(status=200,body=rendered,content_type='text/html; charset=utf-8');return
  if path=='/xui/qinglian/diagnostics':
   if r.request.method=='POST':state['posts'].append(r.request.post_data_json);state['phase']=1;value={'id':'a'*32,'running':True}
   elif state['phase']==1:state['phase']=2;value={'id':'a'*32,'running':True}
   elif state['phase']==2:value={'id':'a'*32,'running':False,'result':{'ok':True,'testGuestStopped':True,'steps':[{'key':'compatibility','status':'passed','code':'OK','durationMs':40,'bytes':1024}]}}
   else:value={'running':False,'result':None}
   r.fulfill(status=202 if r.request.method=='POST' else 200,json=value);return
  target=(assets/path.removeprefix('/assets/')).resolve()
  if path.startswith('/assets/') and assets in target.parents and target.is_file():r.fulfill(status=200,body=target.read_bytes(),content_type=mimetypes.guess_type(str(target))[0] or 'application/octet-stream')
  else:r.fulfill(status=404,body='fixture not found')
 page.route('**/*',route);page.goto('https://panel.test/xui/qinglian/manage/diagnostics')
 page.get_by_text('尚未测试',exact=True).wait_for();page.get_by_role('button',name='开始测试').click()
 page.get_by_text('全部测试通过',exact=True).wait_for();page.get_by_text('临时测试连接已停止',exact=True).wait_for()
 assert state['posts']==[{'mode':'all'}];assert page.get_by_role('cell',name='1024',exact=True).count()==1
 page.set_viewport_size({'width':420,'height':850});page.wait_for_timeout(150)
 assert page.evaluate('document.documentElement.scrollWidth<=window.innerWidth+2')
 assert not errors,errors
 browser.close()
print('PASS: diagnostic page renders, start and poll complete, native-byte result table, mobile containment, zero JS errors; fixture only.')
