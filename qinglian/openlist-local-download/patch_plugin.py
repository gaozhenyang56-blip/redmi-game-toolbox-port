"""Apply a small additive extension without replacing the share-page compatibility fix."""
import ast,json,re

def patch_source(source):
    if 'from .local_download import LocalDownloads, MODE' in source:return source
    source=source.replace('import random\n','import random\nfrom .local_download import LocalDownloads, MODE\n',1)
    source=source.replace('        self._push_lock = asyncio.Lock()','        self._push_lock = asyncio.Lock()\n        self._local_download = LocalDownloads(cfg)\n        self._openlist_local_modes = {}',1)
    source=source.replace('        sid = event.session_id\n','''        sid = event.session_id
        # Local-download intent survives the following numeric selection messages.
        if sid in self.allow_sessions:
            if re.fullmatch(r'/?(?:网盘下载|本地下载|OpenList下载)', text.strip(), re.I):
                event.stop_event()
                yield event.plain_result('用法：/网盘下载 百度网盘分享链接 提取码；多文件时按提示回复序号。普通链接仍提取百度直链。')
                return
            if self._RE.search(text):
                if MODE.search(text):
                    self._openlist_local_modes[sid] = time.monotonic() + 3600
                    event.stop_event()
                else:
                    self._openlist_local_modes.pop(sid, None)
            elif self._openlist_local_modes.get(sid, 0) > time.monotonic() and self._looks_like_selection(text.strip()):
                event.stop_event()
                self._openlist_local_modes[sid] = time.monotonic() + 3600
''',1)
    marker='            if dlinks:\n                out = []'
    assert marker in source,'Upstream direct-link delivery block changed'
    source=source.replace(marker,'''            if dlinks:
                if self._openlist_local_modes.pop(ev.session_id, 0) > time.monotonic():
                    try:
                        async for local_reply in self._local_download.deliver(self, ev, dlinks):
                            yield local_reply
                    except Exception as exc:
                        yield ev.plain_result(str(exc) if isinstance(exc, ValueError) else 'OpenList 本地下载失败，请稍后重试。')
                    return
                out = []''',1)
    source=source.replace('dlinks.append({"name": name, "dlink": dl})','dlinks.append({"name": name, "dlink": dl, "size": f.get("size", 0)})',1)
    ast.parse(source)
    return source

FIELDS={
 'openlist_local_download_enable':{'description':'启用 /网盘下载 本地下载和OpenList签名链接','type':'bool','default':False},
 'openlist_local_download_dir':{'description':'本地下载目录（需与服务器部署一致）','type':'string','default':'/opt/astrbot/data/plugin_data/astrbot_plugin_baidu_curl/local_downloads'},
 'openlist_local_mount':{'description':'OpenList本地挂载路径','type':'string','default':'/本地下载'},
 'openlist_public_url':{'description':'OpenList公网下载地址','type':'string','default':'http://107.150.7.124:5244'},
 'openlist_local_max_file_mb':{'description':'单文件下载上限MB','type':'int','default':1024},
 'openlist_local_max_total_mb':{'description':'本地下载总容量上限MB（达到后拒绝新下载，不自动删除文件）','type':'int','default':4096},
 'openlist_local_reserve_mb':{'description':'至少保留的系统磁盘空间MB','type':'int','default':2048},
}
