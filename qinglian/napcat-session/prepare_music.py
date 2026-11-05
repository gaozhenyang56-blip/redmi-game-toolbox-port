import copy,hashlib,http.client,json,os,pathlib,pwd,shutil,socket,subprocess,time
result={'ok':False};renamed=False;created=False
name='napcat-astrbot';backup=name+'-before-media-'+str(int(time.time()))
base=pathlib.Path('/opt/astrbot/data/plugin_data');old_dir=base/'astrbot_plugin_listen_music';new_dir=base/'astrbot_plugin_bili_player';media=new_dir/'media'
def run(args,timeout=60):
    p=subprocess.run(args,capture_output=True,timeout=timeout)
    if p.returncode:raise RuntimeError('command failed')
    return p.stdout.decode()
class Docker(http.client.HTTPConnection):
    def __init__(self):super().__init__('localhost',timeout=60)
    def connect(self):
        self.sock=socket.socket(socket.AF_UNIX,socket.SOCK_STREAM);self.sock.connect('/var/run/docker.sock')
def api(method,path,body=None):
    c=Docker();data=json.dumps(body).encode() if body is not None else None
    c.request(method,path,body=data,headers={'Content-Type':'application/json'})
    r=c.getresponse();b=r.read();c.close()
    if r.status>=300:raise RuntimeError('Docker API HTTP '+str(r.status))
    return json.loads(b) if b else {}
try:
    account=pwd.getpwnam('astrbot')
    new_dir.mkdir(mode=0o750,exist_ok=True);media.mkdir(mode=0o750,exist_ok=True)
    for d in [new_dir,media]:os.chown(d,account.pw_uid,account.pw_gid)
    src=old_dir/'accounts.json';dst=new_dir/'accounts.json'
    if src.exists() and not dst.exists():
        shutil.copy2(src,dst);dst.chmod(0o600);os.chown(dst,account.pw_uid,account.pw_gid)
    result['account_preserved']=dst.exists()
    old=json.loads(run(['docker','inspect',name]))[0]
    result['prior_state']={'running':old['State']['Running'],'oom_killed':old['State'].get('OOMKilled'),'restarts':old.get('RestartCount')}
    mounted=next((m for m in old['Mounts'] if m['Destination']==str(media)),None)
    if mounted:
        assert mounted['Source']==str(media) and not mounted['RW']
    else:
        config=copy.deepcopy(old['Config']);config['Image']=old['Image']
        host=copy.deepcopy(old['HostConfig']);host.setdefault('Binds',[]).append(str(media)+':'+str(media)+':ro')
        config['HostConfig']=host
        run(['docker','stop','--time','20',name],timeout=40)
        run(['docker','rename',name,backup]);renamed=True
        api('POST','/containers/create?name='+name,config);created=True
        run(['docker','start',name])
    for _ in range(40):
        try:
            run(['docker','exec',name,'node','--version'],timeout=5);break
        except Exception:time.sleep(1)
    probe=media/'napcat-mount-probe.txt';probe.write_bytes(b'napcat-media-read-check\n');probe.chmod(0o600);os.chown(probe,account.pw_uid,account.pw_gid)
    try:
        expected=hashlib.sha256(probe.read_bytes()).hexdigest()
        actual=run(['docker','exec',name,'node','-e',"const fs=require('fs'),c=require('crypto');process.stdout.write(c.createHash('sha256').update(fs.readFileSync(process.argv[1])).digest('hex'))",str(probe)]).strip()
        assert actual==expected
    finally:probe.unlink(missing_ok=True)
    current=json.loads(run(['docker','inspect',name]))[0]
    assert current['HostConfig']['NetworkMode']=='host'
    assert next(m for m in current['Mounts'] if m['Destination']==str(media))['RW'] is False
    result.update(ok=True,shared_media_readable=True,read_only_mount=True,image_preserved=current['Image']==old['Image'],container_recreated=renamed)
except Exception as error:
    if renamed:
        if created:subprocess.run(['docker','rm','-f',name],capture_output=True)
        subprocess.run(['docker','rename',backup,name],capture_output=True)
        subprocess.run(['docker','start',name],capture_output=True)
    result.update(ok=False,rolled_back=renamed,error_type=type(error).__name__)
print(json.dumps(result))
