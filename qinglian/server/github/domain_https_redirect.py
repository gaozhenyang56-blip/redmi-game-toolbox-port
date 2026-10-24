#!/usr/bin/env python3
"""Make HTTP domain visits use the verified HTTPS panel; no SSH/service changes."""
import json,os,re,ssl,sys,time,urllib.request,urllib.error,urllib.parse
DOMAIN='gaozy.tech';token=os.environ.get('QINGLIAN_CLOUDFLARE_TOKEN','')
if not re.fullmatch(r'[A-Za-z0-9_-]{20,1024}',token):raise SystemExit('Configure QINGLIAN_CLOUDFLARE_TOKEN; no settings changed.')
def cloud(path,data=None):
 request=urllib.request.Request('https://api.cloudflare.com/client/v4'+path,data=None if data is None else json.dumps(data).encode(),method='GET' if data is None else 'PATCH',headers={'Authorization':'Bearer '+token,'Content-Type':'application/json','User-Agent':'Qinglian/HTTPS-Setup'})
 with urllib.request.urlopen(request,timeout=20) as response:value=json.load(response)
 if not value.get('success'):raise RuntimeError('Cloudflare rejected the operation')
 return value['result']
class NoRedirect(urllib.request.HTTPRedirectHandler):
 def redirect_request(self,*args):return None
opener=urllib.request.build_opener(urllib.request.HTTPSHandler(context=ssl.create_default_context()),NoRedirect())
def status(url):
 try:
  with opener.open(urllib.request.Request(url,headers={'User-Agent':'Qinglian/HTTPS-Setup'}),timeout=10) as response:return response.status,response.headers.get('Location','')
 except urllib.error.HTTPError as error:return error.code,error.headers.get('Location','')
try:
 zones=cloud('/zones?name='+DOMAIN);assert len(zones)==1;zone=zones[0]['id'];assert re.fullmatch('[0-9a-f]{32}',zone)
 assert cloud('/zones/'+zone+'/settings/ssl')['value']=='strict'
 assert status('https://'+DOMAIN+'/')[0]==200,'HTTPS panel must be ready before redirecting'
 path='/zones/'+zone+'/settings/always_use_https';old=cloud(path)['value']
 changed=False
 try:
  cloud(path,{'value':'on'});changed=True
  for attempt in range(12):
   code,location=status('http://'+DOMAIN+'/');target=urllib.parse.urlsplit(location)
   if code in (301,302,307,308) and target.scheme=='https' and target.hostname==DOMAIN and target.path=='/':break
   if attempt==11:raise RuntimeError('HTTP redirect not observed')
   time.sleep(5)
  assert status('https://'+DOMAIN+'/')[0]==200
 except Exception:
  if changed:cloud(path,{'value':old})
  raise
 print(json.dumps({'domainHttpRedirectsToHttps':True,'strictHttpsPanelVerified':True,'serverServicesUnchanged':True}))
except Exception as error:
 print('HTTPS redirect setup stopped:',type(error).__name__,'; private details suppressed.',file=sys.stderr);sys.exit(1)
