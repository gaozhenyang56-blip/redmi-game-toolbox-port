.class public Lu2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lu2/b;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu2/b;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lu2/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lu2/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lu2/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lu2/b;
    .locals 2

    const-class v0, Lu2/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu2/b;->b:Lu2/b;

    if-nez v1, :cond_0

    new-instance v1, Lu2/b;

    invoke-direct {v1, p0}, Lu2/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lu2/b;->b:Lu2/b;

    :cond_0
    sget-object p0, Lu2/b;->b:Lu2/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static d()Z
    .locals 2

    const-string v0, "side_kick_status"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lu2/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lu2/b;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.miui.voiceassist"

    invoke-static {p0, v0}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const v0, 0x121ebf88

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public g()Z
    .locals 8

    iget-object v0, p0, Lu2/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lu2/b;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lu2/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lu2/b;->a:Landroid/content/Context;

    const-string v4, "av_sidekick_settings"

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "side_kick_last_time"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    const-string v0, "side_kick_interval"

    invoke-static {v0, v4, v5}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cur interval: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SidekickSettings"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "min interval: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public h(J)V
    .locals 1

    new-instance v0, Lu2/b$a;

    invoke-direct {v0, p0, p1, p2}, Lu2/b$a;-><init>(Lu2/b;J)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
