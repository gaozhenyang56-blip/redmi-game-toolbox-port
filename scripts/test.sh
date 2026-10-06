#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p build/tests
java -jar tools/ecj.jar -1.8 -proc:none -nowarn -d build/tests java/com/gzy/redmiport/FrameSampleParser.java java/com/gzy/redmiport/ForegroundSnapshot.java java/com/gzy/redmiport/FpsShellCommand.java java/com/gzy/redmiport/SidebarGeometry.java tests/FrameSampleParserTest.java tests/ForegroundSnapshotTest.java tests/SidebarGeometryTest.java
java -cp build/tests FrameSampleParserTest
java -cp build/tests ForegroundSnapshotTest
python3 tests/fps_shell_test.py
java -cp build/tests SidebarGeometryTest
python3 tests/sidebar_integration_check.py

mkdir -p build/settings-tests
java -jar tools/ecj.jar -1.8 -proc:none -nowarn -d build/settings-tests java/com/gzy/redmiport/OriginalSettings.java $(rg --files tests/settings -g '*.java')
java -cp build/settings-tests OriginalSettingsTest
