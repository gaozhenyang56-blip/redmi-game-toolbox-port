package com.gzy.redmiport;

/** Shell selection mirrors ForegroundSnapshot; filter package boundaries before the layer cap. */
public final class FpsShellCommand {
    public static final String COMMAND =
        "a=$(dumpsys activity activities);"
        + "p=$(printf '%s\\n' \"$a\"|sed -n 's/.*topResumedActivity[=:].* \\([^/ ]*\\)\\/.*/\\1/p'|head -1);"
        + "[ -z \"$p\" ]&&p=$(dumpsys window windows|sed -n 's/.*mCurrentFocus=.* \\([^/ ]*\\)\\/.*/\\1/p'|head -1);"
        + "[ -z \"$p\" ]&&p=$(printf '%s\\n' \"$a\"|sed -n 's/.*mResumedActivity[=:].* \\([^/ ]*\\)\\/.*/\\1/p'|head -1);"
        + "[ -z \"$p\" ]&&exit 1;printf 'PACKAGE:%s\\n' \"$p\";"
        + "ls=$(dumpsys SurfaceFlinger --list|awk -v p=\"$p\" '"
        + "{ rest=$0; while ((i=index(rest,p))>0) {"
        + "before=substr(rest,1,i-1); after=substr(rest,i+length(p));"
        + "if (before !~ /[A-Za-z0-9_.]$/ && after !~ /^[A-Za-z0-9_.]/) { print; break; }"
        + "rest=after; } }');"
        + "{ printf '%s\\n' \"$ls\"|grep SurfaceView; printf '%s\\n' \"$ls\"|grep -v SurfaceView; }"
        + "|head -8|while IFS= read -r l; do [ -z \"$l\" ]&&continue;"
        + "printf 'LAYER:%s\\n' \"$l\";dumpsys SurfaceFlinger --latency \"$l\";done";
}
