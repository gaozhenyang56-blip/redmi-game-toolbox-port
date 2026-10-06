.class public Lx4/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lx4/p0;


# instance fields
.field private a:Landroid/app/ActivityManager;

.field private b:Z

.field private final c:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx4/p0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lx4/p0$a;-><init>(Lx4/p0;Landroid/os/Handler;)V

    iput-object v0, p0, Lx4/p0;->c:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lx4/p0;)Z
    .locals 0

    iget-boolean p0, p0, Lx4/p0;->b:Z

    return p0
.end method

.method static synthetic b(Lx4/p0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lx4/p0;->b:Z

    return p1
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lx4/p0;->h(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized d()Lx4/p0;
    .locals 2

    const-class v0, Lx4/p0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx4/p0;->d:Lx4/p0;

    if-nez v1, :cond_0

    new-instance v1, Lx4/p0;

    invoke-direct {v1}, Lx4/p0;-><init>()V

    sput-object v1, Lx4/p0;->d:Lx4/p0;

    :cond_0
    sget-object v1, Lx4/p0;->d:Lx4/p0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lx4/p0;->a:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lx4/p0;->a:Landroid/app/ActivityManager;

    :cond_0
    invoke-static {p1}, Lx4/p0;->h(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lx4/p0;->b:Z

    return-void
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "LockTaskUtils"

    const-string v0, "initialize lock task utils, but context is null!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lx4/p0;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, p1}, Lx4/p0;->e(Landroid/content/Context;)V

    return-void
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lx4/p0;->a:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lx4/p0;->b:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public i(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lx4/p0;->c:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public j(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lx4/p0;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Lx4/p0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.app.ActivityTaskManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getService"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "stopSystemLockTaskMode"

    invoke-static {p1, v2, v0, v2, v2}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LockTaskUtils"

    const-string v1, "stopSystemLockTaskMode error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
