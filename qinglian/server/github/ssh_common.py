import base64,contextlib,hashlib,os
from pathlib import Path
import paramiko

@contextlib.contextmanager
def connection():
    host=os.environ['QINGLIAN_SSH_HOST'];password=os.environ['QINGLIAN_SSH_PASSWORD']
    pin=Path(__file__).with_name('server-host-key.sha256').read_text().strip()
    class PinnedHost(paramiko.MissingHostKeyPolicy):
        def missing_host_key(self,client,hostname,key):
            fingerprint='SHA256:'+base64.b64encode(hashlib.sha256(key.asbytes()).digest()).decode().rstrip('=')
            if fingerprint!=pin:raise paramiko.SSHException('host key mismatch')
            client.get_host_keys().add(hostname,key.get_name(),key)
    client=paramiko.SSHClient();client.set_missing_host_key_policy(PinnedHost())
    client.connect(host,port=int(os.environ.get('QINGLIAN_SSH_PORT') or 22),username=os.environ.get('QINGLIAN_SSH_USER') or 'root',password=password,
                   look_for_keys=False,allow_agent=False,timeout=15,banner_timeout=15,auth_timeout=15)
    try:yield client
    finally:client.close()

def remote_json(client,script,timeout=120):
    import json
    _,out,err=client.exec_command("python3 - <<'QINGLIAN_SCRIPT'\n"+script+"\nQINGLIAN_SCRIPT",timeout=timeout)
    data=out.read(65536);status=out.channel.recv_exit_status()
    if status!=0:raise RuntimeError('remote operation failed; no private stderr published')
    return json.loads(data)

def encrypt_file(source,destination):
    import json,secrets
    from cryptography.hazmat.primitives import hashes,serialization
    from cryptography.hazmat.primitives.asymmetric import padding
    from cryptography.hazmat.primitives.ciphers.aead import AESGCM
    key=secrets.token_bytes(32);nonce=secrets.token_bytes(12);aad=b'Qinglian private transfer v1'
    plaintext=Path(source).read_bytes();ciphertext=AESGCM(key).encrypt(nonce,plaintext,aad)
    public=serialization.load_pem_public_key(Path(__file__).with_name('backup-public.pem').read_bytes())
    encrypted=public.encrypt(key,padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
    destination=Path(destination);destination.mkdir(parents=True,exist_ok=True)
    (destination/'payload.enc').write_bytes(ciphertext)
    (destination/'envelope.json').write_text(json.dumps({'version':1,'nonce':base64.b64encode(nonce).decode(),
        'key':base64.b64encode(encrypted).decode(),'sha256':hashlib.sha256(plaintext).hexdigest(),'cipherSha256':hashlib.sha256(ciphertext).hexdigest()}))
