/* Validate a user-provided save ZIP entirely in browser memory. */
(()=>{
 async function parse(file){
  if(!file||file.size<=0||file.size>32*1024**2)throw Error('鉴赏存档ZIP需在32 MiB以内');
  let zip;try{zip=await JSZip.loadAsync(file);}catch{throw Error('存档ZIP无法读取，请使用完整、未加密的ZIP文件');}const entries=Object.values(zip.files).filter(e=>!e.dir);if(!entries.length||entries.length>1000)throw Error('存档ZIP最多1000个文件');
  let expanded=0;const pending=[],seen=new Set();
  for(const entry of entries){
   const name=entry.unsafeOriginalName||entry.name,parts=name.split('/');
   if(name.startsWith('/')||name.includes('\\')||name.includes(':')||[...name].some(c=>c.charCodeAt(0)<32)||parts.some(p=>!p||p==='.'||p==='..')||typeof entry.unixPermissions==='number'&&(entry.unixPermissions&0xf000)===0xa000)throw Error('存档ZIP包含无效路径或链接');
   let size=entry._data===''?0:entry._data?.uncompressedSize;if(size===undefined&&typeof entry._data?.then==='function'){const empty=await entry._data;if((empty?.length??empty?.byteLength??-1)===0)size=0;}if(!Number.isSafeInteger(size)||size<0)throw Error('无法核对存档展开大小');expanded+=size;if(expanded>64*1024**2)throw Error('存档展开总大小不能超过64 MiB');
   const prefix=parts.findIndex(p=>p.toLowerCase()==='savedata');let relative;
   if(prefix>=0)relative=parts.slice(prefix+1).join('/');
   else if(parts.length===1&&(/\.(?:ksd|cfu|sav|dat)(?:[.~\d-]*)$/i.test(name)||name==='savecheck'))relative=name;
   else continue;
   if(!relative||relative.startsWith('.')||relative.length>400)throw Error('存档文件名无效');
   const path='/savedata/'+relative,key=path.toLowerCase();if(seen.has(key))throw Error('存档ZIP存在重名文件');seen.add(key);pending.push({entry,path,size});
  }
  if(!pending.length)throw Error('未找到savedata目录或可识别的存档文件');
  const table=new Uint32Array(256);for(let n=0;n<256;n++){let c=n;for(let k=0;k<8;k++)c=c&1?0xedb88320^(c>>>1):c>>>1;table[n]=c>>>0;}
  async function read(item){return new Promise((resolve,reject)=>{let length=0,crc=0xffffffff,failed=false;const chunks=[],stream=item.entry.internalStream('uint8array');stream.on('data',data=>{if(failed)return;length+=data.length;if(length>item.size){failed=true;stream.pause();reject(Error('存档展开大小异常'));return;}for(const byte of data)crc=table[(crc^byte)&255]^(crc>>>8);chunks.push(data);});stream.on('error',()=>reject(Error('存档ZIP数据无法解压')));stream.on('end',()=>{if(failed)return;if(length!==item.size||((~crc)>>>0)!==((item.entry._data?.crc32??0)>>>0)){reject(Error('存档长度或CRC校验失败'));return;}const data=new Uint8Array(length);let offset=0;for(const part of chunks){data.set(part,offset);offset+=part.length;}resolve(data);});stream.resume();});}
  const files=[];for(const item of pending){const data=await read(item);files.push({path:item.path,data});}
  return files;
 }
 window.SenrenGallerySave={parse};
})();
