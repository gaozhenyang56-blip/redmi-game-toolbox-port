import ast,re

def patch(source):
    if 'async def _on_message_impl(' not in source:
        marker='    @filter.event_message_type(filter.EventMessageType.ALL)\n    async def on_message(self, event: AstrMessageEvent):'
        assert marker in source
        wrapper='''    @filter.event_message_type(filter.EventMessageType.ALL)
    async def on_message(self, event: AstrMessageEvent):
        text = event.message_str.strip()
        sid = event.session_id
        explicit = bool(MODE.search(text) and (self._RE.search(text) or re.fullmatch(r'/?(?:网盘下载|本地下载|OpenList下载)', text, re.I)))
        continuation = False
        if sid in self.allow_sessions and self._openlist_local_modes.get(sid, 0) > time.monotonic():
            continuation = bool(self._looks_like_selection(text) and await self._get_pending_state(sid))
        if sid in self.allow_sessions and (explicit or continuation):
            # A stopped yielding handler is abandoned by AstrBot after its first yield.
            # Consume the full local-download generator here and deliver directly.
            event.stop_event()
            async for reply in self._on_message_impl(event):
                if reply is not None:
                    await event.send(reply)
            return
        async for reply in self._on_message_impl(event):
            yield reply

    async def _on_message_impl(self, event: AstrMessageEvent):'''
        source=source.replace(marker,wrapper,1)
        start=source.index('    async def _on_message_impl(');end=source.index('    async def _run(',start)
        internal=re.sub(r'(?m)^[ \t]*event\.stop_event\(\)\n','',source[start:end])
        source=source[:start]+internal+source[end:]
    source=source.replace('if self.enable_file_selection and len(share_files) > 1:', 'if (self.enable_file_selection or self._openlist_local_modes.get(ev.session_id, 0) > time.monotonic()) and len(share_files) > 1:')
    marker='        # 清理待选择状态\n        await self._remove_pending_state(sid)'
    if '每次最多选择5个文件，请重新回复' not in source:
        replacement='''        if self._openlist_local_modes.get(sid, 0) > time.monotonic() and len(indices) > 5:
            state['timestamp'] = time.time()
            yield ev.plain_result('本地下载每次最多选择5个文件，请重新回复序号，例如 1 或 1-5；当前文件列表仍然有效。')
            return

        # 清理待选择状态
        await self._remove_pending_state(sid)'''
        assert marker in source
        source=source.replace(marker,replacement,1)
    if '下载到 OpenList 的文件（每次最多5个）' not in source:
        source=source.replace('f"📂 共 {len(share_files)} 个文件，请选择要转存并提取直链的文件：\\n\\n"', '(f"📂 共 {len(share_files)} 个文件，请选择要下载到 OpenList 的文件（每次最多5个）：\\n\\n" if self._openlist_local_modes.get(ev.session_id, 0) > time.monotonic() else f"📂 共 {len(share_files)} 个文件，请选择要转存并提取直链的文件：\\n\\n")')
    ast.parse(source)
    return source
