.class public Lcom/miui/optimizecenter/storage/AppSystemDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;,
        Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;,
        Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;
    }
.end annotation


# static fields
.field private static volatile h:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:J

.field public static final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/pm/PackageManager;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "rescue"

    const-string v1, "oops"

    const-string v2, "minidump"

    const-string v3, "rawdump"

    const-string v4, "crash_history"

    const-string v5, "expdb"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->i:[Ljava/lang/String;

    const-string v1, "/"

    const-string v2, "/system_ext"

    const-string v3, "/product"

    const-string v4, "/vendor"

    const-string v5, "/vendor_dlkm"

    const-string v6, "/system_dlkm"

    const-string v7, "/odm"

    const-string v8, "mi_ext"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->j:[Ljava/lang/String;

    const-string v0, "system"

    const-string v1, "system_ext"

    const-string v2, "product"

    const-string v3, "vendor"

    const-string v4, "odm"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k:[Ljava/lang/String;

    const-string v0, "com.android.providers.media.module"

    const-string v1, "com.google.android.providers.media.module"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->l:Ljava/util/List;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->m:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->n:Ljava/util/ArrayList;

    const-string v1, "com.facebook.appmanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.facebook.services"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.facebook.system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "ro.miui.customized.region"

    const-string v2, ""

    invoke-static {v1, v2}, Lwg/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fr_sfr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.altice.android.myapps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sfr.android.sfrjeux"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->d:J

    const-string v2, "/dev/block/by-name/"

    iput-object v2, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->e:Ljava/lang/String;

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f:J

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->g:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->m()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    invoke-static {}, Ldb/c;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static E(J)J
    .locals 8

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v0, v2, p0

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->F(J)J

    move-result-wide v2

    :cond_0
    return-wide v2
.end method

.method public static F(J)J
    .locals 9

    const-wide/16 v0, 0x1

    move-wide v2, v0

    move-wide v4, v2

    :cond_0
    :goto_0
    mul-long v6, v2, v4

    cmp-long v8, v6, p0

    if-gez v8, :cond_1

    const/4 v6, 0x1

    shl-long/2addr v2, v6

    const-wide/16 v6, 0x200

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v6
.end method

.method private H(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 7

    :try_start_0
    const-string v0, "startActivityForResultAsUser"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/os/UserHandle;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    aput-object p4, v1, v6

    invoke-static {p1, v0, v2, v1}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppSystemDataManager"

    const-string p3, "startActivityForResultAsUser: start ManagerSpace activity failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Z)Lwa/a;
    .locals 1

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->A(I)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lwa/a;->createInfoInstance(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Z)Lwa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0, p2, p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->G(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Lwa/a;)V

    iput-boolean p3, p1, Lwa/a;->isWOrkProfile:Z

    :cond_0
    return-object p1
.end method

.method private g()J
    .locals 5

    const-string v0, "AppSystemDataManager"

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    mul-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v1

    const-string v2, "get available space failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private j()Ljava/lang/Object;
    .locals 7

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, "package"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v1, "android.content.pm.IPackageManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v3, v4, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppSystemDataManager"

    const-string v2, "ReflectUtil"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;
    .locals 2

    sget-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->h:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->h:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->h:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

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
    sget-object p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->h:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    return-object p0
.end method

.method private l()[Ljava/lang/String;
    .locals 8

    const-string v0, "log_partition_list"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->w(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "miui.util.FeatureParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/String;

    const-string v3, "getStringArray"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->i:[Ljava/lang/String;

    return-object v0
.end method

.method private o(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lab/c;->c()Lab/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lab/c;->d(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private r()[Ljava/lang/String;
    .locals 8

    const-string v0, "dynamic_partition_list"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->w(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "miui.util.FeatureParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/String;

    const-string v3, "getStringArray"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->j:[Ljava/lang/String;

    return-object v0
.end method

.method private t()J
    .locals 7

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->z()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "super"

    invoke-direct {p0, v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->o(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v3, v1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-direct {p0, v5}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->o(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppSystemDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3
.end method

.method private u()J
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->r()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    move-wide v4, v3

    move v3, v0

    :goto_0
    const-string v0, "AppSystemDataManager"

    if-ge v3, v2, :cond_0

    aget-object v6, v1, v3

    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v10

    invoke-virtual {v7}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v12

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v6, v1

    move/from16 v16, v2

    :try_start_1
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v17, v3

    move-wide/from16 v18, v4

    :try_start_2
    invoke-virtual {v7}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v20, v6

    :try_start_3
    invoke-virtual {v7}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    const-string v0, "blockCount: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",blockSize: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",freeBlockCount: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",availableBytes: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",availableBlocks: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",freeBytes: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",totalBytes: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v5, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "used size[totalBytes-freeBytes]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-long v4, v18, v5

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v17, v3

    move-wide/from16 v18, v4

    :goto_1
    move-object/from16 v20, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v20, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-wide/from16 v18, v4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide/from16 v4, v18

    :goto_3
    add-int/lit8 v3, v17, 0x1

    move/from16 v2, v16

    move-object/from16 v1, v20

    goto/16 :goto_0

    :cond_0
    move-object v1, v0

    move-wide/from16 v18, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsedSystemSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3
.end method

.method private static w(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.util.FeatureParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "hasFeature"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v7

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private y()V
    .locals 7

    const-class v0, Ljava/lang/String;

    const-string v1, "partition_name_path"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->w(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "miui.util.FeatureParser"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getString"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v2, v0, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "/dev/block/by-name/"

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->e:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method private z()Z
    .locals 3

    const-string v0, "ro.boot.dynamic_partitions"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " get isDynamicPartitions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppSystemDataManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public A(I)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.securityspace.XSpaceUserHandle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/os/UserHandle;

    const-string v3, "getUserId"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    invoke-static {v2, v3, v5, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "isXSpaceUserId"

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v6, v3, v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v1, v2, v3, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public B()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;"
        }
    .end annotation

    const-string v0, "AppSystemDataManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string v3, "getUsers"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v6, "id"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6, v7}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-le v6, v8, :cond_1

    iget-object v6, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    const-string v8, "getInstalledPackagesAsUser"

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v7, v11, v5

    aput-object v7, v11, v9

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v8, v11, v7}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    check-cast v6, Ljava/util/List;

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    const-string v8, "getInstalledPackages"

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v7, v11, v5

    aput-object v7, v11, v9

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v8, v11, v7}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :goto_2
    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lab/h;->a:Lab/h;

    invoke-virtual {v7, v4, v2}, Lab/h;->d(ILandroid/os/UserManager;)Z

    move-result v4

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    sget-object v8, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->l:Ljava/util/List;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v8, v7, v4}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Z)Lwa/a;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appStorageStats : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "loadInstallApps: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    new-instance v0, Lwa/a$b;

    invoke-direct {v0}, Lwa/a$b;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public C(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 8

    const-class v0, Ljava/lang/String;

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    const-string v2, "getPackageSizeInfoAsUser"

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v7, v4

    const-class v0, Landroid/content/pm/IPackageStatsObserver;

    aput-object v0, v7, v3

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    aput-object p3, v0, v3

    invoke-static {v1, v2, v7, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    const-string v2, "getPackageSizeInfo"

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v7, v4

    const-class v0, Landroid/content/pm/IPackageStatsObserver;

    aput-object v0, v7, v3

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    aput-object p3, v0, v3

    invoke-static {v1, v2, v7, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppSystemDataManager"

    const-string p3, "obtainAppDataSize Error: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public D(Landroid/content/pm/ApplicationInfo;Lwa/a;)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a:Landroid/content/Context;

    const-string v1, "storagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x22

    if-le v4, v5, :cond_0

    :try_start_1
    const-string v4, "getAppAccurateBytes"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, v4, v5, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v4

    :goto_0
    add-long v6, v0, v4

    iput-wide v0, p2, Lwa/a;->dataSize:J

    iput-wide v4, p2, Lwa/a;->codeSize:J

    iput-wide v6, p2, Lwa/a;->systemSize:J

    iput-wide v2, p2, Lwa/a;->cacheSize:J

    iput-wide v6, p2, Lwa/a;->totalSize:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "AppSystemDataManager"

    const-string v0, "obtainAppDataSizeAboveApi26: failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public G(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Lwa/a;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->D(Landroid/content/pm/ApplicationInfo;Lwa/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lwa/a;->pkgName:Ljava/lang/String;

    iget p2, p3, Lwa/a;->uid:I

    invoke-static {p2}, Lx4/z1;->m(I)I

    move-result p2

    iget-object p3, p3, Lwa/a;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->C(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppSystemDataManager"

    const-string p3, "reflect error while query stats for pacakge"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Landroid/os/UserHandle;

    const-string p3, "of"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, v4

    invoke-static {p2, p3, v2, v1}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, v0, p5, p2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->H(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AppSystemDataManager"

    const-string p3, "startActivityForResultAsUser error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;)Z
    .locals 9

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityManagerNative"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDefault"

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1b

    const-string v5, "clearApplicationUserData"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-le v3, v4, :cond_0

    const/4 v3, 0x4

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v7

    const-class v0, Landroid/content/pm/IPackageDataObserver;

    aput-object v0, v4, v6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v8

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v7

    aput-object p3, v0, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v8

    invoke-static {v2, v5, v4, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    new-array v3, v8, [Ljava/lang/Class;

    aput-object v0, v3, v1

    const-class v0, Landroid/content/pm/IPackageDataObserver;

    aput-object v0, v3, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v3, v6

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p3, v0, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v2, v5, v3, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldnt clear application user data for package:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppSystemDataManager"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public c(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    .locals 11

    const-class v0, Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->j()Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x19

    const-string v4, "deletePackageAsUser"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-le v2, v3, :cond_0

    const/4 v2, 0x5

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v3, v7

    const-class v10, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v10, v3, v6

    aput-object v0, v3, v5

    aput-object v0, v3, v9

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    aput-object p3, v0, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {v1, v4, v3, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v2, v9, [Ljava/lang/Class;

    aput-object v0, v2, v8

    const-class v0, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v0, v2, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v6

    aput-object v0, v2, v5

    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p3, v0, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {v1, v4, v2, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppSystemDataManager"

    const-string v2, "deletePackage error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lwa/a;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->m()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lab/h;->a:Lab/h;

    invoke-virtual {v2, p1}, Lab/h;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Z)Lwa/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public e(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->j()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "getApplicationInfo"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v1, v2, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "AppSystemDataManager"

    const-string p3, "getApplicationInfoAsUser: failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public f()J
    .locals 8

    const-string v0, "AppSystemDataManager"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v2, 0x0

    const/16 v4, 0x21

    if-le v1, v4, :cond_0

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v1

    const-string v4, "storage"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "getAvailableStorageSize"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v4, v5, v6, v7}, Lbh/f;->e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "U Available size = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-wide v4, v2

    :goto_0
    const-string v6, "get available space failed"

    invoke-static {v0, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    move-wide v4, v2

    :goto_1
    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->g()J

    move-result-wide v4

    :cond_1
    return-wide v4
.end method

.method public h()J
    .locals 7

    invoke-static {}, Ldb/c;->j()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->d:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    return-wide v3

    :cond_1
    invoke-static {}, Lab/c;->c()Lab/c;

    move-result-object v0

    invoke-virtual {v0}, Lab/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->d:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->t()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->u()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->d:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7cfb\u7edf\u5206\u533a\u5269\u4f59\u7a7a\u95f4\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppSystemDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->d:J

    return-wide v0

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public i()J
    .locals 4

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/u1;->b(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x4653600

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f:J

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ufs diff size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppSystemDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f:J

    return-wide v0
.end method

.method public m()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->b:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public n()J
    .locals 4

    sget-wide v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "sys.abreuse.size"

    invoke-static {v2, v0, v1}, Lcom/miui/maml/util/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->m:J

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "partition B total size\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppSystemDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->m:J

    return-wide v0
.end method

.method public p()J
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v0

    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "AppSystemDataManager"

    const-string v2, "get total space failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public q()J
    .locals 10

    invoke-static {}, Ldb/c;->j()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    return-wide v3

    :cond_1
    invoke-static {}, Lab/c;->c()Lab/c;

    move-result-object v0

    invoke-virtual {v0}, Lab/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->l()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    iget-wide v6, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    invoke-direct {p0, v5}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->o(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemLogPartitionSize: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppSystemDataManager"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c:J

    return-wide v0

    :cond_4
    :goto_1
    return-wide v1
.end method

.method public s()J
    .locals 6

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device total size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppSystemDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->g:J

    return-wide v0

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const-string v1, "getPrimaryStorageSize"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/u1;->b(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v0, v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->E(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->F(J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iput-wide v2, p0, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->g:J

    return-wide v2
.end method

.method public v(I)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/UserHandle;

    const-string v2, "getUserId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public x(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, p1}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
