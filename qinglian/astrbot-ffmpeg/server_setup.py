import json, os, pathlib, pwd, shutil, subprocess, tempfile

report = {'ok': False}
log_path = pathlib.Path('/var/log/astrbot-ffmpeg-setup.log')
def run(args, timeout=120, env=None):
    p = subprocess.run(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=timeout, env=env)
    if p.returncode:
        log_path.write_bytes(p.stdout + b'\n' + p.stderr)
        log_path.chmod(0o600)
        raise RuntimeError('Command failed; diagnostic saved privately')
    return p.stdout.decode(errors='replace')
try:
    assert os.geteuid() == 0
    service_path = '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
    pid = int(run(['systemctl','show','astrbot.service','-p','MainPID','--value']).strip() or 0)
    if pid:
        # Read only the PATH value; never publish the process environment.
        for item in pathlib.Path(f'/proc/{pid}/environ').read_bytes().split(b'\0'):
            if item.startswith(b'PATH='):
                service_path = item[5:].decode(); break
    report['installed_now'] = False
    if not all(shutil.which(name) for name in ['ffmpeg','ffprobe']):
        env = dict(os.environ, DEBIAN_FRONTEND='noninteractive', NEEDRESTART_MODE='l')
        run(['apt-get','-o','DPkg::Lock::Timeout=180','update','-qq'], timeout=300, env=env)
        run(['apt-get','-o','DPkg::Lock::Timeout=180','install','-y','--no-install-recommends','ffmpeg'], timeout=600, env=env)
        report['installed_now'] = True
    assert all(shutil.which(name, path=service_path) for name in ['ffmpeg','ffprobe']), 'FFmpeg not visible in AstrBot service PATH'
    env = dict(os.environ, PATH=service_path)
    prefix = ['runuser','-u','astrbot','--']
    report['ffmpeg_version'] = run(prefix+['ffmpeg','-version'],env=env).splitlines()[0]
    report['ffprobe_version'] = run(prefix+['ffprobe','-version'],env=env).splitlines()[0]
    user = pwd.getpwnam('astrbot')
    with tempfile.TemporaryDirectory(prefix='astrbot-ffmpeg-') as directory:
        os.chown(directory,user.pw_uid,user.pw_gid)
        base=pathlib.Path(directory);video=base/'sample.mp4';cover=base/'cover.jpg';audio=base/'audio.wav'
        run(prefix+['ffmpeg','-nostdin','-hide_banner','-loglevel','error','-f','lavfi','-i','testsrc2=size=160x96:rate=10','-f','lavfi','-i','sine=frequency=440:sample_rate=44100','-t','0.5','-c:v','libx264','-preset','ultrafast','-threads','1','-pix_fmt','yuv420p','-c:a','aac','-movflags','+faststart',str(video)],env=env)
        probe=json.loads(run(prefix+['ffprobe','-v','error','-show_entries','stream=codec_name,codec_type','-of','json',str(video)],env=env))
        assert {'h264','aac'} <= {s['codec_name'] for s in probe['streams']}
        run(prefix+['ffmpeg','-nostdin','-hide_banner','-loglevel','error','-i',str(video),'-frames:v','1','-threads','1',str(cover)],env=env)
        run(prefix+['ffmpeg','-nostdin','-hide_banner','-loglevel','error','-i',str(video),'-vn','-ar','16000','-ac','1',str(audio)],env=env)
        assert cover.stat().st_size > 0 and audio.stat().st_size > 0
        report['tests']={'astrbot_user_execution':True,'h264_aac_encoding':True,'ffprobe':True,'video_thumbnail':True,'audio_extraction':True}
    report['service'] = run(['systemctl','is-active','astrbot.service']).strip()
    report['ok'] = report['service'] == 'active'
except Exception as error:
    report['error_type'] = type(error).__name__
    report['private_log'] = str(log_path)
print(json.dumps(report, ensure_ascii=False))
