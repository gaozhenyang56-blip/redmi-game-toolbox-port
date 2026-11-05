import json,os,pathlib,secrets,shutil,subprocess,time
root=pathlib.Path('/opt/napcat-login');staging=root/'session-update'
backup=root/('before-persistent-session-'+str(int(time.time())))
backup.mkdir(mode=0o700)
for name in ['portal.py','index.html']:shutil.copy2(root/name,backup/name)
result={'ok':False}
try:
    key=root/'session-signing.key'
    if not key.exists():
        fd=os.open(key,os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600)
        with os.fdopen(fd,'wb') as output:output.write(secrets.token_bytes(32))
    assert key.stat().st_size==32
    key.chmod(0o600)
    for name in ['portal.py','index.html']:
        destination=root/(name+'.session-new')
        shutil.copy2(staging/name,destination);destination.chmod(0o600);destination.replace(root/name)
    subprocess.run([str(root/'venv/bin/python'),'-m','py_compile',str(root/'portal.py')],check=True,capture_output=True)
    subprocess.run(['systemctl','restart','napcat-login'],check=True,capture_output=True)
    test=r'''
import importlib.util,json,urllib.request,urllib.error,time,subprocess
spec=importlib.util.spec_from_file_location('portal_check','/opt/napcat-login/portal.py')
m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
sid=m.sign_session();header={'Cookie':'napcat_session='+sid}
def request(path,headers=None,data=None):
    req=urllib.request.Request('http://127.0.0.1:6099'+path,headers=headers or {},data=data)
    try:
        with urllib.request.urlopen(req,timeout=20) as r:return r.status,r.read()
    except urllib.error.HTTPError as e:return e.code,e.read()
def ready():
    for _ in range(30):
        try:
            if request('/health')[0]==200:return
        except OSError:pass
        time.sleep(0.5)
    raise RuntimeError('Portal readiness timeout')
ready()
assert request('/api/status')[0]==401
assert request('/api/qr.png')[0]==401
status,body=request('/api/status',header);assert status==200
connected=json.loads(body).get('isLogin')
subprocess.run(['systemctl','restart','napcat-login'],check=True,capture_output=True)
ready()
assert request('/api/status',header)[0]==200
assert request('/api/login',{'Content-Type':'application/json'},json.dumps({'username':'invalid-session-test','password':'invalid-session-test'}).encode())[0]==401
print(json.dumps({'ok':True,'unauthenticated_denied':True,'qr_protected':True,'same_cookie_after_restart':True,'wrong_password_denied':True,'qq_logged_in':connected,'persistent_signing_key':True}))
'''
    p=subprocess.run([str(root/'venv/bin/python'),'-c',test],capture_output=True,text=True,timeout=100)
    if p.returncode:
        (root/'session-update-private-error.log').write_text(p.stdout+'\n'+p.stderr);(root/'session-update-private-error.log').chmod(0o600)
        raise RuntimeError('Verification failed')
    result=json.loads(p.stdout)
except Exception as error:
    for name in ['portal.py','index.html']:shutil.copy2(backup/name,root/name)
    subprocess.run(['systemctl','restart','napcat-login'],capture_output=True)
    result={'ok':False,'rolled_back':True,'error_type':type(error).__name__}
print(json.dumps(result,ensure_ascii=False))
