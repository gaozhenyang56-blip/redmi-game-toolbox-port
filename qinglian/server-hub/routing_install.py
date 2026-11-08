"""Run on the existing server after uploading a tested binary and hub sources."""
import hashlib,http.client,json,os,shutil,socket,sqlite3,ssl,subprocess,tempfile,time
from pathlib import Path

def run(*args):
    return subprocess.run(args,check=True,capture_output=True,text=True,timeout=45).stdout.strip()

def digest(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()

def database_state():
    with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:
        db.row_factory=sqlite3.Row
        settings=[list(r) for r in db.execute('SELECT key,value FROM settings ORDER BY id')]
        inbounds=[dict(r) for r in db.execute('SELECT * FROM inbounds ORDER BY id')]
    return settings,[{k:v for k,v in r.items() if k not in ('up','down')} for r in inbounds],{r['id']:(r['up'],r['down']) for r in inbounds}

class DomainConnection(http.client.HTTPSConnection):
    def connect(self):
        self.sock=self._context.wrap_socket(socket.create_connection(('127.0.0.1',443),10),server_hostname=self.host)

def request(path,body=None,cookie=None):
    connection=DomainConnection('gaozy.tech',timeout=10,context=ssl.create_default_context())
    headers={'Host':'gaozy.tech','Origin':'https://gaozy.tech','Content-Type':'application/json'}
    if cookie:headers['Cookie']=cookie
    connection.request('POST' if body is not None else 'GET',path,body=json.dumps(body) if body is not None else None,headers=headers)
    response=connection.getresponse();result=(response.status,dict(response.getheaders()),response.read());connection.close();return result

stage=Path('/opt/server-hub-update')
backup=None
changed=False
try:
    assert digest(stage/'x-ui')==EXPECTED_SHA
    cfg=json.loads(Path('/etc/x-ui/qinglian.json').read_text())
    assert cfg['tls']['domainName']=='gaozy.tech' and cfg['tls']['httpsPort']==443
    assert run('/usr/local/x-ui/x-ui','-v')=='0.3.2'
    assert run('systemctl','is-active','server-hub')=='active'
    old_config=json.loads(Path('/var/lib/server-hub/config.json').read_text())
    if old_config['port']!=9178:
        with socket.socket() as probe:probe.bind(('0.0.0.0',9178))
    before=database_state();config_sha=digest('/etc/x-ui/qinglian.json')
    unchanged_units=['astrbot','napcat-login','openlist-astrbot','openlist-progress','qinglian-exports','qinglian-hy2','qinglian-remote']
    identities={name:run('systemctl','show',name,'--property=MainPID,ActiveEnterTimestampMonotonic') for name in unchanged_units}
    backup=Path(tempfile.mkdtemp(prefix='server-hub-routing-',dir='/root'));backup.chmod(0o700)
    paths=['/usr/local/x-ui/x-ui','/var/lib/server-hub/config.json','/opt/server-hub/app.py','/opt/server-hub/collector.py','/opt/server-hub/static/index.html','/opt/server-hub/static/app.js','/opt/server-hub/static/style.css']
    paths += ['/etc/systemd/system/'+name for name in ('server-hub.service','server-hub-collector.service','server-hub-collector.timer')]
    for name in paths:
        source=Path(name);target=backup/source.relative_to('/');target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(source,target)
    # SQLite online snapshots stay in the root-only rollback directory.
    for source in (Path('/etc/x-ui/x-ui.db'),Path(cfg['statePath'])):
        target=backup/source.relative_to('/');target.parent.mkdir(parents=True,exist_ok=True)
        with sqlite3.connect('file:'+str(source)+'?mode=ro',uri=True) as db,sqlite3.connect(target) as destination:db.backup(destination)
        target.chmod(0o600)
    changed=True
    installed=subprocess.run(['/usr/bin/python3',str(stage/'server_install.py')],capture_output=True,text=True,timeout=180)
    assert installed.returncode==0 and json.loads(installed.stdout)['ok'],'Hub installation failed'
    run('systemctl','stop','x-ui')
    binary=Path('/usr/local/x-ui/x-ui');replacement=binary.with_name('.server-hub-routing-new')
    shutil.copyfile(stage/'x-ui',replacement);replacement.chmod(0o755);os.replace(replacement,binary)
    run('systemctl','start','x-ui')
    for attempt in range(30):
        try:
            code,headers,body=request('/panel/health')
            assert code==200 and json.loads(body)['service']=='server-hub'
            break
        except Exception:
            if attempt==29:raise
            time.sleep(1)
    assert request('/panel')[0:1]==(308,)
    assert request('/panel')[1]['Location']=='/panel/'
    code,_,body=request('/panel/');assert code==200 and '服务聚合面板' in body.decode()
    for path in ('/panel/app.js','/panel/style.css'):assert request(path)[0]==200
    assert request('/panel/api/status')[0]==401
    private=json.loads(Path('/opt/astrbot/data/config/astrbot_plugin_baidu_curl_config.json').read_text(encoding='utf-8-sig'))
    code,headers,body=request('/panel/api/login',{'username':private['openlist_user'],'password':private['openlist_pass']})
    assert code==200 and json.loads(body)['ok']
    assert 'Path=/panel/' in headers['Set-Cookie'] and '; Secure' in headers['Set-Cookie']
    cookie=headers['Set-Cookie'].split(';')[0]
    code,_,body=request('/panel/api/status',cookie=cookie);assert code==200 and json.loads(body)['read_only']
    code,headers,_=request('/panel/api/logout',{},cookie);assert code==200 and 'Max-Age=0' in headers['Set-Cookie']
    assert request('/')[0]==200
    import urllib.request,urllib.error
    api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=ssl.create_default_context(cafile='/etc/x-ui/qinglian/ca.pem')))
    base=before[0];settings=dict(base);prefix=settings.get('webBasePath','/')
    for port in (443,11452):
        address='https://127.0.0.1:'+str(port)+prefix
        with api.open(urllib.request.Request(address+'api/v1/quota',headers={'Authorization':'Bearer '+cfg['clientToken']}),timeout=10) as response:assert response.status==200
        try:api.open(address+'panel/',timeout=10);raise AssertionError('IP entry exposed hub')
        except urllib.error.HTTPError as error:assert error.code==404
    after=database_state();assert before[:2]==after[:2]
    assert all(after[2][key][i]>=values[i] for key,values in before[2].items() for i in (0,1))
    assert digest('/etc/x-ui/qinglian.json')==config_sha
    assert all(run('systemctl','show',name,'--property=MainPID,ActiveEnterTimestampMonotonic')==identity for name,identity in identities.items())
    if old_config['port']!=9178:
        with socket.socket() as probe:
            probe.settimeout(2);assert probe.connect_ex(('127.0.0.1',old_config['port']))!=0
    print(json.dumps({'ok':True,'port':9178,'url':'https://gaozy.tech/panel/','login_status_logout_verified':True,'assets_verified':True,'original_api_verified':True,'inbounds_and_counters_preserved':True,'other_services_unchanged':True,'backup':str(backup)}))
except Exception as error:
    restored=False
    if changed:
        try:
            run('systemctl','stop','server-hub','server-hub-collector.timer','x-ui')
            for name in paths:
                source=backup/Path(name).relative_to('/');shutil.copy2(source,name)
            run('systemctl','daemon-reload');run('systemctl','start','server-hub','server-hub-collector.timer','x-ui');restored=True
        except Exception:pass
    print(json.dumps({'ok':False,'rolled_back':restored,'error_type':type(error).__name__,'line':__import__('traceback').extract_tb(error.__traceback__)[-1].lineno}))
