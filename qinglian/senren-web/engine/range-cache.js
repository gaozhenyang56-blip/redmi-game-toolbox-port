/* Bounded browser disk cache for authenticated same-origin game ranges.
 * A server-issued resource revision invalidates cached data after file changes.
 */
(()=>{
 const revision=new URLSearchParams(location.search).get('resourceVersion');
 if(!revision||!window.caches||!window.VLFS)return;
 const original=VLFS._readSource,limit=256*1024*1024,maxEntry=32*1024*1024;
 let cachePromise=null,entries=new Map(),bytes=0,queue=Promise.resolve();const pending=new Map();
 const stats=window.senrenCacheStats={hits:0,misses:0,bytesSaved:0};
 async function cache(){if(!cachePromise)cachePromise=(async()=>{const c=await caches.open('senren-game-ranges-v1');for(const request of await c.keys()){const response=await c.match(request),size=Number(response?.headers.get('X-Bytes')||0);entries.set(request.url,size);bytes+=size;}return c;})().catch(()=>null);return cachePromise;}
 function store(c,key,data){queue=queue.then(async()=>{if(entries.has(key))return;while(bytes+data.length>limit&&entries.size){const [old,size]=entries.entries().next().value;await c.delete(old);entries.delete(old);bytes-=size;}await c.put(key,new Response(data,{headers:{'X-Bytes':String(data.length),'Content-Type':'application/octet-stream'}}));entries.set(key,data.length);bytes+=data.length;}).catch(()=>{});return queue;}
 VLFS._readSource=async function(entry,pos,len){
  let url;try{url=new URL(entry.url);}catch{return original.call(this,entry,pos,len);}
  if(entry.kind!=='remote'||url.origin!==location.origin||!url.pathname.startsWith('/game/')||len>maxEntry)return original.call(this,entry,pos,len);
  url.searchParams.set('__senren_revision',revision);url.searchParams.set('__senren_range',pos+'-'+len);const key=url.href;
  if(pending.has(key))return (await pending.get(key)).slice();
  const promise=(async()=>{const c=await cache();if(c){try{const response=await c.match(key);if(response){const data=new Uint8Array(await response.arrayBuffer());if(data.length===len){stats.hits++;stats.bytesSaved+=len;return data;}}}catch{}}
   stats.misses++;const data=await original.call(this,entry,pos,len);if(c&&data.length===len)await store(c,key,data);return data;
  })();pending.set(key,promise);try{return await promise;}finally{pending.delete(key);}
 };
})();
