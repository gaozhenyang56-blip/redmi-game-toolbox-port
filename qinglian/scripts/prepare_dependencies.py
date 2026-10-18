#!/usr/bin/env python3
"""Fetch pinned public upstream binaries and prepare ARM64 dependencies. Never reads private config."""
from pathlib import Path
import argparse, hashlib, urllib.request, zipfile, os
ROOT=Path(__file__).resolve().parents[1]
AAR_URL='https://github.com/2dust/AndroidLibV2rayLite/releases/download/v5.54.2/libv2ray.aar'
APK_URL='https://github.com/2dust/v2rayNG/releases/download/1.9.46/v2rayNG_1.9.46_arm64-v8a.apk'
AAR_SHA='16e8e34554dee086f3748898232f60bc96ae3229229892b21a8b7fcb4612f211'
APK_SHA='249c6d95d1377992520b07c640c35d2844404645238a2ba6e1206e3b65fcfe9d'
HY_URL='https://github.com/apernet/hysteria/releases/download/app%2Fv2.13.0/hysteria-android-arm64'
HY_SHA='13d5b85cd45e11cf02847dc2b6229d6f9a20b3cb87a00b9356cf244e3bd8db84'
TUN_SHA='0a4f55221fce660527afbcc07ff93a34f4df61b903967595a92a48ada13e21a4'

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def fetch(url,path,expected):
    if path.exists() and sha(path)==expected:return
    path.parent.mkdir(parents=True,exist_ok=True)
    tmp=path.with_suffix(path.suffix+'.download')
    try:
        with urllib.request.urlopen(url,timeout=180) as response,tmp.open('wb') as out:
            while chunk:=response.read(1024*1024):out.write(chunk)
        if sha(tmp)!=expected:raise SystemExit('Upstream checksum mismatch: '+path.name)
        tmp.replace(path)
    finally:
        if tmp.exists():tmp.unlink()
def main():
    args=argparse.ArgumentParser();args.add_argument('--cache-dir',type=Path,default=ROOT/'.deps');cache=args.parse_args().cache_dir
    aar=cache/'libv2ray-original.aar';apk=cache/'v2rayNG-upstream.apk';fetch(AAR_URL,aar,AAR_SHA);fetch(APK_URL,apk,APK_SHA)
    out=ROOT/'app/libs/libv2ray.aar';out.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(aar) as src,zipfile.ZipFile(out,'w',zipfile.ZIP_DEFLATED) as dst:
        for item in src.infolist():
            if item.filename.startswith('assets/') or item.filename.startswith('jni/') and not item.filename.startswith('jni/arm64-v8a/'):continue
            dst.writestr(item,src.read(item.filename))
    tun=ROOT/'app/src/main/jniLibs/arm64-v8a/libtun2socks.so';tun.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(apk) as z:tun.write_bytes(z.read('lib/arm64-v8a/libtun2socks.so'))
    if sha(tun)!=TUN_SHA:raise SystemExit('tun2socks checksum mismatch')
    hy=cache/'hysteria-android-arm64';fetch(HY_URL,hy,HY_SHA)
    (tun.parent/'libhysteria.so').write_bytes(hy.read_bytes())
    routing=cache/'v2ray-routing.zip';fetch('https://github.com/v2fly/v2ray-core/releases/download/v5.54.2/v2ray-linux-64.zip',routing,'595f22e9f56936c8f4c471b3e81a9fe35d356dae9342fd71d1caf8dc99ac8378')
    assets=ROOT/'app/src/main/assets';assets.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(routing) as z:
        for output,source,digest in [('geoip.dat','geoip-only-cn-private.dat','bc7297903da14f6d725caafbf903e5a90026b9368f3d9f9ddbc7fd6f6dd1f1b0'),('geosite.dat','geosite.dat','df277aa430bb3d67d5d7c960dd6816e4c271616000a7900486b903091d39b393')]:
            data=z.read(source)
            if hashlib.sha256(data).hexdigest()!=digest:raise SystemExit('Routing database checksum mismatch')
            (assets/output).write_bytes(data)
    print('ARM64 core and tun2socks prepared; pinned upstream SHA-256 verified.')
if __name__=='__main__':main()
