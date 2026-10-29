"""Run unchanged shared TLS/CDN/probe regressions on Windows, excluding Linux TUN."""
import importlib.util
from pathlib import Path
import sys
import types
import unittest
if sys.platform=='win32':
    # Ubuntu's test module imports its TUN fixture unconditionally. None of the
    # selected transport tests executes or mocks a Windows TUN implementation.
    sys.modules['tun']=types.ModuleType('unused_linux_tun_fixture')
spec=importlib.util.spec_from_file_location('transport_fixture',Path(__file__).resolve().parents[1]/'ubuntu/test_runtime.py')
fixture=importlib.util.module_from_spec(spec); spec.loader.exec_module(fixture)
names=[name for name in dir(fixture.RuntimeTests) if name.startswith(('test_api_','test_cdn_','test_proxy_verification','test_real_api','test_real_probe','test_safe_connection'))]
assert len(names)>=10
if __name__=='__main__':
    result=unittest.TextTestRunner(verbosity=2).run(unittest.TestSuite(fixture.RuntimeTests(name) for name in names))
    raise SystemExit(0 if result.wasSuccessful() else 1)
