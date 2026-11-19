import json,unittest
from parent_expiry_policy import plan_expiry_repair
class ParentExpiryPolicy(unittest.TestCase):
 def row(self,ident=1,owner=7,expiry=1000,enabled=False,total=10000,used=2000,uuid='original'):
  return dict(id=ident,user_id=owner,expiry_time=expiry,enable=enabled,total=total,up=0,down=used,port=12000+ident,tag='inbound-'+str(12000+ident),settings=json.dumps({'clients':[{'id':uuid}]}),protocol='vmess')
 def test_only_linked_expired_nodes_and_original_data_is_not_mutated(self):
  rows=[self.row(),self.row(2,uuid='other'),self.row(3,owner=8)];original=json.dumps(rows);plan=plan_expiry_repair(rows,1,7,'original',2000)
  self.assertEqual([r['id'] for r in plan],[1]);self.assertEqual(plan[0]['totalBytes'],10000);self.assertEqual(plan[0]['usedBytes'],2000);self.assertEqual(json.dumps(rows),original)
 def test_selected_and_original_roles_are_bounded(self):
  plan=plan_expiry_repair([self.row(),self.row(2,uuid='selected'),self.row(3,uuid='unused')],2,7,'original',2000);self.assertEqual([r['id'] for r in plan],[1,2])
 def test_no_renewal_of_unexpired_or_manual_disabled_and_no_quota_bypass(self):
  for expiry in [0,3000]:self.assertEqual(plan_expiry_repair([self.row(expiry=expiry)],1,7,'original',2000),[])
  with self.assertRaises(ValueError):plan_expiry_repair([self.row(total=2000)],1,7,'original',2000)
  with self.assertRaises(ValueError):plan_expiry_repair([self.row(owner=8)],1,7,'original',2000)
  row=self.row();row['tag']='custom'
  with self.assertRaises(ValueError):plan_expiry_repair([row],1,7,'original',2000)
if __name__=='__main__':unittest.main()
