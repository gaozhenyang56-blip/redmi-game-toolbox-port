#!/usr/bin/env python3
"""Generate private build assets for all three clients from a panel bootstrap."""
import argparse,json,os,sys,urllib.parse
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'ubuntu'))
from server_config import loads

def generate(value,output):
 output=Path(output);output.mkdir(mode=0o700,parents=True,exist_ok=True)
 profile=dict(value['profile']);ca=profile.pop('caPem',None)
 if ca:profile['caAsset']='api-ca.pem'
 files={}
 for name,part in [('profile','profile'),('online','online'),('quota','quota'),('telemetry','heartbeat'),('updates','updates')]:
  cfg=dict(profile);cfg['url']=urllib.parse.urljoin(profile['url'],part)
  if 'cdnUrl' in profile:cfg['cdnUrl']=urllib.parse.urljoin(profile['cdnUrl'],part)
  files[name+'.json']=json.dumps(cfg,ensure_ascii=False,indent=2).encode()
 if ca:files['api-ca.pem']=ca.encode()
 for name,data in files.items():
  fd=os.open(output/name,os.O_WRONLY|os.O_CREAT|os.O_TRUNC,0o600)
  with os.fdopen(fd,'wb') as out:out.write(data)
 return sorted(files)
def main():
 p=argparse.ArgumentParser();p.add_argument('--server',required=True,type=Path);p.add_argument('--output',required=True,type=Path);a=p.parse_args()
 with a.server.open('rb') as source:value=loads(source.read(65537))
 generate(value,a.output);print('Generated private client assets for all platforms; do not commit them to Git.')
if __name__=='__main__':main()
