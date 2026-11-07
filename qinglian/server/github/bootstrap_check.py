"""Read-only HTTPS owner bootstrap check; never emit credential or certificate bodies."""
import http.cookiejar,json,ssl,urllib.parse,urllib.request
from ssh_common import connection,remote_json
try:
 with connection() as ssh:
  meta=remote_json(ssh,"import json,sqlite3;from pathlib import Path;c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row;u=dict(db.execute('SELECT username,password FROM users WHERE id=?',(c['ownerId'],)).fetchone());r=db.execute('SELECT value FROM settings WHERE key=?',('webBasePath',)).fetchone();print(json.dumps({'domain':c['tls']['domainName'],'token':c['clientToken'],'address':c['serverAddress'],'port':c['tls']['port'],'user':u,'basePath':r[0] if r else '/'}))")
  class NoRedirect(urllib.request.HTTPRedirectHandler):
   def redirect_request(self,*args,**kwargs):return None
  jar=http.cookiejar.CookieJar();api=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPSHandler(context=ssl.create_default_context()),urllib.request.HTTPCookieProcessor(jar),NoRedirect())
  origin='https://'+meta['domain'];base=origin+meta['basePath'];header={'User-Agent':'Qinglian/BootstrapOwnerCheck'}
  with api.open(urllib.request.Request(base+'login',urllib.parse.urlencode(meta['user']).encode(),headers=header),timeout=15) as r:assert json.load(r)['success']
  with api.open(urllib.request.Request(base+'xui/qinglian/server-bootstrap',headers=header),timeout=15) as r:
   assert r.status==200 and r.headers['Cache-Control']=='private, no-store' and 'attachment' in r.headers['Content-Disposition'];value=json.loads(r.read(65537))
  assert set(value)=={'schema','kind','name','profile'} and value['schema']==1 and value['kind']=='qinglian-server'
  p=value['profile'];assert set(p)=={'url','clientToken','caPem','cdnUrl'} and p['clientToken']==meta['token'] and p['url']==f"https://{meta['address']}:{meta['port']}{meta['basePath']}api/v1/profile" and p['cdnUrl']==base+'api/v1/profile' and 'BEGIN CERTIFICATE' in p['caPem'] and 'PRIVATE KEY' not in p['caPem']
  print(json.dumps({'ownerBootstrapDownloadVerified':True,'allClientFieldsAndCAValid':True,'sameOriginPathsPreserved':True,'administratorOrNodeOrPrivateKeyExported':False,'credentialsLogged':False}))
except Exception as e:print(json.dumps({'ok':False,'errorType':type(e).__name__}));raise SystemExit(1)
