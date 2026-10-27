/* Report measured progress for the current transfer, never a guessed game total. */
(()=>{
 const nativeFetch=window.fetch.bind(window);let sequence=0,readBytes=0,cachedBytes=0,lastSent=0;
 function send(phase,loaded=0,total=null,force=false,error=false){
  const now=Date.now();if(!force&&now-lastSent<150)return;lastSent=now;
  const known=Number.isFinite(total)&&total>0;
  const data={type:'senren-loading',sequence:++sequence,phase,loaded,total:known?total:null,percent:known?Math.min(100,Math.floor(loaded/total*100)):null,readBytes,cachedBytes,error};
  window.senrenLoadingState=data;
  if(window.parent!==window)window.parent.postMessage(data,location.origin);
 }
 window.SenrenLoading={
  cached(bytes){cachedBytes+=bytes;send('从游戏缓存读取资源',bytes,bytes);},
  initializing(){send('正在初始化游戏，资源按需读取',0,null,true);},
  failed(){send('加载失败，请检查画面日志',0,null,true,true);}
 };
 window.fetch=async function(input,options){
  let url;try{url=new URL(typeof input==='string'||input instanceof URL?input:input.url,location.href);}catch{return nativeFetch(input,options);}
  let phase;
  if(url.origin===location.origin){
   if(url.pathname.endsWith('/index.wasm'))phase='下载游戏引擎';
   else if(url.pathname.endsWith('/assets.zip'))phase='读取引擎资源';
   else if(url.pathname.startsWith('/game/'))phase=(options?.method||input?.method||'GET').toUpperCase()==='PROPFIND'?'读取游戏目录':'读取 '+decodeURIComponent(url.pathname.split('/').pop())+' 资源区段';
  }
  if(!phase)return nativeFetch(input,options);
  send(phase,0,null,true);
  let response;try{response=await nativeFetch(input,options);}catch(error){send(phase+'失败：网络连接中断',0,null,true,true);throw error;}
  if(!response.ok){send(phase+'失败（HTTP '+response.status+'）',0,null,true,true);return response;}
  let total=Number(response.headers.get('Content-Length'));
  if(response.headers.get('Content-Encoding')&&response.headers.get('Content-Encoding')!=='identity')total=null;
  if(!Number.isFinite(total)||total<=0)total=null;
  // Observe a tee without changing the response used by WASM compilation/decoding.
  try{
   const copy=response.clone();
   if(copy.body){
    const reader=copy.body.getReader();let loaded=0;
    (async()=>{try{send(phase,0,total,true);while(true){const {value,done}=await reader.read();if(done)break;loaded+=value.byteLength;readBytes+=value.byteLength;send(phase,loaded,total);}send(phase+'读取完成',loaded,total,true);}catch{send(phase+'读取中断',loaded,total,true,true);}finally{reader.releaseLock();}})();
   }
  }catch{/* Progress observation must never block the engine. */}
  return response;
 };
})();
