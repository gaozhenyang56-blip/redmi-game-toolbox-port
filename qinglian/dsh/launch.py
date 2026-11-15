"""Keep the native DSH launch credential local; let systemd manage the process."""
import logging
from logging.handlers import RotatingFileHandler
import os,re,signal,subprocess,sys
from pathlib import Path
home=Path('/var/lib/dsh')
log=logging.getLogger('dsh');log.setLevel(logging.INFO)
log.addHandler(RotatingFileHandler(home/'runtime.log',maxBytes=2*1024**2,backupCount=2))
child=subprocess.Popen(['/opt/dsh/node/bin/node','/opt/dsh/runtime/node_modules/@deepseek-ai/dsh/lib/bin.js',
 'web','--host','127.0.0.1','--port','3080','--no-open',
 '--public-url','https://gaozy.tech/dsh/','--trusted-host','gaozy.tech'],
 stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,bufsize=1)
def stop(*args):
 if child.poll() is None:child.terminate()
signal.signal(signal.SIGTERM,stop);signal.signal(signal.SIGINT,stop)
for line in child.stdout:
 clean=re.sub(r'\x1b\[[0-9;]*m','',line)
 match=re.search(r'https://gaozy\.tech/dsh/\?[^\s]+',clean)
 if match:
  temp=home/'entry-url.tmp';temp.write_text(match.group(0));temp.chmod(0o600);temp.replace(home/'entry-url.txt')
 log.info(clean.rstrip())
sys.exit(child.wait())
