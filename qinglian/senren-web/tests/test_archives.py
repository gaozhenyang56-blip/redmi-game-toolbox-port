import io,json,sys,tempfile,unittest,zipfile,stat,base64
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from file_manager import Files,FileError

def zipped(entries):
 stream=io.BytesIO()
 with zipfile.ZipFile(stream,'w',zipfile.ZIP_DEFLATED) as out:
  for name,value in entries:out.writestr(name,value)
 return stream.getvalue()

class ArchiveTests(unittest.TestCase):
 def setUp(self):
  self.temp=tempfile.TemporaryDirectory();self.root=Path(self.temp.name);base=self.root/'base';base.mkdir();(base/'config.tjs').write_bytes(b'original')
  manifest=self.root/'manifest.json';manifest.write_text(json.dumps({'root':str(base),'files':['config.tjs'],'overrides':{}}));self.files=Files(self.root/'state',manifest)
 def tearDown(self):self.temp.cleanup()
 def preview(self,raw,name='patch.zip'):return self.files.preview_archive(name,io.BytesIO(raw),len(raw))
 def test_preview_does_not_publish_and_commit_preserves_paths(self):
  result=self.preview(zipped([('materials/',b''),('materials/background.pimg',b'background'),('config.tjs',b'patched')]))
  self.assertIsNone(self.files.target('materials/background.pimg'));self.assertEqual(self.files.target('config.tjs').read_bytes(),b'original')
  self.assertEqual(len(self.files.listing()['pendingArchives']),1);self.files.deploy_archive(result['id'])
  self.assertEqual(self.files.target('config.tjs').read_bytes(),b'patched');self.assertEqual(self.files.target('materials/background.pimg').read_bytes(),b'background')
  self.assertEqual(self.files.listing()['pendingArchives'],[])
 def test_rejects_traversal_symlinks_executables_and_duplicates(self):
  for name in ['../bad.txt','/bad.txt','a/../../bad.txt','version.dll','script.exe','savedata/a.txt','adult.xp3']:
   with self.subTest(name=name),self.assertRaises(FileError):self.preview(zipped([(name,b'data')]))
  with self.assertRaises(FileError):self.preview(zipped([('A.txt',b'a'),('a.txt',b'b')]))
  stream=io.BytesIO()
  with zipfile.ZipFile(stream,'w') as z:
   entry=zipfile.ZipInfo('link.txt');entry.create_system=3;entry.external_attr=(stat.S_IFLNK|0o777)<<16;z.writestr(entry,'/etc/passwd')
  with self.assertRaises(FileError):self.preview(stream.getvalue())
 def test_conflict_does_not_publish_any_file(self):
  result=self.preview(zipped([('config.tjs',b'archive'),('new.txt',b'new')]))
  self.files.upload('config.tjs',io.BytesIO(b'concurrent'),10,self.files.version('config.tjs'))
  with self.assertRaises(FileError) as error:self.files.deploy_archive(result['id'])
  self.assertEqual(error.exception.status,409);self.assertIsNone(self.files.target('new.txt'));self.assertEqual(self.files.target('config.tjs').read_bytes(),b'concurrent')
  self.files.cancel_archive(result['id']);self.assertEqual(self.files.listing()['pendingArchives'],[])
 def test_7z_directory_and_material_file(self):
  raw=base64.b64decode('N3q8ryccAASkCjdIlAAAAAAAAAAhAAAAAAAAALkthZ4BABVub24tZ2FtZSB0ZXN0IG1hdGVyaWFsAAAAgTMHrg/PpC64D+vqnL82Pf5zJYHkIx/Y+D/B3RHVHx5h5Tb4OGDSvv9HmF5O/i43OxOkW/KUkQhrbVZ58HngvJbCqdjfgREUxKFeBrgzP3+UGq2sFx2itnphlGAvsZnZNwMaJsMIxitt87F0IAf72VZ13lzqOAAAFwYaAQl6AAcLAQABIwMBAQVdABAAAAyAngoBDBPUwQAA')
  result=self.preview(raw,'materials.7z');self.files.deploy_archive(result['id'])
  self.assertEqual(self.files.target('materials/background.pimg').read_bytes(),b'non-game test material')
 def test_archive_over_512_mib_is_checked_against_disk_not_fixed_cap(self):
  from unittest.mock import patch
  from types import SimpleNamespace
  with patch('file_manager.shutil.disk_usage',return_value=SimpleNamespace(free=10*1024**3)):
   with self.assertRaises(FileError) as error:self.files.preview_archive('large.zip',io.BytesIO(b''),513*1024**2)
  self.assertEqual(error.exception.status,400);self.assertIn('上传中断',str(error.exception))
  with patch('file_manager.shutil.disk_usage',return_value=SimpleNamespace(free=600*1024**2)):
   with self.assertRaises(FileError) as error:self.files.preview_archive('large.zip',io.BytesIO(b''),513*1024**2)
  self.assertEqual(error.exception.status,507)
 def test_corruption_is_not_published(self):
  with self.assertRaises(FileError):self.preview(b'not an archive')
  self.assertEqual(self.files.listing()['pendingArchives'],[])
 def test_existing_versions_are_restorable(self):
  self.files.upload('config.tjs',io.BytesIO(b'first'),5,self.files.version('config.tjs'))
  result=self.preview(zipped([('config.tjs',b'second')]))
  self.files.deploy_archive(result['id']);history=self.files.listing()['history'][0]
  self.files.restore(history['id'],'config.tjs',self.files.version('config.tjs'));self.assertEqual(self.files.target('config.tjs').read_bytes(),b'first')

if __name__=='__main__':unittest.main()
