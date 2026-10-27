/* One bounded cache shared by startup preloading and actual game range reads. */
(()=>{
 const BLOCK=1024*1024,LIMIT=256*BLOCK,NAME='senren-game-blocks-v2';let cachePromise,entries=new Map(),bytes=0,queue=Promise.resolve();const pending=new Map();
 async function open(){if(!cachePromise)cachePromise=(async()=>{if(!window.caches)throw Error('浏览器不支持资源缓存');await caches.delete('senren-game-ranges-v1');const cache=await caches.open(NAME);for(const request of await cache.keys()){const response=await cache.match(request),size=Number(response?.headers.get('X-Cache-Bytes')||0);entries.set(request.url,size);bytes+=size;}return cache;})();return cachePromise;}
 function key(url,revision,start){const parsed=new URL(url,location.origin);if(parsed.origin!==location.origin||!parsed.pathname.startsWith('/game/')||!revision)throw Error('缓存资源地址无效');parsed.searchParams.set('__resource_revision',revision);parsed.searchParams.set('__block',String(start));return parsed.href;}
 function store(cache,url,data){const operation=queue.then(async()=>{if(entries.has(url))return;while(bytes+data.length>LIMIT&&entries.size){const [old,size]=entries.entries().next().value;await cache.delete(old);entries.delete(old);bytes-=size;}await cache.put(url,new Response(data,{headers:{'X-Cache-Bytes':String(data.length),'Content-Type':'application/octet-stream'}}));entries.set(url,data.length);bytes+=data.length;});queue=operation.catch(()=>{});return operation;}
 async function block(file,start,revision,{signal,report,mustStore=false}={}){
  const url=key(file.url,revision,start),length=Math.min(BLOCK,file.size-start);if(length<=0)throw Error('资源区段无效');
  if(pending.has(url))return pending.get(url);
  const operation=(async()=>{let cache;try{cache=await open();const stored=await cache.match(url);if(stored){const data=new Uint8Array(await stored.arrayBuffer());if(data.length===length)return {data,hit:true};await cache.delete(url);bytes-=entries.get(url)||0;entries.delete(url);}}catch(error){if(mustStore)throw error;}
   const headers={Range:'bytes='+start+'-'+(start+length-1)};if(file.etag)headers['If-Match']=file.etag;
   const response=await fetch(file.url,{headers,signal,cache:'no-store'});
   if(response.status!==206||response.headers.get('Content-Range')!=='bytes '+start+'-'+(start+length-1)+'/'+file.size||file.etag&&response.headers.get('ETag')!==file.etag)throw Error('资源版本或区段发生变化，请重新启动游戏');
   const data=new Uint8Array(length);let loaded=0;
   if(response.body){const reader=response.body.getReader();try{while(true){const {value,done}=await reader.read();if(done)break;if(loaded+value.length>length)throw Error('资源长度异常');data.set(value,loaded);loaded+=value.length;report?.(loaded);}}finally{reader.releaseLock();}}
   else{const raw=new Uint8Array(await response.arrayBuffer());if(raw.length!==length)throw Error('资源不完整');data.set(raw);loaded=raw.length;}
   if(loaded!==length)throw Error('资源下载中断');if(signal?.aborted)throw new DOMException('已停止预缓存','AbortError');
   if(cache)try{await store(cache,url,data);}catch(error){if(mustStore)throw error;}
   return {data,hit:false};
  })();pending.set(url,operation);try{return await operation;}finally{pending.delete(url);}
 }
 async function read(file,pos,len,revision){
  const length=Math.min(len,file.size-pos),data=new Uint8Array(length);let hits=0,misses=0,saved=0;
  const first=Math.floor(pos/BLOCK),last=Math.floor((pos+length-1)/BLOCK);
  for(let current=first;current<=last;current+=4){await Promise.all(Array.from({length:Math.min(4,last-current+1)},async(_,index)=>{const start=(current+index)*BLOCK,result=await block(file,start,revision),left=Math.max(pos,start),right=Math.min(pos+length,start+result.data.length);data.set(result.data.subarray(left-start,right-start),left-pos);if(result.hit){hits++;saved+=right-left;}else misses++;}));}
  return {data,hits,misses,saved};
 }
 async function preload(plan,report,signal){
  if(plan?.schema!==1||typeof plan.revision!=='string'||!Array.isArray(plan.blocks)||plan.totalBytes>256*BLOCK||plan.blocks.reduce((n,b)=>n+b.length,0)!==plan.totalBytes||plan.blocks.some(b=>!Number.isSafeInteger(b.size)||b.size<0||b.start%BLOCK||b.length!==Math.min(BLOCK,b.size-b.start)))throw Error('预缓存清单无效');
  let cursor=0,done=0,reused=0,firstError=null;const partial=new Map(),controller=new AbortController(),abort=()=>controller.abort();if(signal?.aborted)controller.abort();signal?.addEventListener('abort',abort,{once:true});
  const emit=()=>report?.({done:done+[...partial.values()].reduce((a,b)=>a+b,0),total:plan.totalBytes,reused});emit();
  async function worker(){while(cursor<plan.blocks.length&&!controller.signal.aborted){const item=plan.blocks[cursor++];try{const result=await block(item,item.start,plan.revision,{signal:controller.signal,mustStore:true,report:loaded=>{partial.set(item,loaded);emit();}});partial.delete(item);done+=result.data.length;if(result.hit)reused+=result.data.length;emit();}catch(error){if(!firstError)firstError=error;controller.abort();}}}
  try{await Promise.all(Array.from({length:3},worker));if(firstError)throw firstError;if(signal?.aborted)throw new DOMException('已停止预缓存','AbortError');}
  finally{signal?.removeEventListener('abort',abort);}
 }
 window.SenrenPreload={read,preload,BLOCK,LIMIT};
})();
