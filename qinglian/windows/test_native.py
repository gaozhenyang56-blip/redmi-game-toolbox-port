"""Reuse the real five-protocol loopback fixture, with Windows lifecycle/configs."""
import importlib.util
import os
from pathlib import Path
import sys
import unittest
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).resolve().parent))
import client
resources=Path(os.environ['QINGLIAN_TEST_LIB'])
client.ROOT=resources; client.common.ROOT=resources
spec=importlib.util.spec_from_file_location('native_fixture',Path(__file__).resolve().parents[1]/'ubuntu/test_native.py')
fixture=importlib.util.module_from_spec(spec); spec.loader.exec_module(fixture)
assert (resources/'v2ray.exe').is_file()
fixture.NativeTests.__unittest_skip__=False
class NativeConnection(client.Connection):
    def start(self,accelerated,performance,rule,tun): super().start('hy2' if accelerated else 'compat',performance,rule,tun)
client.common.Connection=NativeConnection; fixture.runtime=client.common
original_popen=fixture.subprocess.Popen; original_wait=client.common.wait_port
def fixture_process(args,**kwargs):
    public=any(Path(str(value)).name in ('server.json','hyserver.json') for value in args)
    if public: kwargs.update(stdout=fixture.subprocess.PIPE,stderr=fixture.subprocess.STDOUT)
    process=original_popen(args,**kwargs); process._public_fixture=public
    return process
def wait_port(port,process,cancel):
    try: return original_wait(port,process,cancel)
    except Exception:
        if getattr(process,'_public_fixture',False) and process.poll() is not None:
            # These are generated loopback configurations with public fixture
            # passwords, never production profile or account log output.
            print('Public native fixture exit:',process.returncode,process.stdout.read(8192).decode('utf-8',errors='replace'))
        raise
if __name__=='__main__':
    with patch.object(fixture.subprocess,'Popen',fixture_process),patch.object(client.common,'wait_port',wait_port): unittest.main(module=fixture)
