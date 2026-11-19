"""Only recover expired owner nodes linked to this App; never reset quotas or exports."""
import json

def plan_expiry_repair(rows,selected,owner,bootstrap_uuid,now_ms):
 by_id={row['id']:row for row in rows}
 if selected not in by_id or by_id[selected]['user_id']!=owner:raise ValueError('selected owner node missing')
 bootstrap=[]
 for row in rows:
  if row['user_id']!=owner:continue
  try:clients=json.loads(row['settings']).get('clients',[])
  except (ValueError,TypeError):continue
  if any(str(c.get('id','')).lower()==bootstrap_uuid.lower() for c in clients):bootstrap.append(row['id'])
 if len(bootstrap)>1:raise ValueError('ambiguous original node')
 roles={selected:['app-selected']}
 for ident in bootstrap:roles.setdefault(ident,[]).append('original-bootstrap')
 changes=[]
 for ident in sorted(roles):
  row=by_id[ident]
  if row['expiry_time']<=0 or row['expiry_time']>now_ms:continue
  if row['total'] and row['up']+row['down']>=row['total']:raise ValueError('quota exhausted; expiry-only recovery refused')
  if row['tag']!='inbound-'+str(row['port']):raise ValueError('nonstandard tag; API would modify unrelated configuration')
  changes.append({'id':ident,'roles':roles[ident],'protocol':row['protocol'],'previousExpiryMs':row['expiry_time'],'previousEnabled':bool(row['enable']),'totalBytes':row['total'],'usedBytes':row['up']+row['down']})
 return changes
