.class public Lcom/miui/earthquakewarning/utils/LocationRecordManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationRecordManager"

.field private static volatile mInstance:Lcom/miui/earthquakewarning/utils/LocationRecordManager;


# instance fields
.field private mCriteria:Landroid/location/Criteria;

.field private mFlag:Z

.field private mGpsListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetworkListener:Landroid/location/LocationListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/utils/LocationRecordManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->printInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;
    .locals 2

    sget-object v0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mInstance:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mInstance:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;-><init>()V

    sput-object v1, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mInstance:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

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
    sget-object v0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mInstance:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    return-object v0
.end method

.method private printInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LocationRecordManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public startLocation(ZLcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V
    .locals 9

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mFlag:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mCriteria:Landroid/location/Criteria;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mCriteria:Landroid/location/Criteria;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "LocationRecord"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/miui/earthquakewarning/utils/a;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/utils/a;-><init>(Lcom/miui/earthquakewarning/utils/LocationRecordManager;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/miui/earthquakewarning/utils/LocationRecordManager$1;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/miui/earthquakewarning/utils/LocationRecordManager$1;-><init>(Lcom/miui/earthquakewarning/utils/LocationRecordManager;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    iput-object v3, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mGpsListener:Landroid/location/LocationListener;

    new-instance v3, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;-><init>(Lcom/miui/earthquakewarning/utils/LocationRecordManager;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    iput-object v3, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mNetworkListener:Landroid/location/LocationListener;

    iget-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x9c4

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mGpsListener:Landroid/location/LocationListener;

    const-string v4, "gps"

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v2, v1

    :cond_2
    iget-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x9c4

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mNetworkListener:Landroid/location/LocationListener;

    const-string v4, "network"

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v2, v1

    :cond_3
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    const-string p1, "do not have providers"

    invoke-interface {p2, p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;->onLocationFailed(Ljava/lang/String;)V

    :cond_4
    const-string p1, "startLocation"

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->printInfo(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mFlag:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public stopLocation()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mFlag:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mGpsListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mNetworkListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->mFlag:Z

    const-string v0, "stopLocation"

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->printInfo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
