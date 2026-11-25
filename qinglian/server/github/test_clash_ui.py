"""Use bundled assets in Chromium. No subscription sent to external QR services."""
import json,mimetypes,os,sys,urllib.parse
from pathlib import Path
from playwright.sync_api import sync_playwright
rendered=Path(sys.argv[1]).read_bytes();assets=Path(sys.argv[2]).resolve()
with sync_playwright() as p:
 browser=p.chromium.launch(executable_path=os.environ.get('QINGLIAN_CHROME','/usr/bin/chromium'),headless=True)
 page=browser.new_page(viewport={'width':1200,'height':950});errors=[];page.on('pageerror',lambda e:errors.append(str(e)))
 state={'subs':[],'posts':[],'deletes':[]};link='https://panel.test/api/v1/clash/sub/'+'a'*32+'?token='+'b'*64
 def route(r):
  u=urllib.parse.urlsplit(r.request.url);path=u.path
  if u.hostname!='panel.test':raise AssertionError('Unexpected external request')
  if path=='/xui/qinglian/clash':r.fulfill(status=200,body=rendered,content_type='text/html; charset=utf-8');return
  if path=='/xui/qinglian/clash/links':
   if r.request.method=='POST':
    assert r.request.headers['content-type'].startswith('application/json');body=r.request.post_data_json;state['posts'].append(body)
    state['subs']=[{'id':'a'*32,'name':body['name'],'flavor':body['flavor']}];value={'id':'a'*32,'url':link,'count':2,'skipped':['节点 2：传统 Clash 不支持 VLESS，请选择 Mihomo']}
   else:value={'nodes':[{'id':1,'name':'节点 1','protocol':'vmess','available':True},{'id':2,'name':'节点 2','protocol':'vless','available':True}], 'subscriptions':state['subs'],'domainReady':True}
   r.fulfill(status=200,json=value);return
  if path.startswith('/xui/qinglian/clash/links/') and r.request.method=='DELETE':state['deletes'].append(path);state['subs']=[];r.fulfill(status=200,json={'ok':True});return
  target=(assets/path.removeprefix('/assets/')).resolve()
  if path.startswith('/assets/') and assets in target.parents and target.is_file():r.fulfill(status=200,body=target.read_bytes(),content_type=mimetypes.guess_type(str(target))[0] or 'application/octet-stream')
  else:r.fulfill(status=404,body='fixture not found')
 page.route('**/*',route);page.goto('https://panel.test/xui/qinglian/clash?auto=1&inbound=1')
 page.get_by_text('订阅已生成',exact=True).wait_for()
 assert state['posts']==[{'name':'我的订阅','flavor':'clash','inbounds':[1],'hy2':False}]
 assert page.locator('#subscription-url').input_value()==link
 assert page.evaluate('app.qr.value')==link
 assert page.locator('#subscription-qr').evaluate('(c)=>c.getContext("2d").getImageData(0,0,c.width,c.height).data.some((v,i)=>i%4===0&&v===0)')
 page.locator('#subscription-qr').screenshot(path=str(Path(sys.argv[1]).with_suffix('.qr.png')))
 page.get_by_text('Mihomo / Clash Meta',exact=True).click();page.get_by_text('包含所选节点绑定的 HY2 加速通道',exact=True).click()
 page.get_by_role('button',name='生成链接与二维码').click();page.wait_for_function('app.result && !app.busy')
 assert state['posts'][-1]['hy2'] and state['posts'][-1]['flavor']=='mihomo'
 page.get_by_role('button',name='撤销链接',exact=True).click();page.locator('.ant-popover').get_by_role('button').last.click();page.wait_for_function('!app.busy && app.subscriptions.length===0')
 assert state['deletes'];assert page.locator('#subscription-url').count()==0
 for width in (390,768):
  page.set_viewport_size({'width':width,'height':850});page.wait_for_timeout(200)
  assert page.evaluate('document.documentElement.scrollWidth<=innerWidth+2')
 assert not errors,errors
 browser.close()
print('PASS: one-click scoped JSON creation, Mihomo/HY2 selection, exact local QR payload, revoke, mobile containment, no external requests or JS errors.')
