#!/usr/bin/env python3
"""Ubuntu GTK/WebKit client; ephemeral storage forces a new TOTP login on each launch."""
import argparse
from urllib.parse import urlsplit
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description='轻连远控 Ubuntu 客户端')
    parser.add_argument('--url', default='https://107.150.7.124:18443/')
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
        from gi.repository import Gtk, WebKit2, Gio
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
    certificate_file = Path(__file__).with_name('server-ca.crt')
    pinned = Gio.TlsCertificate.new_from_file(str(certificate_file)) if certificate_file.exists() else None

    def tls_failure(_view, failing_uri, certificate, errors):
        target = urlsplit(failing_uri)
        # Only the shipped exact certificate may supply its own trust anchor.
        # Hostname, expiry and all other TLS errors still fail closed.
        if (pinned is not None and errors == Gio.TlsCertificateFlags.UNKNOWN_CA
                and (target.scheme, target.hostname, target.port) == origin
                and certificate.is_same(pinned)):
            context.allow_tls_certificate_for_host(certificate, url.hostname)
            view.load_uri(failing_uri)
            return True
        dialog = Gtk.MessageDialog(transient_for=window, modal=True,
            message_type=Gtk.MessageType.ERROR, buttons=Gtk.ButtonsType.CLOSE,
            text='服务器证书验证失败')
        dialog.format_secondary_text('请确认后台地址与管理员提供的证书。客户端没有关闭 TLS 验证。')
        dialog.run()
        dialog.destroy()
        return True

    view.connect('load-failed-with-tls-errors', tls_failure)
    window = Gtk.Window(title='轻连 · 手机远控')
    window.set_default_size(1200, 880)
    window.add(view)
    window.connect('destroy', Gtk.main_quit)
    view.load_uri(args.url)
    window.show_all()
    Gtk.main()


if __name__ == '__main__':
    main()
