import hashlib,json,os,pathlib,pwd,shutil,subprocess,time,traceback
result={'ok':False};renamed=False;created=False
name='napcat-astrbot';backup=name+'-before-media-'+str(int(time.time()))
base=pathlib.Path('/opt/astrbot/data/plugin_data');old_dir=base/'astrbot_plugin_listen_music';new_dir=base/'astrbot_plugin_bili_player';media=new_dir/'media'
def run(args,timeout=60):
    p=subprocess.run(args,capture_output=True,timeout=timeout)
    if p.returncode:raise RuntimeError('command failed')
    return p.stdout.decode()
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
        config=old['Config'];host=old['HostConfig']
        args=['docker','create','--name',name,'--network',host['NetworkMode']]
        if config.get('Hostname'):args+=['--hostname',config['Hostname']]
        restart=host.get('RestartPolicy',{}).get('Name')
        if restart and restart!='no':args+=['--restart',restart]
        for key,flag in [('Memory','--memory'),('MemorySwap','--memory-swap'),('PidsLimit','--pids-limit'),('CpuShares','--cpu-shares')]:
            if host.get(key):args+=[flag,str(host[key])]
        if host.get('NanoCpus'):args+=['--cpus',str(host['NanoCpus']/1e9)]
        if host.get('CpusetCpus'):args+=['--cpuset-cpus',host['CpusetCpus']]
        for value in config.get('Env') or []:args+=['--env',value]
        for key,value in (config.get('Labels') or {}).items():args+=['--label',key+'='+value]
        for value in host.get('Binds') or []:args+=['--volume',value]
        args+=['--volume',str(media)+':'+str(media)+':ro']
        if config.get('User'):args+=['--user',config['User']]
        if config.get('WorkingDir'):args+=['--workdir',config['WorkingDir']]
        if config.get('Tty'):args+=['--tty']
        if config.get('OpenStdin'):args+=['--interactive']
        for value in host.get('CapAdd') or []:args+=['--cap-add',value]
        for value in host.get('CapDrop') or []:args+=['--cap-drop',value]
        for value in host.get('SecurityOpt') or []:args+=['--security-opt',value]
        if host.get('Privileged'):args+=['--privileged']
        if host.get('ReadonlyRootfs'):args+=['--read-only']
        logging=host.get('LogConfig',{})
        if logging.get('Type'):args+=['--log-driver',logging['Type']]
        for key,value in logging.get('Config',{}).items():args+=['--log-opt',key+'='+value]
        entry=config.get('Entrypoint') or []
        if entry:args+=['--entrypoint',entry[0]]
        args += [old['Image']] + entry[1:] + (config.get('Cmd') or [])
        run(['docker','stop','--time','20',name],timeout=40)
        run(['docker','rename',name,backup]);renamed=True
        run(args);created=True
        run(['docker','start',name])
    for _ in range(40):
        try:
            run(['docker','exec',name,'/bin/sh','-c','test -r /etc/os-release'],timeout=5);break
        except Exception:time.sleep(1)
    probe=media/'napcat-mount-probe.txt';probe.write_bytes(b'napcat-media-read-check\n');probe.chmod(0o600);os.chown(probe,account.pw_uid,account.pw_gid)
    try:
        expected=hashlib.sha256(probe.read_bytes()).hexdigest()
        actual=run(['docker','exec',name,'sha256sum',str(probe)]).split()[0]
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
    result.update(ok=False,rolled_back=renamed,error_type=type(error).__name__,trace=[{'function':f.name,'line':f.lineno} for f in traceback.extract_tb(error.__traceback__)])
print(json.dumps(result))
