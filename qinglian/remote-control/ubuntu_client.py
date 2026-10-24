#!/usr/bin/env python3
"""Ubuntu GTK/WebKit client; ephemeral storage forces a new TOTP login on each launch."""
import argparse
from urllib.parse import urlsplit


def main():
    parser = argparse.ArgumentParser(description='轻连远控 Ubuntu 客户端')
    parser.add_argument('--url', default='http://127.0.0.1:8765/')
    args = parser.parse_args()
    url = urlsplit(args.url)
    if url.username or url.password or url.fragment or url.query or not url.hostname:
        parser.error('地址不能包含凭据、参数或片段')
    if url.scheme != 'https' and not (url.scheme == 'http' and url.hostname in ('127.0.0.1', 'localhost', '::1')):
        parser.error('远端服务必须使用 HTTPS；HTTP 仅允许本机 SSH 隧道')
    try:
        import gi
        gi.require_version('Gtk', '3.0')
        gi.require_version('WebKit2', '4.1')
        from gi.repository import Gtk, WebKit2
    except (ImportError, ValueError):
        parser.exit(1, '请安装 python3-gi gir1.2-gtk-3.0 gir1.2-webkit2-4.1\n')
    context = WebKit2.WebContext.new_ephemeral()
    view = WebKit2.WebView.new_with_context(context)
    view.get_settings().set_enable_developer_extras(False)
    origin = (url.scheme, url.hostname, url.port)

    def policy(_view, decision, kind):
        if kind in (WebKit2.PolicyDecisionType.NAVIGATION_ACTION, WebKit2.PolicyDecisionType.NEW_WINDOW_ACTION):
            target = urlsplit(decision.get_navigation_action().get_request().get_uri())
            if (target.scheme, target.hostname, target.port) != origin:
                decision.ignore()
                return True
        return False

    view.connect('decide-policy', policy)
    window = Gtk.Window(title='轻连 · 手机远控')
    window.set_default_size(1200, 880)
    window.add(view)
    window.connect('destroy', Gtk.main_quit)
    view.load_uri(args.url)
    window.show_all()
    Gtk.main()


if __name__ == '__main__':
    main()
