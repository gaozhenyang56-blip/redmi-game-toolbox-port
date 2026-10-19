#!/usr/bin/python3 -I
"""Root-only fixed-purpose helper. No user paths, commands, configs or node credentials."""
import fcntl
import ipaddress
import json
import os
from pathlib import Path
import select
import shutil
import signal
import subprocess
import sys
import urllib.parse

ROOT=Path('/usr/lib/qinglian')
TABLE='22042'
PREF_EXEMPT='11090'
PREF_TUN='11091'
IFACE='qltun0'

def run(*args,check=True):
    return subprocess.run(list(args),check=check,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,text=True,env={'PATH':'/usr/sbin:/usr/bin:/sbin:/bin','LANG':'C'})

def main():
    if os.geteuid()!=0 or len(sys.argv)!=1: return 1
    lock=os.open('/run/qinglian-tun.lock',os.O_WRONLY|os.O_CREAT|os.O_NOFOLLOW,0o600)
    fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
    config=json.loads((ROOT/'profile.json').read_text())
    server=str(ipaddress.IPv4Address(urllib.parse.urlsplit(config['url']).hostname))
    # Fixed server address also required for every panel-issued egress node (checked in GUI).
    for family in ('-4','-6'):
        rules=run('/usr/sbin/ip',family,'-j','rule','show')
        if any(str(x['priority']) in (PREF_EXEMPT,PREF_TUN) for x in json.loads(rules.stdout)): return 1
        if run('/usr/sbin/ip',family,'route','show','table',TABLE,check=False).stdout.strip(): return 1
    if run('/usr/sbin/ip','link','show',IFACE,check=False).returncode==0: return 1
    if run('/usr/bin/resolvectl','status',check=False).returncode: return 1
    # Avoid claiming DNS capture on a non-systemd-resolved setup.
    if '127.0.0.53' not in Path('/etc/resolv.conf').read_text(): return 1
    # Another TUN client must be disconnected explicitly by its owner.
    if any((p/'tun_flags').exists() for p in Path('/sys/class/net').iterdir()): return 1
    p=None; made=False; changed=[]
    def interrupted(*_): raise KeyboardInterrupt()
    signal.signal(signal.SIGTERM,interrupted); signal.signal(signal.SIGINT,interrupted)
    try:
        run('/usr/sbin/ip','tuntap','add','dev',IFACE,'mode','tun'); made=True
        run('/usr/sbin/ip','addr','add','198.18.42.1/30','dev',IFACE)
        run('/usr/sbin/ip','-6','addr','add','fdfe:42::1/126','dev',IFACE)
        run('/usr/sbin/ip','link','set',IFACE,'mtu','1500','up')
        p=subprocess.Popen([str(ROOT/'tun2socks'),'-device','tun://'+IFACE,'-proxy','socks5://127.0.0.1:10808','-mtu','1500','-loglevel','silent'],stdin=subprocess.DEVNULL,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,env={'PATH':'/usr/sbin:/usr/bin:/sbin:/bin'})
        for family in ('-4','-6'):
            run('/usr/sbin/ip',family,'route','add','default','dev',IFACE,'table',TABLE)
            if family=='-4':
                run('/usr/sbin/ip',family,'rule','add','pref',PREF_EXEMPT,'to',server+'/32','lookup','main'); changed.append((family,PREF_EXEMPT))
            run('/usr/sbin/ip',family,'rule','add','pref',PREF_TUN,'lookup',TABLE); changed.append((family,PREF_TUN))
        run('/usr/bin/resolvectl','dns',IFACE,'1.1.1.1','8.8.8.8')
        run('/usr/bin/resolvectl','domain',IFACE,'~.')
        run('/usr/bin/resolvectl','default-route',IFACE,'yes')
        run('/usr/bin/resolvectl','flush-caches')
        if p.poll() is not None: raise RuntimeError('TUN exited')
        print('READY',flush=True)
        while p.poll() is None:
            if select.select([sys.stdin.buffer],[],[],1)[0]:
                if not os.read(sys.stdin.fileno(),64): break
    finally:
        for family,priority in reversed(changed): run('/usr/sbin/ip',family,'rule','del','pref',priority,check=False)
        if p:
            p.terminate()
            try: p.wait(timeout=2)
            except subprocess.TimeoutExpired: p.kill(); p.wait()
        if made:
            run('/usr/bin/resolvectl','revert',IFACE,check=False)
            run('/usr/sbin/ip','link','delete',IFACE,check=False)
            for family in ('-4','-6'): run('/usr/sbin/ip',family,'route','flush','table',TABLE,check=False)
            run('/usr/bin/resolvectl','flush-caches',check=False)
    return 0

if __name__=='__main__':
    try: sys.exit(main())
    except (Exception,KeyboardInterrupt): sys.exit(1)
