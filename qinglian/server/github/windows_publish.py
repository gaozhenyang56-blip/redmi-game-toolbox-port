"""Publish a fixed official Windows release through the existing owner panel."""
import hashlib,http.cookiejar,json,re,sys,tempfile,time
from pathlib import Path
import urllib.request
from ssh_common import connection,remote_json
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'windows'))
import updater

def main(version):
    updater.version_number(version)
    with connection() as ssh:
        private=remote_json(ssh,"import json,sqlite3;from pathlib import Path;c=json.loads(Path('/etc/x-ui/qinglian.json').read_text());db=sqlite3.connect('file:/etc/x-ui/x-ui.db?mode=ro',uri=True);db.row_factory=sqlite3.Row;u=dict(db.execute('SELECT username,password FROM users WHERE id=?',(c['ownerId'],)).fetchone());db.close();print(json.dumps({'user':u,'token':c['clientToken']}))")
    class NoRedirect(urllib.request.HTTPRedirectHandler):
        def redirect_request(self,*args,**kwargs):return None
    jar=http.cookiejar.CookieJar();opener=urllib.request.build_opener(urllib.request.ProxyHandler({}),urllib.request.HTTPCookieProcessor(jar),NoRedirect())
    origin='https://gaozy.tech';headers={'User-Agent':'Qinglian/WindowsPublicationCheck'}
    import urllib.parse
    with opener.open(urllib.request.Request(origin+'/login',urllib.parse.urlencode(private['user']).encode(),headers=headers),timeout=15) as r:assert json.load(r)['success']
    def call(path,body=None,api=False,timeout=20):
        extra={'Authorization':'Bearer '+private['token']} if api else {'Origin':origin,'X-Requested-With':'XMLHttpRequest'}
        request=urllib.request.Request(origin+path,data=json.dumps(body).encode() if body is not None else None,headers={**headers,**extra,'Content-Type':'application/json'})
        with opener.open(request,timeout=timeout) as r:return json.load(r)
    initial=call('/xui/qinglian/windows')
    # Publish exactly the existing data-only style: no changes to active UI,
    # connections, account records, node selection, quotas or counters.
    if initial.get('package') is None or initial['package']['version']!=version:
        try:call('/xui/qinglian/windows/import',{'version':version},timeout=150)
        except Exception:
            # CDN request deadlines can expire while the bounded importer finishes.
            # Observe state instead of repeating an expensive or ambiguous POST.
            for _ in range(18):
                time.sleep(5);value=call('/xui/qinglian/windows')
                if value.get('package') and value['package']['version']==version:break
            else:raise RuntimeError('Official package import not observed') from None
    value=updater.manifest(call('/api/v1/windows/updates',api=True));package=value['package'];assert package['version']==version
    with tempfile.TemporaryDirectory() as directory:
        path=Path(directory)/'package.zip';request=urllib.request.Request(origin+'/api/v1/windows/package/'+package['sha256'],headers={**headers,'Authorization':'Bearer '+private['token']})
        total=0;started=time.monotonic()
        with opener.open(request,timeout=15) as response,path.open('wb') as output:
            assert response.status==200
            while True:
                chunk=response.read1(262144)
                if not chunk:break
                total+=len(chunk);assert total<=package['size'] and time.monotonic()-started<180;output.write(chunk)
        updater.inspect_archive(path,package)
    print(json.dumps({'panelOwnerAndManifestVerified':True,'officialPackageImported':version,'strictCdnDownloadSizeShaAndResourcesVerified':True,'credentialsLogged':False}))
if __name__=='__main__':
    try:main(sys.argv[1])
    except Exception as error:print(json.dumps({'ok':False,'errorType':type(error).__name__}));raise SystemExit(1)
