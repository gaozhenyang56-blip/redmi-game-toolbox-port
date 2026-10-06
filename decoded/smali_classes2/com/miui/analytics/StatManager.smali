.class public Lcom/miui/analytics/StatManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANTIVIRUS_ID:Ljava/lang/String; = "31000000943"

.field private static final APP_ID:Ljava/lang/String; = "31000000037"

.field private static final APP_ID_APP_MAN:Ljava/lang/String; = "31000000945"

.field private static final APP_ID_V2:Ljava/lang/String; = "31000401489"

.field private static final CONVERSATION_TOOL_BOX_ID:Ljava/lang/String; = "31000401977"

.field private static final DOCK_ID:Ljava/lang/String; = "31000000538"

.field private static final EARTHQUAKE_WARNING_ID:Ljava/lang/String; = "31000401472"

.field private static final GAME_BOX_ID:Ljava/lang/String; = "31000000057"

.field private static final GAME_TURBO_ID:Ljava/lang/String; = "31000401977"

.field private static final IME_APP_ID:Ljava/lang/String; = "31000000494"

.field private static final MALICIOUS_APP_TRACK_ID:Ljava/lang/String; = "31000401557"

.field private static final MI_SAFETY_OPEN_SERVICE_APP_ID:Ljava/lang/String; = "31000401800"

.field private static final NETWORK_ASSISTANT:Ljava/lang/String; = "31000000807"

.field private static final ONE_TRACK_AD_APP_ID:Ljava/lang/String; = "31000000893"

.field private static final PAD_APP_ID:Ljava/lang/String; = "31000000506"

.field private static final TAG:Ljava/lang/String; = "BaseStatManager"

.field private static final TRACK_KEY_PAY_EVENT_TOTAL:Ljava/lang/String; = "antivirus_pay_event_total"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/miui/analytics/StatManager;


# instance fields
.field private mAppManOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private final mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

.field private mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private final mOneTrackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mOneTrackV2:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/analytics/StatManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v1, "31000000893"

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAdEventAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setGAIDEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {p0}, Lcom/miui/analytics/StatManager;->initSdkInternal()V

    return-void
.end method

.method public static getInstance()Lcom/miui/analytics/StatManager;
    .locals 2

    sget-object v0, Lcom/miui/analytics/StatManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/analytics/StatManager;->sInstance:Lcom/miui/analytics/StatManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/analytics/StatManager;

    invoke-direct {v1}, Lcom/miui/analytics/StatManager;-><init>()V

    sput-object v1, Lcom/miui/analytics/StatManager;->sInstance:Lcom/miui/analytics/StatManager;

    :cond_0
    sget-object v1, Lcom/miui/analytics/StatManager;->sInstance:Lcom/miui/analytics/StatManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSdkInternal()V
    .locals 9

    const-string v0, "31000401977"

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lx4/l1;->b()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/OneTrack;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    iget-object v2, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-static {}, Lx4/g;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "31000000506"

    goto :goto_0

    :cond_0
    const-string v3, "31000000037"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/analytics/StatManager;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    new-instance v3, Lcom/miui/analytics/StatManager$1;

    invoke-direct {v3, p0}, Lcom/miui/analytics/StatManager$1;-><init>(Lcom/miui/analytics/StatManager;)V

    invoke-virtual {v2, v3}, Lcom/xiaomi/onetrack/OneTrack;->setEventHook(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    iget-object v2, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-virtual {v2, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-virtual {v2, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v6, "conversation_tool_box"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    sget-object v5, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-virtual {v2, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    iget-object v2, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v5, "31000401489"

    invoke-virtual {v2, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/analytics/StatManager;->mOneTrackV2:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/analytics/PackageUtils;->isPkgProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v5, "31000000945"

    invoke-virtual {v2, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/analytics/StatManager;->mAppManOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    :cond_1
    iget-object v2, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v5, "gameturbo"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-virtual {v7, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "dock"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v7, "31000000538"

    invoke-virtual {v6, v7}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "gamebox"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v7, "31000000057"

    invoke-virtual {v6, v7}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "network_assistant"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v7, "31000000807"

    invoke-virtual {v6, v7}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "antivirus"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v7, "31000000943"

    invoke-virtual {v6, v7}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "earthquake_warning"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v8, "31000401472"

    invoke-virtual {v6, v8}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "malicious_app_track"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v8, "31000401557"

    invoke-virtual {v6, v8}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "xiaomi_safety_open_service"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/analytics/StatManager;->mConfigBuilder:Lcom/xiaomi/onetrack/Configuration$Builder;

    const-string v8, "31000401800"

    invoke-virtual {v6, v8}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v2, "input_method"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v5}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/xiaomi/onetrack/Configuration$Builder;->setGAIDEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    const-string v5, "31000000494"

    invoke-virtual {v3, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BaseStatManager"

    const-string v2, "init onetrack error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public adTrack(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackV2:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackV2:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/onetrack/OneTrack;->adTrack(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/miui/analytics/StatManager;->mOneTrackV2:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/onetrack/OneTrack;->adTrack(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public initSdk(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public resetAnalyticsData(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setAccessNetworkEnable(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/OneTrack;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    const-string v1, "conversation_tool_box"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/OneTrack;->setCustomPrivacyPolicyAccepted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BaseStatManager"

    const-string v1, "onetrack setAccessNetwork error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaomi/onetrack/OneTrack;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public trackAppMan(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mAppManOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaomi/onetrack/OneTrack;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1, p2, p3}, Lcom/xiaomi/onetrack/OneTrack;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public trackV2(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/miui/analytics/StatManager;->trackV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackV2(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/analytics/StatManager;->mOneTrackV2:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
