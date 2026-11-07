#!/usr/bin/env python3
"""Export a client bootstrap on your own server; never export administrator/private keys."""
import argparse,json,os,sqlite3,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'ubuntu'))
from server_config import validate

def export(config,ca,base_path='/',name='轻连面板'):
 profile={'url':f"https://{config['serverAddress']}:{config['tls']['port']}{base_path}api/v1/profile",'clientToken':config['clientToken'],'caPem':ca}
 if config['tls'].get('domainName'):profile['cdnUrl']='https://'+config['tls']['domainName']+base_path+'api/v1/profile'
 return validate({'schema':1,'kind':'qinglian-server','name':name,'profile':profile})
def main():
 p=argparse.ArgumentParser();p.add_argument('--config',type=Path,default=Path('/etc/x-ui/qinglian.json'));p.add_argument('--output',type=Path,required=True);p.add_argument('--name',default='轻连面板');a=p.parse_args()
 cfg=json.loads(a.config.read_text());ca=Path(cfg['tls']['certificate']).with_name('ca.pem').read_text()
 with sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True) as db:row=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone();base=row[0] if row else '/'
 value=export(cfg,ca,base,a.name);fd=os.open(a.output,os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600)
 with os.fdopen(fd,'w') as out:json.dump(value,out,ensure_ascii=False,indent=2)
 print('客户端配置已导出，请私下分发。')
if __name__=='__main__':main()
