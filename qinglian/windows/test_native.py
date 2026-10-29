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
original_spawn=client.common.spawn; original_stop=client.common.stop_process; original_config=client.common.v2_config
used_ports=set()
def unique_port():
    for _ in range(100):
        with fixture.socket.socket() as sock:
            sock.bind(('127.0.0.1',0)); value=sock.getsockname()[1]
        if value not in used_ports: used_ports.add(value); return value
    raise RuntimeError('Could not allocate unique fixture port')
fixture.port=unique_port
def diagnostic_config(*args):
    config=original_config(*args); config['log']={'loglevel':'debug'}; return config
def diagnostic_spawn(args,**kwargs):
    kwargs.update(stdout=fixture.subprocess.PIPE,stderr=fixture.subprocess.STDOUT)
    process=original_spawn(args,**kwargs); process._public_fixture=True; return process
def diagnostic_stop(process):
    original_stop(process)
    if process and getattr(process,'_public_fixture',False) and process.stdout:
        print('Public loopback fixture core output:',process.stdout.read(16384).decode('utf-8',errors='replace'))
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
    with patch.object(fixture.subprocess,'Popen',fixture_process),patch.object(client.common,'wait_port',wait_port),patch.object(client.common,'spawn',diagnostic_spawn),patch.object(client.common,'stop_process',diagnostic_stop),patch.object(client.common,'v2_config',diagnostic_config): unittest.main(module=fixture)
