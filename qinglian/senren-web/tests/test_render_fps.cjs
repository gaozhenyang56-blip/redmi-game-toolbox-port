const assert=require('node:assert/strict'),vm=require('node:vm'),fs=require('node:fs');
const source=fs.readFileSync(__dirname+'/../engine/render-fps.js','utf8');let callback,now=0,messages=[];
class GL{constructor(){this.canvas={id:'canvas'};this.FRAMEBUFFER=1;this.DRAW_FRAMEBUFFER=2;this.COLOR_BUFFER_BIT=4;}bindFramebuffer(){}drawArrays(){}drawElements(){}clear(){}}
const document={hidden:false,addEventListener(){}};const parent={postMessage:data=>messages.push(data)},window={WebGLRenderingContext:GL,parent};
vm.runInNewContext(source,{window,document,WeakMap,performance:{now:()=>now},location:{origin:'https://game.example'},requestAnimationFrame:f=>callback=f});
const gl=new GL();for(let i=1;i<=60;i++){now=i*1000/60;if(i%2===0)gl.drawArrays(0,0,3);callback(now);}assert(Math.abs(messages.at(-1).fps-30)<0.1);
for(let i=61;i<=121;i++){now=i*1000/60;callback(now);}assert.equal(messages.at(-1).fps,0);
gl.bindFramebuffer(gl.FRAMEBUFFER,{});for(let i=122;i<=183;i++){now=i*1000/60;gl.drawArrays(0,0,3);callback(now);}assert.equal(messages.at(-1).fps,0);
console.log('FPS counts rendered canvas frames rather than display callbacks or offscreen draws: PASS');
