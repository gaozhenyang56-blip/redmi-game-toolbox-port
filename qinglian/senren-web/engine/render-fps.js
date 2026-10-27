/* Count frames with actual draws/clears to the main canvas framebuffer. */
(()=>{
 const contexts=new WeakMap();let drawn=false,seen=false,frames=0,last=performance.now();
 function state(gl){let info=contexts.get(gl);if(!info){info={framebuffer:null};contexts.set(gl,info);}return info;}
 function record(gl){if(gl.canvas?.id==='canvas'&&state(gl).framebuffer===null){drawn=true;seen=true;}}
 for(const type of [window.WebGLRenderingContext,window.WebGL2RenderingContext]){
  const prototype=type?.prototype;if(!prototype)continue;
  const bind=prototype.bindFramebuffer;if(bind)prototype.bindFramebuffer=function(target,buffer){const result=bind.apply(this,arguments);if(target===this.FRAMEBUFFER||target===this.DRAW_FRAMEBUFFER)state(this).framebuffer=buffer||null;return result;};
  for(const name of ['drawArrays','drawElements','drawArraysInstanced','drawElementsInstanced','clear']){
   const original=prototype[name];if(!original)continue;
   prototype[name]=function(){const result=original.apply(this,arguments);const count=name==='clear'?(arguments[0]&this.COLOR_BUFFER_BIT):name.startsWith('drawArrays')?arguments[2]:arguments[1];if(count>0)record(this);return result;};
  }
 }
 function send(fps,paused=false){const data={type:'senren-fps',fps,paused,source:'main-canvas-draws'};window.senrenRenderFPS=data;if(window.parent!==window)window.parent.postMessage(data,location.origin);}
 function sample(now){if(drawn){frames++;drawn=false;}const elapsed=now-last;if(elapsed>=1000){send(seen?frames*1000/elapsed:null);frames=0;last=now;}requestAnimationFrame(sample);}
 document.addEventListener('visibilitychange',()=>{drawn=false;frames=0;last=performance.now();if(document.hidden)send(null,true);});
 requestAnimationFrame(sample);
})();
