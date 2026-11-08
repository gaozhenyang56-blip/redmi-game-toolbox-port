"""Read-only HTTPS checks, using the deployment agent accepted by the edge WAF."""
import urllib.error,urllib.request

def verify():
    headers={'User-Agent':'Qinglian-Deploy/1.0'}
    for path,ctype in (('/panel/','text/html'),('/panel/app.js','text/javascript'),('/panel/style.css','text/css')):
        with urllib.request.urlopen(urllib.request.Request('https://gaozy.tech'+path,headers=headers),timeout=20) as response:
            assert response.status==200 and ctype in response.headers['Content-Type']
            assert len(response.read())>100
    with urllib.request.urlopen(urllib.request.Request('https://gaozy.tech/panel',headers=headers),timeout=20) as response:
        assert response.url=='https://gaozy.tech/panel/'
    try:
        urllib.request.urlopen(urllib.request.Request('https://gaozy.tech/panel/api/status',headers=headers),timeout=20)
        raise AssertionError('Anonymous status API must require login')
    except urllib.error.HTTPError as error:
        assert error.code==401
    print('Public HTTPS canonical entry, page, assets and authentication boundary verified with certificate validation.')

if __name__=='__main__':verify()
