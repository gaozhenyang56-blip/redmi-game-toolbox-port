#!/usr/bin/env python3
"""Single explicitly selected Android device, local HTTP UI and bounded ADB operations."""
import argparse
import collections
import base64
import hashlib
import secrets
import struct
import hmac
import json
import os
import re
import subprocess
import threading
import time
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

STATIC = Path(__file__).with_name('static')
KEYS = {'home': '3', 'back': '4', 'recent': '187', 'volume_up': '24', 'volume_down': '25'}


class DeviceError(Exception):
    pass


def display_state(power, display=''):
    # Prefer the physical/default display over aggregate wakefulness or other displays.
    match = re.search(r'Display Power: state=(ON|OFF|DOZE_SUSPEND|DOZE|VR)\b', power)
    if not match:
        match = re.search(r'mScreenOn=(true|false)\b', power)
        if match:
            return 'on' if match[1] == 'true' else 'off'
        match = re.search(r'mGlobalDisplayState=(ON|OFF|DOZE_SUSPEND|DOZE|VR)\b', display)
    if match:
        return {'ON': 'on', 'VR': 'on', 'OFF': 'off', 'DOZE': 'doze', 'DOZE_SUSPEND': 'doze'}[match[1]]
    return 'unknown'


def lock_state(window):
    match = re.search(r'(?:mShowingLockscreen|isStatusBarKeyguard|mKeyguardShowing|showing)=(true|false)\b', window)
    return None if not match else match[1] == 'true'


def integer(value, low, high):
    if type(value) is not int or not low <= value <= high:
        raise ValueError('坐标或时长超出允许范围')
    return value


class Device:
    def __init__(self, serial, adb='adb', wireless=None, interval=3):
        self.serial, self.adb, self.wireless = serial, adb, wireless
        self.interval = interval
        self.operation = threading.Lock()
        self.state_lock = threading.Lock()
        self.stop = threading.Event()
        self.state = dict(connected=False, screen='unknown', locked=None, width=None,
                          height=None, checkedAt=None, error='等待首次检测')
        self.last_reconnect = 0

    def run(self, *args, binary=False, targeted=True):
        command = [self.adb] + (['-s', self.serial] if targeted else []) + list(args)
        try:
            result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=10)
        except (OSError, subprocess.TimeoutExpired) as exc:
            raise DeviceError('ADB 不可用或响应超时，请检查连接与调试授权') from exc
        if result.returncode:
            raise DeviceError('ADB 命令失败，请检查设备在线状态与 USB 调试授权')
        if len(result.stdout) > 24 * 1024 * 1024:
            raise DeviceError('设备返回数据过大')
        return result.stdout if binary else result.stdout.decode('utf-8', errors='replace')

    def snapshot(self):
        with self.state_lock:
            return dict(self.state)

    def refresh(self):
        with self.operation:
            try:
                if self.run('get-state').strip() != 'device':
                    raise DeviceError('设备离线')
                power = self.run('shell', 'dumpsys', 'power')
                screen = display_state(power)
                if screen == 'unknown':
                    screen = display_state(power, self.run('shell', 'dumpsys', 'display'))
                window = self.run('shell', 'dumpsys', 'window', 'policy')
                size = self.run('shell', 'wm', 'size')
                matches = re.findall(r'(?:Physical|Override) size:\s*(\d+)x(\d+)', size)
                dimensions = [int(x) for x in matches[-1]] if matches else [None, None]
                state = dict(connected=True, screen=screen, locked=lock_state(window),
                             width=dimensions[0], height=dimensions[1], error=None)
            except DeviceError as exc:
                state = dict(connected=False, screen='unknown', locked=None, width=None, height=None, error=str(exc))
                if self.wireless and time.monotonic() - self.last_reconnect >= 30:
                    self.last_reconnect = time.monotonic()
                    try:
                        self.run('connect', self.wireless, targeted=False)
                    except DeviceError:
                        pass
            state['checkedAt'] = time.time()
            with self.state_lock:
                self.state = state
        return self.snapshot()

    def monitor(self):
        while not self.stop.is_set():
            self.refresh()
            self.stop.wait(self.interval)

    def control(self, data):
        action = data.get('action')
        with self.operation:
            if action in ('wake', 'sleep'):
                # Idempotent; POWER (26) would accidentally toggle the wrong state.
                self.run('shell', 'input', 'keyevent', '224' if action == 'wake' else '223')
            elif action == 'unlock':
                self.run('shell', 'input', 'keyevent', '224')
                self.run('shell', 'wm', 'dismiss-keyguard')
            elif action == 'key' and data.get('key') in KEYS:
                self.run('shell', 'input', 'keyevent', KEYS[data['key']])
            elif action in ('tap', 'swipe'):
                # Normalized coordinates use the screenshot's actual dimensions, including rotation.
                width = integer(data.get('width'), 1, 16384)
                height = integer(data.get('height'), 1, 16384)
                x = integer(data.get('x'), 0, width - 1)
                y = integer(data.get('y'), 0, height - 1)
                if action == 'tap':
                    self.run('shell', 'input', 'tap', str(x), str(y))
                else:
                    x2 = integer(data.get('x2'), 0, width - 1)
                    y2 = integer(data.get('y2'), 0, height - 1)
                    duration = integer(data.get('duration', 300), 100, 2000)
                    self.run('shell', 'input', 'swipe', *map(str, (x, y, x2, y2, duration)))
            elif action == 'text':
                value = data.get('text')
                # ADB shell input text is re-parsed on Android; allow no shell metacharacters.
                if not isinstance(value, str) or not re.fullmatch(r'[A-Za-z0-9 .,@_+:/=-]{1,300}', value):
                    raise ValueError('仅支持最多 300 字的英文、数字及常用安全符号；中文请用手机输入法')
                self.run('shell', 'input', 'text', value.replace(' ', '%s'))
            else:
                raise ValueError('不支持的操作')
        return self.refresh()

    def screenshot(self):
        with self.operation:
            data = self.run('exec-out', 'screencap', '-p', binary=True)
            if not data.startswith(b'\x89PNG\r\n\x1a\n'):
                raise DeviceError('无法读取屏幕截图')
            return data


