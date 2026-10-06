.class public La8/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:J

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 0
    return-void
.end method

.method public static a()F
    .locals 2
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->sampleFps()J
    move-result-wide v0
    long-to-float v0, v0
    return v0
.end method

.method public static b()J
    .locals 2
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->sampleFps()J
    move-result-wide v0
    return-wide v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private static d(Landroid/content/Context;)I
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1f
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p0, v2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3

    :catch_0
    move-exception p0

    const-string v1, "SurfaceMonitorHelper"

    const-string v2, "getMaxFPSByWindowManager fail : "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\t"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, La8/w;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
