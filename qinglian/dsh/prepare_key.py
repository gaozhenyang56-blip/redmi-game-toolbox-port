import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server'/'github'))
from ssh_common import connection,remote_json
with connection() as client:
 print(json.dumps(remote_json(client,r'''
import json,os,subprocess
from pathlib import Path
p=Path('/root/dsh-deployment-key.pem')
if not p.exists():
 subprocess.run(['openssl','genpkey','-algorithm','RSA','-pkeyopt','rsa_keygen_bits:3072','-out',str(p)],check=True,capture_output=True)
 p.chmod(0o600)
print(json.dumps({'deploymentPublicKey':subprocess.check_output(['openssl','pkey','-in',str(p),'-pubout'],text=True)}))
''')))