class RelayDevice:
    """A single enrolled phone pulls commands over outbound HTTPS; no host-side ADB."""
    def __init__(self, timeout=30, clock=time.time):
        self.timeout, self.clock = timeout, clock
        self.stop = threading.Event()
        self.operation = threading.Lock()
        self.condition = threading.Condition()
        self.commands = collections.deque()
        self.pending = {}
        self.last_seen = 0
        self.polling = False
        self.state = dict(connected=False, screen='unknown', locked=None,
                          width=None, height=None, checkedAt=None, error='等待手机客户端连接')

    def snapshot(self):
        with self.condition:
            state = dict(self.state)
            if self.clock() - self.last_seen > 40:
                state.update(connected=False, screen='unknown', locked=None, width=None,
                             height=None, error='手机客户端离线或连接中断')
            return state

    def update(self, state):
        if not isinstance(state, dict) or type(state.get('connected')) is not bool:
            raise ValueError('无效设备状态')
        screen = state.get('screen')
        if screen not in ('on', 'off', 'doze', 'unknown'):
            raise ValueError('无效屏幕状态')
        locked = state.get('locked')
        if locked is not None and type(locked) is not bool:
            raise ValueError('无效锁屏状态')
        for key in ('width', 'height'):
            if state.get(key) is not None:
                integer(state[key], 1, 16384)
        with self.condition:
            self.last_seen = self.clock()
            self.state = {key: state.get(key) for key in ('connected', 'screen', 'locked', 'width', 'height')}
            self.state['checkedAt'] = self.clock()
            self.state['error'] = None if state['connected'] else '手机控制权限不可用，请在手机端检查 Shizuku'
            if not state['connected']:
                self.state.update(screen='unknown', locked=None, width=None, height=None)

    def poll(self, state):
        self.update(state)
        with self.condition:
            if self.polling:
                raise DeviceError('同一设备已有连接，请停止另一个手机客户端')
            self.polling = True
            try:
                self.condition.wait_for(lambda: self.commands or self.stop.is_set(), timeout=10)
                while self.commands:
                    command = self.commands.popleft()
                    if command['id'] in self.pending and command['expiresAt'] > self.clock():
                        self.pending[command['id']]['claimed'] = True
                        return command
                return None
            finally:
                self.polling = False

    def result(self, data):
        identity = data.get('id')
        if not isinstance(identity, str):
            raise ValueError('无效操作编号')
        with self.condition:
            pending = self.pending.get(identity)
            if not pending or not pending['claimed'] or pending['event'].is_set():
                return False
            pending['result'] = data
            pending['event'].set()
            return True

    def request(self, action, data=None):
        with self.operation:
            if not self.snapshot()['connected']:
                raise DeviceError('手机客户端未在线或未获得控制权限')
            identity = secrets.token_urlsafe(18)
            event = threading.Event()
            pending = dict(event=event, result=None, claimed=False)
            command = dict(id=identity, action=action, data=data or {}, expiresAt=self.clock()+self.timeout)
            with self.condition:
                self.pending[identity] = pending
                self.commands.append(command)
                self.condition.notify_all()
            try:
                if not event.wait(self.timeout):
                    raise DeviceError('手机响应超时，操作结果未知；不会自动重放，请检查画面')
                result = pending['result']
                if result.get('error'):
                    raise DeviceError('手机执行失败，请检查手机端控制授权')
                return result
            finally:
                with self.condition:
                    self.pending.pop(identity, None)
                    self.commands = collections.deque(c for c in self.commands if c['id'] != identity)

    def control(self, data):
        action = data.get('action')
        valid = action in ('wake', 'sleep', 'unlock')
        if action == 'key':
            valid = data.get('key') in KEYS
        elif action == 'text':
            valid = isinstance(data.get('text'), str) and re.fullmatch(r'[A-Za-z0-9 .,@_+:/=-]{1,300}', data['text'])
        elif action in ('tap', 'swipe'):
            width, height = integer(data.get('width'), 1, 16384), integer(data.get('height'), 1, 16384)
            integer(data.get('x'), 0, width-1)
            integer(data.get('y'), 0, height-1)
            if action == 'swipe':
                integer(data.get('x2'), 0, width-1)
                integer(data.get('y2'), 0, height-1)
                integer(data.get('duration', 300), 100, 2000)
            valid = True
        if not valid:
            raise ValueError('不支持的手机操作')
        result = self.request('control', data)
        self.update(result.get('state'))
        return self.snapshot()

    def screenshot(self):
        result = self.request('screen')
        try:
            image = base64.b64decode(result.get('png', ''), validate=True)
        except (ValueError, TypeError) as exc:
            raise DeviceError('手机截图格式无效') from exc
        if len(image) > 16*1024*1024 or not image.startswith(b'\x89PNG\r\n\x1a\n'):
            raise DeviceError('手机截图格式无效或过大')
        return image


