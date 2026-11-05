#!/usr/bin/env python3
"""Pinned SSH backup. Artifact contains only authenticated ciphertext; no deployment here."""
import hashlib,os,sys,tempfile
from pathlib import Path
from ssh_common import connection,remote_json,encrypt_file
os.umask(0o077)
script=r'''
import hashlib,json,os,sqlite3,subprocess,tarfile,tempfile
from pathlib import Path
os.umask(0o077)
assert subprocess.check_output(['/usr/local/x-ui/x-ui','-v'],text=True).strip()=='0.3.2'
assert Path('/etc/x-ui/x-ui.db').is_file()
root=Path(tempfile.mkdtemp(prefix='qinglian-backup-'))
source=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);target=sqlite3.connect(root/'database-consistent.db')
source.backup(target);target.close();source.close()
device_path=None
config=Path('/etc/x-ui/qinglian.json')
if config.is_file():
 cfg=json.loads(config.read_text());device_path=cfg.get('statePath','/etc/x-ui/qinglian/devices.sqlite3')
 if Path(device_path).is_file():
  source=sqlite3.connect('file:'+device_path+'?mode=ro',uri=True);target=sqlite3.connect(root/'devices-consistent.db');source.backup(target);target.close();source.close()
manifest={'deviceDatabase':device_path,'restoreDevices':'Use devices-consistent.db when restoring App state; raw WAL copies are not the consistency snapshot.','version':'0.3.2','binarySha256':hashlib.sha256(Path('/usr/local/x-ui/x-ui').read_bytes()).hexdigest(),
 'databaseSha256':hashlib.sha256((root/'database-consistent.db').read_bytes()).hexdigest(),
 'restoreDatabase':'Use database-consistent.db only if required. Binary-only rollback preserves live counters.'}
(root/'manifest.json').write_text(json.dumps(manifest))
live_databases={'/etc/x-ui/x-ui.db',device_path}
def add_stable(archive,name):
 path=Path(name)
 if str(path) in live_databases or str(path).endswith(('-wal','-shm','-journal')):return
 archive.add(path,arcname=str(path).lstrip('/'),recursive=False)
 if path.is_dir() and not path.is_symlink():
  for child in sorted(path.iterdir()):add_stable(archive,str(child))
with tarfile.open(root/'server-backup.tar.gz','w:gz',compresslevel=1) as archive:
 for name in ['/usr/local/x-ui','/etc/x-ui','/etc/systemd/system/x-ui.service','/etc/systemd/system/x-ui.service.d','/usr/local/lib/qinglian','/etc/systemd/system/qinglian-hy2.service','/etc/systemd/system/qinglian-exports.service','/etc/nginx','/etc/caddy','/etc/letsencrypt']:
  if Path(name).exists():add_stable(archive,name)
 if (root/'devices-consistent.db').is_file():archive.add(root/'devices-consistent.db',arcname='devices-consistent.db')
 archive.add(root/'database-consistent.db',arcname='database-consistent.db');archive.add(root/'manifest.json',arcname='manifest.json')
sha=hashlib.sha256((root/'server-backup.tar.gz').read_bytes()).hexdigest()
print(json.dumps({'directory':str(root),'sha256':sha}))
'''
try:
    with connection() as client:
        wrapped="import json,traceback\ntry:\n exec(compile("+repr(script)+",'server-backup','exec'))\nexcept Exception as error:\n print(json.dumps({'backupError':type(error).__name__,'line':traceback.extract_tb(error.__traceback__)[-1].lineno}))"
        result=remote_json(client,wrapped,timeout=600)
        if 'backupError' in result:
            print('Safe backup diagnostic:',result);raise RuntimeError('consistent backup failed')
        directory=result['directory']
        if not directory.startswith('/tmp/qinglian-backup-') or '/' in directory[len('/tmp/'):]:raise ValueError('unexpected backup path')
        with client.open_sftp() as sftp,tempfile.TemporaryDirectory() as temp:
            local=Path(temp)/'server-backup.tar.gz'
            sftp.get(directory+'/server-backup.tar.gz',str(local))
            if hashlib.sha256(local.read_bytes()).hexdigest()!=result['sha256']:raise ValueError('backup transfer checksum mismatch')
            encrypt_file(local,Path('private-transfer'))
            for name in sftp.listdir(directory):sftp.remove(directory+'/'+name)
            sftp.rmdir(directory)
    print('Consistent database, original binary, configuration and service backup encrypted successfully; no services changed.')
except Exception as failure:
    print('Backup failed:',type(failure).__name__,file=sys.stderr);raise SystemExit(1)
