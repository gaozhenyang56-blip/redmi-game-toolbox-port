#!/usr/bin/env python3
import argparse,subprocess,re
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('apk');p.add_argument('--apksigner',default='apksigner');p.add_argument('--expected-cert-sha256',help='Explicit signing fingerprint for your own distribution');a=p.parse_args()
r=subprocess.run([a.apksigner,'verify','--print-certs',a.apk],text=True,capture_output=True)
if r.returncode:raise SystemExit('APK signature verification failed')
fingerprints=re.findall(r'certificate SHA-256 digest:\s*([0-9a-fA-F]+)',r.stdout)
expected=a.expected_cert_sha256 or (Path(__file__).resolve().parents[1]/'verification/RELEASE_CERT_SHA256').read_text().strip()
if expected.lower() not in [x.lower() for x in fingerprints]:raise SystemExit('Release certificate mismatch: do not publish as an update')
print(('Distribution release signature verified: ' if a.expected_cert_sha256 else 'Original Qinglian release signature preserved: ')+expected)
