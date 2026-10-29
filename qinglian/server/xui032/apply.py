#!/usr/bin/env python3
"""Apply the small, reviewable overlay to the exact public upstream commit, never to a running server."""
import argparse,shutil,subprocess
from pathlib import Path
BASE='f335c8d39a7191883b88aac56fbaf2a6f02656be'
p=argparse.ArgumentParser();p.add_argument('source',type=Path);args=p.parse_args();source=args.source.resolve()
head=subprocess.check_output(['git','-C',str(source),'rev-parse','HEAD'],text=True).strip()
if head!=BASE:raise SystemExit('Refusing unsupported upstream commit; inspect the installed version first.')
if subprocess.check_output(['git','-C',str(source),'status','--porcelain'],text=True).strip():raise SystemExit('Source tree must be clean.')
web=source/'web/web.go';text=web.read_text();needle='\ts.xui = controller.NewXUIController(g)'
if text.count(needle)!=1:raise SystemExit('Unexpected router layout')
text=text.replace(needle,needle+'\n\ts.qinglian = controller.NewQinglianController(g)')
def replace_once(text,needle,replacement):
    if text.count(needle)!=1:raise SystemExit('Unexpected server lifecycle layout')
    return text.replace(needle,replacement)
text=replace_once(text,'\txui    *controller.XUIController','\txui    *controller.XUIController\n\tqinglian *controller.QinglianController')
text=replace_once(text,'\t\ts.httpServer.Serve(listener)\n\t}()','\t\ts.httpServer.Serve(listener)\n\t}()\n\tif s.qinglian != nil { if err := s.qinglian.StartTLS(engine); err != nil { logger.Warning("Qinglian TLS API unavailable") } }')
text=replace_once(text,'\treturn common.Combine(err1, err2)','\tif s.qinglian != nil { s.qinglian.Close() }\n\treturn common.Combine(err1, err2)')
sider=source/'web/html/xui/common_sider.html';menu=sider.read_text();needle='<a-menu-item key="{{ .base_path }}xui/setting">'
if menu.count(needle)!=1:raise SystemExit('Unexpected menu layout')
menu=menu.replace(needle,'<a-menu-item key="{{ .base_path }}xui/qinglian"><a-icon type="laptop"></a-icon><span>轻连 App</span></a-menu-item>\n<a-menu-item key="{{ .base_path }}xui/qinglian/ssh"><a-icon type="code"></a-icon><span>SSH 终端</span></a-menu-item>\n'+needle)
mod=source/'go.mod';modules=mod.read_text();needle='require (\n'
if modules.count(needle)!=1:raise SystemExit('Unexpected dependency layout')
modules=modules.replace(needle,needle+'\tgithub.com/gorilla/websocket v1.5.3\n\tgithub.com/mattn/go-sqlite3 v1.14.5\n\tgolang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2\n')
for file in (Path(__file__).parent/'files').rglob('*'):
    if file.is_file():
        dest=source/file.relative_to(Path(__file__).parent/'files');dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(file,dest)
web.write_text(text);sider.write_text(menu);mod.write_text(modules)
with (source/'go.sum').open('a') as sums:
    sums.write('\ngithub.com/gorilla/websocket v1.5.3 h1:saDtZ6Pbx/0u+bgYQ3q96pZgCzfhKXGPqt7kZ72aNNg=\ngithub.com/gorilla/websocket v1.5.3/go.mod h1:YR8l580nyteQvAITg2hZ9XVh4b55+EU/adAjf1fMHhE=\n')
print('Overlay applied locally. Review, test and build before considering server deployment.')
