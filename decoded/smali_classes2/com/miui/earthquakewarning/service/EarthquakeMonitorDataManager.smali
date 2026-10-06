.class public Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EwService"

.field private static volatile sInstance:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;


# instance fields
.field private mGpsListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetworkListener:Landroid/location/LocationListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Lcom/miui/earthquakewarning/model/EwTranData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->threadPoolRun(Lcom/miui/earthquakewarning/model/EwTranData;)V

    return-void
.end method

.method private addLogData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;
    .locals 2

    sget-object v0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->sInstance:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->sInstance:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;-><init>()V

    sput-object v1, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->sInstance:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

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
    sget-object v0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->sInstance:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    return-object v0
.end method

.method private threadPoolRun(Lcom/miui/earthquakewarning/model/EwTranData;)V
    .locals 7

    const-string v0, "unknown"

    const-string v1, ", values = "

    const-string v2, "udp_send_data time = "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "udp_send_data  receive data time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/miui/earthquakewarning/model/EwTranData;->arrays:[F

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "oaid"

    iget-object v5, p1, Lcom/miui/earthquakewarning/model/EwTranData;->id:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lng"

    iget v5, p1, Lcom/miui/earthquakewarning/model/EwTranData;->lng:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lat"

    iget v5, p1, Lcom/miui/earthquakewarning/model/EwTranData;->lat:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timestamp"

    iget-wide v5, p1, Lcom/miui/earthquakewarning/model/EwTranData;->time:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ro.product.device"

    invoke-static {v4, v0}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ro.miui.ui.version.name"

    invoke-static {v5, v0}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "model"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "rom"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getEarthquakeVolunteerToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "token"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, Lcom/miui/earthquakewarning/model/EwTranData;->arrays:[F

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget v5, v5, v4

    float-to-double v5, v5

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "data"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://api.sec.miui.com/earthquake/volunteer/sensor/upload"

    invoke-static {v0, v3}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorUtils;->uploadData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/earthquakewarning/model/EwTranData;->arrays:[F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->stopLocation()V

    return-void
.end method

.method public sendData(Lcom/miui/earthquakewarning/model/EwTranData;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/earthquakewarning/model/EwTranData;->arrays:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send data2 time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", send start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$1;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Lcom/miui/earthquakewarning/model/EwTranData;)V

    invoke-static {v0}, Lcom/miui/earthquakewarning/service/EWThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send data error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EwService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendGeomData(Lcom/miui/earthquakewarning/model/EwTranData;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send data3 time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", send start "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$2;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Lcom/miui/earthquakewarning/model/EwTranData;)V

    invoke-static {v0}, Lcom/miui/earthquakewarning/service/EWThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->addLogData(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send data error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EwService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startLocationSingleUpdate(Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_1
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EarthMonitorLocation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/earthquakewarning/service/a;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/service/a;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mGpsListener:Landroid/location/LocationListener;

    if-nez v2, :cond_2

    new-instance v2, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$3;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$3;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    iput-object v2, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mGpsListener:Landroid/location/LocationListener;

    :cond_2
    iget-object v2, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mNetworkListener:Landroid/location/LocationListener;

    if-nez v2, :cond_3

    new-instance v2, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    iput-object v2, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mNetworkListener:Landroid/location/LocationListener;

    :cond_3
    iget-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x9c4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mGpsListener:Landroid/location/LocationListener;

    const-string v1, "gps"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x9c4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mNetworkListener:Landroid/location/LocationListener;

    const-string v1, "network"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_5
    return-void
.end method

.method public stopLocation()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mGpsListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mNetworkListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method
