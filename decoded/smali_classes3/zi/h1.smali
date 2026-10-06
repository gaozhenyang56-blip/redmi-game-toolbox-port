.class public Lzi/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile m:Lzi/h1;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lzi/u1;

.field private i:Lzi/v1;

.field private j:Lzi/h$a;

.field private k:Lzi/h$a;

.field private l:Lzi/h$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "push_stat_sp"

    iput-object v0, p0, Lzi/h1;->a:Ljava/lang/String;

    const-string v0, "upload_time"

    iput-object v0, p0, Lzi/h1;->b:Ljava/lang/String;

    const-string v0, "delete_time"

    iput-object v0, p0, Lzi/h1;->c:Ljava/lang/String;

    const-string v0, "check_time"

    iput-object v0, p0, Lzi/h1;->d:Ljava/lang/String;

    new-instance v0, Lzi/i1;

    invoke-direct {v0, p0}, Lzi/i1;-><init>(Lzi/h1;)V

    iput-object v0, p0, Lzi/h1;->j:Lzi/h$a;

    new-instance v0, Lzi/j1;

    invoke-direct {v0, p0}, Lzi/j1;-><init>(Lzi/h1;)V

    iput-object v0, p0, Lzi/h1;->k:Lzi/h$a;

    new-instance v0, Lzi/k1;

    invoke-direct {v0, p0}, Lzi/k1;-><init>(Lzi/h1;)V

    iput-object v0, p0, Lzi/h1;->l:Lzi/h$a;

    iput-object p1, p0, Lzi/h1;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lzi/h1;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lzi/h1;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lzi/h1;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lzi/h1;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lzi/h1;
    .locals 2

    sget-object v0, Lzi/h1;->m:Lzi/h1;

    if-nez v0, :cond_1

    const-class v0, Lzi/h1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzi/h1;->m:Lzi/h1;

    if-nez v1, :cond_0

    new-instance v1, Lzi/h1;

    invoke-direct {v1, p0}, Lzi/h1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lzi/h1;->m:Lzi/h1;

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
    sget-object p0, Lzi/h1;->m:Lzi/h1;

    return-object p0
.end method

.method static synthetic e(Lzi/h1;)Lzi/v1;
    .locals 0

    iget-object p0, p0, Lzi/h1;->i:Lzi/v1;

    return-object p0
.end method

.method static synthetic h(Lzi/h1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/h1;->m(Ljava/lang/String;)V

    return-void
.end method

.method private k()Z
    .locals 3

    iget-object v0, p0, Lzi/h1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    sget-object v1, Lzi/v7;->t1:Lzi/v7;

    invoke-virtual {v1}, Lzi/v7;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/e0;->m(IZ)Z

    move-result v0

    return v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lzi/h1;->e:Landroid/content/Context;

    const-string v1, "push_stat_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lzi/ea;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lzi/h1;->e:Landroid/content/Context;

    sget-object v1, Lzi/l1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/h1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lzi/h1;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lzi/h1;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lzi/w1;->a(Landroid/content/Context;Ljava/lang/String;)Lzi/u7;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzi/h1;->j(Lzi/u7;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lzi/h1;->h:Lzi/u1;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lzi/h1;->h:Lzi/u1;

    iget-object v0, p0, Lzi/h1;->e:Landroid/content/Context;

    invoke-interface {p3, v0, p2, p1}, Lzi/u1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lzi/h1;->h:Lzi/u1;

    iget-object v0, p0, Lzi/h1;->e:Landroid/content/Context;

    invoke-interface {p3, v0, p2, p1}, Lzi/u1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lzi/s1$a;)V
    .locals 1

    iget-object v0, p0, Lzi/h1;->e:Landroid/content/Context;

    invoke-static {v0}, Lzi/s1;->c(Landroid/content/Context;)Lzi/s1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzi/s1;->e(Lzi/s1$a;)V

    return-void
.end method

.method public j(Lzi/u7;)V
    .locals 2

    invoke-direct {p0}, Lzi/h1;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lzi/u7;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/f1;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lzi/h1;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzi/h1;->e:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lzi/q1;->i(Landroid/content/Context;Ljava/lang/String;Lzi/u7;)Lzi/q1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzi/h1;->i(Lzi/s1$a;)V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/h1;->g:Ljava/lang/String;

    return-object v0
.end method
