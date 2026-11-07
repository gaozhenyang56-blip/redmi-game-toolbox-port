#!/usr/bin/env python3
"""Build the pinned x-ui overlay and a portable installation bundle. No SSH/secrets."""
import argparse,hashlib,os,shutil,subprocess,tempfile,urllib.request,zipfile
from pathlib import Path
BASE='f335c8d39a7191883b88aac56fbaf2a6f02656be'
PINS={
 'xray.zip':('https://github.com/XTLS/Xray-core/releases/download/v1.4.2/Xray-linux-64.zip','46ac5e708ccb01df75661ca5da1f0d8343fbafbd2c0734957b5b1635903f7c88'),
 'hysteria':('https://github.com/apernet/hysteria/releases/download/app%2Fv2.13.0/hysteria-linux-amd64','907ba8c9693edb104b20582681fb7dc15639d5b64a9cbb616a7b539190a86691')}
def fetch(name,cache):
 url,sha=PINS[name];p=cache/name
 if not p.exists() or hashlib.sha256(p.read_bytes()).hexdigest()!=sha:
  tmp=p.with_suffix('.download')
  with urllib.request.urlopen(url,timeout=180) as r,tmp.open('wb') as out:shutil.copyfileobj(r,out)
  if hashlib.sha256(tmp.read_bytes()).hexdigest()!=sha:tmp.unlink();raise ValueError('上游哈希不匹配')
  tmp.replace(p)
 return p

def main():
 p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);p.add_argument('--cache',type=Path,default=Path('.cache/qinglian-selfhost'));a=p.parse_args();a.output.mkdir(parents=True,exist_ok=True);a.cache.mkdir(parents=True,exist_ok=True)
 project=Path(__file__).resolve().parents[1]
 if subprocess.check_output(['go','version'],text=True).split()[2]!='go1.23.12':raise SystemExit('请使用 Go 1.23.12，以匹配锁定的面板构建工具链')
 with tempfile.TemporaryDirectory() as temp:
  src=Path(temp)/'x-ui';subprocess.run(['git','clone','--depth','1','--branch','0.3.2','https://github.com/vaxilu/x-ui.git',str(src)],check=True)
  assert subprocess.check_output(['git','-C',str(src),'rev-parse','HEAD'],text=True).strip()==BASE
  subprocess.run(['python3',str(project/'server/xui032/apply.py'),str(src)],check=True)
  subprocess.run(['go','test','-race','./web/controller','./web'],cwd=src,check=True)
  subprocess.run(['go','build','-trimpath','-o',str(a.output.resolve()/'x-ui'),'.'],cwd=src,check=True)
  with zipfile.ZipFile(fetch('xray.zip',a.cache)) as z:
   (a.output/'XRAY-LICENSE.txt').write_bytes(z.read('LICENSE'))
   (a.output/'XRAY-README.md').write_bytes(z.read('README.md'))
   for name in ['xray','geoip.dat','geosite.dat']:
    if name in z.namelist():(a.output/('xray-linux-amd64' if name=='xray' else name)).write_bytes(z.read(name))
  shutil.copy2(fetch('hysteria',a.cache),a.output/'hysteria')
  for name in ['x-ui','xray-linux-amd64','hysteria']:(a.output/name).chmod(0o755)
  for name in ['export_engine.py','hy2_manager.py','diagnostics.py']:shutil.copy2(project/'server'/name,a.output/name)
  for name in ['install.py','export_server.py']:shutil.copy2(Path(__file__).with_name(name),a.output/name)
  shutil.copy2(project/'scripts/embed_server.py',a.output/'embed_server.py')
  shutil.copy2(project/'ubuntu/server_config.py',a.output/'server_config.py')
  shutil.copy2(Path(__file__).with_name('README.md'),a.output/'README.md')
  shutil.copy2(project/'LICENSE',a.output/'QINGLIAN-LICENSE')
  for license_file in (project/'app/src/main/assets/licenses').glob('HYSTERIA-*.txt'):shutil.copy2(license_file,a.output/license_file.name)
  for path in src.glob('LICENSE*'):shutil.copy2(path,a.output/('XUI-'+path.name))
  (a.output/'SHA256SUMS').write_text(''.join(hashlib.sha256(f.read_bytes()).hexdigest()+'  '+f.name+'\n' for f in sorted(a.output.iterdir()) if f.is_file() and f.name!='SHA256SUMS'))
 print('面板安装包已构建。请在目标服务器运行 install.py；未连接或修改任何服务器。')
if __name__=='__main__':main()
