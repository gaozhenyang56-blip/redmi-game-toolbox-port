'use strict';
const frame=document.getElementById('game'),state=document.getElementById('state');
async function launch(){
 const query=new URLSearchParams(location.search);
 const renderer=query.get('renderer')||localStorage.getItem('senren-renderer')||'opengl';
 const selected=['opengl','software'].includes(renderer)?renderer:'opengl';
 document.getElementById('renderer').value=selected;
 const log=query.get('startupLog')!=='0';document.getElementById('startup-log').checked=log;
 let revision='';try{const response=await fetch('/api/status',{cache:'no-store'});if(response.ok)revision=(await response.json()).resourceRevision||'';}catch{}
 const params=new URLSearchParams({webdavUrl:location.origin+'/game/',entry:'data.xp3',loadMode:'lazy',fps:'30',renderer:selected,startupLog:log?'1':'0'});
 if(revision)params.set('resourceVersion',revision);
 frame.src='/engine/index.html?'+params;
}
launch();
document.getElementById('renderer').onchange=event=>{if(confirm('切换渲染方式会重新启动游戏，请先保存进度。')){localStorage.setItem('senren-renderer',event.target.value);const next=new URL(location.href);next.searchParams.set('renderer',event.target.value);location.href=next.href;}};
document.getElementById('full').onclick=async()=>{try{if(document.fullscreenElement)await document.exitFullscreen();else await document.documentElement.requestFullscreen();await screen.orientation?.lock?.('landscape').catch(()=>{});}catch{state.textContent='请使用浏览器的全屏或横屏功能';}};
document.getElementById('menu').onclick=()=>{const win=frame.contentWindow,canvas=win.document.getElementById('canvas');if(!canvas)return;const rect=canvas.getBoundingClientRect();for(const type of ['mousedown','mouseup'])canvas.dispatchEvent(new win.MouseEvent(type,{button:2,buttons:type==='mousedown'?2:0,clientX:rect.left+rect.width/2,clientY:rect.top+rect.height/2,bubbles:true}));};
document.getElementById('export').onclick=async()=>{try{const win=frame.contentWindow;if(!win.Module?._saveSpaceId)throw new Error('请等待游戏存档初始化');await win.idbExportZip(win.Module._saveSpaceId);state.textContent='存档已导出，请妥善保存';}catch(e){state.textContent=e.message;}};
document.getElementById('back').onclick=()=>{if(confirm('请先在游戏内保存进度。返回启动页？'))location.href='/';};

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
 if(confirm('更改画面日志设置需要重新启动游戏，请先保存进度。')){const next=new URL(location.href);next.searchParams.set('startupLog',event.target.checked?'1':'0');location.href=next.href;}else event.target.checked=!event.target.checked;
};
