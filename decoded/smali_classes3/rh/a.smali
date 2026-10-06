.class public Lrh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrh/a$a;
    }
.end annotation


# direct methods
.method public static a()Lvh/a;
    .locals 1

    new-instance v0, Lvh/c;

    invoke-direct {v0}, Lvh/c;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Loh/a;JI)Llh/a;
    .locals 10

    invoke-static {p0}, Lrh/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    if-lez p4, :cond_2

    :cond_0
    invoke-static {p0}, Lai/e;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "imgloader"

    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    new-instance v9, Lnh/b;

    move-object v0, v9

    move-object v2, v8

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lnh/b;-><init>(Ljava/io/File;Ljava/io/File;Loh/a;JILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception p2

    invoke-static {p2}, Lai/c;->c(Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {p0}, Lai/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance p2, Lmh/b;

    invoke-direct {p2, p0, v8, p1}, Lmh/b;-><init>(Ljava/io/File;Ljava/io/File;Loh/a;)V

    return-object p2
.end method

.method public static c(IILsh/g;)Ljava/util/concurrent/Executor;
    .locals 8

    sget-object v0, Lsh/g;->b:Lsh/g;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    new-instance p2, Lth/a;

    invoke-direct {p2}, Lth/a;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_1
    move-object v6, p2

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v0, "uil-pool-"

    invoke-static {p1, v0}, Lrh/a;->j(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, p2

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p2
.end method

.method public static d()Loh/a;
    .locals 1

    new-instance v0, Loh/b;

    invoke-direct {v0}, Loh/b;-><init>()V

    return-object v0
.end method

.method public static e(Z)Luh/b;
    .locals 1

    new-instance v0, Luh/a;

    invoke-direct {v0, p0}, Luh/a;-><init>(Z)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lwh/c;
    .locals 1

    new-instance v0, Lwh/a;

    invoke-direct {v0, p0}, Lwh/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static g(Landroid/content/Context;I)Lph/a;
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-static {}, Lrh/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lrh/a;->m(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lrh/a;->k(Landroid/app/ActivityManager;)I

    move-result v0

    :cond_0
    const/high16 p0, 0x100000

    mul-int/2addr v0, p0

    div-int/lit8 p1, v0, 0x8

    :cond_1
    new-instance p0, Lqh/b;

    invoke-direct {p0, p1}, Lqh/b;-><init>(I)V

    return-object p0
.end method

.method private static h(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lai/e;->b(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static i()Ljava/util/concurrent/Executor;
    .locals 2

    const/4 v0, 0x5

    const-string v1, "uil-pool-d-"

    invoke-static {v0, v1}, Lrh/a;->j(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static j(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lrh/a$a;

    invoke-direct {v0, p0, p1}, Lrh/a$a;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static k(Landroid/app/ActivityManager;)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p0

    return p0
.end method

.method private static l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static m(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
