/* Integrity-checked engine bundles, distinct from the bounded game block cache. */
(()=>{
 const PREFIX='senren-engine-bundle-v1-',sha=async data=>[...new Uint8Array(await crypto.subtle.digest('SHA-256',data))].map(v=>v.toString(16).padStart(2,'0')).join('');
 function valid(manifest){if(manifest?.schema!==1||!/^[a-f0-9]{64}$/.test(manifest.revision)||!Array.isArray(manifest.files)||manifest.files.length>200)throw Error('引擎缓存清单无效');let total=0;for(const file of manifest.files){const url=new URL(file.url,location.origin);if(url.origin!==location.origin||!(url.pathname.startsWith('/engine/')||['/preload-cache.js','/session-saves.js','/engine-cache.js'].includes(url.pathname))||!Number.isSafeInteger(file.size)||file.size<0||file.size>128*1024**2||!/^[a-f0-9]{64}$/.test(file.sha256))throw Error('引擎资源无效');total+=file.size;}if(total!==manifest.totalBytes)throw Error('引擎资源总量无效');}
 async function prepare(report=()=>{},signal){
  if(!window.caches)throw Error('浏览器不支持引擎资源缓存');
  const response=await fetch('/api/engine-cache',{cache:'no-store',signal});if(!response.ok)throw Error('引擎缓存清单暂不可用');const manifest=await response.json();valid(manifest);const target=await caches.open(PREFIX+manifest.revision),names=(await caches.keys()).filter(n=>n.startsWith(PREFIX)&&n!==PREFIX+manifest.revision);let done=0,reused=0;
  const emit=()=>report({done,total:manifest.totalBytes,reused});emit();
  for(const file of manifest.files){
   if(signal?.aborted)throw new DOMException('已停止引擎缓存','AbortError');const url=new URL(file.url,location.origin).href;let cached=await target.match(url),own=cached?.headers.get('X-Engine-SHA256')===file.sha256;
   if(cached?.headers.get('X-Engine-SHA256')!==file.sha256){cached=null;for(const name of names){const candidate=await(await caches.open(name)).match(url);if(candidate?.headers.get('X-Engine-SHA256')===file.sha256){cached=candidate;break;}}}
   if(cached){if(!own)await target.put(url,cached.clone());done+=file.size;reused+=file.size;emit();continue;}
   const resource=await fetch(file.url,{cache:'reload',headers:{'If-Match':file.etag},signal});if(!resource.ok)throw Error('引擎资源下载失败，请重试');const data=await resource.arrayBuffer();if(data.byteLength!==file.size||await sha(data)!==file.sha256)throw Error('引擎资源校验失败，请重试');
   const headers=new Headers(resource.headers);headers.set('X-Engine-SHA256',file.sha256);headers.set('X-Senren-Engine-Cache','hit');await target.put(url,new Response(data,{status:200,headers}));done+=file.size;emit();
  }
  // Retain one previous bundle so a still-open game can finish with its version.
  for(const name of names.slice(0,-1))await caches.delete(name);
  return manifest.revision;
 }
 const selected=new URLSearchParams(location.search).get('engineCache');
 if(selected&&/^[a-f0-9]{64}$/.test(selected)){
  const network=window.fetch.bind(window);
  window.fetch=async function(input,options){let url;try{url=new URL(typeof input==='string'||input instanceof URL?input:input.url,location.href);}catch{return network(input,options);}if(options?.cache!=='reload'&&options?.cache!=='no-store'&&url.origin===location.origin&&url.pathname.startsWith('/engine/')&&(!options?.method||options.method==='GET')){try{const cached=await(await caches.open(PREFIX+selected)).match(url.href);if(cached)return cached;}catch{}}return network(input,options);};
 }
 window.SenrenEngineCache={prepare};
})();
