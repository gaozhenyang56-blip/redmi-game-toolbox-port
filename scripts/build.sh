#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
python3 - <<'PYCODE'
from pathlib import Path
import shutil
for directory in ('build/classes', 'build/dex', 'build/smali'):
 shutil.rmtree(directory, ignore_errors=True)
PYCODE
mkdir -p build/classes build/dex build/smali output
java -jar tools/ecj.jar -1.8 -proc:none -nowarn -classpath tools/android-api31.jar:tools/shizuku-api.jar:tools/shizuku-provider.jar:tools/shizuku-aidl.jar:tools/shizuku-shared.jar:tools/repair-compile-dependencies.jar -d build/classes java/com/gzy/redmiport/*.java
python3 - <<'PYCODE'
from pathlib import Path
from zipfile import ZipFile,ZIP_DEFLATED
with ZipFile('build/java.jar','w',ZIP_DEFLATED) as z:
 for p in Path('build/classes').rglob('*.class'):z.write(p,p.relative_to('build/classes'))
PYCODE
tools/build-tools/d8 --lib tools/android-api31.jar --classpath tools/shizuku-api.jar --classpath tools/shizuku-provider.jar --classpath tools/shizuku-aidl.jar --classpath tools/shizuku-shared.jar --classpath tools/repair-compile-dependencies.jar --min-api 31 --output build/dex build/java.jar
java -cp tools/apktool.jar com.android.tools.smali.baksmali.Main d build/dex/classes.dex -o build/smali
python3 - <<'PYCODE'
from pathlib import Path
# Remove stale generated inner classes, preserving the original compatibility code.
destination = Path('decoded/smali_classes7/com/gzy/redmiport')
for source in Path('java/com/gzy/redmiport').glob('*.java'):
 for generated in destination.glob(source.stem + '*.smali'):
  if generated.stem == source.stem or generated.stem.startswith(source.stem + '$'):
   generated.unlink()
PYCODE
cp -r build/smali/. decoded/smali_classes7/
java -jar tools/apktool.jar b decoded -o build/unsigned.apk
tools/build-tools/zipalign -p -f 4 build/unsigned.apk output/Redmi-GameToolbox-aligned-unsigned.apk
