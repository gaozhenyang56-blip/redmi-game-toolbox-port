import {pathToFileURL} from 'node:url';
const {rewritePromptAssembly}=await import(pathToFileURL(process.argv[2]));
const {renderPrompt}=await import(pathToFileURL(process.argv[3]));
let errors=0,passed=0;
for(const hasCwd of [false,true])for(const suffix of ['', 'Your working directory is {{cwd}}.']){
 const variables={provider:'compatibility-check',mode:'standard',...(hasCwd?{cwd:'/compatibility-fixture'}:{})};
 const input={sections:[{name:'deployment:persona-suffix',text:suffix}],contexts:[],tools:[],variables};
 try{
  const rewritten=rewritePromptAssembly(input,'Compatibility check.',{capabilityProtocol:false});
  const rendered=renderPrompt(rewritten);
  if(rendered.includes('{{cwd}}'))throw Error('Unresolved workspace variable');
  if(hasCwd&&!rendered.includes('/compatibility-fixture'))throw Error('Legacy workspace context lost');
  passed++;
 }catch(e){errors++;}
}
console.log(JSON.stringify({passed,errors,ok:errors===0}));
