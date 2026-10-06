#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p build/tests
java -jar tools/ecj.jar -1.8 -proc:none -nowarn -d build/tests java/com/gzy/redmiport/FrameSampleParser.java java/com/gzy/redmiport/ForegroundSnapshot.java java/com/gzy/redmiport/FpsShellCommand.java tests/FrameSampleParserTest.java tests/ForegroundSnapshotTest.java
java -cp build/tests FrameSampleParserTest
java -cp build/tests ForegroundSnapshotTest
python3 tests/fps_shell_test.py
