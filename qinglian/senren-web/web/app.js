'use strict';
const start=document.getElementById('start'),status=document.getElementById('status'),support=document.getElementById('support');
const capabilities={secure:window.isSecureContext,shared:window.crossOriginIsolated&&typeof SharedArrayBuffer!=='undefined',jspi:typeof WebAssembly.Suspending==='function'&&typeof WebAssembly.promising==='function',graphics:!!document.createElement('canvas').getContext('webgl2')};
let entry='data.xp3';
async function refresh(){
 try{
  const response=await fetch('/api/status',{cache:'no-store'});if(!response.ok)throw new Error('服务连接失败');
  const data=await response.json();entry=data.entry||entry;
  const missing=Object.entries(capabilities).filter(([,value])=>!value).map(([key])=>({secure:'安全连接',shared:'共享内存',jspi:'WebAssembly JSPI',graphics:'WebGL2'})[key]);
  if(missing.length){status.textContent='此浏览器暂时无法启动游戏';support.textContent='缺少：'+missing.join('、')+'。请使用支持这些能力的新版 Chrome / Edge；手机访问需要受信任的 HTTPS。';return;}
  support.textContent='首次加载需要准备资源，请保持页面在前台。建议横屏使用 Android Chrome。';
  status.textContent=data.ready?(data.verified?'资源已就绪':'资源已就绪，兼容性待验证'):'游戏资源正在下载与准备中…';
  start.disabled=!data.ready||!data.engineReady;
 }catch(error){status.textContent=error.message;}
 if(start.disabled)setTimeout(refresh,5000);
}
start.addEventListener('click',()=>location.href='/play');
refresh();
