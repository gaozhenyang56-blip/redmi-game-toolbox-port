.class public Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;,
        Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;


# instance fields
.field private final a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-direct {v0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

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

    iput-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UninstallAppsManager"

    const-string v2, "reflect error while get package manager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static d()Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->c:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->c:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    invoke-direct {v1}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;-><init>()V

    sput-object v1, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->c:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->c:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method


# virtual methods
.method public a(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->o8(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V

    return-void
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu7/a;

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->t8(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {v3}, Lu7/a;->f()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v6, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lu7/a;->h()I

    move-result v8

    iget-object v9, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/miui/appmanager/AppManageUtils;->k(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    invoke-virtual {v3}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lu7/a;->h()I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x3e7

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/miui/appmanager/AppManageUtils;->k(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-virtual {v6}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->p8()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v0

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-virtual {p1}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->q8()V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    iget-object v8, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    const-wide/16 v9, 0x3a98

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    cmp-long v6, v11, v9

    if-ltz v6, :cond_2

    iget-object v6, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-virtual {v3}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_5
    const-string v7, "UninstallAppsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Batch delete is interrupted outside - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catch_1
    move-exception v5

    const-string v6, "UninstallAppsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uninstall failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-virtual {v3}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-virtual {p1}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->q8()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-static {v0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->v1(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public e()Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    return-object v0
.end method

.method public g(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->r8(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V

    return-void
.end method
