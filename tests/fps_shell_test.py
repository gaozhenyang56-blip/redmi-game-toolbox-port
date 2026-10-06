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
