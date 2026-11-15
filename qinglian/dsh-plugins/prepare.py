"""Prepare the approved archived release with prefix-aware browser requests."""
import re,subprocess,sys
from pathlib import Path
root=Path(sys.argv[1])
assert subprocess.check_output(['git','-C',str(root),'rev-parse','HEAD'],text=True).strip()=='033e6bd1e0f101352b39075ecd0d758ffef26b76'
p=root/'client.js';s=p.read_text()
old='new URL(p, window.location.origin).toString()'
assert s.count(old)==1
s=s.replace(old,'new URL(String(p).replace(/^\\/+/, ""), new URL("./", window.location.href)).toString()')
s,n=re.subn(r'fetch\((["\'])(/[^"\']*)\1',lambda m:'fetch(apiUrl('+m.group(1)+m.group(2)+m.group(1)+')',s)
assert n>=10
p.write_text(s)
subprocess.run(['node','--check',str(p)],check=True)
print('Browser request prefixes adapted:',n)
