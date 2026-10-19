"""Display-server smoke: actual GTK widgets, no simulated VPN connection claims."""
import os
from pathlib import Path
import sys
import tempfile
import time
sys.path.insert(0,str(Path(__file__).resolve().parent))
import runtime
lib=Path(os.environ['QINGLIAN_TEST_LIB'])
runtime.ROOT=lib
with tempfile.TemporaryDirectory() as d:
    runtime.STATE=Path(d)
    import app
    app.STATE=Path(d)
    w=app.Window()
    assert w.tabs.get_n_pages()==5
    for page in range(5):
        w.tabs.set_current_page(page)
        for _ in range(15):
            while app.Gtk.events_pending(): app.Gtk.main_iteration_do(False)
            time.sleep(.01)
        assert w.tabs.get_current_page()==page
    for theme in (0,1,2):
        w.theme.set_active(theme)
        while app.Gtk.events_pending(): app.Gtk.main_iteration_do(False)
        assert app.read(Path(d)/'settings.json')['theme']==theme
    w.auth('login')
    assert '明确同意' in w.status.get_text()
    w.tabs.set_current_page(1); w.theme.set_active(0)
    for _ in range(20):
        while app.Gtk.events_pending(): app.Gtk.main_iteration_do(False)
        time.sleep(.01)
    screenshot=os.environ.get('QINGLIAN_SCREENSHOT')
    if screenshot:
        from gi.repository import Gdk
        image=Gdk.pixbuf_get_from_window(w.get_window(),0,0,w.get_allocated_width(),w.get_allocated_height())
        image.savev(screenshot,'png',[],[])
    w.destroy()
    print('GTK five pages, themes, consent gate and rendered screenshot: PASS')
