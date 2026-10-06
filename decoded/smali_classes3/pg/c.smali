.class public Lpg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg/c$d;
    }
.end annotation


# static fields
.field private static volatile l:Lpg/c;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lpg/c$d;

.field private i:Lpg/c$d;

.field private j:Lpg/c$d;

.field private k:Lpg/c$d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpg/c;->e:Z

    iput v0, p0, Lpg/c;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpg/c;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lpg/c;->e:Z

    :cond_0
    iget-object p1, p0, Lpg/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->g(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lpg/c;->a:I

    iget-object p1, p0, Lpg/c;->b:Landroid/content/Context;

    const-string v2, "pref_battery_statistics"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lpg/c;->c:Landroid/content/SharedPreferences;

    const-string v2, "pref_battery_statistics_last_type"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lpg/c;->d:I

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "PowerStatistics"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lpg/c;->g:Landroid/os/Handler;

    iget p1, p0, Lpg/c;->d:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v0}, Lpg/c;->v(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0, v1}, Lpg/c;->v(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lpg/c;)Z
    .locals 0

    iget-boolean p0, p0, Lpg/c;->e:Z

    return p0
.end method

.method static synthetic b(Lpg/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lpg/c;->e:Z

    return p1
.end method

.method static synthetic c(Lpg/c;)I
    .locals 0

    iget p0, p0, Lpg/c;->f:I

    return p0
.end method

.method static synthetic d(Lpg/c;I)I
    .locals 0

    iput p1, p0, Lpg/c;->f:I

    return p1
.end method

.method static synthetic e(Lpg/c;)I
    .locals 0

    iget p0, p0, Lpg/c;->d:I

    return p0
.end method

.method static synthetic f(Lpg/c;I)I
    .locals 0

    iput p1, p0, Lpg/c;->d:I

    return p1
.end method

.method static synthetic g(Lpg/c;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpg/c;->u(IZ)V

    return-void
.end method

.method static synthetic h(Lpg/c;)V
    .locals 0

    invoke-direct {p0}, Lpg/c;->m()V

    return-void
.end method

.method static synthetic i(Lpg/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lpg/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lpg/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lpg/c;->v(I)V

    return-void
.end method

.method static synthetic k(Lpg/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lpg/c;->s(I)V

    return-void
.end method

.method static synthetic l(Lpg/c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpg/c;->w(II)V

    return-void
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lpg/c;->h:Lpg/c$d;

    iput-object v0, p0, Lpg/c;->i:Lpg/c$d;

    invoke-direct {p0}, Lpg/c;->n()V

    return-void
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lpg/c;->j:Lpg/c$d;

    iput-object v0, p0, Lpg/c;->k:Lpg/c$d;

    return-void
.end method

.method private o(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lpg/c;->n()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lpg/c;->m()V

    :goto_0
    iget-object p2, p0, Lpg/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static p(Landroid/content/Context;)Lpg/c;
    .locals 2

    sget-object v0, Lpg/c;->l:Lpg/c;

    if-nez v0, :cond_1

    const-class v0, Lpg/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lpg/c;->l:Lpg/c;

    if-nez v1, :cond_0

    new-instance v1, Lpg/c;

    invoke-direct {v1, p0}, Lpg/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lpg/c;->l:Lpg/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lpg/c;->l:Lpg/c;

    return-object p0
.end method

.method private q(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "pref_battery_statistics_super_sleep"

    goto :goto_0

    :cond_0
    const-string p1, "pref_battery_statistics_super"

    :goto_0
    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "pref_battery_statistics_normal_sleep"

    goto :goto_1

    :cond_2
    const-string p1, "pref_battery_statistics_normal"

    :goto_1
    return-object p1
.end method

.method private r(Lpg/c$d;Lpg/c$d;IZ)V
    .locals 4

    iget-object v0, p0, Lpg/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lpg/c$d;->c(Lpg/c$d;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2}, Lpg/c$d;->c(Lpg/c$d;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Lpg/c$d;->a(Lpg/c$d;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1}, Lpg/c$d;->a(Lpg/c$d;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v2, p1

    long-to-float p1, v2

    const p2, 0x4a5bba00    # 3600000.0f

    div-float/2addr p1, p2

    int-to-float p2, v1

    div-float/2addr p2, p1

    invoke-direct {p0, p3, p4}, Lpg/c;->q(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private s(I)V
    .locals 2

    iget-object v0, p0, Lpg/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_battery_statistics_last_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private u(IZ)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lpg/c;->q(IZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpg/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lpg/c;->c:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    float-to-double v1, v2

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_3

    const-wide v3, 0x408f400000000000L    # 1000.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-static {v1, v2, p2}, Lpg/e;->i(DZ)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v2, p2}, Lpg/e;->e(DZ)V

    :cond_3
    :goto_0
    invoke-direct {p0, v0, p2}, Lpg/c;->o(Ljava/lang/String;Z)V

    return-void
.end method

.method private v(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lpg/c;->u(IZ)V

    invoke-direct {p0, p1, v1}, Lpg/c;->u(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lpg/c;->m()V

    :goto_0
    iput v1, p0, Lpg/c;->f:I

    return-void
.end method

.method private w(II)V
    .locals 7

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p2, p0, Lpg/c;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iput v2, p0, Lpg/c;->f:I

    new-instance p2, Lpg/c$d;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p2, p0, v4, v5, v3}, Lpg/c$d;-><init>(Lpg/c;Ljava/lang/Long;Ljava/lang/Integer;Lpg/c$a;)V

    iput-object p2, p0, Lpg/c;->h:Lpg/c$d;

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    iput p2, p0, Lpg/c;->f:I

    iget-object p2, p0, Lpg/c;->i:Lpg/c$d;

    if-nez p2, :cond_2

    new-instance p2, Lpg/c$d;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p2, p0, v4, v5, v3}, Lpg/c$d;-><init>(Lpg/c;Ljava/lang/Long;Ljava/lang/Integer;Lpg/c$a;)V

    iput-object p2, p0, Lpg/c;->i:Lpg/c$d;

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, v4}, Lpg/c$d;->b(Lpg/c$d;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object p2, p0, Lpg/c;->i:Lpg/c$d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lpg/c$d;->d(Lpg/c$d;Ljava/lang/Integer;)Ljava/lang/Integer;

    :goto_0
    iget-object p2, p0, Lpg/c;->h:Lpg/c$d;

    iget-object v4, p0, Lpg/c;->i:Lpg/c$d;

    iget v5, p0, Lpg/c;->d:I

    const/4 v6, 0x0

    invoke-direct {p0, p2, v4, v5, v6}, Lpg/c;->r(Lpg/c$d;Lpg/c$d;IZ)V

    :goto_1
    iget-boolean p2, p0, Lpg/c;->e:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lpg/c;->j:Lpg/c$d;

    if-nez p2, :cond_3

    new-instance p2, Lpg/c$d;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1, v3}, Lpg/c$d;-><init>(Lpg/c;Ljava/lang/Long;Ljava/lang/Integer;Lpg/c$a;)V

    iput-object p2, p0, Lpg/c;->j:Lpg/c$d;

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lpg/c;->k:Lpg/c$d;

    if-nez p2, :cond_4

    new-instance p2, Lpg/c$d;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1, v3}, Lpg/c$d;-><init>(Lpg/c;Ljava/lang/Long;Ljava/lang/Integer;Lpg/c$a;)V

    iput-object p2, p0, Lpg/c;->k:Lpg/c$d;

    goto :goto_2

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v0}, Lpg/c$d;->b(Lpg/c$d;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object p2, p0, Lpg/c;->k:Lpg/c$d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lpg/c$d;->d(Lpg/c$d;Ljava/lang/Integer;)Ljava/lang/Integer;

    :goto_2
    iget-object p1, p0, Lpg/c;->j:Lpg/c$d;

    iget-object p2, p0, Lpg/c;->k:Lpg/c$d;

    iget v0, p0, Lpg/c;->d:I

    invoke-direct {p0, p1, p2, v0, v2}, Lpg/c;->r(Lpg/c$d;Lpg/c$d;IZ)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public t()V
    .locals 2

    iget-object v0, p0, Lpg/c;->g:Landroid/os/Handler;

    new-instance v1, Lpg/c$b;

    invoke-direct {v1, p0}, Lpg/c$b;-><init>(Lpg/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public x(IIZ)V
    .locals 2

    iget-object v0, p0, Lpg/c;->g:Landroid/os/Handler;

    new-instance v1, Lpg/c$c;

    invoke-direct {v1, p0, p3, p1, p2}, Lpg/c$c;-><init>(Lpg/c;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public y(Z)V
    .locals 2

    iget-object v0, p0, Lpg/c;->g:Landroid/os/Handler;

    new-instance v1, Lpg/c$a;

    invoke-direct {v1, p0, p1}, Lpg/c$a;-><init>(Lpg/c;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
