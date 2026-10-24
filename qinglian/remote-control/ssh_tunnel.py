#!/usr/bin/env python3
"""Reuse Qinglian SSH host/port/user and its committed server fingerprint."""
import argparse
import base64
import hashlib
import os
from pathlib import Path
import subprocess
import tempfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('mode', choices=['agent', 'client'])
    parser.add_argument('--pin-file', type=Path, default=Path(__file__).parents[1] / 'server/github/server-host-key.sha256')
    args = parser.parse_args()
    host = os.environ.get('QINGLIAN_SSH_HOST', '')
    user = os.environ.get('QINGLIAN_SSH_USER', 'root') or 'root'
    port = os.environ.get('QINGLIAN_SSH_PORT', '22') or '22'
    if not host or host.startswith('-') or not port.isdecimal() or not user or user.startswith('-'):
        parser.error('请配置 QINGLIAN_SSH_HOST，可选 QINGLIAN_SSH_USER / QINGLIAN_SSH_PORT')
    pin = args.pin_file.read_text().strip()
    scan = subprocess.run(['ssh-keyscan', '-T', '10', '-p', port, host], capture_output=True, timeout=35)
    verified = []
    for line in scan.stdout.decode().splitlines():
        fields = line.split()
        if len(fields) != 3 or line.startswith('#'):
            continue
        try:
            fingerprint = 'SHA256:' + base64.b64encode(hashlib.sha256(base64.b64decode(fields[2])).digest()).decode().rstrip('=')
        except ValueError:
            continue
        if fingerprint == pin:
            verified.append(line)
    if not verified:
        parser.exit(1, '服务器主机密钥不匹配或不可达，拒绝连接。\n')
    with tempfile.TemporaryDirectory(prefix='qinglian-ssh-') as directory:
        known = Path(directory) / 'known_hosts'
        known.write_text('\n'.join(verified) + '\n')
        forward = ['-R', '127.0.0.1:18765:127.0.0.1:8765'] if args.mode == 'agent' else ['-L', '127.0.0.1:8765:127.0.0.1:18765']
        result = subprocess.run(['ssh', '-N', '-T', '-p', port, '-l', user,
            '-o', 'StrictHostKeyChecking=yes', '-o', 'UserKnownHostsFile='+str(known),
            '-o', 'ExitOnForwardFailure=yes', '-o', 'ServerAliveInterval=20', '-o', 'ServerAliveCountMax=3',
            *forward, host])
        raise SystemExit(result.returncode)


if __name__ == '__main__':
    main()
