package com.gzy.redmiport;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/** Prefer the focused/top activity when multiple activities are resumed. */
public final class ForegroundSnapshot {
    private static final String[] MARKERS = {"topResumedActivity", "mCurrentFocus", "mResumedActivity"};
    public static String packageName(String dump) {
        for (String marker : MARKERS) {
            Matcher match = Pattern.compile("(?m)^.*\\b" + marker
                + "\\s*[:=][^\\r\\n]*? ([A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+)/").matcher(dump);
            if (match.find()) return match.group(1);
        }
        return "";
    }
}
