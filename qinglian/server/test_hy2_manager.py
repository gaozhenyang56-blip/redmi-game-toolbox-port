import importlib.util,json,sqlite3,tempfile,time,unittest
from pathlib import Path
from hy2_manager import Manager
class ManagerTest(unittest.TestCase):
 def setUp(self):
  self.tmp=tempfile.TemporaryDirectory();root=Path(self.tmp.name);self.db=root/'main.db';self.state=root/'state.db'
  with sqlite3.connect(self.db) as db:
   db.execute('CREATE TABLE inbounds(id INTEGER PRIMARY KEY,user_id INTEGER,enable INTEGER,up INTEGER,down INTEGER,total INTEGER,expiry_time INTEGER)');db.execute('INSERT INTO inbounds VALUES(1,1,1,0,0,1000000,0)')
  self.m=Manager({'ownerId':1,'authSecret':'fixture','port':443},str(self.db),str(self.state),'fixture',root/'run');self.m.configure(True,1);self.m.binding=1
 def tearDown(self):self.tmp.cleanup()
 def test_auth_checks_owner_enabled_expiry_and_quota(self):
  self.assertTrue(self.m.authenticate('fixture')['ok']);self.assertFalse(self.m.authenticate('wrong')['ok'])
  for query in ['UPDATE inbounds SET enable=0','UPDATE inbounds SET enable=1,total=1,down=2','UPDATE inbounds SET total=0,down=0,expiry_time=1','UPDATE inbounds SET expiry_time=0,user_id=2']:
   with sqlite3.connect(self.db) as db:db.execute(query)
   self.assertFalse(self.m.authenticate('fixture')['ok'])
 def test_cumulative_direction_delta_and_idempotence(self):
  stats={'1':{'tx':123,'rx':456}};self.m.account(stats);self.m.account(stats)
  with sqlite3.connect(self.db) as db:self.assertEqual(db.execute('SELECT up,down FROM inbounds').fetchone(),(123,456))
  self.m.account({'1':{'tx':200,'rx':1000}})
  with sqlite3.connect(self.db) as db:self.assertEqual(db.execute('SELECT up,down FROM inbounds').fetchone(),(200,1000))
  with self.assertRaises(ValueError):self.m.account({'1':{'tx':0,'rx':0}})
 def test_disabled_binding_rejects_auth_and_unknown_owner(self):
  self.m.configure(False,1);self.assertFalse(self.m.authenticate('fixture')['ok'])
  with self.assertRaises(ValueError):self.m.configure(True,2)
 def test_invalid_or_overflowing_counters_do_not_advance_cursor(self):
  for value in [True,-1,2**63,1.5]:
   with self.assertRaises(ValueError):self.m.account({'1':{'tx':value,'rx':0}})
  self.assertEqual(self.m.cursor,(0,0))
if __name__=='__main__':unittest.main()
