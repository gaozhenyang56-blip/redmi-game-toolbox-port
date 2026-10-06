.class public Lab/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab/d$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lab/d;->c(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {v0, p1}, Lab/d;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)J
    .locals 8

    const-string v0, "StorageStatsUtils"

    new-instance v1, Lab/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lab/d$b;-><init>(Lab/d$a;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/pm/IPackageStatsObserver;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    :try_start_0
    const-string v4, "getPackageSizeInfo"

    const-class v7, Landroid/content/pm/PackageManager;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v1, v2, v6

    invoke-static {p0, v4, v7, v3, v2}, Lbh/f;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call getPackageSizeInfo error :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lab/d$b;->v1()V

    invoke-virtual {v1}, Lab/d$b;->o8()J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    :catch_1
    move-exception p0

    const-string p1, "getPackageSizeInfo error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)J
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, "storagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, p0

    return-wide v0

    :catch_0
    move-exception p0

    const-string p1, "StorageStatsUtils"

    const-string v0, "getStorageSize error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method
