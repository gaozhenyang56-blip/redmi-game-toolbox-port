#!/usr/bin/env python3
"""One-shot guarded x-ui HTTPS origin recovery. No node, config, key, or DB writes."""
import json
import sys
from pathlib import Path
from ssh_common import connection, remote_json

REMOTE = r'''
import json, os, re, socket, ssl, sqlite3, subprocess, time, urllib.request, urllib.error
from pathlib import Path

def command(args, timeout=12):
    try:
        return subprocess.run(args, capture_output=True, text=True, timeout=timeout)
    except (OSError, subprocess.TimeoutExpired):
        return None

def listeners():
    proc = command(['ss','-H','-lnt'])
    if not proc or proc.returncode != 0:
        return []
    found = set()
    for line in proc.stdout.splitlines():
        fields = line.split()
        if len(fields) >= 5:
            last = fields[3] if fields[3].rsplit(':',1)[-1].isdigit() else fields[4]
            found.add(last.rsplit(':',1)[-1])
    return sorted(int(x) for x in found if x.isdigit())

def tls_file_status(path):
    if not isinstance(path,str) or not path.startswith('/'):
        return {'configured': False}
    p=Path(path)
    try:
        return {'configured':True,'exists':p.exists(),'regularFile':p.is_file(),'readable':os.access(p,os.R_OK)}
    except OSError:
        return {'configured':True,'exists':False}

def classify_log():
    proc=command(['journalctl','-u','x-ui','-n','150','--no-pager','-o','cat'])
    if not proc or proc.returncode != 0:
        return {'available':False}
    kinds={
        'diskFull':r'no space left|ENOSPC',
        'tlsOrCertificate':r'certificate|x509|pem|tls|private.key|key pair|ssl',
        'permission':r'permission denied|EACCES',
        'addressInUse':r'address already in use|bind:|EADDRINUSE',
        'configuration':r'parse|unmarshal|invalid.config|configuration|bad json',
        'listenerOrStart':r'listen|server start|start server|fail|error|panic',
    }
    recent=proc.stdout[-40000:]
    return {'available':True,'categories':{name:len(re.findall(pattern,recent,re.I)) for name,pattern in kinds.items()}}

result={'scope':'x-ui-only','changes':[]}
cfgpath=Path('/etc/x-ui/qinglian.json')
dbpath=Path('/etc/x-ui/x-ui.db')
result['configPresent']=cfgpath.is_file()
result['databasePresent']=dbpath.is_file()
result['binaryPresent']=Path('/usr/local/x-ui/x-ui').is_file()
stat=os.statvfs('/')
result['rootFreeBytes']=stat.f_bavail*stat.f_frsize
active=command(['systemctl','is-active','x-ui'])
result['serviceBefore']=(active.stdout.strip() if active else 'unknown')
before=listeners()
result['tcpBefore']={str(p):p in before for p in (443,11452,11451)}
if cfgpath.is_file():
    try:
        cfg=json.loads(cfgpath.read_text())
        tls=cfg.get('tls',{})
        result['tlsConfiguration']={
            'apiPort':tls.get('port'),
            'httpsPort':tls.get('httpsPort'),
            'domainMatches':tls.get('domainName')=='gaozy.tech',
            'domainCertificate':tls_file_status(tls.get('domainCertificate')),
            'domainPrivateKey':tls_file_status(tls.get('domainPrivateKey')),
            'apiCertificate':tls_file_status(tls.get('certFile') or tls.get('serverCertificate')),
        }
    except (OSError,ValueError,TypeError):
        result['tlsConfiguration']={'readable':False}
result['logsBefore']=classify_log()
guard=result['configPresent'] and result['databasePresent'] and result['binaryPresent'] and result['rootFreeBytes'] >= 512*1024*1024
if guard and result['serviceBefore']=='active' and 443 not in before and 11452 not in before:
    restarted=command(['systemctl','restart','x-ui'],timeout=35)
    result['restartExitCode']=None if restarted is None else restarted.returncode
    result['changes'].append('systemctl restart x-ui')
    for _ in range(24):
        seen=listeners()
        if 443 in seen and 11452 in seen:
            break
        time.sleep(.5)
else:
    result['restartSkippedReason']='guardsNotMetOrListenersAlreadyPresent'
after=listeners()
result['tcpAfter']={str(p):p in after for p in (443,11452,11451)}
active=command(['systemctl','is-active','x-ui'])
result['serviceAfter']=(active.stdout.strip() if active else 'unknown')
result['logsAfter']=classify_log()
result['rootFreeBytesAfter']=os.statvfs('/').f_bavail*os.statvfs('/').f_frsize

# Validate public Cloudflare path, without credentials and with system CA.
if 443 in after:
    try:
        no_proxy=urllib.request.build_opener(urllib.request.ProxyHandler({}))
        with no_proxy.open('https://gaozy.tech/',timeout=12) as response:
            result['publicDomainStatus']=response.status
    except urllib.error.HTTPError as error:
        result['publicDomainStatus']=error.code
    except Exception as error:
        result['publicDomainErrorType']=type(error).__name__
print(json.dumps(result,sort_keys=True))
'''
try:
    with connection() as ssh:
        result=remote_json(ssh,REMOTE,timeout=100)
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
    if not (result.get('tcpAfter',{}).get('443') and result.get('tcpAfter',{}).get('11452')):
        print('ORIGIN_HTTPS_NOT_YET_RECOVERED',file=sys.stderr)
        raise SystemExit(2)
except Exception as error:
    print('Qinglian origin recovery diagnostic failed:',type(error).__name__,file=sys.stderr)
    raise SystemExit(1)
