import json,os,secrets,shutil,socket,subprocess,time,urllib.request,hashlib
from pathlib import Path

stage='preflight'
root=Path('/opt/napcat-stack');root.mkdir(mode=0o700,exist_ok=True)
def run(args,timeout=240):
    p=subprocess.run(args,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=timeout)
    if p.returncode:
        log=root/'last-install-error.log';log.write_bytes(p.stdout);log.chmod(0o600)
        raise RuntimeError('command failed; private log saved')
    return p.stdout.decode(errors='replace')
try:
    for port in [6099,16099,6199]:
        with socket.socket() as s:
            if s.connect_ex(('127.0.0.1',port))==0:
                if not (root/'managed.json').exists():raise RuntimeError('requested port is occupied')
    stage='docker-install'
    if not shutil.which('docker'):
        run(['apt-get','update'],300)
        run(['apt-get','install','-y','docker.io','python3-venv'],600)
    run(['systemctl','enable','--now','docker'])
    stage='image-pull'
    if not (root/'managed.json').exists():
        run(['docker','pull','mlikiowa/napcat-docker:latest'],900)
    info=json.loads(run(['docker','image','inspect','mlikiowa/napcat-docker:latest']))[0]
    image=(info.get('RepoDigests') or [info['Id']])[0]
    stage='configuration'
    for directory in ['qq','config','plugins']:(root/directory).mkdir(exist_ok=True)
    tokenfile=root/'onebot-token'
    if not tokenfile.exists():tokenfile.write_text(secrets.token_urlsafe(32));tokenfile.chmod(0o600)
    token=tokenfile.read_text().strip()
    webui=root/'config/webui.json'
    if not webui.exists():
        webui.write_text(json.dumps({'host':'127.0.0.1','port':16099,'token':secrets.token_urlsafe(32),'loginRate':5}));webui.chmod(0o600)
    onebot={'network':{'httpServers':[],'httpClients':[],'websocketServers':[],'websocketClients':[{'name':'astrbot','enable':True,'url':'ws://127.0.0.1:6199/ws','messagePostFormat':'array','reportSelfMessage':False,'reconnectInterval':5000,'token':token,'debug':False,'heartInterval':30000}]},'musicSignUrl':'','enableLocalFile2Url':False,'parseMultMsg':False}
    p=root/'config/onebot11.json'
    if not p.exists():p.write_text(json.dumps(onebot));p.chmod(0o600)
    # Only add this adapter, preserving model/provider/persona and official QQ settings.
    configpath=Path('/opt/astrbot/data/cmd_config.json')
    cfg=json.loads(configpath.read_text(encoding='utf-8-sig'))
    backup=configpath.with_name('cmd_config.before-napcat.json')
    if not backup.exists():shutil.copy2(configpath,backup);backup.chmod(0o600)
    bots=cfg.setdefault('platform',[])
    bot={'id':'napcat-onebot','type':'aiocqhttp','enable':True,'ws_reverse_host':'127.0.0.1','ws_reverse_port':6199,'ws_reverse_token':token}
    if not any(x.get('id')=='napcat-onebot' for x in bots):
        run(['systemctl','stop','astrbot'])
        bots.append(bot)
        tmp=configpath.with_suffix('.json.napcat-tmp');tmp.write_text(json.dumps(cfg,ensure_ascii=False,indent=2));tmp.chmod(0o600);shutil.chown(tmp,user='astrbot',group='astrbot');tmp.replace(configpath)
        run(['systemctl','start','astrbot'])
    stage='container'
    existing=subprocess.run(['docker','container','inspect','napcat-astrbot'],capture_output=True)
    if existing.returncode==0:
        old=json.loads(existing.stdout)[0]
        assert old['Config'].get('Labels',{}).get('managed-by')=='qinglian-napcat','container name conflict'
        run(['docker','start','napcat-astrbot'])
    else:
        run(['docker','run','-d','--name','napcat-astrbot','--label','managed-by=qinglian-napcat','--restart','unless-stopped','--network','host','--hostname','qq-bot','--memory','1024m','--pids-limit','512','--log-driver','json-file','--log-opt','max-size=10m','--log-opt','max-file=3','-e','NAPCAT_UID=0','-e','NAPCAT_GID=0','-v',str(root/'qq')+':/app/.config/QQ','-v',str(root/'config')+':/app/napcat/config','-v',str(root/'plugins')+':/app/napcat/plugins',image],120)
    stage='portal'
    if not Path('/opt/napcat-login/venv/bin/python').exists():
        run(['python3','-m','venv','/opt/napcat-login/venv'])
    run(['/opt/napcat-login/venv/bin/python','-m','pip','install','--disable-pip-version-check','aiohttp>=3.12,<4','qrcode>=8,<9','pillow>=11,<13'],240)
    service='''[Unit]
Description=Authenticated NapCat QQ login portal
After=network.target docker.service astrbot.service
[Service]
WorkingDirectory=/opt/napcat-login
ExecStart=/opt/napcat-login/venv/bin/python /opt/napcat-login/portal.py
Restart=on-failure
RestartSec=5
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=strict
ProtectHome=true
RestrictAddressFamilies=AF_INET AF_INET6 AF_UNIX
[Install]
WantedBy=multi-user.target
'''
    Path('/etc/systemd/system/napcat-login.service').write_text(service)
    run(['systemctl','daemon-reload']);run(['systemctl','enable','napcat-login']);run(['systemctl','restart','napcat-login'])
    if shutil.which('ufw'):
        out=run(['ufw','status'])
        if 'Status: active' in out:run(['ufw','allow','6099/tcp','comment','NapCat authenticated QR login'])
    stage='readiness'
    ready=False
    for _ in range(90):
        try:
            with urllib.request.urlopen('http://127.0.0.1:6099/health',timeout=3) as r:portal=r.status==200
            with urllib.request.urlopen('http://127.0.0.1:16099/webui/',timeout=3) as r:napcat=r.status==200
            if portal and napcat:ready=True;break
        except Exception:pass
        time.sleep(2)
    if not ready:raise RuntimeError('readiness timeout')
    metadata={'image':image,'portal_port':6099,'napcat_bind':'127.0.0.1:16099','onebot_bind':'127.0.0.1:6199','login_pending':True,'persistent_data':True}
    (root/'managed.json').write_text(json.dumps(metadata,indent=2))
    result={'ok':True,**metadata,'astrbot':run(['systemctl','is-active','astrbot']).strip(),'portal':run(['systemctl','is-active','napcat-login']).strip(),'container':json.loads(run(['docker','inspect','napcat-astrbot']))[0]['State']['Status']}
    print(json.dumps(result))
except Exception as exc:
    print(json.dumps({'ok':False,'stage':stage,'error_type':type(exc).__name__,'private_log':'/opt/napcat-stack/last-install-error.log'}))
