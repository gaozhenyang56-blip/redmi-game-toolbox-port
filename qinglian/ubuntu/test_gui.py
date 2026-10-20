"""Real GTK widget/lifecycle checks; connection states below are UI fixtures, not VPN claims."""
import os
from pathlib import Path
import sys
import tempfile
import time
from unittest.mock import MagicMock
import gi
if os.environ.get('QINGLIAN_TEST_GI_BRIDGE'): gi.__path__.append(os.environ['QINGLIAN_TEST_GI_BRIDGE'])
sys.path.insert(0,str(Path(__file__).resolve().parent))
import runtime
lib=Path(os.environ['QINGLIAN_TEST_LIB']); runtime.ROOT=lib
with tempfile.TemporaryDirectory() as d:
    runtime.STATE=Path(d)
    # Old preview1 preferences must survive the UI migration.
    runtime.save(Path(d)/'settings.json',{'channel':1,'performance':1,'route':1,'theme':0})
    import app
    from gi.repository import Gdk
    app.STATE=Path(d)
    def drain(duration=.35):
        end=time.monotonic()+duration
        while time.monotonic()<end:
            for _ in range(60):
                if not app.Gtk.events_pending(): break
                app.Gtk.main_iteration_do(False)
            time.sleep(.005)
    w=app.Window(); drain(.7)
    assert len(w.pages)==6
    assert w.sidebar.get_visible() and not w.nav_layer.get_visible()
    assert w.connection_columns.wide
    assert (w.channel.get_active(),w.performance.get_active(),w.route.get_active())==(1,1,1)
    for page in w.pages:
        w.navigate(page); drain(.12)
        assert w.stack.get_visible_child_name()==page
    w.navigate('connect')
    identities=(id(w.conn),id(w.channel),id(w.username),id(w.consent))
    w.username.set_text('unsent-draft'); w.consent.set_active(True)
    w.conn.disconnect=MagicMock(); w.conn.start=MagicMock()
    # Live UI fixture: toggling presentation must not call the runtime or alter choices.
    w.busy=True; w.handle_event('connected','UI fixture only')
    selection=(w.channel.get_active(),w.performance.get_active(),w.route.get_active(),w.tun.get_active())
    began=w.started_at
    w.simple_switch.set_active(True); drain(.45)
    assert w.compact and not w.nav_layer.get_visible() and not w.sidebar.get_visible()
    assert w.classic_connection.get_visible() and not w.connection_columns.get_visible()
    assert w.classic_bar.get_visible() and not w.header_layer.get_visible()
    assert w.channel.classic_combo.get_visible() and w.classic_tabs.get_n_pages()==6
    assert w.connect_button.get_mapped() and w.channel.classic_combo.get_visible()
    assert w.classic_tabs.get_mapped()
    w.classic_tabs.set_current_page(w.classic_order.index('account')); assert w.stack.get_visible_child_name()=='account'
    assert w.username.get_text()=='unsent-draft' and w.consent.get_active()

    for page in w.pages: w.navigate(page); assert w.stack.get_visible_child_name()==page
    w.simple_switch.set_active(False); drain(.45)
    assert selection==(w.channel.get_active(),w.performance.get_active(),w.route.get_active(),w.tun.get_active())
    assert identities==(id(w.conn),id(w.channel),id(w.username),id(w.consent)) and w.started_at==began
    w.conn.disconnect.assert_not_called(); w.conn.start.assert_not_called()
    w.busy=False; w.handle_event('stopped','UI fixture ended'); w.caption.set_text('准备就绪 · 专属通道')
    w.consent.set_active(False); w.auth('login'); assert '明确同意' in w.status.get_text()
    for theme in (1,2,0): w.theme.set_active(theme); drain(.1); assert runtime.read(Path(d)/'settings.json')['theme']==theme
    # Desktop, narrow phone navigation, full content and inputs remain usable.
    w.navigate('connect'); w.resize(650,820); drain(.5)
    assert not w.sidebar.get_visible() and w.nav_layer.get_visible() and not w.connection_columns.wide
    assert w.nav.get_active()==0
    w.nav.buttons[1].set_active(True); drain(.15); assert w.stack.get_visible_child_name()=='speed'
    w.speed_progress(.5,'12.50 Mbps · 32.0 / 64 MiB'); assert w.chart.points[-1]==12.5
    w.navigate('connect'); w.channel.buttons[0].set_active(True); drain(.2); assert w.channel.get_active()==0
    # Test actual drag commitment and cancellation, not just programmatic selection.
    s=w.route; gesture=s.gesture; width=s.get_allocated_width()
    s.drag_begin(gesture,20,20); s.drag_update(gesture,width-40,0); s.drag_end(gesture,width-40,0); assert s.get_active()==1
    s.drag_begin(gesture,width-20,20); s.drag_update(gesture,-width+40,0); s.drag_cancel(); drain(.2); assert s.get_active()==1
    # True app-content blur: scroll beneath the header changes the immutable sampled pixels.
    w.navigate('account'); drain(.6)
    header=w.header_glass; assert header.refresh_count>0 and header.pixbuf is not None
    before=header.pixbuf.get_pixels(); count=header.refresh_count
    scroll=w.pages['account']['scroll'].get_vadjustment(); scroll.set_value(min(200,scroll.get_upper()-scroll.get_page_size())); drain(.6)
    assert header.refresh_count>count and header.pixbuf.get_pixels()!=before
    w.hide(); drain(.1); assert header.timer==0 and w.nav_glass.timer==0 and w.sidebar.timer==0
    w.show(); drain(.4); assert header.timer!=0
    # Persist compact state across a new application instance without discarding v1 protocol prefs.
    w.simple_switch.set_active(True); drain(.2)
    w.destroy(); w.instance.close(); drain(.1)
    w=app.Window(); drain(.4)
    assert w.compact and w.simple_switch.get_active() and w.channel.get_active()==0 and w.performance.get_active()==1
    screenshot=os.environ.get('QINGLIAN_SCREENSHOT')
    if screenshot:
        w.simple_switch.set_active(False); w.navigate('connect'); drain(.5)
        image=Gdk.pixbuf_get_from_window(w.get_window(),0,0,w.get_allocated_width(),w.get_allocated_height())
        image.savev(screenshot,'png',[],[])
    w.destroy(); w.instance.close(); drain(.1)
    print('PASS: GTK six pages, desktop/narrow layout, compact persistence, live-state preservation, radio/drag, consent, real blur refresh and lifecycle.')
