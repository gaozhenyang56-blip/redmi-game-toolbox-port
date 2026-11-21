"""Exercise the real lifecycle scripts inside a temporary filesystem model.

System tools that would write to the host are replaced with controlled stubs.
Real installs still need distribution-specific and systemd validation.
"""
from pathlib import Path
import json
import os
import shutil
import subprocess
import sys
import tarfile
import tempfile


archive = Path(sys.argv[1]).resolve()
with tempfile.TemporaryDirectory(prefix="cgwb-deploy-test-") as temp:
    root = Path(temp)
    fake = root / "bin"
    fake.mkdir()
    with tarfile.open(archive) as bundle:
        bundle.extractall(root / "artifact", filter="data")
    project = root / "artifact/chatgpt-web-bridge"
    paths = (
        "/opt/chatgpt-web-bridge",
        "/etc/chatgpt-web-bridge",
        "/var/lib/chatgpt-web-bridge",
        "/srv/chatgpt-web-bridge",
        "/run/chatgpt-web-bridge",
        "/run/lock",
        "/etc/systemd/system",
        "/etc/nginx/conf.d",
        "/etc/caddy/conf.d",
        "/etc/letsencrypt",
    )
    for script in [*project.glob("scripts/*.sh"), *project.glob("systemd/*.service")]:
        text = script.read_text()
        for path in paths:
            text = text.replace(path, str(root) + path)
        if script.name == "common.sh":
            text += "\nroot() { :; }\nsystem_supported() { :; }\n"
        script.write_text(text)
    for name in ["opt", "etc/systemd/system", "run/lock", "var/lib", "srv"]:
        (root / name).mkdir(parents=True, exist_ok=True)
    env = dict(os.environ, PATH=f"{fake}:{os.environ['PATH']}", TEST_ROOT=temp)
    # Production paths are mapped above. Leave unprivileged filesystem writes real.
    assert str(root) in (project / "scripts/common.sh").read_text().splitlines()[1]

    def stub(name, body):
        target = fake / name
        target.write_text("#!/usr/bin/env bash\nset -euo pipefail\n" + body + "\n")
        target.chmod(0o755)

    for name in ("Xtigervnc", "openbox", "xauth", "xdpyinfo", "xclip", "xdotool", "xprop", "ss",
                 "swapon", "id", "getent", "chown", "nginx", "caddy"):
        stub(name, "exit 0")
    stub("df", "printf 'fixture 0 0 900000 0 /\\n'")
    stub("runuser", '''
shift 3
python3 - "$3" "$TEST_ROOT" > "$TEST_ROOT/auth-config.json" <<'PY_END'
import json, sys
cfg = json.load(open(sys.argv[1]))
cfg["State"] = sys.argv[2] + "/var/lib/chatgpt-web-bridge/auth"
print(json.dumps(cfg))
PY_END
exec "$1" "$2" "$TEST_ROOT/auth-config.json"
''')
    stub("curl", '''
if [[ "$*" == *--unix-socket* ]]; then
  if grep -q '^BRIDGE_ON_DEMAND=1$' "$TEST_ROOT/etc/chatgpt-web-bridge/browser.env"; then
    printf '{"state":"idle"}'
  else
    printf '{"state":"running"}'
  fi
fi
''')
    stub("systemd-analyze", '[[ ${FAIL_VERIFY:-0} == 0 ]]')
    stub("systemctl", '''
case "$1" in
  is-active|is-enabled) [[ -f "$TEST_ROOT/${1}-${*: -1}" ]];;
  restart|start|stop|enable|disable)
    action=$1; shift
    for arg in "$@"; do
      [[ "$arg" == --* ]] && continue
      [[ "$arg" == chatgpt-web-bridge*.service ]] || exit 90
      printf '%s %s\\n' "$action" "$arg" >> "$TEST_ROOT/systemctl.log"
      case "$action" in
        start|restart) touch "$TEST_ROOT/is-active-$arg";;
        stop) unlink "$TEST_ROOT/is-active-$arg" 2>/dev/null || true;;
        enable) touch "$TEST_ROOT/is-enabled-$arg";;
        disable)
          unlink "$TEST_ROOT/is-enabled-$arg" 2>/dev/null || true
          unlink "$TEST_ROOT/is-active-$arg" 2>/dev/null || true;;
      esac
    done;;
  daemon-reload) ;;
  *) exit 91;;
esac
''')
    stub("install", '''
args=()
while (($#)); do
  case "$1" in
    -o|-g) shift 2;;
    *) args+=("$1"); shift;;
  esac
done
exec /usr/bin/install "${args[@]}"
''')

    def run(script, args=(), stdin="", fail=False):
        p = subprocess.run(["bash", project / "scripts" / script, *args],
                           input=stdin, text=True, capture_output=True,
                           env=dict(env, FAIL_VERIFY="1" if fail else "0"))
        assert bool(p.returncode) == fail, (script, p.returncode, p.stdout, p.stderr)
        return p

    args = ["--proxy", "manual", "--skip-dependencies", "--chromium", "/usr/bin/true",
            "--memory-max-mib", "384", "--password-stdin"]
    config = root / "etc/chatgpt-web-bridge/config.json"
    current = root / "opt/chatgpt-web-bridge/current"
    config_dir = root / "var/lib/chatgpt-web-bridge"
    credential = config_dir / "auth/password.bcrypt"
    profile = config_dir / "browser/fixture.profile"
    unrelated = root / "etc/systemd/system/astrbot.service"
    unrelated.write_text("leave unrelated unit untouched")

    run("install.sh", [*args, "--on-demand", "--admin-user", "fixture-admin"], "deployment test passphrase\n")
    original = current.resolve()
    assert original.is_dir() and json.loads(config.read_text())["Origin"] == "https://chat.gaozy.tech"
    assert json.loads(config.read_text())["AdminUser"] == "fixture-admin"
    assert "BRIDGE_ON_DEMAND=1" in config.with_name("browser.env").read_text()
    assert (original / "web/index.html").stat().st_mode & 0o044 == 0o044
    profile.write_text("fixture browser state")
    hash_before = credential.read_bytes()
    run("install.sh", args)
    assert current.resolve() != original
    assert "BRIDGE_ON_DEMAND=1" in config.with_name("browser.env").read_text()
    assert credential.read_bytes() == hash_before
    assert profile.read_text() == "fixture browser state"
    before_failure = current.resolve()
    run("update.sh", args, fail=True)
    assert current.resolve() == before_failure, "failure did not roll back publication"
    assert credential.read_bytes() == hash_before

    backup = root / "settings.tar.gz"
    # tar is invoked with an absolute file list in production. Rebase its
    # working root to the fixture so the resulting member names stay portable.
    backup_script = project / "scripts/backup.sh"
    backup_script.write_text(backup_script.read_text().replace("-C / etc/", f"-C {root} etc/"))
    run("backup.sh", [str(backup)])
    with tarfile.open(backup) as copied:
        assert len(copied.getnames()) == 4
        assert not any("profile" in name for name in copied.getnames())
    run("restore.sh", [str(backup)])
    assert credential.read_bytes() == hash_before
    run("uninstall.sh")
    assert not current.exists()
    assert profile.read_text() == "fixture browser state"
    assert unrelated.read_text() == "leave unrelated unit untouched"
    assert "astrbot" not in (root / "systemctl.log").read_text()
    print("通过：安装、重复运行、更新失败回滚、备份恢复、卸载范围与浏览器资料保留（隔离模拟）")
