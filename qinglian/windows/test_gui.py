import os
from pathlib import Path
import sys
import tempfile
import threading
import time
from unittest.mock import MagicMock,patch
from PySide6.QtWidgets import QApplication
sys.path.insert(0,str(Path(__file__).resolve().parent))
import app
class Api:
    account={}
    def request(self,*args,**kwargs): return {}
def check_background_poll(application):
    from PySide6.QtTest import QTest
    def until(predicate):
        deadline=time.monotonic()+3
        while not predicate():
            assert time.monotonic()<deadline,'GUI task did not finish'
            QTest.qWait(10)
    for fail in (False,True):
        entered=threading.Event(); release=threading.Event(); foreground=threading.Event()
        class SlowApi:
            account={'username':'fixture'}
            calls=0
            def request(self,path,**kwargs):
                self.calls+=1
                if path=='online':
                    entered.set()
                    assert release.wait(5),'fixture gate timed out'
                    if fail: raise RuntimeError('fixture network failure')
                    return {'online':2}
                return {'total':1024**3,'upload':0,'download':0}
        api=SlowApi(); window=app.Window(api); window.poll.stop()
        try:
            until(entered.is_set)
            assert window.public_pending and not window.working
            for _ in range(5): window.refresh_public()
            assert api.calls==1,'overlapping background polls'
            # This is the user-visible regression: a stalled timer request may
            # coexist with connecting, without allocating any real VPN session.
            with patch.object(window.conn,'start') as start:
                window.toggle(); start.assert_called_once()
                assert window.busy
                window.on_event('stopped',None)
            assert window.task(lambda:foreground.wait(5),lambda _:None)
            window.message.setText('foreground status')
            release.set(); until(lambda:not window.public_pending)
            assert window.working,'poll completion released foreground lock'
            assert window.message.text()=='foreground status'
            assert ('暂不可用' in window.online.text()) if fail else window.online.text()=='在线设备：2'
            foreground.set(); until(lambda:not window.working)
            window.refresh_public(); until(lambda:not window.public_pending)
            assert api.calls==(2 if fail else 4),'poll did not recover for next tick'
            # Closing never waits on a read-only request or its network timeout.
            release.clear(); entered.clear(); window.refresh_public(); until(entered.is_set)
            window.show(); window.close(); application.processEvents()
            assert not window.isVisible() and not window.closing
            release.set(); until(lambda:not window.public_pending)
        finally:
            release.set(); foreground.set(); window.working=False; window.busy=False; window.request_exit()
            application.processEvents()
def run(screenshot):
    application=QApplication.instance() or QApplication([])
    with tempfile.TemporaryDirectory() as directory,patch.object(app.client,'STATE',Path(directory)):
        check_background_poll(application)
        window=app.Window(Api()); window.poll.stop(); window.show()
        application.processEvents()
        assert window.channel.currentIndex()==0 and not window.consent.isChecked()
        for index in range(6):
            window.nav.setCurrentRow(index); application.processEvents(); assert window.stack.currentIndex()==index
        window.tun.setChecked(True); assert not window.route.isEnabled()
        connection=window.conn; window.username.setText('draft-user'); window.password.setText('draft-pass')
        with patch.object(connection,'start') as start,patch.object(connection,'disconnect') as stop:
            window.compact.setChecked(True); window.theme.setCurrentIndex(1); application.processEvents()
            assert window.conn is connection and window.username.text()=='draft-user' and window.password.text()=='draft-pass'
            start.assert_not_called(); stop.assert_not_called(); assert window.tun.isChecked() and not window.route.isEnabled()
        window.tun.setChecked(False); assert window.route.isEnabled()
        assert not window.windowIcon().isNull()
        if window.tray is not None:
            window.busy=True
            with patch.object(window.conn,'disconnect') as stop:
                window.close(); application.processEvents(); assert not window.isVisible(); stop.assert_not_called(); assert window.busy
            window.busy=False; window.show()
        window.auth('login'); assert '同意' in window.message.text()
        remote={'schema':1,'revision':2,'ui':{'accent':'teal','density':'compact','notice':'fixture notice','material':False},'package':{'version':'1.0.0-preview6','sha256':'a'*64,'size':100}}
        with patch.object(window.conn,'start') as start,patch.object(window.conn,'disconnect') as stop:
            window.updates_done(remote); application.processEvents()
            assert window.notice.text()=='fixture notice' and window.update_apply.isEnabled()
            assert window.remote_ui['density']=='compact' and window.conn is connection
            start.assert_not_called(); stop.assert_not_called()
            window.busy=True; window.install_update(); assert '先断开' in window.message.text(); window.busy=False
            window.remote_enabled.setChecked(False); assert not window.notice.isVisible()
            window.remote_enabled.setChecked(True)
            window.updates_done(None); assert window.remote_ui['accent']=='teal'
        window.updates_done({**remote,'package':{'version':'1.0.0-preview4','sha256':'a'*64,'size':100}}); assert not window.update_apply.isEnabled()
        window.updates_done({**remote,'ui':dict(app.updater.DEFAULT_UI),'package':None})
        window.compact.setChecked(False); window.theme.setCurrentIndex(0); window.nav.setCurrentRow(0)
        from PySide6.QtTest import QTest
        QTest.qWait(250); application.processEvents(); assert window.status.text()=='未连接'
        if screenshot: assert window.grab().save(screenshot)
        window.working=False; window.request_exit(); application.processEvents()
    print('PASS: stalled/failed background polling never blocks connection, foreground lock, single-flight retry, close while polling; six Qt pages, consent, themes and compact state.')
if __name__=='__main__': run(os.environ.get('QINGLIAN_SCREENSHOT'))
