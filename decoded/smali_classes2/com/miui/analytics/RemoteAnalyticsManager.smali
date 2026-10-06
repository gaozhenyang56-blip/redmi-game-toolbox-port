.class public Lcom/miui/analytics/RemoteAnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;,
        Lcom/miui/analytics/RemoteAnalyticsManager$WorkHandler;
    }
.end annotation


# static fields
.field private static final ID_TRACK_DATA:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "RemoteAnalyticsManager"

.field private static volatile sInstance:Lcom/miui/analytics/RemoteAnalyticsManager;


# instance fields
.field private mBgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/miui/analytics/RemoteAnalyticsManager;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/miui/analytics/RemoteAnalyticsManager$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/analytics/RemoteAnalyticsManager$WorkHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/analytics/RemoteAnalyticsManager;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/analytics/RemoteAnalyticsManager;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/miui/analytics/RemoteAnalyticsManager;
    .locals 2

    sget-object v0, Lcom/miui/analytics/RemoteAnalyticsManager;->sInstance:Lcom/miui/analytics/RemoteAnalyticsManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/analytics/RemoteAnalyticsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/analytics/RemoteAnalyticsManager;->sInstance:Lcom/miui/analytics/RemoteAnalyticsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/analytics/RemoteAnalyticsManager;

    invoke-direct {v1}, Lcom/miui/analytics/RemoteAnalyticsManager;-><init>()V

    sput-object v1, Lcom/miui/analytics/RemoteAnalyticsManager;->sInstance:Lcom/miui/analytics/RemoteAnalyticsManager;

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
    sget-object v0, Lcom/miui/analytics/RemoteAnalyticsManager;->sInstance:Lcom/miui/analytics/RemoteAnalyticsManager;

    return-object v0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/analytics/RemoteAnalyticsManager;->sInstance:Lcom/miui/analytics/RemoteAnalyticsManager;

    iget-object v0, v0, Lcom/miui/analytics/RemoteAnalyticsManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;-><init>(Lcom/miui/analytics/RemoteAnalyticsManager$1;)V

    iput-object p0, v1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;->packageName:Ljava/lang/String;

    iput-object p1, v1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;->eventName:Ljava/lang/String;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p0, p1, :cond_2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput-object p0, v1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;->params:Ljava/util/Map;

    :cond_2
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p0, Lcom/miui/analytics/RemoteAnalyticsManager;->sInstance:Lcom/miui/analytics/RemoteAnalyticsManager;

    iget-object p0, p0, Lcom/miui/analytics/RemoteAnalyticsManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
