.class public Lwe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe/c$c;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Lwe/c;


# instance fields
.field private a:Lwe/e$c;

.field private b:Landroid/content/Context;

.field private c:Lwe/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lwe/c;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwe/c$b;

    invoke-direct {v0, p0}, Lwe/c$b;-><init>(Lwe/c;)V

    iput-object v0, p0, Lwe/c;->c:Lwe/e$b;

    return-void
.end method

.method public static synthetic a(Lwe/c;)V
    .locals 0

    invoke-direct {p0}, Lwe/c;->m()V

    return-void
.end method

.method static synthetic b(Lwe/c;)Z
    .locals 0

    invoke-direct {p0}, Lwe/c;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lwe/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lwe/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lwe/c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lwe/c;)Lwe/e$c;
    .locals 0

    iget-object p0, p0, Lwe/c;->a:Lwe/e$c;

    return-object p0
.end method

.method static synthetic f(Lwe/c;Lwe/e$c;)Lwe/e$c;
    .locals 0

    iput-object p1, p0, Lwe/c;->a:Lwe/e$c;

    return-object p1
.end method

.method static synthetic g(Lwe/c;)V
    .locals 0

    invoke-direct {p0}, Lwe/c;->o()V

    return-void
.end method

.method private h()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lwe/a;->a()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTokenValidity: cur="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\tlast="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AuthManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x4ef6d80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized j()Lwe/c;
    .locals 2

    const-class v0, Lwe/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwe/c;->e:Lwe/c;

    if-nez v1, :cond_0

    new-instance v1, Lwe/c;

    invoke-direct {v1}, Lwe/c;-><init>()V

    sput-object v1, Lwe/c;->e:Lwe/c;

    :cond_0
    sget-object v1, Lwe/c;->e:Lwe/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic m()V
    .locals 2

    sget-object v0, Lwe/c;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lwe/c;->a:Lwe/e$c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lwe/b;

    invoke-direct {v1, p0}, Lwe/b;-><init>(Lwe/c;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lwe/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwe/c;->a:Lwe/e$c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lwe/e$c;->a()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k(Landroid/content/Context;Lwe/c$c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwe/c;->b:Landroid/content/Context;

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lwe/c$a;

    invoke-direct {v1, p0, p1, p2}, Lwe/c$a;-><init>(Lwe/c;Landroid/content/Context;Lwe/c$c;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lwe/c;->b:Landroid/content/Context;

    iget-object p2, p0, Lwe/c;->c:Lwe/e$b;

    invoke-static {p1, p2}, Lwe/e;->h(Landroid/content/Context;Lwe/e$b;)V

    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 2

    const-string v0, "miuisec_net"

    invoke-static {p1, v0}, Lwe/e;->e(Landroid/content/Context;Ljava/lang/String;)Lwe/e$c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lwe/e$c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lwe/e$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AuthManager"

    const-string v1, "invalidateAuthToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lwe/c;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lwe/e;->g(Landroid/content/Context;Lwe/e$c;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lwe/a;->c(J)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lwe/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lwe/c;->c:Lwe/e$b;

    invoke-static {v0, v1}, Lwe/e;->i(Landroid/content/Context;Lwe/e$b;)V

    invoke-direct {p0}, Lwe/c;->o()V

    return-void
.end method
