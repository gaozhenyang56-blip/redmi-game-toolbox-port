.class public Lmi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi/c$f;
    }
.end annotation


# static fields
.field private static final s:I

.field private static volatile t:Lmi/c;

.field private static u:Ljava/lang/Object;

.field private static v:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Loi/a;

.field private c:Lcom/xiaomi/analytics/PolicyConfiguration;

.field private d:Loi/c;

.field private e:Lmi/c$f;

.field private f:J

.field private volatile g:Z

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Landroid/os/Handler;

.field private l:Landroid/os/HandlerThread;

.field private m:Loi/a;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;

.field private p:Lmi/d$c;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lni/n;->d:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lmi/c;->s:I

    const/4 v0, 0x0

    sput-boolean v0, Lmi/c;->v:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmi/c;->c:Lcom/xiaomi/analytics/PolicyConfiguration;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmi/c;->f:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmi/c;->g:Z

    iput-boolean v1, p0, Lmi/c;->h:Z

    iput-object v0, p0, Lmi/c;->m:Loi/a;

    new-instance v0, Lmi/c$a;

    invoke-direct {v0, p0}, Lmi/c$a;-><init>(Lmi/c;)V

    iput-object v0, p0, Lmi/c;->n:Ljava/lang/Runnable;

    new-instance v0, Lmi/c$b;

    invoke-direct {v0, p0}, Lmi/c$b;-><init>(Lmi/c;)V

    iput-object v0, p0, Lmi/c;->o:Ljava/lang/Runnable;

    new-instance v0, Lmi/c$c;

    invoke-direct {v0, p0}, Lmi/c$c;-><init>(Lmi/c;)V

    iput-object v0, p0, Lmi/c;->p:Lmi/d$c;

    new-instance v0, Lmi/c$d;

    invoke-direct {v0, p0}, Lmi/c$d;-><init>(Lmi/c;)V

    iput-object v0, p0, Lmi/c;->q:Landroid/content/BroadcastReceiver;

    new-instance v0, Lmi/c$e;

    invoke-direct {v0, p0}, Lmi/c$e;-><init>(Lmi/c;)V

    iput-object v0, p0, Lmi/c;->r:Ljava/lang/Runnable;

    invoke-static {p1}, Lni/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lmi/c;->a:Landroid/content/Context;

    const-string p1, "connectivity"

    sput-object p1, Lmi/c;->u:Ljava/lang/Object;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "api-sdkmgr"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lmi/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lmi/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmi/c;->k:Landroid/os/Handler;

    new-instance p1, Loi/c;

    iget-object v0, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Loi/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmi/c;->d:Loi/c;

    iget-object p1, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lmi/d;->n(Landroid/content/Context;)Lmi/d;

    move-result-object p1

    iget-object v0, p0, Lmi/c;->p:Lmi/d$c;

    invoke-virtual {p1, v0}, Lmi/d;->u(Lmi/d$c;)V

    sget-object p1, Lni/m;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lmi/c;->o:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic A(Lmi/c;Loi/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmi/c;->T(Loi/a;)V

    return-void
.end method

.method private declared-synchronized B()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget v0, Lni/n;->b:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmi/c;->f:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmi/c;->f:J

    sget-object v0, Lni/m;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lmi/c;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private D()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lmi/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "analytics_asset.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private E()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lmi/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/asset_lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized F(Landroid/content/Context;)Lmi/c;
    .locals 2

    const-class v0, Lmi/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmi/c;->t:Lmi/c;

    if-nez v1, :cond_0

    new-instance v1, Lmi/c;

    invoke-direct {v1, p0}, Lmi/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmi/c;->t:Lmi/c;

    :cond_0
    sget-object p0, Lmi/c;->t:Lmi/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private G()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmi/c;->a:Landroid/content/Context;

    const-string v2, "analytics_api"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pld"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SdkManager"

    invoke-static {v2}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPreviousLoadDex exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private H()I
    .locals 1

    sget-boolean v0, Lni/a;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    sget v0, Lmi/c;->s:I

    :goto_0
    return v0
.end method

.method private I()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lmi/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "analytics.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private J()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmi/c;->a:Landroid/content/Context;

    const-string v1, "analytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private K()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lmi/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private M()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private N(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "SdkManager"

    :try_start_0
    iget-object v1, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " verName: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lmi/e;

    invoke-direct {p1, v1}, Lmi/e;-><init>(Ljava/lang/String;)V

    new-instance v1, Lmi/e;

    const-string v3, "2.7.3"

    invoke-direct {v1, v3}, Lmi/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lmi/e;->a(Lmi/e;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    return v2

    :catch_0
    move-exception p1

    invoke-static {v0}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isApkSuitableForAndroidPOrAbove exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private O()Z
    .locals 5

    invoke-direct {p0}, Lmi/c;->H()I

    move-result v0

    iget-boolean v1, p0, Lmi/c;->i:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lmi/c;->j:J

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lni/n;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private P()Loi/a;
    .locals 8

    const-string v0, "SdkManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "analytics_core"

    iget-object v3, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmi/c;->a:Landroid/content/Context;

    aget-object v6, v3, v4

    invoke-direct {p0}, Lmi/c;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lni/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lmi/c;->D()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lmi/c;->M()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lmi/c;->D()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmi/c;->N(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Not suitable for Android P, so delete it"

    invoke-static {v0, v2}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_0
    iget-object v2, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Lmi/c;->D()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lmi/c;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lni/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Loi/b;

    iget-object v3, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Lmi/c;->D()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lmi/c;->E()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Loi/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v0}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "loadAssetAnalytics exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method private Q()V
    .locals 1

    invoke-direct {p0}, Lmi/c;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmi/c;->m:Loi/a;

    return-void

    :cond_0
    invoke-direct {p0}, Lmi/c;->X()V

    return-void
.end method

.method private R()Loi/a;
    .locals 6

    const-string v0, "SdkManager"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lmi/c;->I()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lmi/c;->M()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lmi/c;->I()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmi/c;->N(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Not suitable for Android P, so delete it"

    invoke-static {v0, v3}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_0
    iget-object v3, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lmi/c;->K()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lni/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Loi/b;

    iget-object v4, p0, Lmi/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lmi/c;->K()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Loi/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    invoke-static {v0}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "loadLocalAnalytics exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method private S()Loi/a;
    .locals 1

    iget-object v0, p0, Lmi/c;->d:Loi/c;

    invoke-virtual {v0}, Loi/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi/c;->d:Loi/c;

    invoke-virtual {v0}, Loi/c;->p()V

    :cond_0
    iget-object v0, p0, Lmi/c;->d:Loi/c;

    return-object v0
.end method

.method private T(Loi/a;)V
    .locals 1

    iput-object p1, p0, Lmi/c;->b:Loi/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmi/c;->e:Lmi/c$f;

    if-eqz v0, :cond_0

    sget-boolean v0, Lni/a;->a:Z

    invoke-interface {p1, v0}, Loi/a;->setDebugOn(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Analytics module loaded, version is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmi/c;->b:Loi/a;

    invoke-interface {v0}, Loi/a;->getVersion()Lmi/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkManager"

    invoke-static {v0, p1}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lmi/c;->e:Lmi/c$f;

    iget-object v0, p0, Lmi/c;->b:Loi/a;

    invoke-interface {p1, v0}, Lmi/c$f;->onSdkCorePrepared(Loi/a;)V

    :cond_0
    iget-object p1, p0, Lmi/c;->c:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmi/c;->b:Loi/a;

    invoke-virtual {p1, v0}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Loi/a;)V

    :cond_1
    return-void
.end method

.method private V(J)V
    .locals 2

    iget-object v0, p0, Lmi/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lmi/c;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmi/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lmi/c;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "SdkManager"

    const-string p2, "post dex init task"

    invoke-static {p1, p2}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private W()V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lmi/c;->K()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lni/f;->a(Ljava/io/File;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lmi/c;->E()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lni/f;->a(Ljava/io/File;)V

    :goto_1
    return-void
.end method

.method private X()V
    .locals 3

    const-string v0, "SdkManager"

    const-string v1, "register screen receiver"

    invoke-static {v0, v1}, Lni/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmi/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lmi/c;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private Y(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmi/c;->a:Landroid/content/Context;

    const-string v1, "analytics_api"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pld"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SdkManager"

    invoke-static {v0}, Lni/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "savePreviousLoadDex exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lmi/c;)Loi/a;
    .locals 0

    iget-object p0, p0, Lmi/c;->b:Loi/a;

    return-object p0
.end method

.method static synthetic b(Lmi/c;Loi/a;)Loi/a;
    .locals 0

    iput-object p1, p0, Lmi/c;->b:Loi/a;

    return-object p1
.end method

.method static synthetic c(Lmi/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmi/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static c0()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lmi/c;->v:Z

    return-void
.end method

.method static synthetic d(Lmi/c;)Loi/a;
    .locals 0

    invoke-direct {p0}, Lmi/c;->P()Loi/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lmi/c;)Loi/a;
    .locals 0

    invoke-direct {p0}, Lmi/c;->R()Loi/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lmi/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmi/c;->Y(Z)V

    return-void
.end method

.method static synthetic g(Lmi/c;)Loi/a;
    .locals 0

    iget-object p0, p0, Lmi/c;->m:Loi/a;

    return-object p0
.end method

.method static synthetic h(Lmi/c;Loi/a;)Loi/a;
    .locals 0

    iput-object p1, p0, Lmi/c;->m:Loi/a;

    return-object p1
.end method

.method static synthetic i(Lmi/c;)V
    .locals 0

    invoke-direct {p0}, Lmi/c;->Q()V

    return-void
.end method

.method static synthetic j(Lmi/c;)V
    .locals 0

    invoke-direct {p0}, Lmi/c;->B()V

    return-void
.end method

.method static synthetic k(Lmi/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmi/c;->g:Z

    return p1
.end method

.method static synthetic l(Lmi/c;J)J
    .locals 0

    iput-wide p1, p0, Lmi/c;->j:J

    return-wide p1
.end method

.method static synthetic m(Lmi/c;)Z
    .locals 0

    iget-boolean p0, p0, Lmi/c;->i:Z

    return p0
.end method

.method static synthetic n(Lmi/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmi/c;->i:Z

    return p1
.end method

.method static synthetic o(Lmi/c;)I
    .locals 0

    invoke-direct {p0}, Lmi/c;->H()I

    move-result p0

    return p0
.end method

.method static synthetic p(Lmi/c;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lmi/c;->I()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lmi/c;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmi/c;->V(J)V

    return-void
.end method

.method static synthetic r(Lmi/c;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lmi/c;->q:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic s()Lmi/c;
    .locals 1

    sget-object v0, Lmi/c;->t:Lmi/c;

    return-object v0
.end method

.method static synthetic t(Lmi/c;)Z
    .locals 0

    invoke-direct {p0}, Lmi/c;->O()Z

    move-result p0

    return p0
.end method

.method static synthetic u()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmi/c;->u:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic v(Lmi/c;)V
    .locals 0

    invoke-direct {p0}, Lmi/c;->W()V

    return-void
.end method

.method static synthetic w(Lmi/c;)Z
    .locals 0

    iget-boolean p0, p0, Lmi/c;->h:Z

    return p0
.end method

.method static synthetic x()Z
    .locals 1

    sget-boolean v0, Lmi/c;->v:Z

    return v0
.end method

.method static synthetic y(Lmi/c;)Loi/a;
    .locals 0

    invoke-direct {p0}, Lmi/c;->S()Loi/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lmi/c;)Loi/c;
    .locals 0

    iget-object p0, p0, Lmi/c;->d:Loi/c;

    return-object p0
.end method


# virtual methods
.method public C()Loi/a;
    .locals 1

    iget-object v0, p0, Lmi/c;->b:Loi/a;

    return-object v0
.end method

.method public L()Lmi/e;
    .locals 2

    invoke-virtual {p0}, Lmi/c;->C()Loi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmi/c;->C()Loi/a;

    move-result-object v0

    invoke-interface {v0}, Loi/a;->getVersion()Lmi/e;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lmi/e;

    const-string v1, "0.0.0"

    invoke-direct {v0, v1}, Lmi/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public U()V
    .locals 1

    iget-boolean v0, p0, Lmi/c;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmi/c;->B()V

    :cond_0
    return-void
.end method

.method public Z(Z)V
    .locals 0

    iput-boolean p1, p0, Lmi/c;->h:Z

    return-void
.end method

.method public a0(Lmi/c$f;)V
    .locals 0

    iput-object p1, p0, Lmi/c;->e:Lmi/c$f;

    return-void
.end method

.method public b0(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 1

    iput-object p1, p0, Lmi/c;->c:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v0, p0, Lmi/c;->b:Loi/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Loi/a;)V

    :cond_0
    return-void
.end method
