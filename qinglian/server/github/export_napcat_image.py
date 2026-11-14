#!/usr/bin/env python3
"""Export the exact Docker image used by the installed NapCat container."""
import base64
import hashlib
import json
import os
import re
import secrets
import subprocess
import sys
import tarfile
import tempfile
from pathlib import Path

from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

from ssh_common import connection, remote_json

CHUNK_SIZE = 1024 * 1024
IMAGE_INFO = """
import json, subprocess
image = subprocess.check_output(
    ['docker', 'inspect', '--type', 'container', '--format', '{{.Image}}', 'napcat-astrbot'],
    stderr=subprocess.DEVNULL, text=True, timeout=20
).strip()
info = json.loads(subprocess.check_output(
    ['docker', 'image', 'inspect', image], stderr=subprocess.DEVNULL, timeout=20
))[0]
print(json.dumps(dict(id=image, os=info['Os'], architecture=info['Architecture'])))
"""


def export_image(client, image, archive_path):
    command = f"bash -o pipefail -c 'docker image save {image} 2>/dev/null | gzip -1 2>/dev/null'"
    stdin, stdout, _ = client.exec_command(command, timeout=180)
    stdin.close()
    with archive_path.open('wb') as output, stdout:
        for chunk in iter(lambda: stdout.read(CHUNK_SIZE), b''):
            output.write(chunk)
        if stdout.channel.recv_exit_status() != 0:
            raise RuntimeError('Docker image export failed')
    subprocess.run(['gzip', '-t', str(archive_path)], check=True)
    with tarfile.open(archive_path, 'r|gz') as archive:
        for entry in archive:
            if entry.name in ('manifest.json', './manifest.json'):
                config = json.load(archive.extractfile(entry))[0]['Config']
                if Path(config).stem != image.removeprefix('sha256:'):
                    raise ValueError('Exported image does not match the installed image')
                return
    raise ValueError('Docker image archive has no manifest')


def encrypt_image(source, destination, info):
    # Keep the existing Qinglian envelope format while streaming large images.
    public_key = serialization.load_pem_public_key(Path(__file__).with_name('backup-public.pem').read_bytes())
    key = secrets.token_bytes(32)
    nonce = secrets.token_bytes(12)
    encryptor = Cipher(algorithms.AES(key), modes.GCM(nonce)).encryptor()
    encryptor.authenticate_additional_data(b'Qinglian private transfer v1')
    wrapped_key = public_key.encrypt(
        key, padding.OAEP(mgf=padding.MGF1(hashes.SHA256()), algorithm=hashes.SHA256(), label=None)
    )

    plaintext_hash = hashlib.sha256()
    ciphertext_hash = hashlib.sha256()
    destination.mkdir()
    with source.open('rb') as plaintext, (destination / 'payload.enc').open('wb') as ciphertext:
        for chunk in iter(lambda: plaintext.read(CHUNK_SIZE), b''):
            plaintext_hash.update(chunk)
            encrypted = encryptor.update(chunk)
            ciphertext.write(encrypted)
            ciphertext_hash.update(encrypted)
        tail = encryptor.finalize() + encryptor.tag
        ciphertext.write(tail)
        ciphertext_hash.update(tail)
    envelope = {
        'version': 1,
        'nonce': base64.b64encode(nonce).decode(),
        'key': base64.b64encode(wrapped_key).decode(),
        'sha256': plaintext_hash.hexdigest(),
        'cipherSha256': ciphertext_hash.hexdigest(),
        'filename': 'napcat-image.tar.gz',
        'image': info,
    }
    (destination / 'envelope.json').write_text(json.dumps(envelope, indent=2) + '\n')


def main():
    os.umask(0o077)
    with tempfile.TemporaryDirectory() as temporary:
        archive_path = Path(temporary) / 'napcat-image.tar.gz'
        with connection() as client:
            info = remote_json(client, IMAGE_INFO)
            image = info['id']
            if not re.fullmatch(r'sha256:[a-f0-9]{64}', image):
                raise ValueError('Unexpected Docker image ID')
            print(f"Exporting {image} ({info['os']}/{info['architecture']}).", flush=True)
            export_image(client, image, archive_path)
        print(f'Verified Docker image archive ({archive_path.stat().st_size} bytes).', flush=True)
        encrypt_image(archive_path, Path('napcat-image-transfer'), info)


if __name__ == '__main__':
    try:
        main()
    except Exception as error:
        print(f'NapCat image export failed ({type(error).__name__}).', file=sys.stderr)
        sys.exit(1)
