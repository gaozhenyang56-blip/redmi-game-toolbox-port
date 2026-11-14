#!/usr/bin/env python3
"""Copy the running NapCat installation over pinned SSH and encrypt it."""
import hashlib
import os
import sys
import tarfile
import tempfile
from pathlib import Path

from ssh_common import connection, encrypt_file, remote_json

REMOTE_BACKUP = r'''
import hashlib
import io
import json
import os
import subprocess
import tarfile
from datetime import datetime, timezone
from pathlib import Path

os.umask(0o077)
stack = Path('/opt/napcat-stack')
portal = Path('/opt/napcat-login')
service = Path('/etc/systemd/system/napcat-login.service')
for path in (stack / 'qq', stack / 'config', stack / 'plugins', portal, service):
    if not path.exists():
        raise FileNotFoundError('Required NapCat files are missing')

container = json.loads(subprocess.check_output(
    ['docker', 'inspect', 'napcat-astrbot'], stderr=subprocess.DEVNULL, timeout=20
))[0]
manifest = {
    'created_at_utc': datetime.now(timezone.utc).isoformat(),
    'consistency': 'live file backup; services were left running',
    'container': container,
    'excluded': ['opt/napcat-login/venv', 'Unix sockets and other special files'],
}

def include(member):
    if member.name == 'opt/napcat-login/venv':
        return None
    if member.isfile() or member.isdir() or member.issym() or member.islnk():
        return member
    return None

archive_path = Path(backup_dir) / 'napcat.tar.gz'
with tarfile.open(archive_path, 'w:gz', compresslevel=3) as archive:
    for path in (stack, portal, service):
        archive.add(path, arcname=str(path).lstrip('/'), filter=include)
    data = json.dumps(manifest, indent=2).encode()
    entry = tarfile.TarInfo('napcat-backup-manifest.json')
    entry.mode = 0o600
    entry.size = len(data)
    archive.addfile(entry, io.BytesIO(data))

digest = hashlib.sha256()
with archive_path.open('rb') as stream:
    for block in iter(lambda: stream.read(1024 * 1024), b''):
        digest.update(block)
print(json.dumps({'sha256': digest.hexdigest()}))
'''


def transfer(client, directory, local):
    wrapper = (
        "import json\n"
        f"backup_dir = {directory!r}\n"
        "try:\n"
        f"    exec(compile({REMOTE_BACKUP!r}, 'napcat-backup', 'exec'))\n"
        "except Exception as error:\n"
        "    print(json.dumps({'error': type(error).__name__}))\n"
    )
    result = remote_json(client, wrapper, timeout=600)
    if 'error' in result:
        print(f"Server archive failed ({result['error']}).", file=sys.stderr)
        raise RuntimeError('Server archive failed')
    with client.open_sftp() as sftp:
        sftp.get_channel().settimeout(120)
        sftp.get(f'{directory}/napcat.tar.gz', str(local))
    with local.open('rb') as stream:
        if hashlib.file_digest(stream, 'sha256').hexdigest() != result['sha256']:
            raise ValueError('SSH transfer checksum mismatch')
    with tarfile.open(local, 'r:gz') as archive:
        for name in ('opt/napcat-stack/qq', 'opt/napcat-stack/config',
                     'opt/napcat-stack/plugins', 'opt/napcat-login/portal.py',
                     'etc/systemd/system/napcat-login.service',
                     'napcat-backup-manifest.json'):
            archive.getmember(name)


def main():
    os.umask(0o077)
    with tempfile.TemporaryDirectory() as temporary, connection() as client:
        local = Path(temporary) / 'napcat.tar.gz'
        directory = remote_json(
            client,
            "import json,tempfile; print(json.dumps(tempfile.mkdtemp("
            "prefix='qinglian-napcat-backup-', dir='/tmp')))"
        )
        path = Path(directory)
        if path.parent != Path('/tmp') or not path.name.startswith('qinglian-napcat-backup-'):
            raise ValueError('Unexpected SSH staging directory')
        try:
            transfer(client, directory, local)
        finally:
            remote_json(client, f'import shutil; shutil.rmtree({directory!r}); print("true")')
        encrypt_file(local, Path('private-transfer'))
    print('Verified NapCat backup archive and encrypted it for upload.')


if __name__ == '__main__':
    try:
        main()
    except Exception as error:
        print(f'NapCat backup failed ({type(error).__name__}).', file=sys.stderr)
        sys.exit(1)
