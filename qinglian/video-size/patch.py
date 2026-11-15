"""Enable an explicit unlimited setting while preserving positive custom caps."""
import ast,json
REPLACEMENTS={
 'main.py':[(
  'limit = max(1, min(50, int(self.config.get("max_video_mb", 50)))) * 1024 * 1024',
  'limit = max(0, int(self.config.get("max_video_mb", 0))) * 1024 * 1024')],
 'client.py':[(
  'if response.content_length and response.content_length > max_bytes:',
  'if max_bytes > 0 and response.content_length and response.content_length > max_bytes:'),(
  'if size > max_bytes:',
  'if max_bytes > 0 and size > max_bytes:')],
 'quality.py':[(
  "too_large=bool(option.get('size') and option['size']>limit)",
  "too_large=bool(limit > 0 and option.get('size') and option['size']>limit)")],
}
def transform(name,text):
 for before,after in REPLACEMENTS[name]:
  if text.count(after)==1 and before not in text:continue
  if text.count(before)!=1:raise ValueError('Unsupported plugin source layout: '+name)
  text=text.replace(before,after,1)
 ast.parse(text,filename=name)
 return text

def schema_update(text):
 schema=json.loads(text);item=schema['max_video_mb'];item['default']=0
 item['description']='最大视频文件大小（MiB），0表示不限制；正数可设置自定义上限。'
 return json.dumps(schema,ensure_ascii=False,indent=2)+'\n'
