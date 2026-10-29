"""Actual Chromium rendering, with fixture-only WebSocket and no live credentials."""
from pathlib import Path
import mimetypes
import os
import sys
import urllib.parse
from playwright.sync_api import sync_playwright

rendered=Path(sys.argv[1]).read_bytes();assets=Path(sys.argv[2]).resolve()
with sync_playwright() as runner:
    browser=runner.chromium.launch(executable_path=os.environ.get('QINGLIAN_CHROME','/usr/bin/chromium'),headless=True)
    page=browser.new_page(viewport={'width':1200,'height':900});errors=[];page.on('pageerror',lambda error:errors.append(str(error)))
    def route(request):
        parsed=urllib.parse.urlsplit(request.request.url)
        if parsed.hostname!='panel.test':request.abort();return
        if parsed.path=='/xui/qinglian/ssh':request.fulfill(status=200,body=rendered,content_type='text/html; charset=utf-8');return
        target=(assets/parsed.path.removeprefix('/assets/')).resolve()
        if parsed.path.startswith('/assets/') and assets in target.parents and target.is_file():request.fulfill(status=200,body=target.read_bytes(),content_type=mimetypes.guess_type(str(target))[0] or 'application/octet-stream')
        else:request.fulfill(status=404,body='fixture not found')
    page.route('**/*',route)
    page.add_init_script("""window.__sshFrames=[];window.WebSocket=class{static OPEN=1;constructor(url){window.__sshUrl=String(url);this.readyState=1;setTimeout(()=>this.onopen&&this.onopen(),0)}send(value){const msg=JSON.parse(value);window.__sshFrames.push(msg);if(msg.type==='auth')setTimeout(()=>this.onmessage&&this.onmessage({data:JSON.stringify({type:'ready'})}),0)}close(){this.readyState=3;if(this.onclose)this.onclose()}};""")
    page.goto('https://panel.test/xui/qinglian/ssh');page.wait_for_selector('#terminal .xterm')
    page.locator("input[placeholder='SSH 用户名']").fill('root')
    page.locator('input[type=password]').fill('public-ui-fixture')
    page.locator('.ssh-top button').nth(0).click();page.get_by_text('SSH 已连接当前服务器',exact=True).wait_for()
    assert page.locator('input[type=password]').input_value()==''
    assert page.evaluate('window.__sshUrl')=='wss://panel.test/xui/qinglian/ssh/ws'
    auth=page.evaluate('window.__sshFrames[0]');assert auth['type']=='auth' and auth['password']=='public-ui-fixture' and 'host' not in auth
    page.keyboard.type('pwd');page.wait_for_timeout(100)
    assert ''.join(page.evaluate("window.__sshFrames.filter(x=>x.type==='input').map(x=>x.data)"))=='pwd'
    page.set_viewport_size({'width':420,'height':850});page.wait_for_timeout(150)
    assert page.evaluate('document.documentElement.scrollWidth<=window.innerWidth+2')
    page.locator('.ssh-top button').nth(1).click();page.get_by_text('SSH 已断开',exact=True).wait_for()
    assert not errors,errors
    browser.close()
print('PASS: rendered SSH page, local xterm assets, password cleared, fixture WSS/input/resize/disconnect, desktop/mobile, zero JS errors; no live SSH credentials used.')
