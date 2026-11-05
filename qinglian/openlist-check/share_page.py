"""Extract Baidu's embedded share JSON without executing page JavaScript."""
import ast
from html.parser import HTMLParser
import json
import re

PATTERNS = (
    r'(?:yunData\s*\.\s*setData|locals\s*\.\s*mset)\s*\(',
    r'(?:window\s*\.\s*)?yunData\s*=',
    r'(?:window\s*\.\s*)?locals\s*=',
    r'(?:window\s*\.\s*)?__INITIAL_STATE__\s*=',
)

def _json_value(source):
    source=source.lstrip()
    if source.startswith('JSON.parse'):
        match=re.match(r'JSON\.parse\s*\(\s*',source)
        if not match:raise ValueError('Unsupported JSON.parse syntax')
        quoted=source[match.end():]
        if not quoted or quoted[0] not in ('"',"'"):raise ValueError('JSON.parse argument must be a literal string')
        quote=quoted[0];escape=False
        for index,char in enumerate(quoted[1:],1):
            if escape:escape=False
            elif char=='\\':escape=True
            elif char==quote:
                literal=quoted[:index+1]
                decoded=json.loads(literal) if quote=='"' else ast.literal_eval(literal)
                return json.loads(decoded)
        raise ValueError('Unterminated JSON string')
    value,_=json.JSONDecoder().raw_decode(source)
    return json.loads(value) if isinstance(value,str) else value

def _share_object(value,depth=0):
    if not isinstance(value,dict) or depth>4:return None
    if (value.get('shareid') or value.get('share_id') or value.get('shareId')) and (value.get('share_uk') or value.get('uk') or value.get('shareUk')):
        result=dict(value)
        result['shareid']=value.get('shareid') or value.get('share_id') or value.get('shareId')
        result['share_uk']=value.get('share_uk') or value.get('uk') or value.get('shareUk')
        result['file_list']=value.get('file_list',value.get('fileList',{}))
        return result
    for key in ('data','share_info','shareInfo','yunData','pageData','state'):
        found=_share_object(value.get(key),depth+1)
        if found:return found
    return None

class _EmbeddedJSON(HTMLParser):
    def __init__(self):
        super().__init__(convert_charrefs=False);self.active=False;self.parts=[];self.documents=[]
    def handle_starttag(self,tag,attrs):
        if tag.lower()!='script':return
        attrs=dict(attrs)
        self.active=not attrs.get('src') and (attrs.get('id') in ('locals-data','__NEXT_DATA__','__INITIAL_STATE__') or attrs.get('type','').lower()=='application/json')
        self.parts=[]
    def handle_data(self,data):
        if self.active:self.parts.append(data)
    def handle_endtag(self,tag):
        if tag.lower()=='script' and self.active:
            if len(self.documents)<40:self.documents.append(''.join(self.parts))
            self.active=False;self.parts=[]

def extract_share_data(html):
    if not isinstance(html,str) or len(html)>4*1024*1024:raise ValueError('分享页面大小异常')
    embedded=_EmbeddedJSON();embedded.feed(html)
    for document in embedded.documents:
        try:
            found=_share_object(json.loads(document))
            if found:return found
        except (ValueError,TypeError,RecursionError):continue
    for pattern in PATTERNS:
        for index,match in enumerate(re.finditer(pattern,html)):
            if index>=40:break
            try:
                found=_share_object(_json_value(html[match.end():]))
                if found:return found
            except (ValueError,SyntaxError,TypeError,RecursionError):continue
    raise ValueError('分享页面未找到支持的文件数据；请检查是否需要验证码、提取码或链接是否失效。')
