"""Exercise the real one-file helper replacing a copied windowless Qt package."""
import json,os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time

def main(app,archive):
    with tempfile.TemporaryDirectory(prefix='qinglian-update-check-') as directory:
        root=Path(directory);target=root/'portable';state=root/'user/Qinglian';child=None
        shutil.copytree(Path(app).parent,target)
        (target/'unins000.exe').write_bytes(b'public-uninstaller-preservation-fixture')
        environment=dict(os.environ,LOCALAPPDATA=str(root/'user'),QINGLIAN_CI_WINDOWS='1')
        parent=subprocess.Popen([str(target/'Qinglian.exe'),'--update-fixture',str(Path(archive).resolve())],env=environment)
        try:
            deadline=time.monotonic()+150;result=state/'update-result.json'
            while not result.exists():
                if time.monotonic()>deadline:
                    jobs=list((state/'updates').glob('[0-9a-f]'*32)) if (state/'updates').exists() else []
                    phases=[{'plan':(job/'plan.json').exists(),'waiting':(job/'waiting').exists(),'ready':(job/'ready').exists()} for job in jobs]
                    raise AssertionError('Packaged update timed out; parentExit='+str(parent.poll())+' phases='+json.dumps(phases))
                time.sleep(.2)
            value=json.loads(result.read_text());assert value.get('ok'), 'Packaged update rolled back'
            pid=value['pid'];assert isinstance(pid,int) and pid>0
            child=subprocess.Popen(['powershell.exe','-NoProfile','-NonInteractive','-Command','Stop-Process -Id '+str(pid)+' -Force -ErrorAction Stop'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL);assert child.wait(timeout=10)==0
            assert parent.wait(timeout=10)==0
            assert (target/'unins000.exe').read_bytes()==b'public-uninstaller-preservation-fixture'
            assert json.loads((target/'_internal/resources/build-info.json').read_text())['version']==value['version']
            print('PASS packaged GUI -> standalone helper -> verified ZIP replacement -> new GUI check-in; portable/install uninstaller preserved')
        finally:
            if parent.poll() is None:parent.terminate();parent.wait(timeout=10)
            # Windows may retain the exited Qt image for a short interval.
            time.sleep(1)
if __name__=='__main__':main(sys.argv[1],sys.argv[2])
