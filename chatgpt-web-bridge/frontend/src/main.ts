import RFB from '@novnc/novnc';
import './style.css';

function element<T extends HTMLElement = HTMLElement>(id: string): T {
  return document.getElementById(id) as T;
}
function show(id: string, visible: boolean) { element(id).hidden = !visible; }
function message(id: string, value: string) { element(id).textContent = value; }
function errorText(error: unknown) { return error instanceof Error ? error.message : String(error); }
function click(id: string, callback: () => void) { element(id).addEventListener('click', callback); }
function dialog(id: string) { return element<HTMLDialogElement>(id); }
function showDialog(id: string) {
  document.querySelectorAll('dialog[open]').forEach(item => (item as HTMLDialogElement).close());
  dialog(id).showModal();
}

let csrf = '';
let rfb: RFB | null = null;
let connected = false;
let timer: number | undefined;
let retry = 0;
const isAdmin = location.pathname === '/admin';

class APIError extends Error {
  constructor(public status: number, description: string) { super(description); }
}

async function api<T = void>(path: string, method = 'GET', data?: object): Promise<T> {
  const headers = new Headers();
  if (method !== 'GET' && csrf) headers.set('X-CSRF-Token', csrf);
  if (data) headers.set('Content-Type', 'application/json');
  const reply = await fetch('/api/' + path, {method, headers, body: data && JSON.stringify(data), cache: 'no-store'});
  if (reply.status === 204) return undefined as T;
  if (!reply.ok) {
    const reason = await reply.json().catch(() => ({}));
    if (reply.status === 401 && csrf && path !== 'login' && path !== 'password') closeSession('会话已过期，请重新登录。');
    throw new APIError(reply.status, reason.error || '请求失败（' + reply.status + '）');
  }
  return reply.json() as Promise<T>;
}

function report(id: string, run: () => Promise<void>) {
  message(id, '');
  void run().catch(err => message(id, errorText(err)));
}

interface Status {
  browser: { state: string; message: string; memoryBytes?: number; memoryMax?: number; cpuMicros?: string; memoryEvents?: string } | null;
  active: boolean;
  owned: boolean;
  version: string;
  release: string;
  events: string[];
}

function displaySettings() {
  if (!rfb) return;
  const mode = element<HTMLSelectElement>('display-mode').value;
  element('screen').dataset.mode = mode;
  rfb.scaleViewport = mode !== 'zoom';
  rfb.clipViewport = mode === 'zoom';
  rfb.dragViewport = mode === 'zoom';
  rfb.resizeSession = mode !== 'zoom';
  const low = element<HTMLInputElement>('low').checked;
  rfb.qualityLevel = low ? 3 : 6;
  rfb.compressionLevel = low ? 7 : 3;
}
function connection(text: string) {
  show('connection', Boolean(text));
  message('connection', text);
  message('tool-status', text || '已连接 Chromium');
}
function stopConnection() {
  clearTimeout(timer);
  const old = rfb;
  rfb = null;
  connected = false;
  old?.disconnect();
  element('screen').replaceChildren();
}
function schedule() {
  if (!csrf || isAdmin || !navigator.onLine) return;
  clearTimeout(timer);
  timer = window.setTimeout(() => void connect(), Math.min(16000, 1500 * 2 ** retry++));
}
async function connect() {
  if (!csrf || isAdmin || rfb) return;
  if (!navigator.onLine) { connection('网络已断开，恢复后自动重连'); return; }
  connection('正在连接远程 Chromium…');
  try {
    const state = await api<Status>('status');
    if (!csrf || rfb) return;
    if (state.active) {
      connection('远程浏览器正在被另一连接使用，正在等待…');
      schedule();
      return;
    }
    if (state.browser?.state !== 'running') {
      connection(state.browser?.message || '浏览器服务暂不可用，可在管理后台查看状态');
      schedule();
      return;
    }
    const addr = new URL('/api/vnc', location.href);
    addr.protocol = addr.protocol === 'https:' ? 'wss:' : 'ws:';
    const client = new RFB(element('screen'), addr.href, {wsProtocols: ['binary']});
    rfb = client;
    displaySettings();
    client.addEventListener('connect', () => {
      if (rfb !== client) return;
      connected = true;
      retry = 0;
      connection('');
      client.focus();
    });
    client.addEventListener('disconnect', () => {
      if (rfb !== client) return;
      rfb = null;
      connected = false;
      connection('远程连接已断开，正在重试…');
      schedule();
    });
  } catch (error) {
    if (!csrf) return;
    connection(errorText(error));
    schedule();
  }
}
function reconnect() {
  stopConnection();
  retry = 0;
  schedule();
}
function closeSession(reason = '') {
  csrf = '';
  stopConnection();
  document.querySelectorAll('dialog[open]').forEach(d => (d as HTMLDialogElement).close());
  show('gate', true);
  show('login', true);
  show('workspace', false);
  show('admin', false);
  element<HTMLFormElement>('login').reset();
  element<HTMLFormElement>('change').reset();
  element<HTMLTextAreaElement>('compose').value = '';
  message('gate-status', reason);
}
function openSession(value: string) {
  csrf = value;
  show('gate', false);
  show('workspace', !isAdmin);
  show('admin', isAdmin);
  if (isAdmin) report('admin-status', refreshStatus);
  else void connect();
}
async function logout() {
  await api('logout', 'POST');
  closeSession('已退出 Web Bridge。');
}

