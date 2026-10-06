package com.gzy.redmiport;

/** Shell selection mirrors ForegroundSnapshot; filter package boundaries before the layer cap. */
public final class FpsShellCommand {
    /** Selected by the foreground monitor; never interpolate an unvalidated package. */
    public static String forGame(String pkg,String layer,int offset){
        if(pkg==null||!pkg.matches("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+"))throw new IllegalArgumentException("Invalid game package");
        String prefix="printf 'PACKAGE:%s\\n' "+quote(pkg)+";";
        if(layer!=null&&!layer.isEmpty())return prefix+"printf 'LAYER:%s\\n' "+quote(layer)+";dumpsys SurfaceFlinger --latency "+quote(layer);
        int start=Math.max(0,offset)+1;
        return prefix+"ls=$(dumpsys SurfaceFlinger --list|awk -v p="+quote(pkg)+" '"
            +"{ rest=$0; while ((i=index(rest,p))>0) {before=substr(rest,1,i-1); after=substr(rest,i+length(p));"
            +"if (before !~ /[A-Za-z0-9_.]$/ && after !~ /^[A-Za-z0-9_.]/) { print; break; }rest=after; } }');"
            +"ls=$({ printf '%s\\n' \"$ls\"|grep SurfaceView; printf '%s\\n' \"$ls\"|grep -v SurfaceView; }"
            +"|awk 'NF'); count=$(printf '%s\\n' \"$ls\"|awk 'NF {n++} END {print n+0}');printf 'LAYERS:%s\\n' \"$count\";"
            +"printf '%s\\n' \"$ls\"|sed -n '"+start+","+(start+1)+"p'|while IFS= read -r l; do [ -z \"$l\" ]&&continue;"
            +"printf 'LAYER:%s\\n' \"$l\";dumpsys SurfaceFlinger --latency \"$l\";done";
    }
    public static int layerCount(String dump){
        for(String line:dump.split("\\r?\\n"))if(line.startsWith("LAYERS:")){
            try{return Math.max(0,Integer.parseInt(line.substring(7).trim()));}catch(NumberFormatException ignored){}
        }
        return 0;
    }
    private static String quote(String value){return "'"+value.replace("'","'\\''")+"'";}
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
