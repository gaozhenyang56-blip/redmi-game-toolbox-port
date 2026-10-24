'use strict';
const $ = id => document.getElementById(id);
let token = '', generation = 0, preview = false, imageURL = null, gesture = null, pending = false;
let toastTimer, frameEpoch = 0;
const screenNames = {on:'亮屏', off:'息屏', doze:'息屏显示 / Doze', unknown:'未知'};
function message(text) {
  $('message').textContent = text; $('message').style.display = 'block';
  clearTimeout(toastTimer); toastTimer = setTimeout(() => $('message').style.display = 'none', 5000);
}
async function api(path, data) {
  const response = await fetch(path, {method:data ? 'POST':'GET', cache:'no-store',
    headers:{Authorization:`Bearer ${token}`, ...(data ? {'Content-Type':'application/json'}:{})},
    body:data ? JSON.stringify(data):undefined, signal:AbortSignal.timeout(45000)});
  if (!response.ok) {
    const body = await response.json();
    if (response.status === 401) logout();
    throw new Error(body.error || `请求失败 ${response.status}`);
  }
  return response;
}
function clearFrame() {
  $('screen').hidden = true; $('placeholder').hidden = false;
  $('screen').removeAttribute('src');
  if (imageURL) URL.revokeObjectURL(imageURL);
  imageURL = null;
}
function render(state) {
  $('connection').textContent = state.connected ? '● 设备在线':'设备离线';
  $('connection').classList.toggle('online', state.connected);
  $('adb-state').textContent = state.connected ? '已连接':'未连接';
  $('screen-state').textContent = screenNames[state.screen] || '未知';
  $('lock-state').textContent = state.locked === null ? '未知':state.locked ? '已锁定':'未锁定';
  $('size').textContent = state.width ? `${state.width} × ${state.height}`:'—';
  $('checked').textContent = state.checkedAt ? new Date(state.checkedAt * 1000).toLocaleTimeString():'—';
  $('adb-state').title = state.error || '';
  if (!state.connected) clearFrame();
}
async function statusLoop(epoch) {
  if (!token || epoch !== generation) return;
  try {const state = await (await api('/api/status')).json(); if(epoch === generation) render(state);}
  catch(e) { if(epoch === generation) {render({connected:false,screen:'unknown',locked:null}); message(e.message);} }
  if (token && epoch === generation) setTimeout(() => statusLoop(epoch), 3000);
}
function updatePreview() { $('preview').textContent = preview ? '暂停画面':'开始画面'; $('live').textContent = preview ? '截图预览 · 约 1 FPS':'画面已暂停'; }
async function frames(epoch, stream) {
  if (!token || !preview || epoch !== generation || stream !== frameEpoch) return;
  try {
    const blob = await (await api('/api/screen')).blob();
    if (!preview || epoch !== generation || stream !== frameEpoch) return;
    const next = URL.createObjectURL(blob), old = imageURL;
    imageURL = next; $('screen').src = next; $('screen').hidden = false; $('placeholder').hidden = true;
    if (old) URL.revokeObjectURL(old);
  } catch(e) { if(epoch === generation && stream === frameEpoch) {clearFrame(); message(e.message);} }
  if (token && preview && epoch === generation && stream === frameEpoch) setTimeout(() => frames(epoch, stream), 1000);
}
async function control(data) {
  if (!token) return message('请先输入访问令牌连接');
  if (pending) return;
  pending = true; const epoch = generation;
  try {
    const state = await (await api('/api/control', data)).json();
    if (epoch !== generation) return;
    render(state);
    if(data.action === 'unlock') message('已发送唤醒和解除锁屏请求；有密码时仍需正常验证');
  } catch(e) { if(epoch === generation) message(e.message); }
  finally { pending = false; }
}
function logout() {
  if (token) api('/api/logout', {}).catch(() => {});
  token = ''; generation++; preview = false; gesture = null;
  clearFrame(); updatePreview(); $('login').hidden = false;
  for(const id of ['token','otp','totp-secret','totp-uri','enroll-code']) $(id).value='';
  $('enroll-panel').hidden=true; enrollment=null;
  render({connected:false,screen:'unknown',locked:null}); $('connection').textContent = '尚未连接';
}
$('login-form').addEventListener('submit', async e => {
  e.preventDefault();
  const button = e.submitter; button.disabled = true;
  try {
    const response = await fetch('/api/login', {method:'POST', headers:{'Content-Type':'application/json'},
      body:JSON.stringify({token:$('token').value.trim(), otp:$('otp').value}), signal:AbortSignal.timeout(15000)});
    const data = await response.json();
    if (!response.ok) throw new Error(data.error);
    token = data.session; $('token').value = ''; $('otp').value = '';
    generation++; $('login').hidden = true; statusLoop(generation);
  } catch(e) {message(e.message); $('otp').value = '';}
  finally {button.disabled = false;}
});
$('logout').addEventListener('click', logout);
$('preview').addEventListener('click', () => {
  if (!token) return message('请先输入访问令牌连接');
  preview = !preview; frameEpoch++; updatePreview(); if(preview) frames(generation, frameEpoch);
});
document.querySelectorAll('[data-action]').forEach(b => b.addEventListener('click', () => control({action:b.dataset.action})));
document.querySelectorAll('[data-key]').forEach(b => b.addEventListener('click', () => control({action:'key', key:b.dataset.key})));
$('text-form').addEventListener('submit', e => {e.preventDefault(); control({action:'text', text:$('text').value});});
function point(e) {
  const img = $('screen'), r = img.getBoundingClientRect();
  const width = img.naturalWidth, height = img.naturalHeight;
  return {x:Math.max(0,Math.min(width-1,Math.floor((e.clientX-r.left)*width/r.width))),
    y:Math.max(0,Math.min(height-1,Math.floor((e.clientY-r.top)*height/r.height))),width,height};
}
$('screen').addEventListener('pointerdown', e => {
  if(e.button !== 0 || !e.isPrimary || !$('screen').naturalWidth) return;
  gesture = {...point(e), start:performance.now(), id:e.pointerId}; $('screen').setPointerCapture(e.pointerId);
});
$('screen').addEventListener('pointercancel', () => gesture = null);
$('screen').addEventListener('pointerup', e => {
  if (!gesture || gesture.id !== e.pointerId) return;
  const start = gesture, end = point(e); gesture = null;
  const elapsed = performance.now()-start.start;
  if (Math.hypot(end.x-start.x,end.y-start.y) < 10 && elapsed < 400) control({action:'tap',x:start.x,y:start.y,width:start.width,height:start.height});
  else control({action:'swipe',x:start.x,y:start.y,x2:end.x,y2:end.y,width:start.width,height:start.height,duration:Math.round(Math.min(2000,Math.max(100,elapsed)))});
});

