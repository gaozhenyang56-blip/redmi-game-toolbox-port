/* Show the native startup log canvas by default; startupLog=0 opts out. */
function applyPortPreferences(){
 if(typeof FS==='undefined'||typeof VLFS==='undefined')return;
 try{
  const path='/save/GlobalPreference.xml';let xml='';try{xml=FS.readFile(path,{encoding:'utf8'});}catch{}
  let doc=new DOMParser().parseFromString(xml||'<GlobalPreference/>','application/xml');
  if(doc.querySelector('parsererror'))doc=new DOMParser().parseFromString('<GlobalPreference/>','application/xml');
  let item=[...doc.getElementsByTagName('Item')].find(x=>x.getAttribute('key')==='outputlog');
  if(!item){item=doc.createElement('Item');item.setAttribute('key','outputlog');doc.documentElement.append(item);}
  item.setAttribute('value',new URLSearchParams(location.search).get('startupLog')==='0'?'0':'1');
  const value=new XMLSerializer().serializeToString(doc);try{FS.mkdir('/save');}catch{}
  FS.writeFile(path,value,{encoding:'utf8'});VLFS.registerOverlayFile(path,new TextEncoder().encode(value));
 }catch(error){console.warn('[port] startup log preference could not be applied',error.message);}
}
