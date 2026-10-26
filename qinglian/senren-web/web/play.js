'use strict';
const frame=document.getElementById('game'),state=document.getElementById('state');
frame.src='/engine/index.html?webdavUrl='+encodeURIComponent(location.origin+'/game/')+'&entry=data.xp3&loadMode=lazy&fps=30';
document.getElementById('full').onclick=async()=>{try{if(document.fullscreenElement)await document.exitFullscreen();else await document.documentElement.requestFullscreen();await screen.orientation?.lock?.('landscape').catch(()=>{});}catch{state.textContent='请使用浏览器的全屏或横屏功能';}};
document.getElementById('menu').onclick=()=>{const win=frame.contentWindow,canvas=win.document.getElementById('canvas');if(!canvas)return;const rect=canvas.getBoundingClientRect();for(const type of ['mousedown','mouseup'])canvas.dispatchEvent(new win.MouseEvent(type,{button:2,buttons:type==='mousedown'?2:0,clientX:rect.left+rect.width/2,clientY:rect.top+rect.height/2,bubbles:true}));};
document.getElementById('export').onclick=async()=>{try{const win=frame.contentWindow;if(!win.Module?._saveSpaceId)throw new Error('请等待游戏存档初始化');await win.idbExportZip(win.Module._saveSpaceId);state.textContent='存档已导出，请妥善保存';}catch(e){state.textContent=e.message;}};
document.getElementById('back').onclick=()=>{if(confirm('请先在游戏内保存进度。返回启动页？'))location.href='/';};
