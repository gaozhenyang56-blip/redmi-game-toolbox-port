.class public final Lcom/gzy/redmiport/FpsShellCommand;
.super Ljava/lang/Object;
.source "FpsShellCommand.java"


# static fields
.field public static final COMMAND:Ljava/lang/String; = "a=$(dumpsys activity activities);p=$(printf \'%s\\n\' \"$a\"|sed -n \'s/.*topResumedActivity[=:].* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&p=$(dumpsys window windows|sed -n \'s/.*mCurrentFocus=.* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&p=$(printf \'%s\\n\' \"$a\"|sed -n \'s/.*mResumedActivity[=:].* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&exit 1;printf \'PACKAGE:%s\\n\' \"$p\";ls=$(dumpsys SurfaceFlinger --list|awk -v p=\"$p\" \'{ rest=$0; while ((i=index(rest,p))>0) {before=substr(rest,1,i-1); after=substr(rest,i+length(p));if (before !~ /[A-Za-z0-9_.]$/ && after !~ /^[A-Za-z0-9_.]/) { print; break; }rest=after; } }\');{ printf \'%s\\n\' \"$ls\"|grep SurfaceView; printf \'%s\\n\' \"$ls\"|grep -v SurfaceView; }|head -8|while IFS= read -r l; do [ -z \"$l\" ]&&continue;printf \'LAYER:%s\\n\' \"$l\";dumpsys SurfaceFlinger --latency \"$l\";done"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
