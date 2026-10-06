.class public Lm5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "d"

.field private static c:Lm5/d;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lm5/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lm5/d;->a:Z

    return p1
.end method

.method public static declared-synchronized c()Lm5/d;
    .locals 2

    const-class v0, Lm5/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm5/d;->c:Lm5/d;

    if-nez v1, :cond_0

    new-instance v1, Lm5/d;

    invoke-direct {v1}, Lm5/d;-><init>()V

    sput-object v1, Lm5/d;->c:Lm5/d;

    :cond_0
    sget-object v1, Lm5/d;->c:Lm5/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lm5/d;->a:Z

    if-eqz v0, :cond_0

    sget-object p1, Lm5/d;->b:Ljava/lang/String;

    const-string p2, "executing clean now"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm5/d;->a:Z

    const/4 v1, -0x1

    const-string v2, "131"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v1, "132"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    long-to-int p2, v1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.taskmanager.Clear"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "clean_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lm5/d;->b:Ljava/lang/String;

    const-string v2, "execClean"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lm5/d$a;

    invoke-direct {v1, p0, p2, p1}, Lm5/d$a;-><init>(Lm5/d;ILandroid/content/Context;)V

    const-wide/16 p1, 0x5dc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
