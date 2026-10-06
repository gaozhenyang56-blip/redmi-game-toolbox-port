.class public Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ERROR_CODE_NOT_DEFINED:Ljava/lang/String; = "error code isn\'t defined"

.field private static final TAG:Ljava/lang/String; = "ErrorCodeInfo.Manager"

.field private static final mBinderRunnable:Ljava/lang/Runnable;

.field private static final mHandler:Landroid/os/Handler;

.field private static final sErrorInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceListener:Lcom/xiaomi/continuity/ContinuityServiceListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->sErrorInfoMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/continuity/universal/a;

    invoke-direct {v0}, Lcom/xiaomi/continuity/universal/a;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->mBinderRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->serviceListener:Lcom/xiaomi/continuity/ContinuityServiceListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->lambda$static$0()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->mBinderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic access$100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static binderDied()V
    .locals 2

    const-string v0, "ErrorCodeInfo.Manager"

    const-string v1, "binderDied need notify "

    invoke-static {v0, v1}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->sErrorInfoMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getErrMsg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get error message, errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErrorCodeInfo.Manager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->sErrorInfoMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->loadErrInfoMap(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/continuity/netbus/ContinuityNetBusManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/netbus/ContinuityNetBusManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/continuity/netbus/ContinuityNetBusManager;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v1, "error code isn\'t defined"

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$static$0()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->binderDied()V

    return-void
.end method

.method private static loadErrInfoMap(Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "ErrorCodeInfo.Manager"

    const-string v0, "load error info map, context == null!"

    invoke-static {p0, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/continuity/universal/UniversalFeatureManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/universal/UniversalFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->serviceListener:Lcom/xiaomi/continuity/ContinuityServiceListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/universal/UniversalFeatureManager;->removeServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    invoke-static {p0}, Lcom/xiaomi/continuity/universal/UniversalFeatureManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/universal/UniversalFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->serviceListener:Lcom/xiaomi/continuity/ContinuityServiceListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/universal/UniversalFeatureManager;->addServiceListener(Lcom/xiaomi/continuity/ContinuityServiceListener;)V

    invoke-static {p0}, Lcom/xiaomi/continuity/universal/UniversalFeatureManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/universal/UniversalFeatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/continuity/universal/UniversalFeatureManager;->getErrMsgMap()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->sErrorInfoMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->sErrorInfoMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "error info map size = "

    invoke-static {p0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/continuity/universal/ErrorCodeInfoManager;->sErrorInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ErrorCodeInfo.Manager"

    invoke-static {v0, p0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
