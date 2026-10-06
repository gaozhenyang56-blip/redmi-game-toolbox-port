.class public Lof/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lof/e;->k(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lof/e;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lk5/a;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/z;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, La8/z;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lk5/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lk5/a;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lk5/a;->o(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lk5/a;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lk5/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Li8/c;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Li8/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Li8/c;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Li8/c;->T(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e()J
    .locals 2

    const-string v0, "key_schedule_close_global_dock_timestamp"

    invoke-static {v0}, Lof/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static f()J
    .locals 2

    const-string v0, "key_schedule_close_vb_timestamp"

    invoke-static {v0}, Lof/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static g(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lr4/a;->q(Ljava/lang/String;J)V

    :cond_0
    return-wide v2
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lof/e;->c:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lof/e;->b:Z

    return v0
.end method

.method private static synthetic j(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lof/e;->n(Landroid/content/Context;)V

    invoke-static {p0}, Lof/e;->o(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lof/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleCloseFeatureJobService fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic k(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, La8/z;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, La8/z;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lk5/a;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lk5/a;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sput-boolean v1, Lof/e;->c:Z

    invoke-static {p0, v2}, Li8/c;->R(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Li8/c;->S(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    sput-boolean v1, Lof/e;->b:Z

    sget-boolean v1, Lof/e;->b:Z

    if-eqz v1, :cond_3

    invoke-static {p0}, Lx4/z1;->u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lx4/z1;->g(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Li8/c;->R(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    sput-boolean v2, Lof/e;->b:Z

    invoke-static {p0, v2}, Li8/c;->r0(Landroid/content/Context;Z)V

    :cond_3
    sget-boolean v1, Lof/e;->b:Z

    if-eqz v1, :cond_4

    invoke-static {p0}, Li8/c;->T(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    sput-boolean v2, Lof/e;->b:Z

    invoke-static {p0, v2}, Li8/c;->r0(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    sget-object v1, Lof/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uiProcessInit fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    sput-boolean v0, Lof/e;->d:Z

    return-void

    :goto_3
    sput-boolean v0, Lof/e;->d:Z

    throw p0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lk5/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lk5/a;->F(ZLandroid/content/Context;)V

    sget-object p0, Lof/e;->a:Ljava/lang/String;

    const-string v0, "init. treat as new device"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lof/e;->a:Ljava/lang/String;

    const-string v1, "scheduleCloseFeatureJobService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lof/c;

    invoke-direct {v1, p0}, Lof/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static n(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lof/e;->e()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xa4cb800

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Lof/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "621.3.3.1.17210"

    invoke-static {v0, v1}, Ll5/b;->j(Ljava/lang/String;Z)V

    invoke-static {p0, v1}, Lk5/a;->C(Landroid/content/Context;Z)V

    sget-object p0, Lof/e;->a:Ljava/lang/String;

    const-string v0, "close Global Dock."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static o(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lof/e;->f()J

    move-result-wide v0

    invoke-static {}, La8/z;->g()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {}, La8/z;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/32 v0, 0x240c8400

    cmp-long v0, v5, v0

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/32 v0, 0xa4cb800

    cmp-long v0, v5, v0

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    invoke-static {p0}, Lof/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "621.3.3.1.17213"

    invoke-static {v0, v4}, Ll5/b;->j(Ljava/lang/String;Z)V

    invoke-static {p0}, Li8/c;->b(Landroid/content/Context;)V

    sget-object p0, Lof/e;->a:Ljava/lang/String;

    const-string v0, "close vb."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static p(Z)V
    .locals 0

    sput-boolean p0, Lof/e;->c:Z

    return-void
.end method

.method public static q(Z)V
    .locals 0

    sput-boolean p0, Lof/e;->b:Z

    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_1

    sget-boolean v0, Lof/e;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lof/d;

    invoke-direct {v1, p0}, Lof/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