document.querySelectorAll<HTMLButtonElement>('[data-close]').forEach(button => {
  button.addEventListener('click', () => dialog(button.dataset.close!).close());
});
element<HTMLFormElement>('login').addEventListener('submit', event => {
  event.preventDefault();
  const input = element<HTMLInputElement>('password');
  const password = input.value;
  const button = element('login').querySelector('button')!;
  button.disabled = true;
  report('gate-status', async () => {
    try {
      const result = await api<{csrf: string}>('login', 'POST', {password});
      input.value = '';
      openSession(result.csrf);
    } finally { button.disabled = false; }
  });
});
window.addEventListener('offline', () => {
  if (csrf && !isAdmin) { stopConnection(); connection('网络已断开，恢复后自动重连'); }
});
window.addEventListener('online', () => void connect());
window.addEventListener('pagehide', stopConnection);
window.addEventListener('pageshow', event => { if (event.persisted && csrf && !isAdmin) void connect(); });
click('tools', () => showDialog('toolbox'));
click('reconnect', () => { dialog('toolbox').close(); reconnect(); });
click('refresh', () => report('tool-status', async () => {
  await api('browser/refresh', 'POST');
  dialog('toolbox').close();
}));
click('fullscreen', () => report('tool-status', async () => {
  if (document.fullscreenElement) await document.exitFullscreen();
  else if (document.documentElement.requestFullscreen) await document.documentElement.requestFullscreen();
  else throw new Error('此浏览器未提供网页全屏，可使用浏览器的全屏方式。');
  dialog('toolbox').close();
}));
click('logout', () => report('tool-status', logout));
click('admin-logout', () => report('admin-status', logout));
element('display-mode').addEventListener('change', displaySettings);
element('low').addEventListener('change', displaySettings);

function openInput() {
  const area = element<HTMLTextAreaElement>('compose');
  area.value = '';
  message('input-status', '');
  showDialog('input');
  area.focus();
}
function needsConnection() {
  if (!connected || !rfb) throw new Error('请先连接远程浏览器。');
  return rfb;
}
const area = element<HTMLTextAreaElement>('compose');
const keyMode = element<HTMLInputElement>('keystrokes');
click('keyboard', openInput);
click('open-input', openInput);
keyMode.addEventListener('change', () => {
  area.classList.toggle('masked', keyMode.checked);
});
click('send', () => report('input-status', async () => {
  const client = needsConnection();
  const value = area.value;
  if (!value) throw new Error('请输入文字。');
  if (keyMode.checked) {
    if (value.length > 256 || /[^\x20-\x7e]/u.test(value)) throw new Error('按键模式支持最多 256 个 ASCII 字符。');
    for (const character of value) client.sendKey(character.charCodeAt(0), 'Unidentified');
  } else {
    await api('browser/paste', 'POST', {text: value});
  }
  area.value = '';
  dialog('input').close();
  client.focus();
}));
for (const [id, key, code] of [['enter', 0xff0d, 'Enter'], ['tab', 0xff09, 'Tab']] as const) {
  click(id, () => report('input-status', async () => {
    const client = needsConnection();
    client.sendKey(key, code);
    dialog('input').close();
    client.focus();
  }));
}
click('read-clipboard', () => report('input-status', async () => {
  const result = await api<{text: string}>('browser/copy', 'POST');
  area.value = result.text;
  message('input-status', '已取回文字，可长按选择并复制。');
}));
click('write-clipboard', () => report('input-status', async () => {
  try { await navigator.clipboard.writeText(area.value); }
  catch { area.focus(); area.select(); throw new Error('浏览器未允许写入剪贴板，请使用系统复制操作。'); }
  message('input-status', '已复制到本机。');
}));

