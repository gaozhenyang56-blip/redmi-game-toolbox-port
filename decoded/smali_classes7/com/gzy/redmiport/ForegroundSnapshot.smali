.class public final Lcom/gzy/redmiport/ForegroundSnapshot;
.super Ljava/lang/Object;
.source "ForegroundSnapshot.java"


# static fields
.field private static final MARKERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 8
    const-string v0, "mCurrentFocus"

    const-string v1, "mResumedActivity"

    const-string v2, "topResumedActivity"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/ForegroundSnapshot;->MARKERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static packageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 10
    sget-object v0, Lcom/gzy/redmiport/ForegroundSnapshot;->MARKERS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v1, :cond_9

    .line 15
    const-string p0, ""

    return-object p0

    .line 10
    :cond_9
    aget-object v3, v0, v2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(?m)^.*\\b"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 12
    const-string v4, "\\s*[:=][^\\r\\n]*? ([A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+)/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 12
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 11
    nop

    .line 13
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
