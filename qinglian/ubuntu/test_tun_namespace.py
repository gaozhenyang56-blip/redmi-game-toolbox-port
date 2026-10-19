"""Run ONLY in an isolated root network namespace. Real TUN/IP rules/IPv4/IPv6;
resolved is a recording shim because the host system bus belongs to another namespace.
"""
import http.server
import json
import os
from pathlib import Path
import select
import socket
import subprocess
import sys
import tempfile
import threading
import time

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
import runtime
import tun
LIB=Path('/usr/lib/qinglian')

def ip(*args): return subprocess.check_output(['/usr/sbin/ip',*args],text=True).strip()

def child(work,fail):
    tun.ROOT=Path(work)
    real=tun.run
    def recording(*args,check=True):
        if args[0]=='/usr/bin/resolvectl':
            with (Path(work)/'dns-calls.jsonl').open('a') as out: out.write(json.dumps(args)+'\n')
            if fail and 'dns' in args: raise subprocess.CalledProcessError(1,args)
            return subprocess.CompletedProcess(args,0,'','')
        return real(*args,check=check)
    tun.run=recording
    original=Path.read_text
    Path.read_text=lambda p,*a,**kw:'nameserver 127.0.0.53' if str(p)=='/etc/resolv.conf' else original(p,*a,**kw)
    sys.argv=['qinglian-tun']
    try: code=tun.main()
    except Exception: code=1
    raise SystemExit(code)

class Origin(http.server.BaseHTTPRequestHandler):
    def log_message(self,*a): pass
    def do_GET(self):
        b=b'tun-real-ipv4-ipv6-fixture'; self.send_response(200); self.send_header('Content-Length',str(len(b))); self.end_headers(); self.wfile.write(b)

if len(sys.argv)>1 and sys.argv[1]=='helper': child(sys.argv[2],sys.argv[3]=='fail')

if __name__=='__main__':
    if os.geteuid()!=0: raise SystemExit('Run with sudo unshare --net; never on the host namespace')
    # Fail safe if a real non-loopback interface exists.
    links=json.loads(ip('-j','link','show'))
    assert [x['ifname'] for x in links]==['lo'], 'isolated namespace required'
    ip('link','set','lo','up')
    origin=http.server.ThreadingHTTPServer(('127.0.0.1',0),Origin); threading.Thread(target=origin.serve_forever,daemon=True).start()
    processes=[]
    with tempfile.TemporaryDirectory() as d:
        root=Path(d); runtime.ROOT=LIB
        # Public, local-only VMess fixture; production nodes retain verified TLS.
        uid='11111111-1111-4111-8111-111111111111'
        server={'log':{'loglevel':'none'},'inbounds':[{'listen':'127.0.0.1','port':24142,'protocol':'vmess','settings':{'clients':[{'id':uid}]}}],'outbounds':[{'protocol':'freedom','settings':{'redirect':'127.0.0.1:'+str(origin.server_port)}}]}
        runtime.save(root/'server.json',server)
        config=runtime.v2_config(dict(protocol='vmess',id=uid,add='127.0.0.1',port=24142),False)
        runtime.save(root/'client.json',config); runtime.save(root/'profile.json',{'url':'https://127.0.0.1/api/v1/profile'})
        try:
            for name in ('server','client'):
                p=subprocess.Popen([str(LIB/'v2ray'),'run','-c',str(root/(name+'.json'))],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL); processes.append(p)
            runtime.wait_port(10809,processes[-1],threading.Event())
            before4=ip('-4','-j','rule','show'); before6=ip('-6','-j','rule','show')
            for fail in (False,True):
                helper=subprocess.Popen(['/usr/bin/python3',str(HERE/'test_tun_namespace.py'),'helper',str(root),'fail' if fail else 'ok'],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,text=True)
                try:
                    if not fail:
                        assert select.select([helper.stdout],[],[],10)[0], 'helper ready timeout'
                        assert helper.stdout.readline().strip()=='READY', 'helper not ready'
                        for target in ('198.19.1.1','[2001:db8::123]'):
                            r=subprocess.run(['curl','-fsS','--max-time','5','--noproxy','*','http://'+target+':12345/'],capture_output=True)
                            assert r.returncode==0, r.stderr.decode()
                            assert r.stdout==b'tun-real-ipv4-ipv6-fixture'
                        # EOF simulates GUI owner exit, including a crash.
                        helper.stdin.close(); assert helper.wait(timeout=10)==0
                    else: assert helper.wait(timeout=10)!=0
                finally:
                    if helper.poll() is None: helper.terminate(); helper.wait(timeout=10)
                assert ip('-4','-j','rule','show')==before4
                assert ip('-6','-j','rule','show')==before6
                assert 'qltun0' not in ip('-j','link','show')
            calls=[json.loads(x) for x in (root/'dns-calls.jsonl').read_text().splitlines()]
            assert ['/usr/bin/resolvectl','domain','qltun0','~.'] in calls
            assert ['/usr/bin/resolvectl','revert','qltun0'] in calls
        finally:
            for p in reversed(processes): p.terminate(); p.wait(timeout=5)
            origin.shutdown(); origin.server_close()
    print('PASS: real TUN IPv4+IPv6 forwarding, GUI-EOF cleanup, partial DNS failure rollback. resolved calls recorded, not a live systemd-resolved DNS test.')
