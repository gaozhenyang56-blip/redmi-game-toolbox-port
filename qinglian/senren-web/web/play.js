'use strict';
const frame=document.getElementById('game'),state=document.getElementById('state');
let galleryFiles=null,sessionReadOnly=false,chooseSession;
const sessionReady=new Promise(resolve=>{chooseSession=resolve;});
const sessionDialog=document.getElementById('session-dialog');sessionDialog.showModal();
sessionDialog.addEventListener('cancel',event=>event.preventDefault());
document.getElementById('normal-session').onclick=()=>{galleryFiles=null;document.getElementById('gallery-save').value='';sessionDialog.close();chooseSession();};
let builtinGalleryAvailable=false,sessionBusy=false;
function setSessionBusy(value){sessionBusy=value;document.getElementById('normal-session').disabled=value;document.getElementById('gallery-session').disabled=value;document.getElementById('builtin-gallery-session').disabled=value||!builtinGalleryAvailable;}
async function chooseGallery(load){
 const error=document.getElementById('session-error');setSessionBusy(true);
 try{error.textContent='正在校验鉴赏存档…';const file=await load();galleryFiles=await window.SenrenGallerySave.parse(file);sessionReadOnly=true;document.getElementById('session-banner').hidden=false;document.getElementById('export').disabled=true;document.getElementById('export').title='只读鉴赏启动不导出或写回存档';sessionDialog.close();chooseSession();}
 catch(e){error.textContent=e.message;}finally{setSessionBusy(false);}
}
document.getElementById('gallery-session').onclick=()=>chooseGallery(async()=>document.getElementById('gallery-save').files[0]);
document.getElementById('builtin-gallery-session').onclick=()=>chooseGallery(async()=>{
 const response=await fetch('/api/gallery-save.zip',{cache:'no-store'});if(!response.ok)throw Error('内置CG存档暂不可用，请重试或导入自己的存档');
 return new File([await response.blob()],'senren-banka-cg-save.zip',{type:'application/zip'});
});
window.addEventListener('message',event=>{
 if(event.origin!==location.origin||event.source!==frame.contentWindow||event.data?.type!=='senren-session-request'||!sessionReadOnly||!galleryFiles||!event.ports[0])return;
 event.ports[0].postMessage({files:galleryFiles});event.ports[0].close();
});
function confirmRestart(message){return confirm(message+(sessionReadOnly?'本次鉴赏的临时状态会丢弃，需要重新导入存档。':'请先保存进度。'));}
let preloading=null,entered=false,launchSequence=0;
async function launch(skip=false){
 const thisLaunch=++launchSequence;let engineFailure=null;
 const query=new URLSearchParams(location.search);
 const renderer=query.get('renderer')||localStorage.getItem('senren-renderer')||'opengl';
 const selected=['opengl','software'].includes(renderer)?renderer:'opengl';
 document.getElementById('renderer').value=selected;
 const log=query.get('startupLog')!=='0';document.getElementById('startup-log').checked=log;
 let budget=Number(query.get('preloadMiB')??localStorage.getItem('senren-preload-mib')??256);
 if(![0,16,32,64,128,256].includes(budget))budget=256;
 document.getElementById('preload-budget').value=String(budget);
 const actions=document.getElementById('preload-actions');
 document.getElementById('retry-preload').hidden=true;
 try{
  const response=await fetch('/api/status',{cache:'no-store'});if(!response.ok)throw Error('服务连接失败');const status=await response.json();builtinGalleryAvailable=status.builtinGalleryAvailable===true;setSessionBusy(sessionBusy);let revision=status.resourceRevision||'';
  preloading=new AbortController();
  const engineReady=window.SenrenEngineCache.prepare(data=>{if(thisLaunch!==launchSequence)return;document.getElementById('engine-cache-status').textContent='引擎缓存 '+(data.total?Math.floor(data.done/data.total*100):100)+'% · '+(data.done/1048576).toFixed(1)+' / '+(data.total/1048576).toFixed(1)+' MiB · 复用 '+(data.reused/1048576).toFixed(1)+' MiB';},preloading.signal).catch(error=>{engineFailure=error;preloading?.abort();throw error;});
  engineReady.catch(()=>{});
  if(!skip&&budget>0){
   if(!window.SenrenPreload)throw Error('预缓存组件未加载');
   const planResponse=await fetch('/api/preload-plan?mib='+budget,{cache:'no-store'});if(!planResponse.ok)throw Error('预缓存资源暂不可用');const plan=await planResponse.json();
   await window.SenrenPreload.preload(plan,data=>{
    const percent=data.total?Math.floor(data.done/data.total*100):100;
    document.getElementById('load-label').textContent='启动预缓存 '+percent+'%';
    document.getElementById('load-meter').value=percent;
    document.getElementById('load-detail').textContent=(data.done/1048576).toFixed(1)+' / '+(data.total/1048576).toFixed(1)+' MiB · 已有缓存 '+(data.reused/1048576).toFixed(1)+' MiB · 游戏分块缓存上限256 MiB';
   },preloading.signal);
   if(entered)return;
   const check=await fetch('/api/status',{cache:'no-store'});if(!check.ok||(await check.json()).resourceRevision!==plan.revision)throw Error('资源已更新，请重试预缓存');revision=plan.revision;
  }
  const engineVersion=await engineReady;
  await sessionReady;
  if(thisLaunch!==launchSequence)return;
  if(entered)return;entered=true;actions.hidden=true;
  const params=new URLSearchParams({webdavUrl:location.origin+'/game/',entry:'data.xp3',loadMode:'lazy',fps:'30',renderer:selected,startupLog:log?'1':'0'});if(revision)params.set('resourceVersion',revision);if(sessionReadOnly)params.set('sessionReadOnly','1');params.set('engineCache',engineVersion);
  frame.src='/engine/index.html?'+params;
 }catch(error){
  error=engineFailure||error;
  if(thisLaunch!==launchSequence||entered||error.name==='AbortError')return;preloading?.abort();
  document.getElementById('load-label').textContent=error.name==='QuotaExceededError'?'浏览器缓存空间不足，可选择立即进入':error.message;
  document.getElementById('load-panel').classList.add('error');document.getElementById('retry-preload').hidden=false;
 }
}
document.getElementById('enter-now').onclick=()=>{if(entered)return;preloading?.abort();launch(true);};
document.getElementById('retry-preload').onclick=()=>{if(entered)return;document.getElementById('load-panel').classList.remove('error');launch();};
document.getElementById('preload-budget').onchange=event=>{if(confirmRestart('更改预缓存量需要重新打开游戏。')){localStorage.setItem('senren-preload-mib',event.target.value);const next=new URL(location.href);next.searchParams.set('preloadMiB',event.target.value);location.href=next.href;}};
launch();
document.getElementById('renderer').onchange=event=>{if(confirmRestart('切换渲染方式会重新启动游戏。')){localStorage.setItem('senren-renderer',event.target.value);const next=new URL(location.href);next.searchParams.set('renderer',event.target.value);location.href=next.href;}};
document.getElementById('full').onclick=async()=>{try{if(document.fullscreenElement)await document.exitFullscreen();else await document.documentElement.requestFullscreen();await screen.orientation?.lock?.('landscape').catch(()=>{});}catch{state.textContent='请使用浏览器的全屏或横屏功能';}};
document.getElementById('menu').onclick=()=>{const win=frame.contentWindow,canvas=win.document.getElementById('canvas');if(!canvas)return;const rect=canvas.getBoundingClientRect();for(const type of ['mousedown','mouseup'])canvas.dispatchEvent(new win.MouseEvent(type,{button:2,buttons:type==='mousedown'?2:0,clientX:rect.left+rect.width/2,clientY:rect.top+rect.height/2,bubbles:true}));};
document.getElementById('export').onclick=async()=>{try{if(sessionReadOnly)throw Error('本次为只读鉴赏启动，不提供存档导出');const win=frame.contentWindow;if(!win.Module?._saveSpaceId)throw new Error('请等待游戏存档初始化');await win.idbExportZip(win.Module._saveSpaceId);state.textContent='存档已导出，请妥善保存';}catch(e){state.textContent=e.message;}};
document.getElementById('back').onclick=()=>{if(confirm(sessionReadOnly?'返回会结束本次鉴赏，临时存档不会保留。':'请先在游戏内保存进度。返回启动页？'))location.href='/';};