interface FileRecord { name: string; size: number; state: 'ready' | 'pending' }
interface FileList { uploads: FileRecord[]; downloads: FileRecord[]; uploadMiB: number; uploadDir: string }
function readableSize(n: number) {
  if (n < 1024) return n + ' B';
  return n < 1048576 ? (n / 1024).toFixed(1) + ' KiB' : (n / 1048576).toFixed(1) + ' MiB';
}
let listTimer: number | undefined;
let maxUpload = 0;
let inFlight: XMLHttpRequest | null = null;
let cancelled = false;
let remaining: File[] = [];
const fileInput = element<HTMLInputElement>('local-files');
const progress = element<HTMLProgressElement>('progress');

async function listFiles() {
  const data = await api<FileList>('files');
  maxUpload = data.uploadMiB;
  message('upload-dir', data.uploadDir);
  for (const kind of ['uploads', 'downloads'] as const) {
    const ul = element(kind);
    ul.replaceChildren();
    for (const file of data[kind]) {
      const item = document.createElement('li');
      const name = document.createElement('span');
      const size = document.createElement('small');
      name.textContent = file.name;
      size.textContent = readableSize(file.size);
      item.append(name, size);
      const path = 'files/' + kind + '/' + encodeURIComponent(file.name);
      if (file.state === 'ready') {
        if (kind === 'downloads') {
          const link = document.createElement('a');
          link.href = '/api/' + path;
          link.download = file.name;
          link.textContent = '保存到本机';
          item.append(link);
        }
        const remove = document.createElement('button');
        remove.textContent = '删除';
        remove.addEventListener('click', () => report('file-status', async () => {
          await api(path, 'DELETE');
          await listFiles();
        }));
        item.append(remove);
      } else { size.textContent += ' · 下载中'; }
      ul.append(item);
    }
    if (!ul.childElementCount) {
      const empty = document.createElement('li');
      empty.textContent = '暂无文件';
      ul.append(empty);
    }
  }
}
function openFiles() {
  showDialog('files');
  report('file-status', listFiles);
  clearInterval(listTimer);
  listTimer = window.setInterval(() => {
    if (document.visibilityState === 'visible') void listFiles().catch(() => undefined);
  }, 3500);
}
dialog('files').addEventListener('close', () => clearInterval(listTimer));
click('open-files', openFiles);
click('admin-files', openFiles);
click('list-refresh', () => report('file-status', listFiles));
fileInput.addEventListener('change', () => { remaining = Array.from(fileInput.files || []); });

