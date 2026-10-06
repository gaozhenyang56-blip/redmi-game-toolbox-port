.class public Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_DELETE_AREA:Ljava/lang/String; = "action_delete_area"

.field public static final ACTION_SUBSCRIBE_AREA:Ljava/lang/String; = "action_subscribe_area"

.field public static final ACTION_SUBSCRIBE_CURRENT_LOCATION:Ljava/lang/String; = "action_subscribe_current_location"

.field public static final ACTION_UNSUBSCRIBE:Ljava/lang/String; = "action_unsubscribe"

.field public static final ACTION_UPDATE_SUBSCRIBE_LEVEL:Ljava/lang/String; = "action_update_subscribe_level"

.field public static final EXTRA_AREA_CITY:Ljava/lang/String; = "extra_area_city"

.field public static final EXTRA_AREA_CODE:Ljava/lang/String; = "extra_area_code"

.field public static final EXTRA_AREA_PROVINCE:Ljava/lang/String; = "extra_area_province"

.field public static final EXTRA_AREA_REGION:Ljava/lang/String; = "extra_area_region"

.field public static final EXTRA_AREA_SUBSCRIBELEVEL:Ljava/lang/String; = "extra_area_subscribe_level"

.field private static final KEY_STOP_LOCATION:I = 0x3e7

.field private static final PREX_TOPIC:Ljava/lang/String; = "12379W_"

.field private static final UPLOAD_TOPIC_INTERVAL:J = 0x2932e00L


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$1;-><init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->uploadTopic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->deleteTopic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private deleteAllTopic()V
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/push/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "12379W_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WcDisasterTask"

    const-string v3, "topic delete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/push/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deleteTopic(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12379W_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0279a99a-80f9-42ec-8945-bfe7d5070ed6"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getRegistLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WcDisasterTask"

    const-string v1, "topic delete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/push/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLocation()V
    .locals 3

    const-string v0, "WcDisasterTask"

    const-string v1, "location getLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;-><init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->startLocation(ZLcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    return-void
.end method

.method private manageData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V
    .locals 1

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/db/InsertSubscribeTask;-><init>(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestMyPosition()V
    .locals 1

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->getLocation()V

    :cond_1
    return-void
.end method

.method private updateAllTopic()V
    .locals 6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/push/a;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "12379W_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WcDisasterTask"

    const-string v4, "topic delete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/push/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/Utils;->setPreviousUploadTopic(I)V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$4;

    invoke-direct {v2, p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$4;-><init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)V

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->requestMyPosition()V

    return-void
.end method

.method private uploadTopic(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12379W_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0279a99a-80f9-42ec-8945-bfe7d5070ed6"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getRegistLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WcDisasterTask"

    const-string v1, "topic upload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/push/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WarningCenterDisasterService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$2;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$2;-><init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->requestMyPosition()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getUpdateAreaTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->isFirstUpdateDisasterArea()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/DeleteAreaDataTask;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/db/DeleteAreaDataTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    const-string v0, "WcDisasterTask"

    const-string v1, "WarningCenterDisasterService created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "WcDisasterTask"

    const-string v1, "WarningCenterDisasterService destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const-string v0, "WcDisasterTask"

    const-string v1, "WarningCenterDisasterService onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_subscribe_area"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "extra_area_code"

    if-eqz v1, :cond_1

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "extra_area_province"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "extra_area_city"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "extra_area_region"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0xc

    const-string v4, "extra_area_subscribe_level"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "push code added"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->uploadTopic(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->manageData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "action_delete_area"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "push code delete"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->deleteTopic(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCode(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->manageData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_subscribe_current_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->requestMyPosition()V

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_unsubscribe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->deleteAllTopic()V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_update_subscribe_level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>()V

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getRegistLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setSubscribeLevel(I)V

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->manageData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;I)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->updateAllTopic()V

    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
