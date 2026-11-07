#!/usr/bin/env python3
"""Create a fresh, allowlisted source tree, without original history or private assets."""
import argparse,json,re,shutil,subprocess
from pathlib import Path
INCLUDE=['app/','ubuntu/','windows/','selfhost/','scripts/','gradle/','third_party/','server/xui032/']
EXACT={'build.gradle','settings.gradle','gradle.properties','gradlew','gradlew.bat','LICENSE','.gitignore','server/export_engine.py','server/hy2_manager.py','server/diagnostics.py','server/NodeConfigCli.java','server/test_export_engine.py','server/test_hy2_manager.py','verification/RELEASE_CERT_SHA256','verification/release-certificate.der'}
SKIP={'ubuntu/live_smoke.py','ubuntu/prepare_release_assets.py','windows/live_smoke.py'}
PRIVATE={'node.json','profile.json','online.json','quota.json','telemetry.json','updates.json','api-ca.pem','release.jks','release.properties','server-selection.json'}
def main():
 p=argparse.ArgumentParser();p.add_argument('--output',required=True,type=Path);a=p.parse_args();project=Path(__file__).resolve().parents[1];repo=project.parent
 paths=subprocess.check_output(['git','ls-files','--cached','--others','--exclude-standard','-z','qinglian'],cwd=repo).decode().split('\0')
 target=a.output.resolve()
 if target==project or project in target.parents:raise SystemExit('输出目录必须独立于原项目')
 if target.exists() and any(target.iterdir()):raise SystemExit('输出目录必须为空，防止误覆盖')
 target.mkdir(parents=True,exist_ok=True);secrets=[]
 for f in (project/'app/src/main/assets').glob('*.json'):
  if f.name in PRIVATE:
   try:
    token=json.loads(f.read_text()).get('clientToken')
    if token:secrets.append(token.encode())
   except (ValueError,UnicodeError):pass
 count=0
 for item in sorted(set(paths)):
  if not item:continue
  relative=Path(item).relative_to('qinglian').as_posix();src=repo/item
  if not src.is_file() or not(relative in EXACT or any(relative.startswith(prefix) for prefix in INCLUDE)):continue
  if relative in SKIP or src.name in PRIVATE or any(x in Path(relative).parts for x in ['build','.cache','.deps','signing','resources','__pycache__']) and not relative.startswith('app/src/test/resources/'):continue
  if src.suffix.lower() in ['.jks','.keystore','.p12','.pfx','.key','.aar','.so','.deb','.exe','.zip']:continue
  data=src.read_bytes()
  if any(secret in data for secret in secrets):raise SystemExit('发现真实接入码，拒绝导出：'+relative)
  if re.search(rb'-----BEGIN (?:RSA |EC |OPENSSH |ENCRYPTED )?PRIVATE KEY-----\r?\n[A-Za-z0-9+/=\r\n]{30,}',data) and relative!='app/src/test/resources/tls-server-key.pem':raise SystemExit('发现非夹具私钥：'+relative)
  dest=target/'qinglian'/relative;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(src,dest);count+=1
 (target/'README.md').write_text((project/'selfhost/PUBLIC_README.md').read_text())
 shutil.copy2(project/'LICENSE',target/'LICENSE')
 workflows=target/'.github/workflows';workflows.mkdir(parents=True,exist_ok=True)
 for workflow in (project/'selfhost/workflows').glob('*.yml'):shutil.copy2(workflow,workflows/workflow.name)
 for platform in ['ubuntu','windows']:
  (target/'qinglian'/platform/'README.md').write_text('# 轻连 '+platform.title()+'\n\n支持关于页导入轻连面板服务器，或使用构建时内置默认。部署、构建和账号/隐私边界见 [自托管文档](../selfhost/README.md)。\n')
 (target/'qinglian/README.md').write_text('# 轻连 VPN\n\n三端源码与面板：[部署和构建文档](selfhost/README.md)。\n')
 (target/'.gitattributes').write_text('* text=auto\n*.bat text eol=crlf\n')
 (target/'.gitignore').write_text('dist/\n.cache/\nprivate/\n*.jks\n*.keystore\n*server.json\n*server-selection.json\n')
 print('已导出 '+str(count)+' 个源码文件；不含原Git历史、生产资产或管理凭据。')
if __name__=='__main__':main()
