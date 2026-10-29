import os
from pathlib import Path
import sys
import tempfile
from unittest.mock import MagicMock,patch
from PySide6.QtWidgets import QApplication
sys.path.insert(0,str(Path(__file__).resolve().parent))
import app
class Api:
    account={}
    def request(self,*args,**kwargs): return {}
def run(screenshot):
    application=QApplication.instance() or QApplication([])
    with tempfile.TemporaryDirectory() as directory,patch.object(app.client,'STATE',Path(directory)):
        window=app.Window(Api()); window.poll.stop(); window.show()
        application.processEvents()
        assert window.channel.currentIndex()==0 and not window.consent.isChecked()
        for index in range(6):
            window.nav.setCurrentRow(index); application.processEvents(); assert window.stack.currentIndex()==index
        connection=window.conn; window.username.setText('draft-user'); window.password.setText('draft-pass')
        with patch.object(connection,'start') as start,patch.object(connection,'disconnect') as stop:
            window.compact.setChecked(True); window.theme.setCurrentIndex(1); application.processEvents()
            assert window.conn is connection and window.username.text()=='draft-user' and window.password.text()=='draft-pass'
            start.assert_not_called(); stop.assert_not_called()
        window.auth('login'); assert '同意' in window.message.text()
        window.compact.setChecked(False); window.theme.setCurrentIndex(0); window.nav.setCurrentRow(0)
        application.processEvents(); assert window.status.text()=='未连接'
        if screenshot: assert window.grab().save(screenshot)
        window.working=False; window.close(); application.processEvents()
    print('PASS: six Qt pages, compatibility default, account consent, themes, compact state preservation, no live credentials.')
if __name__=='__main__': run(os.environ.get('QINGLIAN_SCREENSHOT'))
