/* A read-only gallery launch never opens the normal save database. */
(()=>{
 const readOnly=new URLSearchParams(location.search).get('sessionReadOnly')==='1';let imported=[];
 const ready=readOnly?new Promise((resolve,reject)=>{
  const channel=new MessageChannel(),timer=setTimeout(()=>{channel.port1.close();reject(Error('未收到本次鉴赏存档，请从启动页重试'));},30000);
  channel.port1.onmessage=event=>{clearTimeout(timer);channel.port1.close();try{const files=event.data?.files;if(!Array.isArray(files)||!files.length||files.length>1000)throw Error('本次鉴赏存档无效');let total=0;const names=new Set();for(const file of files){if(typeof file.path!=='string'||!file.path.startsWith('/savedata/')||file.path.includes('\\')||file.path.split('/').some(p=>p==='..'||p==='.')||!(file.data instanceof Uint8Array)||names.has(file.path.toLowerCase()))throw Error('鉴赏存档路径无效');names.add(file.path.toLowerCase());total+=file.data.length;}if(total>64*1024**2)throw Error('鉴赏存档过大');imported=files;resolve();}catch(error){reject(error);}};
  if(window.parent===window){clearTimeout(timer);channel.port1.close();reject(Error('请从游戏启动页导入鉴赏存档'));return;}
  window.parent.postMessage({type:'senren-session-request'},location.origin,[channel.port2]);
 }):Promise.resolve();
 async function install(){if(!readOnly)return;await ready;await waitForFS();for(const file of imported){writeFileToFS(file.path,file.data);VLFS.registerOverlayFile(file.path,file.data);}Module._saveSpaceId=null;Module._sessionReadOnly=true;imported=[];}
 window.SenrenSessionSaves={readOnly,ready,install};
})();
