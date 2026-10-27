/* Game reads reuse the same bounded blocks prepared before engine startup. */
(()=>{
 const revision=new URLSearchParams(location.search).get('resourceVersion');if(!revision||!window.SenrenPreload||!window.VLFS)return;
 const original=VLFS._readSource,stats=window.senrenCacheStats={hits:0,misses:0,bytesSaved:0};
 VLFS._readSource=async function(entry,pos,len){
  let url;try{url=new URL(entry.url);}catch{return original.call(this,entry,pos,len);}
  if(entry.kind!=='remote'||url.origin!==location.origin||!url.pathname.startsWith('/game/')||len>32*1024*1024)return original.call(this,entry,pos,len);
  const result=await window.SenrenPreload.read({url:entry.url,size:entry.size},pos,len,revision);stats.hits+=result.hits;stats.misses+=result.misses;stats.bytesSaved+=result.saved;if(result.saved)window.SenrenLoading?.cached(result.saved);return result.data;
 };
})();