const panel=document.getElementById('load-panel'),meter=document.getElementById('load-meter');
let progressSequence=0;
frame.addEventListener('load',()=>{progressSequence=0;});
window.addEventListener('message',event=>{
 if(event.origin!==location.origin||event.source!==frame.contentWindow||event.data?.type!=='senren-loading')return;
 const data=event.data;if(!Number.isSafeInteger(data.sequence)||data.sequence<=progressSequence||typeof data.phase!=='string')return;progressSequence=data.sequence;
 const percent=Number.isFinite(data.percent)?Math.max(0,Math.min(100,data.percent)):null;
 document.getElementById('load-label').textContent=data.phase+(percent===null?'':' '+percent+'%');
 if(percent===null)meter.removeAttribute('value');else meter.value=percent;
 const mib=n=>(Math.max(0,Number(n)||0)/1048576).toFixed(1);
 document.getElementById('load-detail').textContent='已读取 '+mib(data.readBytes)+' MiB · 游戏缓存 '+mib(data.cachedBytes)+' MiB · 百分比为当前资源进度';
 panel.classList.toggle('error',data.error===true);
});
document.getElementById('hide-progress').onclick=()=>{panel.hidden=true;};
document.getElementById('show-progress').onclick=()=>{panel.hidden=!panel.hidden;};
document.getElementById('startup-log').onchange=event=>{
 if(confirmRestart('更改画面日志设置需要重新启动游戏。')){const next=new URL(location.href);next.searchParams.set('startupLog',event.target.checked?'1':'0');location.href=next.href;}else event.target.checked=!event.target.checked;
};

window.addEventListener('message',event=>{
 if(event.origin!==location.origin||event.source!==frame.contentWindow||event.data?.type!=='senren-fps')return;
 const value=event.data.fps;document.getElementById('fps').textContent='绘制 FPS：'+(event.data.paused?'已暂停':Number.isFinite(value)?value.toFixed(1):'等待画面');
});
