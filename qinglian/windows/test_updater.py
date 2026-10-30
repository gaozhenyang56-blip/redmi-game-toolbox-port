import hashlib,json,os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import zipfile
import updater

def fixture(root,version='1.0.0-preview5',extra=None):
    path=Path(root)/'fixture.zip';native=b'fixture-native'
    with zipfile.ZipFile(path,'w') as z:
        z.writestr('Qinglian/Qinglian.exe',b'MZfixture')
        z.writestr('Qinglian/_internal/resources/build-info.json',json.dumps({'version':version,'architecture':'x64','sha256':{'native.exe':hashlib.sha256(native).hexdigest()}}))
        z.writestr('Qinglian/_internal/resources/native.exe',native)
        if extra:z.writestr(extra,b'invalid')
    return path,{'version':version,'sha256':updater.digest(path),'size':path.stat().st_size}
class Updates(unittest.TestCase):
    def test_manifest_rejects_code_and_unbounded_values(self):
        base={'schema':1,'revision':4,'ui':dict(updater.DEFAULT_UI),'package':None}
        self.assertEqual(updater.manifest(base),base)
        for ui in ({**base['ui'],'script':'x'},{**base['ui'],'accent':'url(x)'},{**base['ui'],'notice':'x'*301},{**base['ui'],'material':1}):
            with self.assertRaises(ValueError):updater.manifest({**base,'ui':ui})
        for version in ('../../run','https://other/','1.0.0-preview0','1.0.0-preview0005'):
            with self.assertRaises(ValueError):updater.version_number(version)
    def test_archive_hash_version_and_paths(self):
        with tempfile.TemporaryDirectory() as d:
            path,package=fixture(d);self.assertEqual(updater.inspect_archive(path,package),package)
            with self.assertRaises(ValueError):updater.inspect_archive(path,{**package,'sha256':'0'*64})
            with self.assertRaises(ValueError):updater.inspect_archive(path,{**package,'version':'1.0.0-preview6'})
            for name in ('Qinglian/../escape','Qinglian/_internal/CON.txt','Qinglian/_internal/x:stream','Qinglian/_internal/x.','Qinglian/extra.exe','/escape','Qinglian/_internal/../../escape'):
                path,package=fixture(d,extra=name)
                with self.assertRaises(ValueError):updater.inspect_archive(path,package)
    def test_replacement_preserves_uninstaller_and_rollback(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);target=root/'installed';stage=root/'new';backup=root/'backup'
            for folder,data in ((target,b'old'),(stage,b'new')):
                (folder/'_internal').mkdir(parents=True);(folder/'Qinglian.exe').write_bytes(data);(folder/'_internal/data').write_bytes(data)
            (target/'unins000.exe').write_bytes(b'keep')
            moved,installed=updater.swap_payload(target,stage,backup)
            self.assertEqual((target/'Qinglian.exe').read_bytes(),b'new');self.assertEqual((target/'unins000.exe').read_bytes(),b'keep')
            updater.restore_payload(target,backup,moved,installed)
            self.assertEqual((target/'Qinglian.exe').read_bytes(),b'old');self.assertEqual((target/'_internal/data').read_bytes(),b'old')
    def test_partial_file_lock_failure_restores_old_files(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);target=root/'old';stage=root/'new';backup=root/'backup'
            for folder in (target,stage):
                (folder/'_internal').mkdir(parents=True);(folder/'Qinglian.exe').write_bytes(b'MZold')
            original=os.replace
            def locked(source,destination):
                if Path(source)==stage/'Qinglian.exe':raise PermissionError('fixture lock')
                return original(source,destination)
            with patch.object(updater.os,'replace',locked):
                with self.assertRaises(PermissionError):updater.swap_payload(target,stage,backup)
            self.assertEqual((target/'Qinglian.exe').read_bytes(),b'MZold');self.assertTrue((target/'_internal').is_dir())
if __name__=='__main__':unittest.main()
