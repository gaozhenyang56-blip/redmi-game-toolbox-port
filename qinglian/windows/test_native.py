"""Reuse the real five-protocol loopback fixture, with Windows lifecycle/configs."""
import importlib.util
import os
from pathlib import Path
import sys
import unittest
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
if __name__=='__main__': unittest.main(module=fixture)
