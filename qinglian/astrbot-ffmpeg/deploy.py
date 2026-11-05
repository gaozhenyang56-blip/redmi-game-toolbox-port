import json,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'server/github'))
from ssh_common import connection,remote_json
with connection() as client:
    result=remote_json(client,Path(__file__).with_name('server_setup.py').read_text(),timeout=1200)
    print('ASTRBOT_FFMPEG='+json.dumps(result,ensure_ascii=False),flush=True)
    if not result.get('ok'):raise SystemExit(1)