class Authentication:
    def __init__(self, token, secret, replay_file, clock=time.time):
        self.token, self.secret, self.clock = token, secret, clock
        self.replay_file = Path(replay_file)
        self.lock = threading.Lock()
        self.sessions = {}
        self.failures = []
        self.last_step = -1
        self.enrollment = None
        self.secret_file = self.replay_file.with_name('totp-secret')
        if self.secret_file.exists():
            self.secret = base64.b32decode(self.secret_file.read_text().strip())
        if self.replay_file.exists():
            self.last_step = int(self.replay_file.read_text().strip())

    def code(self, step):
        digest = hmac.new(self.secret, struct.pack('>Q', step), hashlib.sha1).digest()
        offset = digest[-1] & 15
        return f'{(struct.unpack(">I", digest[offset:offset+4])[0] & 0x7fffffff) % 1000000:06d}'

    def login(self, token, otp):
        with self.lock:
            now = self.clock()
            self.failures = [t for t in self.failures if now - t < 60]
            if len(self.failures) >= 5:
                return None, 429
            step = int(now // 30)
            matched = None
            if self.secret and isinstance(token, str) and isinstance(otp, str) and re.fullmatch(r'[0-9]{6}', otp):
                if hmac.compare_digest(token.encode(), self.token.encode()):
                    for candidate in (step - 1, step, step + 1):
                        if candidate > self.last_step and hmac.compare_digest(otp, self.code(candidate)):
                            matched = candidate
                            break
            if matched is None:
                self.failures.append(now)
                return None, 401
            # Persist before issuing a session; restart must not permit OTP replay.
            self.replay_file.parent.mkdir(mode=0o700, parents=True, exist_ok=True)
            temporary = self.replay_file.with_suffix('.tmp')
            fd = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_TRUNC, 0o600)
            with os.fdopen(fd, 'w') as file:
                file.write(str(matched))
                file.flush()
                os.fsync(file.fileno())
            os.replace(temporary, self.replay_file)
            self.last_step = matched
            self.sessions = {key: expiry for key, expiry in self.sessions.items() if expiry > now}
            if len(self.sessions) >= 16:
                oldest = min(self.sessions, key=self.sessions.get)
                del self.sessions[oldest]
            session = secrets.token_urlsafe(32)
            self.sessions[session] = now + 12 * 3600
            return session, 200

    def begin_enrollment(self, token, otp=None):
        if self.secret:
            session, status = self.login(token, otp)
            if not session:
                return None, status
            self.logout(session)
        with self.lock:
            now = self.clock()
            self.failures = [t for t in self.failures if now - t < 60]
            if len(self.failures) >= 5:
                return None, 429
            if not isinstance(token, str) or not hmac.compare_digest(token.encode(), self.token.encode()):
                self.failures.append(now)
                return None, 401
            secret = secrets.token_bytes(20)
            identity = secrets.token_urlsafe(24)
            self.enrollment = dict(id=identity, secret=secret, expires=now+300, attempts=0)
            encoded = base64.b32encode(secret).decode()
            return dict(enrollment=identity, secret=encoded,
                uri='otpauth://totp/Qinglian:Administrator?secret='+encoded+'&issuer=Qinglian&algorithm=SHA1&digits=6&period=30'), 200

    def confirm_enrollment(self, token, identity, otp):
        with self.lock:
            pending = self.enrollment
            if (not pending or pending['expires'] < self.clock() or pending['attempts'] >= 5
                    or not isinstance(token, str) or not hmac.compare_digest(token.encode(), self.token.encode())
                    or identity != pending['id']):
                return None, 401
            pending['attempts'] += 1
            step = int(self.clock()//30)
            valid = False
            if isinstance(otp, str) and re.fullmatch(r'[0-9]{6}', otp):
                for candidate in (step-1, step, step+1):
                    digest = hmac.new(pending['secret'], struct.pack('>Q',candidate), hashlib.sha1).digest()
                    offset = digest[-1]&15
                    expected = f'{(struct.unpack(">I",digest[offset:offset+4])[0]&0x7fffffff)%1000000:06d}'
                    valid |= hmac.compare_digest(expected,otp)
            if not valid:
                return None, 401
            self.secret_file.parent.mkdir(mode=0o700,parents=True,exist_ok=True)
            temporary = self.secret_file.with_suffix('.tmp')
            fd = os.open(temporary,os.O_WRONLY|os.O_CREAT|os.O_TRUNC,0o600)
            with os.fdopen(fd,'w') as file:
                file.write(base64.b32encode(pending['secret']).decode())
                file.flush(); os.fsync(file.fileno())
            os.replace(temporary,self.secret_file)
            self.secret = pending['secret']
            self.last_step = -1
            self.sessions.clear()
            self.enrollment = None
            # Old secret's consumed time step must not block the new secret.
            self.replay_file.unlink(missing_ok=True)
        return self.login(token,otp)

    def authorized(self, session):
        with self.lock:
            return self.sessions.get(session, 0) > self.clock()

    def logout(self, session):
        with self.lock:
            self.sessions.pop(session, None)


class Server(ThreadingHTTPServer):
    daemon_threads = True
    def __init__(self, address, device, auth, agent_token=None):
        super().__init__(address, Handler)
        self.device, self.auth = device, auth
        self.agent_token = agent_token
        self.slots = threading.BoundedSemaphore(4)


class Handler(BaseHTTPRequestHandler):
    server_version = 'QinglianRemote/0.1'

    def log_message(self, *_):
        pass  # Never log auth headers, text input, screenshots or device serials.

    def send(self, status, data, kind='application/json; charset=utf-8'):
        if not isinstance(data, bytes):
            data = json.dumps(data, ensure_ascii=False).encode()
        self.send_response(status)
        self.send_header('Content-Type', kind)
        self.send_header('Content-Length', str(len(data)))
        self.send_header('Cache-Control', 'no-store')
        self.send_header('X-Content-Type-Options', 'nosniff')
        self.send_header('Referrer-Policy', 'no-referrer')
        self.send_header('X-Frame-Options', 'DENY')
        self.send_header('Content-Security-Policy', "default-src 'self'; img-src 'self' blob:; style-src 'self'; script-src 'self'; frame-ancestors 'none'; base-uri 'none'; form-action 'self'")
        self.end_headers()
        try:
            self.wfile.write(data)
        except (BrokenPipeError, ConnectionResetError):
            pass

    def read_json(self, limit=4096):
        if self.headers.get('Content-Type', '').split(';')[0].strip() != 'application/json':
            raise ValueError('需要 JSON 请求')
        length = int(self.headers.get('Content-Length', '0'))
        if not 0 < length <= limit:
            raise ValueError('请求大小无效')
        data = json.loads(self.rfile.read(length))
        if not isinstance(data, dict):
            raise ValueError('请求必须是对象')
        return data

    def agent(self):
        token = self.headers.get('Authorization', '').removeprefix('Bearer ')
        expected = self.server.agent_token
        if not expected or not hmac.compare_digest(token.encode(), expected.encode()):
            return self.send(401, {'error': '设备凭据无效'})
        if not isinstance(self.server.device, RelayDevice) or self.command != 'POST':
            return self.send(404, {'error': '未启用手机客户端接入'})
        try:
            data = self.read_json(23*1024*1024 if self.path == '/agent/result' else 4096)
            if self.path == '/agent/poll':
                self.send(200, {'command': self.server.device.poll(data.get('state'))})
            elif self.path == '/agent/result':
                self.send(200, {'accepted': self.server.device.result(data)})
            else:
                self.send(404, {'error': '接口不存在'})
        except (ValueError, UnicodeError):
            self.send(400, {'error': '手机请求无效'})
        except DeviceError as exc:
            self.send(409, {'error': str(exc)})

    def api(self):
        if self.path.startswith('/agent/'):
            return self.agent()
        if self.command == 'POST' and self.path in ('/api/totp/enroll', '/api/totp/confirm'):
            try:
                data = self.read_json()
                if self.path.endswith('/enroll'):
                    result, status = self.server.auth.begin_enrollment(data.get('token'), data.get('otp'))
                else:
                    session, status = self.server.auth.confirm_enrollment(data.get('token'), data.get('enrollment'), data.get('otp'))
                    result = {'session':session} if session else None
                self.send(status, result or {'error':'管理员令牌或验证码无效；已绑定时更换密钥需验证旧动态码'})
            except (ValueError, UnicodeError):
                self.send(400, {'error':'请求无效'})
            except OSError:
                self.send(503, {'error':'无法保存验证器设置'})
            return
        if self.command == 'POST' and self.path == '/api/login':
            try:
                data = self.read_json()
                session, status = self.server.auth.login(data.get('token'), data.get('otp'))
                self.send(status, {'session': session} if session else {'error': '令牌或验证码无效、已使用；连续失败请等待 60 秒'})
            except (ValueError, UnicodeError):
                self.send(400, {'error': '请求参数无效'})
            except OSError:
                self.send(503, {'error': '验证状态无法保存，暂时拒绝登录'})
            return
        session = self.headers.get('Authorization', '').removeprefix('Bearer ')
        if not self.server.auth.authorized(session):
            self.send(401, {'error': '访问令牌无效'})
            return
        if not self.server.slots.acquire(blocking=False):
            self.send(429, {'error': '设备忙，请稍后重试'})
            return
        try:
            if self.command == 'GET' and self.path == '/api/status':
                self.send(200, self.server.device.snapshot())
            elif self.command == 'GET' and self.path == '/api/screen':
                self.send(200, self.server.device.screenshot(), 'image/png')
            elif self.command == 'POST' and self.path == '/api/control':
                data = self.read_json()
                self.send(200, self.server.device.control(data))
            elif self.command == 'POST' and self.path == '/api/logout':
                self.server.auth.logout(session)
                self.send(200, {'ok': True})
            else:
                self.send(404, {'error': '接口不存在'})
        except (ValueError, UnicodeError):
            self.send(400, {'error': '请求参数无效，请检查坐标、输入内容和操作类型'})
        except DeviceError as exc:
            self.send(503, {'error': str(exc)})
        finally:
            self.server.slots.release()

    def setup(self):
        super().setup()
        self.connection.settimeout(15)

    def do_GET(self):
        if self.path.startswith(('/api/', '/agent/')):
            return self.api()
        paths = {'/': ('index.html', 'text/html; charset=utf-8'),
                 '/app.js': ('app.js', 'text/javascript; charset=utf-8'),
                 '/style.css': ('style.css', 'text/css; charset=utf-8')}
        if self.path not in paths:
            return self.send(404, {'error': '页面不存在'})
        name, kind = paths[self.path]
        self.send(200, (STATIC / name).read_bytes(), kind)

    def do_POST(self):
        self.api()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--host', default='127.0.0.1')
    parser.add_argument('--port', type=int, default=8765)
    parser.add_argument('--tls-cert')
    parser.add_argument('--tls-key')
    parser.add_argument('--relay', action='store_true', help='手机客户端主动连接模式，无需外接 ADB 主机')
    args = parser.parse_args()
    token = os.environ.get('QINGLIAN_REMOTE_TOKEN', '')
    serial = os.environ.get('QINGLIAN_ADB_SERIAL', '')
    wireless = os.environ.get('QINGLIAN_ADB_CONNECT')
    if len(token) < 32 or not token.isascii() or not token.isprintable() or (not args.relay and (not serial or serial.startswith('-'))):
        parser.error('请设置至少 32 位 ASCII 令牌 QINGLIAN_REMOTE_TOKEN 和 QINGLIAN_ADB_SERIAL')
    if wireless and (wireless != serial or not re.fullmatch(r'[A-Za-z0-9.\[\]:_-]+:\d{1,5}', wireless)):
        parser.error('无线重连地址必须与设备序列号一致，格式为 host:port')
    agent_token = os.environ.get('QINGLIAN_AGENT_TOKEN', '') if args.relay else None
    if args.relay and (len(agent_token) < 32 or not agent_token.isascii() or not agent_token.isprintable() or agent_token == token):
        parser.error('手机客户端模式需要独立且至少32位的 QINGLIAN_AGENT_TOKEN')
    device = RelayDevice() if args.relay else Device(serial, os.environ.get('QINGLIAN_ADB', 'adb'), wireless)
    try:
        secret_text = os.environ.get('QINGLIAN_TOTP_SECRET', '').strip().upper()
        secret = base64.b32decode(secret_text + '=' * (-len(secret_text) % 8)) if secret_text else None
        if secret is not None and len(secret) < 20:
            raise ValueError('secret too short')
        auth = Authentication(token, secret, os.environ.get('QINGLIAN_TOTP_STATE',
            str(Path.home() / '.local/state/qinglian-remote/totp-step')))
    except (KeyError, ValueError, OSError):
        parser.error('请配置至少 20 字节随机密钥的 Base32 QINGLIAN_TOTP_SECRET，并确保 TOTP 状态文件可读写')
    server = Server((args.host, args.port), device, auth, agent_token)
    if args.tls_cert or args.tls_key:
        import ssl
        context = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
        context.minimum_version = ssl.TLSVersion.TLSv1_2
        context.load_cert_chain(args.tls_cert, args.tls_key)
        server.socket = context.wrap_socket(server.socket, server_side=True)
    server.timeout = 1
    if not args.relay:
        threading.Thread(target=device.monitor, daemon=True).start()
    print(f'轻连远控已启动 http://{args.host}:{args.port}；仅控制指定设备', flush=True)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        device.stop.set()
        server.server_close()


if __name__ == '__main__':
    main()
