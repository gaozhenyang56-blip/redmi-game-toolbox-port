.class public Lj8/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true

.field private static volatile b:Z

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj8/s;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lj8/s;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lj8/s;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lj8/s;->k()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lj8/s;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lj8/q;

    invoke-direct {v1, p0}, Lj8/q;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Z)V
    .locals 1

    invoke-static {}, La8/g0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/g0;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La8/m1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, La8/m1;->c(Z)V

    :cond_1
    invoke-static {}, La8/m1;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, La8/m1;->d(Z)V

    :cond_2
    return-void
.end method

.method private static e()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Lk6/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/s;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lj8/s;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 2

    sget-boolean v0, Lj8/s;->b:Z

    if-nez v0, :cond_2

    sget-object v0, Lj8/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lj8/u;->E()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lj8/u;->w()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lj8/g;->p()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, La8/g0;->z()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lj8/u;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lj8/s;->a:Z

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-boolean v0, Lj8/s;->a:Z

    return v0
.end method

.method private static h()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/milink/api/v1/MilinkClientManager;

    const-string v2, "disconnectWifiDisplay"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static i()Z
    .locals 1

    invoke-static {}, La8/g0;->c0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, La8/g0;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic j(Landroid/content/Context;)V
    .locals 4

    const-string v0, "VideoBoxUtils"

    const-string v1, "exitVideoBoxMode start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Li8/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Li8/c;->y(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lj8/p;->b()V

    invoke-static {p0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "video_toolbox"

    invoke-static {p0, v3}, Lj8/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lj8/s;->g()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    invoke-static {}, La8/z1;->e()V

    if-nez v2, :cond_2

    invoke-static {v3}, Lj8/u;->K(Z)V

    :cond_2
    invoke-static {v3}, Lj8/u;->P(Z)V

    invoke-static {}, La8/g0;->z()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    invoke-static {v1, p0}, Lj8/g;->w(Ljava/lang/String;I)V

    :cond_3
    if-nez v2, :cond_4

    invoke-static {v3}, Lj8/u;->M(Z)V

    :cond_4
    if-eqz v2, :cond_5

    const/16 p0, 0x3eb

    invoke-static {p0, v1}, Lj8/p;->m(ILjava/lang/String;)V

    invoke-static {v3}, Lj8/u;->M(Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lj8/g;->p()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v3}, Lj8/g;->s(I)V

    :cond_6
    :goto_0
    invoke-static {}, Lj8/u;->o()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lj8/u;->I()V

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Lj8/s;->d(Z)V

    invoke-static {}, Lf8/a;->l()V

    const-string p0, ""

    invoke-static {p0}, Li8/c;->w0(Ljava/lang/String;)V

    sput-boolean v3, Lj8/s;->b:Z

    const-string p0, "exitVideoBoxMode end"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic k()V
    .locals 4

    const-string v0, "VideoBoxUtils"

    const-string v1, "startVideoBoxMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lj8/u;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/u;->i()V

    :cond_0
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/p;->a(Ljava/lang/String;)V

    invoke-static {}, Li8/c;->x()Z

    move-result v0

    const/16 v1, 0x3eb

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->i1(I)V

    invoke-static {}, Lj8/p;->q()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lj8/g;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Li8/c;->i()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->i1(I)V

    invoke-static {v0}, Lj8/g;->s(I)V

    :cond_2
    :goto_0
    invoke-static {}, La8/z1;->f()V

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj8/s;->d:Ljava/lang/String;

    invoke-static {}, Lj8/u;->o()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-static {}, Li8/c;->x()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Li8/c;->K()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lj8/u;->K(Z)V

    :cond_3
    invoke-static {v0}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Li8/c;->V()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Lj8/u;->P(Z)V

    :cond_4
    invoke-static {}, La8/g0;->z()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lj8/s;->d:Ljava/lang/String;

    invoke-static {}, Li8/c;->J()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    :goto_1
    invoke-static {v1, v3}, Lj8/g;->w(Ljava/lang/String;I)V

    :cond_6
    invoke-static {}, Li8/c;->x()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Li8/c;->I()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lj8/u;->M(Z)V

    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Lj8/s;->d(Z)V

    invoke-static {}, Lj8/s;->o()V

    return-void
.end method

.method public static l()V
    .locals 2

    const-string v0, "VideoBoxUtils"

    const-string v1, "resetVideoBoxMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lj8/s;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lj8/u;->P(Z)V

    invoke-static {}, Li8/c;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lj8/g;->s(I)V

    invoke-static {v1}, Lj8/u;->M(Z)V

    invoke-static {v1}, Lj8/u;->K(Z)V

    :cond_0
    invoke-static {}, Lf8/a;->l()V

    sput-boolean v1, Lj8/s;->b:Z

    return-void
.end method

.method public static m()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Ldb/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    sget-object p0, Lj8/s;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lj8/r;

    invoke-direct {v0}, Lj8/r;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static o()V
    .locals 1

    invoke-static {}, Li8/c;->H()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$o;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Li8/c;->a0(Z)V

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/utils/a$o;->g()V

    return-void
.end method
