const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),JSZip=require('../engine/vendor/jszip.min.js');
const window={};vm.runInNewContext(fs.readFileSync(__dirname+'/../web/gallery-save.js','utf8'),{window,JSZip,Uint8Array,Uint32Array,Set,Number,Object,Promise,Error});
async function zip(files){const z=new JSZip();for(const [name,value]of files)z.file(name,value);const data=await z.generateAsync({type:'nodebuffer',compression:'STORE'});data.size=data.length;return data;}
(async()=>{
 let files=await window.SenrenGallerySave.parse(await zip([['game/savedata/datasu.ksd','gallery fixture'],['readme.txt','ignore'],['savedata/savecheck','']]));assert.equal(files.length,2);assert.equal(files[0].path,'/savedata/datasu.ksd');assert.equal(Buffer.from(files[0].data).toString(),'gallery fixture');
 files=await window.SenrenGallerySave.parse(await zip([['data.cfu','flat save']]));assert.equal(files[0].path,'/savedata/data.cfu');
 await assert.rejects(window.SenrenGallerySave.parse(await zip([['../savedata/evil.ksd','bad']])),/路径/);
 await assert.rejects(window.SenrenGallerySave.parse(await zip([['savedata/a.ksd','a'],['Savedata/A.ksd','b']])),/重名/);
 await assert.rejects(window.SenrenGallerySave.parse(await zip([['readme.txt','only readme']])),/未找到/);
 const damaged=await zip([['savedata/test.ksd','hello']]);const offset=damaged.indexOf(Buffer.from('hello'));assert(offset>=0);damaged[offset]^=1;await assert.rejects(window.SenrenGallerySave.parse(damaged),/CRC/);
 console.log('Gallery save ZIP paths, empty files, flat saves, duplicate rejection and CRC validation: PASS');
})().catch(e=>{console.error(e);process.exit(1)});
