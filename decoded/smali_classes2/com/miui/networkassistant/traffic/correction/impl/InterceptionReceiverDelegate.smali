.class public Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    }
.end annotation


# static fields
.field private static final MAX_WAITING_TIME:J = 0x493e0L

.field private static final STATUS_IDLE:I = 0x0

.field private static final STATUS_SENT_AND_RECEIVING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrafficManageService-ReceiverDel"

.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public lock:Ljava/lang/Object;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private permission:Ljava/lang/String;

.field private resultEntry:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

.field private sendNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->sendNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->lock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->resultEntry:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$1;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->sendNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->resultEntry:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    return-object p1
.end method

.method public static getInstantByAction(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-class v1, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    monitor-enter v1

    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-direct {v2, p0, p2, p5}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    if-eqz p0, :cond_2

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mFilter:Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->permission:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->sendNum:Ljava/lang/String;

    :cond_2
    return-object p0
.end method

.method private declared-synchronized getResultEntry()Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->resultEntry:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setResultEntry(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->resultEntry:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getReceiverResult(J)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->setResultEntry(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;)V

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->permission:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->lock:Ljava/lang/Object;

    const-wide/32 v3, 0x493e0

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->context:Landroid/content/Context;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->getResultEntry()Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->setResultEntry(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
