.class public Lcom/miui/earthquakewarning/service/EarthquakeWarningService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final ACTION_EXIT_EARTHQUAKEWARNING:Ljava/lang/String; = "action_exit_earthquakewarning"

.field public static final ACTION_EXIT_VOLUNTEER:Ljava/lang/String; = "action_exit_volunteer"

.field public static final ACTION_JOIN_VOLUNTEER:Ljava/lang/String; = "action_join_volunteer"

.field public static final ACTION_RESTORE_DATA:Ljava/lang/String; = "action_restore_data"

.field public static final ACTION_SUBSCRIBE_AREA:Ljava/lang/String; = "action_subscribe_area"

.field public static final ACTION_UNSUBSCRIBE_AREA:Ljava/lang/String; = "action_unsubscribe_area"

.field public static final EXTRA_AREA_CITY:Ljava/lang/String; = "extra_area_city"

.field public static final EXTRA_AREA_CODE:Ljava/lang/String; = "extra_area_code"

.field public static final EXTRA_AREA_COUNTRIES:Ljava/lang/String; = "extra_area_countries"

.field public static final EXTRA_AREA_PROVINCE:Ljava/lang/String; = "extra_area_province"

.field public static final EXTRA_AREA_REGION:Ljava/lang/String; = "extra_area_region"

.field public static final EXTRA_AREA_SUBSCRIBELEVEL:Ljava/lang/String; = "extra_area_subscribe_level"

.field public static final EXTRA_AREA_SUPPORT:Ljava/lang/String; = "extra_area_support"

.field private static final TAG:Ljava/lang/String; = "EwService"


# instance fields
.field private mCurrentCallState:I

.field private mFlag:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaying:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private registered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mFlag:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->registered:Z

    new-instance v0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$1;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$1;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$2;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)I
    .locals 0

    iget p0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mCurrentCallState:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mCurrentCallState:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mPlaying:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->addLogData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mFlag:Z

    return p1
.end method

.method private addLogData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private exitEarthquakeWarningService()V
    .locals 3

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->unRegisterMyReceiver()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_0
    return-void
.end method

.method private getLocation([F)V
    .locals 7

    new-instance v0, Lcom/miui/earthquakewarning/model/EwTranData;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/EwTranData;-><init>()V

    const-string v1, "key_earthquake_warning_monitor_location_lat"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/a;->g(Ljava/lang/String;F)F

    move-result v1

    const-string v3, "key_earthquake_warning_monitor_location_lng"

    invoke-static {v3, v2}, Lr4/a;->g(Ljava/lang/String;F)F

    move-result v3

    iput v1, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lat:F

    iput v3, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lng:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/earthquakewarning/model/EwTranData;->time:J

    invoke-static {p0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/earthquakewarning/model/EwTranData;->id:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/earthquakewarning/model/EwTranData;->arrays:[F

    invoke-static {}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->getInstance()Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->sendData(Lcom/miui/earthquakewarning/model/EwTranData;)V

    const-string p1, "LOCATION_TIME"

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mFlag:Z

    if-eqz v0, :cond_1

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x927c0

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mFlag:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocation start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->addLogData(Ljava/lang/String;)V

    invoke-static {p0}, Lxb/e;->c(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is network connect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,time = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->addLogData(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lr4/a;->q(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->startLocation()V

    :cond_1
    return-void
.end method

.method private initSensor()V
    .locals 3

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa269c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->startLocation()V

    return-void
.end method

.method private manageData(Lcom/miui/earthquakewarning/model/SaveAreaResult;I)V
    .locals 1

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;-><init>(Landroid/content/Context;ILcom/miui/earthquakewarning/model/SaveAreaResult;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private registerMyReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->registered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->registered:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private startLocation()V
    .locals 8

    invoke-static {}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->getInstance()Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$3;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$3;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->startLocationSingleUpdate(Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    new-instance v0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$4;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$4;-><init>(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private unRegisterMyReceiver()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->registered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->registered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device regId:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/n;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device all topics:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/push/a;->a()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device earthquake warning switch:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device notification switch:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isLowEarthquakeWarningOpen()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device eqm support:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/Utils;->showEqmEntry(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device eqm switch:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device defined threshold:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public exitVolunteer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->getInstance()Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->release()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->registerMyReceiver()V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v0, "EwService"

    const-string v1, "EarthquakeWarningService created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->unRegisterMyReceiver()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->getInstance()Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->release()V

    const-string v0, "EwService"

    const-string v1, "EarthquakeWarningService destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    array-length v0, p1

    const-string v1, "eqw_onSensorChanged time = "

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EwService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->addLogData(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorUtils;->exitSleepMode(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->getLocation([F)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", values = null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->addLogData(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const-string v0, "EwService"

    const-string v1, "EarthquakeWarningService onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updatePlayingStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "playing"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->setPlaying(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_subscribe_area"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "extra_area_code"

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra_area_region"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_area_support"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "extra_area_countries"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->setTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {v7}, Lcom/miui/earthquakewarning/model/SaveAreaResult;-><init>()V

    invoke-virtual {v7, v1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCode(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCity(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSupport(I)V

    invoke-virtual {v7, v6}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCounties(Ljava/lang/String;)V

    invoke-direct {p0, v7, v5}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->manageData(Lcom/miui/earthquakewarning/model/SaveAreaResult;I)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "action_unsubscribe_area"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->unsetTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    new-instance v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-direct {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;-><init>()V

    invoke-virtual {v2, v1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setCode(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v2, v1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->manageData(Lcom/miui/earthquakewarning/model/SaveAreaResult;I)V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_restore_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isNeedRestore()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/miui/earthquakewarning/service/RestoreHelper;->restore(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->needRestore(Z)V

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_join_volunteer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->initSensor()V

    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_exit_volunteer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->exitVolunteer()V

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_exit_earthquakewarning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->exitEarthquakeWarningService()V

    :cond_8
    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mCurrentCallState:I

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_9
    :goto_1
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isNeedRestore()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0}, Lcom/miui/earthquakewarning/service/RestoreHelper;->restore(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->needRestore(Z)V

    :cond_a
    invoke-direct {p0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->registerMyReceiver()V

    goto :goto_0
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->mPlaying:Z

    return-void
.end method
