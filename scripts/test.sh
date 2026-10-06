#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p build/tests
java -jar tools/ecj.jar -1.8 -proc:none -nowarn -d build/tests java/com/gzy/redmiport/FrameSampleParser.java tests/FrameSampleParserTest.java
java -cp build/tests FrameSampleParserTest
