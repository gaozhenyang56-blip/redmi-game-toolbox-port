import json,time,argparse
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
parser=argparse.ArgumentParser();parser.add_argument('--game-dir',type=Path);args=parser.parse_args()
roots=[args.game_dir/'data.xp3'] if args.game_dir else list((ROOT/'private/extracted').glob('*/data.xp3'))
if len(roots)!=1:raise SystemExit('未找到唯一的基础游戏目录')
game=roots[0].parent;files=[];excluded=[]
for path in sorted(game.rglob('*')):
 if not path.is_file() or path.name.endswith('.web-index.json'):continue
 rel=path.relative_to(game)
 if any(part.casefold().startswith('adult') or part.casefold() in ('savedata','save','saves','userdata') for part in rel.parts) or path.suffix.casefold() in ('.exe','.lnk','.url','.log'):
  excluded.append(str(rel));continue
 files.append(str(rel))
overrides={p.name:str(p.resolve()) for p in (ROOT/'compat').glob('*.tjs')}
files=sorted(set(files)|set(overrides))
(ROOT/'game-manifest.json').write_text(json.dumps({'root':str(game.resolve()),'files':files,'overrides':overrides},ensure_ascii=False,indent=2))
info={'entry':'data.xp3','verified':False,'resourceBytes':sum(Path(overrides.get(p,str(game/p))).stat().st_size for p in files),'files':len(files),'preparedAt':time.time(),'mode':'webdav'}
(ROOT/'game-info.json').write_text(json.dumps(info,ensure_ascii=False,indent=2))
print('Base resources prepared:',len(files),'files; no repacking or complete memory copy required')
