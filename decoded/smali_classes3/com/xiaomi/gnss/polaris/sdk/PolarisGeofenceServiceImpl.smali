.class Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;


# static fields
.field private static manager:Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callPackageName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiGeofenceServiceImpl"

    iput-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    return-void
.end method

.method private checkConnect()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    const-string v1, "service not connect"

    invoke-direct {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIllegalParams(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->getRadius()I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    const-string v0, "Exception -->: illegal parameters!"

    invoke-direct {p1, v0}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;)Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;
    .locals 2

    const-class v0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->manager:Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;-><init>(Landroid/content/Context;Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;)V

    sput-object v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->manager:Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;

    goto :goto_0

    :cond_0
    iput-object p0, v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->context:Landroid/content/Context;

    iput-object p1, v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    :goto_0
    sget-object p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->manager:Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addGeofence(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    invoke-direct {p0, p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkIllegalParams(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->addGeofence(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addGeofence(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    invoke-direct {p0, p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkIllegalParams(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->addGeofenceWithFlag(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public deleteGeofence(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->deleteGeofence(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteGeofence(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->deleteGeofenceById(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->getComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGeofence(Ljava/lang/String;)Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->findGeofenceById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVendorVersion()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    invoke-interface {v0}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->getVendorVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public listGeofence()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->listGeofence(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerComponent(Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->registerComponent(Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDebugEvent(Landroid/location/Location;ILcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->sendDebugEvent(Ljava/lang/String;Landroid/location/Location;ILcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception -->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public unregisterComponent()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->registerComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method public updateGeofence(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkConnect()V

    invoke-direct {p0, p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->checkIllegalParams(Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->miGeoManagerService:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisGeofenceServiceImpl;->callPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->updateGeofence(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
