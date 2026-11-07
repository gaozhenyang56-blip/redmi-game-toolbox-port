"""Portable Qinglian panel bootstrap format; no proxy-node import or redirects."""
import hashlib,ipaddress,json,re,ssl,urllib.parse
MAX_BYTES=65536
KIND='qinglian-server'
def validate(value):
 if not isinstance(value,dict) or value.get('schema')!=1 or value.get('kind')!=KIND:raise ValueError('请选择轻连面板导出的服务器配置，不支持第三方节点')
 if set(value)-{'schema','kind','name','profile'}:raise ValueError('服务器配置含未知字段')
 name=value.get('name','轻连面板')
 if not isinstance(name,str) or not 1<=len(name)<=80 or any(ord(c)<32 for c in name):raise ValueError('服务器名称无效')
 p=value.get('profile')
 if not isinstance(p,dict) or set(p)-{'url','clientToken','caPem','cdnUrl'}:raise ValueError('服务器接口配置无效')
 token=p.get('clientToken','')
 if not isinstance(token,str) or not re.fullmatch('[0-9a-f]{64}',token):raise ValueError('需要面板的客户端接入码')
 def url(text):
  if not isinstance(text,str) or any(ord(c)<33 for c in text):raise ValueError('无效HTTPS入口')
  u=urllib.parse.urlsplit(text)
  if u.scheme!='https' or not u.hostname or u.username is not None or u.password is not None or u.query or u.fragment or not u.path.endswith('/api/v1/profile') or u.port is not None and not 1<=u.port<=65535:raise ValueError('需要HTTPS轻连API地址')
  return u
 primary=url(p.get('url'));ca=p.get('caPem')
 if ca is not None:
  if not isinstance(ca,str) or len(ca)>32768 or 'PRIVATE KEY' in ca:raise ValueError('仅允许公开CA证书')
  ssl.create_default_context(cadata=ca)
 if 'cdnUrl' in p:
  cdn=url(p['cdnUrl'])
  if cdn.hostname==primary.hostname or cdn.path!=primary.path or cdn.port not in (None,443):raise ValueError('备用域名入口必须使用相同API路径及HTTPS443')
 result={'schema':1,'kind':KIND,'name':name,'profile':dict(p)}
 if len(json.dumps(result).encode())>MAX_BYTES:raise ValueError('配置过大')
 return result
def loads(data):
 if isinstance(data,str):data=data.encode('utf-8')
 if len(data)>MAX_BYTES:raise ValueError('配置过大')
 return validate(json.loads(data))
def identity(value):return hashlib.sha256(json.dumps(validate(value)['profile'],sort_keys=True,separators=(',',':')).encode()).hexdigest()
def public_tun_address(value,embedded=None):
 address=ipaddress.IPv4Address(value)
 if str(address)!=embedded and not address.is_global:raise ValueError('自定义TUN服务器必须是公网IPv4')
 return str(address)