window.addEventListener('pagehide', () => {if(token) fetch('/api/logout', {method:'POST', headers:{Authorization:`Bearer ${token}`}, keepalive:true}).catch(() => {});});

let enrollment = null;
$('enroll-start').addEventListener('click', async () => {
  try {
    const response=await fetch('/api/totp/enroll',{method:'POST',headers:{'Content-Type':'application/json'},
      body:JSON.stringify({token:$('token').value.trim(),otp:$('otp').value}),signal:AbortSignal.timeout(15000)});
    const data=await response.json(); if(!response.ok) throw new Error(data.error);
    enrollment=data.enrollment; $('totp-secret').value=data.secret; $('totp-uri').value=data.uri;
    $('enroll-panel').hidden=false; $('otp').value='';
  } catch(e) {message(e.message);}
});
$('enroll-form').addEventListener('submit', async e => {
  e.preventDefault();
  try {
    const response=await fetch('/api/totp/confirm',{method:'POST',headers:{'Content-Type':'application/json'},
      body:JSON.stringify({token:$('token').value.trim(),enrollment,otp:$('enroll-code').value}),signal:AbortSignal.timeout(15000)});
    const data=await response.json(); if(!response.ok) throw new Error(data.error);
    token=data.session; enrollment=null;
    for(const id of ['token','otp','totp-secret','totp-uri','enroll-code']) $(id).value='';
    $('enroll-panel').hidden=true; $('login').hidden=true; generation++; statusLoop(generation);
    message('TOTP 已启用，后续每次连接均需动态验证码');
  } catch(e) {message(e.message);}
});
