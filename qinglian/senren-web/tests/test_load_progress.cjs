const assert=require('node:assert/strict'),vm=require('node:vm'),fs=require('node:fs');
const script=fs.readFileSync(__dirname+'/../engine/load-progress.js','utf8');
(async()=>{
 let messages=[],tick=0;const parent={postMessage:data=>messages.push(data)};let response;
 const window={fetch:async()=>response,parent};
 const context={window,URL,location:{origin:'https://game.example',href:'https://game.example/engine/index.html'},Number,Date:{now:()=>tick+=200}};
 vm.runInNewContext(script,context);
 response=new Response(new ReadableStream({start(c){c.enqueue(new Uint8Array(2));c.enqueue(new Uint8Array(8));c.close();}}),{headers:{'Content-Length':'10'}});
 let original=await window.fetch('https://game.example/engine/index.wasm');assert.equal((await original.arrayBuffer()).byteLength,10);
 for(let i=0;i<8;i++)await new Promise(setImmediate);
 assert(messages.some(m=>m.percent===20));assert(messages.some(m=>m.percent===100));assert.equal(window.senrenLoadingState.readBytes,10);
 messages=[];response=new Response('unknown total');original=await window.fetch('https://game.example/game/patch.xp3');await original.text();for(let i=0;i<8;i++)await new Promise(setImmediate);
 assert(messages.length>0);assert(messages.every(m=>m.percent===null));
 messages=[];response=new Response('failure',{status:503});original=await window.fetch('https://game.example/game/data.xp3');assert.equal(original.status,503);assert.equal(messages.at(-1).error,true);
 messages=[];await window.fetch('https://external.example/a');assert.equal(messages.length,0);
 window.SenrenLoading.cached(25);assert.equal(window.senrenLoadingState.percent,100);assert.equal(window.senrenLoadingState.cachedBytes,25);
 window.SenrenLoading.initializing();assert.equal(window.senrenLoadingState.percent,null);
 console.log('Measured transfer percentages, unknown totals, failures, cache and initialization states: PASS');
})().catch(e=>{console.error(e);process.exit(1);});
