"""Execute the production Java command against simulated dumpsys (no device claim)."""
import os
from pathlib import Path
import subprocess
import tempfile

command = subprocess.check_output(
    ["java", "-cp", "build/tests", "ForegroundSnapshotTest", "command"], text=True
)
with tempfile.TemporaryDirectory() as directory:
    root = Path(directory)
    mock = root / "dumpsys"
    mock.write_text('''#!/bin/sh
case "$*" in
  "activity activities") cat "$MOCK_ROOT/activity" ;;
  "window windows") cat "$MOCK_ROOT/window" ;;
  "SurfaceFlinger --list") cat "$MOCK_ROOT/layers" ;;
  "SurfaceFlinger --latency "*) printf '%s\\n' "$3" >> "$MOCK_ROOT/queries"; printf '8333333\\n1 2 3\\n' ;;
  *) exit 1 ;;
esac
''')
    mock.chmod(0o755)
    env = dict(os.environ, MOCK_ROOT=directory, PATH=directory + os.pathsep + os.environ["PATH"])

    def run(activity, window, package):
        (root / "activity").write_text(activity)
        (root / "window").write_text(window)
        # Prefix/suffix matches must not consume the eight-layer sampling budget.
        decoys = [f"SurfaceView[{package}clone/.Main]#{i}" for i in range(10)]
        decoys += [f"SurfaceView[prefix.{package}/.Main]", f"SurfaceView[{package}.extra/.Main]"]
        wanted = [f"SurfaceView[{package}/.Main](BLAST)#42", f"{package}/.Main#7"]
        (root / "layers").write_text("\n".join(decoys + wanted) + "\n")
        (root / "queries").write_text("")
        result = subprocess.run(["sh", "-c", command], env=env, capture_output=True, text=True, timeout=5)
        assert result.returncode == 0, result.stderr
        assert result.stdout.startswith(f"PACKAGE:{package}\n"), result.stdout
        assert (root / "queries").read_text().splitlines() == wanted, result.stdout

    run("mResumedActivity: ActivityRecord{a u0 com.old.game/.Main}\n"
        "topResumedActivity=ActivityRecord{b u0 com.top.game/.Main}\n",
        "mCurrentFocus=Window{c u0 com.focus.game/.Main}\n", "com.top.game")
    run("mResumedActivity: ActivityRecord{a u0 com.old.game/.Main}\n",
        "mCurrentFocus=Window{c u0 com.focus.game/.Main}\n", "com.focus.game")
    run("topResumedActivity=null\nmResumedActivity: ActivityRecord{a u0 com.old.game/.Main}\n",
        "mCurrentFocus=null\n", "com.old.game")
    run("topResumedActivity: ActivityRecord{a u0 com.top.game/.Main}\n", "", "com.top.game")
    (root / "activity").write_text("topResumedActivity=null\n")
    (root / "window").write_text("mCurrentFocus=null\n")
    (root / "queries").write_text("")
    result = subprocess.run(["sh", "-c", command], env=env, capture_output=True, text=True, timeout=5)
    assert result.returncode != 0 and not result.stdout and not (root / "queries").read_text()
print("5 production shell cases passed (simulated dumpsys)")

with tempfile.TemporaryDirectory() as directory:
    root=Path(directory)
    mock=root/"dumpsys"
    mock.write_text('''#!/bin/sh
printf '%s\\n' "$*" >> "$MOCK_ROOT/calls"
case "$*" in
 "SurfaceFlinger --list") cat "$MOCK_ROOT/layers" ;;
 "SurfaceFlinger --latency "*) printf '%s\\n' "$3" >> "$MOCK_ROOT/queries"; printf '8333333\\n1 2 3\\n' ;;
 *) exit 91 ;;
esac
''')
    mock.chmod(0o755)
    env=dict(os.environ,MOCK_ROOT=directory,PATH=directory+os.pathsep+os.environ["PATH"])
    wanted=[f"SurfaceView[com.test.game/.Main]#{i}" for i in range(12)]
    (root/"layers").write_text("SurfaceView[com.test.gameclone/.Main]\n"+"\n".join(wanted)+"\n")
    def run(layer,offset):
        command=subprocess.check_output(["java","-cp","build/tests","ForegroundSnapshotTest","game","com.test.game",layer,str(offset)],text=True)
        (root/"queries").write_text("");(root/"calls").write_text("")
        result=subprocess.run(["sh","-c",command],env=env,capture_output=True,text=True,timeout=5)
        assert result.returncode==0,result.stderr
        assert result.stdout.startswith("PACKAGE:com.test.game\n")
        return (root/"queries").read_text().splitlines(),(root/"calls").read_text()
    for offset in (0,2,4,6,8,10):
        queries,calls=run("",offset)
        assert queries==wanted[offset:offset+2]
        assert "LAYERS:12\n" in subprocess.check_output(["sh","-c",subprocess.check_output(["java","-cp","build/tests","ForegroundSnapshotTest","game","com.test.game","",str(offset)],text=True)],env=env,text=True)
        assert "activity" not in calls and "window" not in calls
    cached="SurfaceView[com.test.game/.Main] O'Brien $(touch HACK)"
    queries,calls=run(cached,0)
    assert queries==[cached] and "--list" not in calls and not Path("HACK").exists()
    bad=subprocess.run(["java","-cp","build/tests","ForegroundSnapshotTest","game","com.test.game;exit 0"],capture_output=True,text=True)
    assert bad.returncode!=0 and not bad.stdout
print("8 selected-game shell cases passed: bounded scans, cache and shell escaping (simulated dumpsys)")
