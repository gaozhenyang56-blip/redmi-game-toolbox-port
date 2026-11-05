"""Backup fixture verifies SQLite restoration uses snapshots and excludes live journals."""
import ast,json,shutil,sqlite3,subprocess,sys,tarfile,tempfile,unittest
from pathlib import Path
class ConsistentBackup(unittest.TestCase):
 def test_archive_restores_both_snapshots_without_live_database_files(self):
  tree=ast.parse((Path(__file__).parent/'github/backup_server.py').read_text())
  script=next(ast.literal_eval(n.value) for n in tree.body if isinstance(n,ast.Assign) and any(isinstance(t,ast.Name) and t.id=='script' for t in n.targets))
  with tempfile.TemporaryDirectory() as temp:
   root=Path(temp);panel=root/'etc/x-ui';panel.mkdir(parents=True);binary=root/'usr/local/x-ui/x-ui';binary.parent.mkdir(parents=True);binary.write_text('#!/bin/sh\nprintf "0.3.2\\n"\n');binary.chmod(0o700)
   state=panel/'state.sqlite3'
   for path in [panel/'x-ui.db',state]:
    with sqlite3.connect(path) as db:db.execute('CREATE TABLE fixture(value TEXT)');db.execute("INSERT INTO fixture VALUES('preserved')")
   (panel/'qinglian.json').write_text(json.dumps({'statePath':str(state)}));(panel/'transient-journal').write_bytes(b'transient');(panel/'stable.conf').write_text('fixture configuration')
   for path in ['/usr/local/x-ui','/etc/x-ui','/usr/local/lib/qinglian','/etc/systemd','/etc/nginx','/etc/caddy','/etc/letsencrypt']:script=script.replace(path,str(root/path.lstrip('/')))
   value=json.loads(subprocess.check_output([sys.executable,'-c',script],text=True,timeout=10));directory=Path(value['directory'])
   try:
    with tarfile.open(directory/'server-backup.tar.gz') as archive:
     names=set(archive.getnames());self.assertIn('database-consistent.db',names);self.assertIn('devices-consistent.db',names);self.assertNotIn(str(state).lstrip('/'),names);self.assertNotIn(str(panel/'x-ui.db').lstrip('/'),names);self.assertNotIn(str(panel/'transient-journal').lstrip('/'),names)
     for name in ['database-consistent.db','devices-consistent.db']:
      snapshot=root/name;snapshot.write_bytes(archive.extractfile(name).read())
      with sqlite3.connect(snapshot) as db:self.assertEqual(db.execute('SELECT value FROM fixture').fetchone()[0],'preserved');self.assertEqual(db.execute('PRAGMA quick_check').fetchone()[0],'ok')
   finally:shutil.rmtree(directory)