function upload(file: File): Promise<void> {
  if (maxUpload && file.size > maxUpload * 1048576) return Promise.reject(new Error('文件超过 ' + maxUpload + ' MiB 上限。'));
  return new Promise((resolve, reject) => {
    const xhr = new XMLHttpRequest();
    inFlight = xhr;
    xhr.open('PUT', '/api/files/uploads/' + encodeURIComponent(file.name));
    xhr.setRequestHeader('X-CSRF-Token', csrf);
    xhr.upload.onprogress = event => { if (event.lengthComputable && event.total) progress.value = event.loaded / event.total * 100; };
    xhr.onload = () => {
      if (xhr.status === 201) { resolve(); return; }
      let reason = '';
      try { reason = JSON.parse(xhr.responseText).error || ''; } catch { /* reverse proxy response */ }
      if (xhr.status === 401) closeSession('会话已过期，请重新登录。');
      reject(new Error(reason || '上传失败（' + xhr.status + '）'));
    };
    xhr.onabort = () => reject(new Error('上传已取消，可重试。'));
    xhr.onerror = () => reject(new Error('上传连接中断，可重试。'));
    xhr.send(file);
  });
}
click('upload', () => report('file-status', async () => {
  if (!remaining.length) throw new Error('请先选择文件。');
  const submit = element<HTMLButtonElement>('upload');
  const cancel = element<HTMLButtonElement>('cancel');
  submit.disabled = fileInput.disabled = true;
  cancel.disabled = false;
  cancelled = false;
  show('progress', true);
  let sent = 0;
  try {
    while (remaining.length && !cancelled) {
      const file = remaining[0];
      message('file-status', '正在上传 ' + file.name);
      progress.value = 0;
      await upload(file);
      remaining.shift();
      sent++;
    }
    message('file-status', cancelled ? '上传已取消，可重试。' : '已上传 ' + sent + ' 个文件。');
    if (!remaining.length) fileInput.value = '';
  } finally {
    inFlight = null;
    submit.disabled = fileInput.disabled = false;
    cancel.disabled = true;
    show('progress', false);
    await listFiles().catch(() => undefined);
  }
}));
click('cancel', () => { cancelled = true; inFlight?.abort(); });

let cpuSample: {usec: number; at: number} | undefined;
async function refreshStatus() {
  const data = await api<Status>('status');
  const b = data.browser;
  const now = performance.now();
  let cpu = '—';
  if (b?.cpuMicros) {
    const usec = Number(b.cpuMicros);
    if (cpuSample && usec >= cpuSample.usec && now > cpuSample.at) {
      cpu = ((usec - cpuSample.usec) / (now - cpuSample.at) / 10).toFixed(1) + '%（单核基准）';
    }
    cpuSample = {usec, at: now};
  } else cpuSample = undefined;
  const fields = [
    ['Chromium', b?.message || '浏览器服务不可达'], ['WebSocket', data.active ? (data.owned ? '当前登录正在控制' : '其他设备正在控制') : '无活动连接'],
    ['内存', b?.memoryBytes == null ? '—' : readableSize(b.memoryBytes) + (b.memoryMax ? ' / ' + readableSize(b.memoryMax) : '')],
    ['CPU', cpu], ['内存事件', b?.memoryEvents?.trim().replaceAll('\n', ' · ') || '—'],
    ['版本', data.version], ['部署记录', data.release || '本地开发版本']
  ];
  const metrics = element('metrics');
  metrics.replaceChildren();
  for (const [label, value] of fields) {
    const term = document.createElement('dt');
    const detail = document.createElement('dd');
    term.textContent = label;
    detail.textContent = value;
    metrics.append(term, detail);
  }
  message('events', data.events.join('\n') || '当前 Web 进程没有错误记录。');
}
click('status-refresh', () => report('admin-status', refreshStatus));
click('browser-restart', () => report('admin-status', async () => {
  if (!window.confirm('重启远程 Chromium 会中断正在进行的操作。继续？')) return;
  await api('browser/restart', 'POST');
  message('admin-status', '已请求重启 Chromium。');
  await refreshStatus();
}));
if (isAdmin) setInterval(() => {
  if (csrf && document.visibilityState === 'visible') void refreshStatus().catch(() => undefined);
}, 5000);
element<HTMLFormElement>('change').addEventListener('submit', event => {
  event.preventDefault();
  report('admin-status', async () => {
    await api('password', 'POST', {current: element<HTMLInputElement>('current').value, new: element<HTMLInputElement>('next').value});
    closeSession('密码已修改，请使用新密码登录。');
  });
});
void api<{csrf: string}>('session')
  .then(result => openSession(result.csrf))
  .catch(err => closeSession(err instanceof APIError && err.status === 401 ? '' : '服务暂不可用，请刷新重试。'));
