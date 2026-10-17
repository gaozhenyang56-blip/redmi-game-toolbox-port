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
manifest={'version':'0.3.2','binarySha256':hashlib.sha256(Path('/usr/local/x-ui/x-ui').read_bytes()).hexdigest(),
 'databaseSha256':hashlib.sha256((root/'database-consistent.db').read_bytes()).hexdigest(),
 'restoreDatabase':'Use database-consistent.db only if required. Binary-only rollback preserves live counters.'}
(root/'manifest.json').write_text(json.dumps(manifest))
with tarfile.open(root/'server-backup.tar.gz','w:gz') as archive:
 for name in ['/usr/local/x-ui','/etc/x-ui','/etc/systemd/system/x-ui.service','/etc/systemd/system/x-ui.service.d','/etc/nginx','/etc/caddy']:
  if Path(name).exists():archive.add(name,arcname=name.lstrip('/'))
 archive.add(root/'database-consistent.db',arcname='database-consistent.db');archive.add(root/'manifest.json',arcname='manifest.json')
sha=hashlib.sha256((root/'server-backup.tar.gz').read_bytes()).hexdigest()
print(json.dumps({'directory':str(root),'sha256':sha}))
'''
try:
    with connection() as client:
        result=remote_json(client,script,timeout=300);directory=result['directory']
        if not directory.startswith('/tmp/qinglian-backup-') or '/' in directory[len('/tmp/'):]:raise ValueError('unexpected backup path')
        with client.open_sftp() as sftp,tempfile.TemporaryDirectory() as temp:
            local=Path(temp)/'server-backup.tar.gz'
            sftp.get(directory+'/server-backup.tar.gz',str(local))
            if hashlib.sha256(local.read_bytes()).hexdigest()!=result['sha256']:raise ValueError('backup transfer checksum mismatch')
            encrypt_file(local,Path('private-transfer'))
            for name in ['server-backup.tar.gz','database-consistent.db','manifest.json']:sftp.remove(directory+'/'+name)
            sftp.rmdir(directory)
    print('Consistent database, original binary, configuration and service backup encrypted successfully; no services changed.')
except Exception as failure:
    print('Backup failed:',type(failure).__name__,file=sys.stderr);raise SystemExit(1)
