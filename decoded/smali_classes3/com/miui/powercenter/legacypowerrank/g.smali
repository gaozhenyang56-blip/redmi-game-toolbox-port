.class public Lcom/miui/powercenter/legacypowerrank/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:D

.field private static e:D

.field public static f:Z

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/google/common/util/concurrent/AtomicDouble;

.field private static final i:Z

.field private static final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/legacypowerrank/g;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/legacypowerrank/g;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/powercenter/legacypowerrank/g;->d:D

    sput-wide v0, Lcom/miui/powercenter/legacypowerrank/g;->e:D

    new-instance v2, Lcom/google/common/util/concurrent/AtomicDouble;

    invoke-direct {v2, v0, v1}, Lcom/google/common/util/concurrent/AtomicDouble;-><init>(D)V

    sput-object v2, Lcom/miui/powercenter/legacypowerrank/g;->h:Lcom/google/common/util/concurrent/AtomicDouble;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/powercenter/legacypowerrank/g;->i:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/miui/powercenter/legacypowerrank/g;->j:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/miui/powercenter/legacypowerrank/g;->g:Ljava/util/Set;

    const-string v3, "com.android.thememanager"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "com.android.phone"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "com.xiaomi.finddevice"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "com.android.updater"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.miui.huanji"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "com.android.nfc"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/securitycenter/powercenter/BatterySipper;

    sget-boolean v3, Lcom/miui/powercenter/legacypowerrank/g;->i:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getDrainType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_0

    :cond_0
    iget-wide v3, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    invoke-virtual {v2}, Lmiui/securitycenter/powercenter/BatterySipper;->getValue()D

    move-result-wide v5

    add-double/2addr v3, v5

    iput-wide v3, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v3, v2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lmiui/securitycenter/powercenter/BatterySipper;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    iget-wide v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    sget-object p0, Lcom/miui/powercenter/legacypowerrank/g;->h:Lcom/google/common/util/concurrent/AtomicDouble;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_3

    iget-wide v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    sget-object p0, Lcom/miui/powercenter/legacypowerrank/g;->h:Lcom/google/common/util/concurrent/AtomicDouble;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iput-wide v2, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/securitycenter/powercenter/BatterySipper;

    sget-object v2, Lcom/miui/powercenter/legacypowerrank/g;->j:Ljava/util/HashSet;

    invoke-virtual {v1}, Lmiui/securitycenter/powercenter/BatterySipper;->getDrainType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2, v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>(Lmiui/securitycenter/powercenter/BatterySipper;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static d(Ljava/util/List;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Lcom/miui/powercenter/legacypowerrank/BatteryData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ")",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v1, v0, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    iget v2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized e()V
    .locals 4

    const-class v0, Lcom/miui/powercenter/legacypowerrank/g;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    sget-object v1, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;

    sget-object v2, Lgd/a;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    invoke-static {v2, v3}, Lpg/i;->j(Landroid/content/pm/PackageManager;I)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/miui/powercenter/legacypowerrank/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/legacypowerrank/g;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static g(Ljava/lang/Object;)D
    .locals 10

    const-string v0, "PowerRankHelperHolder"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v2, 0x0

    const/16 v4, 0x21

    if-ge v1, v4, :cond_0

    return-wide v2

    :cond_0
    :try_start_0
    const-string v1, "getBatteryUsageStats"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v4, v6}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getAggregateBatteryConsumer"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {p0, v1, v6, v8}, Lbh/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "POWER_COMPONENT_CAMERA"

    invoke-static {v1, v6}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "getConsumedPower"

    new-array v9, v4, [Ljava/lang/Class;

    aput-object v7, v9, v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v6, p0, v8, v9, v4}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraData = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getCameraData error:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-wide v2
.end method

.method public static declared-synchronized h()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/miui/powercenter/legacypowerrank/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/miui/powercenter/legacypowerrank/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/legacypowerrank/g;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized j()D
    .locals 3

    const-class v0, Lcom/miui/powercenter/legacypowerrank/g;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/miui/powercenter/legacypowerrank/g;->e:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static k(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-class v0, Ljava/util/List;

    const-string v1, "getSystemAppUsageList"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2, v3}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized l()D
    .locals 3

    const-class v0, Lcom/miui/powercenter/legacypowerrank/g;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/miui/powercenter/legacypowerrank/g;->d:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static m(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, p2, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static n(I)Z
    .locals 3

    invoke-static {}, Lme/m;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Lme/m;->b(I)I

    move-result p0

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lme/m;->a()I

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, Lme/m;->b(I)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lme/m;->b(I)I

    move-result p0

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method private static o()Z
    .locals 1

    sget-boolean v0, Lcom/miui/powercenter/legacypowerrank/g;->i:Z

    return v0
.end method

.method private static p()Z
    .locals 3

    const-string v0, "ishtar"

    const-string v1, "nuwa"

    const-string v2, "fuxi"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q()Z
    .locals 1

    sget-boolean v0, Lcom/miui/powercenter/legacypowerrank/g;->i:Z

    return v0
.end method

.method private static r(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static s(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>()V

    new-instance v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v2}, Lcom/miui/powercenter/legacypowerrank/BatteryData;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "dex2oat uid "

    const-string v5, "PowerRankHelperHolder"

    const-string v6, "dex2oat"

    const-wide/16 v7, 0x0

    const/16 v9, 0x3e8

    if-nez v3, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/g;->n(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    iput-object v1, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    iget v1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    iput v1, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    :cond_4
    invoke-virtual {v2, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->add(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-static {v0, p1}, Lcom/miui/powercenter/legacypowerrank/g;->d(Ljava/util/List;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->add(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_2

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const v3, 0x7f12059b

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v10, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {v10}, Lcom/miui/powercenter/legacypowerrank/g;->n(I)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;

    iget-object v11, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result v10

    invoke-static {v10}, Lcom/miui/powercenter/legacypowerrank/g;->r(I)Z

    move-result v10

    if-eqz v10, :cond_c

    sget-object v10, Lcom/miui/powercenter/legacypowerrank/g;->g:Ljava/util/Set;

    iget-object v11, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-ne v10, v9, :cond_b

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result v3

    iput v3, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    iget v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    iput v3, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const-string v3, "android"

    iput-object v3, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    :cond_b
    invoke-virtual {v1, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->add(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto :goto_3

    :cond_c
    iget-object v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    iget v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    iput v3, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    :cond_d
    invoke-virtual {v2, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->add(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    invoke-static {v0, p1}, Lcom/miui/powercenter/legacypowerrank/g;->d(Ljava/util/List;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-result-object v3

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {v3, p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->add(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V

    goto/16 :goto_3

    :cond_10
    iget-wide p0, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    cmpl-double p0, p0, v7

    if-lez p0, :cond_12

    iget-object p0, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->name:Ljava/lang/String;

    iput v9, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    const/4 p0, 0x6

    iput p0, v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    :cond_11
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->p()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-wide p0, v2, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    cmpl-double p0, p0, v7

    if-lez p0, :cond_13

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static declared-synchronized t()V
    .locals 16

    const-class v1, Lcom/miui/powercenter/legacypowerrank/g;

    monitor-enter v1

    :try_start_0
    const-string v2, "PowerRankHelperHolder"

    const-string v3, "refreshStats begin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->e()V

    :cond_0
    const-string v2, "PowerRankHelperHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDesktopPkgSet ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/powercenter/legacypowerrank/g;->c:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "miui.securitycenter.powercenter.PowerRankHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lbh/d;->h(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "refreshStats"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v7, v4, v7, v5}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v5, v8, :cond_1

    sget-boolean v5, Lcom/miui/powercenter/legacypowerrank/g;->i:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    :try_start_2
    const-string v5, "com.android.internal.os.BatteryStatsManagerStubImpl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "cacheMap"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "PowerRankHelperHolder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenPowerMap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v5, v0

    :try_start_4
    const-string v8, "PowerRankHelperHolder"

    const-string v9, "not support screenPowerSplit"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->o()Z

    move-result v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3

    const-string v11, "com.android.internal.os.BatteryStatsManagerStubImpl"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "screenDet"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-string v13, "PowerRankHelperHolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "screenDet: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-double v13, v11, v9

    if-eqz v13, :cond_3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v11}, Lhd/a;->o1(Ljava/lang/Double;)V

    :cond_3
    sget-object v11, Lcom/miui/powercenter/legacypowerrank/g;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    invoke-static {v2}, Lcom/miui/powercenter/legacypowerrank/g;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-class v12, Ljava/util/List;

    const-string v13, "getAppUsageList"

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v2, v12, v13, v7, v14}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    sput-boolean v3, Lcom/miui/powercenter/legacypowerrank/g;->f:Z

    sget-object v3, Lcom/miui/powercenter/legacypowerrank/g;->a:Ljava/util/List;

    invoke-static {v12}, Lcom/miui/powercenter/legacypowerrank/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-static {v11}, Lcom/miui/powercenter/legacypowerrank/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/miui/powercenter/legacypowerrank/g;->s(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/miui/powercenter/legacypowerrank/g;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v11, v7

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v13, v12, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {v13}, Lx4/z1;->m(I)I

    move-result v13

    const/16 v14, 0x3e7

    if-ne v13, v14, :cond_5

    if-nez v11, :cond_6

    invoke-static {}, Lx4/z1;->v()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {v6, v14}, Ltg/a;->c(II)Ljava/util/List;

    move-result-object v11

    :cond_6
    invoke-virtual {v12}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result v12

    invoke-static {v11, v13, v12}, Lcom/miui/powercenter/legacypowerrank/g;->m(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_7
    sget-object v3, Lcom/miui/powercenter/legacypowerrank/g;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v11, v9

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    if-eqz v8, :cond_8

    iget-object v14, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iput-wide v14, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->screenPower:D

    iget-wide v9, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v9, v14

    iput-wide v9, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    :cond_8
    iget-wide v9, v13, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v11, v9

    const-wide/16 v9, 0x0

    goto :goto_5

    :cond_9
    sget-object v3, Lcom/miui/powercenter/legacypowerrank/g;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/miui/powercenter/legacypowerrank/g;->h:Lcom/google/common/util/concurrent/AtomicDouble;

    invoke-static {v2}, Lcom/miui/powercenter/legacypowerrank/g;->g(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/google/common/util/concurrent/AtomicDouble;->set(D)V

    sget-object v3, Lcom/miui/powercenter/legacypowerrank/g;->b:Ljava/util/List;

    const-class v4, Ljava/util/List;

    const-string v9, "getMiscUsageList"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v9, v7, v6}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/miui/powercenter/legacypowerrank/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    :cond_a
    sget-object v3, Lcom/miui/powercenter/legacypowerrank/g;->b:Ljava/util/List;

    const-class v4, Ljava/util/List;

    const-string v9, "getMiscUsageList"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v9, v7, v6}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/miui/powercenter/legacypowerrank/g;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_6
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/miui/powercenter/legacypowerrank/g;->e:D

    const-string v2, "PowerRankHelperHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMiscUsageList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/powercenter/legacypowerrank/g;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/miui/powercenter/legacypowerrank/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    if-nez v8, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    iget v4, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_c
    sget-wide v6, Lcom/miui/powercenter/legacypowerrank/g;->e:D

    iget-wide v3, v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;->value:D

    add-double/2addr v6, v3

    sput-wide v6, Lcom/miui/powercenter/legacypowerrank/g;->e:D

    goto :goto_7

    :cond_d
    sget-wide v2, Lcom/miui/powercenter/legacypowerrank/g;->e:D

    add-double/2addr v11, v2

    sput-wide v11, Lcom/miui/powercenter/legacypowerrank/g;->d:D
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    const-string v3, "PowerRankHelperHolder"

    const-string v4, "refreshStats"

    :goto_8
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v0

    const-string v3, "PowerRankHelperHolder"

    const-string v4, "refreshStats"

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v2, v0

    const-string v3, "PowerRankHelperHolder"

    const-string v4, "refreshStats"

    goto :goto_8

    :goto_9
    const-string v2, "PowerRankHelperHolder"

    const-string v3, "refreshStats end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method
