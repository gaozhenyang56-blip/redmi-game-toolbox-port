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

.method public static forGame(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 7
    if-eqz p0, :cond_b8

    const-string v0, "[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "printf \'PACKAGE:%s\\n\' "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gzy/redmiport/FpsShellCommand;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "printf \'LAYER:%s\\n\' "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/gzy/redmiport/FpsShellCommand;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ";dumpsys SurfaceFlinger --latency "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/gzy/redmiport/FpsShellCommand;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_55
    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ls=$(dumpsys SurfaceFlinger --list|awk -v p="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Lcom/gzy/redmiport/FpsShellCommand;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 12
    const-string p2, "{ rest=$0; while ((i=index(rest,p))>0) {before=substr(rest,1,i-1); after=substr(rest,i+length(p));"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 13
    const-string p2, "if (before !~ /[A-Za-z0-9_.]$/ && after !~ /^[A-Za-z0-9_.]/) { print; break; }rest=after; } }\');"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 14
    const-string p2, "ls=$({ printf \'%s\\n\' \"$ls\"|grep SurfaceView; printf \'%s\\n\' \"$ls\"|grep -v SurfaceView; }"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 15
    const-string p2, "|awk \'NF\'); count=$(printf \'%s\\n\' \"$ls\"|awk \'NF {n++} END {print n+0}\');printf \'LAYERS:%s\\n\' \"$count\";"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 16
    const-string p2, "printf \'%s\\n\' \"$ls\"|sed -n \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "p\'|while IFS= read -r l; do [ -z \"$l\" ]&&continue;"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 17
    const-string p1, "printf \'LAYER:%s\\n\' \"$l\";dumpsys SurfaceFlinger --latency \"$l\";done"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_b8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid game package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static layerCount(Ljava/lang/String;)I
    .registers 6

    .line 20
    const-string v0, "\\r?\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-lt v2, v0, :cond_c

    .line 23
    return v1

    .line 20
    :cond_c
    aget-object v3, p0, v2

    const-string v4, "LAYERS:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 21
    const/4 v4, 0x7

    :try_start_17
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_27} :catch_28

    return p0

    :catch_28
    move-exception v3

    .line 20
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
