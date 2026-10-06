.class public Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficManageService-MiuiTrafficCorrection"

.field private static final delayStopInterceptSmsLock:Ljava/lang/Object;

.field private static forceStopFlags:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;>;"
        }
    .end annotation
.end field

.field static mHandler:Landroid/os/Handler;

.field static mSecurityManager:Lmiui/security/SecurityManager;

.field private static final receiveWaitLock:Ljava/lang/Object;

.field private static sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private static final sendWaitLock:Ljava/lang/Object;


# instance fields
.field TIMEOUT_MILLION:J

.field private doExecutor:Ljava/util/concurrent/ExecutorService;

.field private getExecutor:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mCurrentTcType:I

.field private mImsi:Ljava/lang/String;

.field private mIsUpdated:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSlotNum:I

.field private mStartCorrectTime:J

.field private mTcManager:Lcom/miui/sdk/tc/TcManager;

.field private mTotalLimit:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->forceStopFlags:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sendWaitLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->receiveWaitLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->delayStopInterceptSmsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSecurityManager:Lmiui/security/SecurityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->TIMEOUT_MILLION:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mStartCorrectTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsUpdated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->doExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSecurityManager:Lmiui/security/SecurityManager;

    if-nez v1, :cond_0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSecurityManager:Lmiui/security/SecurityManager;

    :cond_0
    const-string v0, "init"

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->stopInterceptSmsBySender(Ljava/lang/String;)Z

    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->initTcLib(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->lambda$registerSendMsgListenerAndGetSenderFuture$2(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    move-result-object p0

    return-object p0
.end method

.method private acquireWakeup()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "TrafficManageService-MiuiTrafficCorrection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;IZLjava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->lambda$startCorrectionByType$1(IZLjava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    return-void
.end method

.method private broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setEngine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    const-string v2, "TrafficManageService-MiuiTrafficCorrection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastTrafficCorrected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;J)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->lambda$startCorrectionByType$0(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;J)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    const-string p1, "default1"

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const-string p1, "default2"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :cond_2
    :goto_0
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    :cond_3
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    if-nez v1, :cond_4

    new-instance v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-direct {v1, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setImsi(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getInstructionsByTcType(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/sdk/tc/TcDirection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/sdk/tc/TcManager;->getInstructionsByTcType(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getSmsReceiverDelegate(Ljava/lang/String;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;
    .locals 6

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v0, 0x7fffffff

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->receiveWaitLock:Ljava/lang/Object;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    const-string v3, "android.permission.BROADCAST_SMS"

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->getInstantByAction(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getStartCorrectionTime()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mStartCorrectTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleJustRemainStatus(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->isTrafficCmdType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalTrafficB(J)V

    invoke-virtual {p1, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    :cond_1
    return-void
.end method

.method private initTcLib(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A2FscFVdX1+ULfEz/TTPQVNRXE+lzSe2"

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/sdk/tc/TcManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-void
.end method

.method private isTrafficCmdType(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$registerSendMsgListenerAndGetSenderFuture$2(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    .locals 2

    const-wide/32 v0, 0x2bf20

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->getReceiverResult(J)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$startCorrectionByType$0(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;J)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->getReceiverResult(J)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$startCorrectionByType$1(IZLjava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 35

    move-object/from16 v1, p0

    move/from16 v12, p2

    if-nez v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->acquireWakeup()V

    :cond_0
    const/4 v13, 0x4

    new-array v14, v13, [I

    new-array v15, v13, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v9, p1

    move-object/from16 v11, v16

    move-object/from16 v18, v11

    move/from16 v10, v17

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_1d

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_11

    :cond_1
    move-object/from16 v6, p3

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v5}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v4

    invoke-virtual {v5}, Lcom/miui/sdk/tc/TcDirection;->getSendNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    const/16 v19, 0x2

    :try_start_0
    const-string v0, "clear last correction or receive sms"

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->stopInterceptSmsBySender(Ljava/lang/String;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v8, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v21

    mul-int/lit8 v7, v21, 0x2

    invoke-virtual {v0, v8, v3, v7}, Lmiui/security/SecurityManager;->startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const-string v7, "icv_track"

    const-string v8, "startInterceptSmsBySender result = %b, slotNum = %d, receiveNum = %s, cmdType = %d"

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v17

    iget v0, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v21, 0x1

    :try_start_1
    aput-object v0, v6, v21

    aput-object v3, v6, v19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v20, 0x3

    aput-object v0, v6, v20

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v21, 0x1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_4
    move/from16 v12, v21

    goto/16 :goto_12

    :cond_3
    and-int v0, v9, v4

    const/4 v8, 0x3

    and-int/2addr v0, v8

    if-eqz v0, :cond_1b

    const-string v0, "TrafficManageService-MiuiTrafficCorrection"

    invoke-virtual {v5}, Lcom/miui/sdk/tc/TcDirection;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v4}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setTcType(I)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->registerSendMsgListenerAndGetSenderFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {v1, v3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getSmsReceiverDelegate(Ljava/lang/String;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    move-result-object v3

    new-instance v6, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v7, 0x7

    iget v8, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-direct {v6, v7, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v6, v4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCurrentCorrectionType(I)V

    invoke-virtual {v1, v6}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    invoke-direct {v1, v5, v2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sendSmsMessage(Lcom/miui/sdk/tc/TcDirection;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v13}, Ljava/util/HashMap;-><init>(I)V

    const-wide/32 v6, 0x493e0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v2, v16

    move-object/from16 v27, v2

    move/from16 v26, v17

    :goto_5
    const-wide/16 v28, 0x0

    cmp-long v28, v6, v28

    if-lez v28, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    iget-object v13, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->doExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v30, v2

    new-instance v2, Lcom/miui/networkassistant/traffic/correction/impl/b;

    invoke-direct {v2, v3, v6, v7}, Lcom/miui/networkassistant/traffic/correction/impl/b;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;J)V

    invoke-interface {v13, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_9

    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-object/from16 v2, v30

    :goto_6
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_9

    :cond_5
    if-eqz v2, :cond_7

    iget-object v13, v2, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;->intent:Landroid/content/Intent;

    if-eqz v13, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v13, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    move-object/from16 v31, v3

    iget-object v3, v2, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v13, v3, v5, v8}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onProcessSms(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/sdk/tc/TcDirection;Ljava/util/HashMap;)Lcom/miui/networkassistant/model/TrafficUsedStatus;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v3

    if-nez v3, :cond_6

    move/from16 v26, v21

    goto :goto_7

    :cond_6
    move/from16 v26, v17

    goto :goto_7

    :cond_7
    move-object/from16 v31, v3

    :goto_7
    if-eqz v26, :cond_8

    move-object v13, v2

    move-object/from16 v7, v27

    goto :goto_8

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    sub-long v32, v32, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    sub-long v6, v6, v28

    move-object/from16 v3, v31

    const/4 v13, 0x4

    goto :goto_5

    :cond_9
    move-object/from16 v30, v2

    move-object/from16 v7, v27

    move-object/from16 v13, v30

    :goto_8
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_9
    goto/16 :goto_4

    :cond_a
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-object/from16 v0, v16

    :goto_a
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_4

    :cond_b
    if-eqz v0, :cond_d

    iget v0, v0, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;->resultCode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v0, v17

    goto :goto_c

    :cond_d
    :goto_b
    move/from16 v0, v21

    :goto_c
    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v5}, Lcom/miui/sdk/tc/TcDirection;->getDirection()Ljava/lang/String;

    move-result-object v6

    xor-int/lit8 v27, v0, 0x1

    iget-object v3, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    move/from16 v28, v4

    iget v4, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-static {v3, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v29

    move/from16 v3, p5

    move/from16 v30, v28

    move/from16 v4, p2

    move-object/from16 v28, v5

    move/from16 v5, v30

    move/from16 v31, v10

    move/from16 v12, v21

    move-object v10, v7

    move/from16 v7, v27

    move-object/from16 v34, v8

    move-object/from16 v8, v29

    invoke-static/range {v2 .. v8}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackSendMessage(IIZILjava/lang/String;ZLcom/miui/networkassistant/config/SimUserInfo;)V

    if-nez v26, :cond_10

    if-eqz v0, :cond_10

    const-string v0, "TrafficManageService-MiuiTrafficCorrection"

    const-string v2, "sendResEntry : \u53d1\u9001\u8d85\u65f6"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v30

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_e

    aget v0, v14, v17

    add-int/2addr v0, v12

    aput v0, v14, v17

    :cond_e
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_f

    aget v0, v15, v17

    add-int/2addr v0, v12

    aput v0, v15, v17

    :cond_f
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-direct {v0, v12, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    move/from16 v20, v31

    const/4 v13, 0x3

    goto/16 :goto_10

    :cond_10
    move/from16 v5, v30

    if-eqz v13, :cond_18

    iget-object v0, v13, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;->intent:Landroid/content/Intent;

    if-nez v0, :cond_11

    goto/16 :goto_f

    :cond_11
    if-eqz v26, :cond_15

    and-int/lit8 v0, v5, 0x2

    const/4 v13, 0x3

    if-eqz v0, :cond_12

    aget v0, v14, v13

    add-int/2addr v0, v12

    aput v0, v14, v13

    move-object v11, v10

    :cond_12
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_13

    aget v2, v15, v13

    add-int/2addr v2, v12

    aput v2, v15, v13

    move-object/from16 v18, v10

    :cond_13
    not-int v2, v5

    and-int/2addr v9, v2

    const-string v2, "TrafficManageService-MiuiTrafficCorrection"

    const-string v3, "startCorrectionByTypeSuccess: %s"

    new-array v4, v12, [Ljava/lang/Object;

    if-eqz v0, :cond_14

    const-string v0, "traffic"

    goto :goto_d

    :cond_14
    const-string v0, "bill"

    :goto_d
    aput-object v0, v4, v17

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_15
    const/4 v13, 0x3

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_16

    aget v0, v14, v19

    add-int/2addr v0, v12

    aput v0, v14, v19

    :cond_16
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_17

    aget v0, v15, v19

    add-int/2addr v0, v12

    aput v0, v15, v19

    :cond_17
    :goto_e
    move v0, v9

    move-object/from16 v19, v18

    move-object/from16 v18, v11

    const-string v2, "TrafficManageService-MiuiTrafficCorrection"

    const-string v3, "\u5e7f\u64ad\u7ed3\u679c"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v10}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual/range {v28 .. v28}, Lcom/miui/sdk/tc/TcDirection;->getDirection()Ljava/lang/String;

    move-result-object v6

    const-string v3, "MatchedTplIds"

    move-object/from16 v4, v34

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    iget v4, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-static {v3, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v9

    sub-long v24, v24, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v7, v26

    move/from16 v20, v31

    invoke-static/range {v2 .. v11}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackParseMessage(IIZILjava/lang/String;ZLjava/lang/String;Lcom/miui/networkassistant/config/SimUserInfo;J)V

    move v9, v0

    move-object/from16 v11, v18

    move-object/from16 v18, v19

    goto :goto_10

    :cond_18
    :goto_f
    move/from16 v20, v31

    const/4 v13, 0x3

    const-string v0, "TrafficManageService-MiuiTrafficCorrection"

    const-string v2, "receiverResEntry : \u63a5\u6536\u8d85\u65f6"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_19

    aget v0, v14, v12

    add-int/2addr v0, v12

    aput v0, v14, v12

    :cond_19
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1a

    aget v0, v15, v12

    add-int/2addr v0, v12

    aput v0, v15, v12

    :cond_1a
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-direct {v0, v13, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :goto_10
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_13

    :cond_1b
    move/from16 v20, v10

    :cond_1c
    add-int/lit8 v10, v20, 0x1

    move/from16 v12, p2

    const/4 v13, 0x4

    goto/16 :goto_0

    :cond_1d
    :goto_11
    const/4 v12, 0x1

    :goto_12
    const/4 v13, 0x3

    :goto_13
    const-string v0, "TrafficManageService-MiuiTrafficCorrection"

    const-string v2, "startCorrectionByType: \u6821\u6b63\u7ed3\u675f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->stopCurrentCorrection()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_20

    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    const/4 v5, 0x2

    aget v3, v14, v13

    if-eqz v3, :cond_1f

    move v6, v12

    goto :goto_14

    :cond_1f
    move/from16 v6, v17

    :goto_14
    iget-object v3, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v8

    move/from16 v3, p5

    move/from16 v4, p2

    move-object v7, v14

    invoke-static/range {v2 .. v8}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackCurrentCorrectionResult(IIZIZ[ILcom/miui/networkassistant/config/SimUserInfo;)V

    :cond_20
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_22

    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    const/4 v5, 0x1

    aget v3, v15, v13

    if-eqz v3, :cond_21

    move v6, v12

    goto :goto_15

    :cond_21
    move/from16 v6, v17

    :goto_15
    iget-object v3, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v8

    move/from16 v3, p5

    move/from16 v4, p2

    move-object v7, v15

    invoke-static/range {v2 .. v8}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackCurrentCorrectionResult(IIZIZ[ILcom/miui/networkassistant/config/SimUserInfo;)V

    :cond_22
    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    iget-object v3, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v8

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p1

    move-object v6, v11

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v8}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackOverallCorrectionResult(IIZILcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/model/TrafficUsedStatus;Lcom/miui/networkassistant/config/SimUserInfo;)V

    if-eqz v9, :cond_23

    if-eqz v18, :cond_24

    :cond_23
    if-eqz v0, :cond_25

    if-nez v11, :cond_25

    :cond_24
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/16 v2, 0xa

    iget v3, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-direct {v0, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_16

    :cond_25
    move/from16 v2, p2

    :goto_16
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/16 v3, 0x64

    iget v4, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-direct {v0, v3, v4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v2, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->delayStopInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    const-wide/32 v3, 0xea60

    :try_start_4
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_18

    :catch_4
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_17
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " correct finished"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->stopInterceptSmsBySender(Ljava/lang/String;)Z

    goto :goto_19

    :goto_18
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_26
    :goto_19
    return-void
.end method

.method private passSmsSuccess(ILcom/miui/sdk/tc/DataUsage;Lcom/miui/sdk/tc/TcDirection;Ljava/lang/String;)Lcom/miui/networkassistant/model/TrafficUsedStatus;
    .locals 8

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {p2}, Lcom/miui/sdk/tc/DataUsage;->getDailyPkgDetail()Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passSmsSuccess: dailyDetail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrafficManageService-MiuiTrafficCorrection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTotalTrafficB()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalTrafficB(J)V

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getUsedTrafficB()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setRemainTrafficB(J)V

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isStable()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setNormalStable(Z)V

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->isJustOver()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setJustOver(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCurrentCorrectionType(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p2}, Lcom/miui/sdk/tc/DataUsage;->getBillPkg()Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    move-result-object p2

    const-wide/32 v4, 0xf4240

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillEnabled(Z)V

    invoke-virtual {p2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getTotalTrafficB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillTotal(J)V

    invoke-virtual {p2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getUsedTrafficB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillUsed(J)V

    invoke-virtual {p2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getRemainTrafficB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillRemained(J)V

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCurrentCorrectionType(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillSmsDetail(Ljava/lang/String;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    invoke-virtual {p3}, Lcom/miui/sdk/tc/TcDirection;->getSendNumber()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillCustomizedSmsNum(Ljava/lang/String;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/sdk/tc/TcDirection;->getDirection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillCustomizedSmsContent(Ljava/lang/String;)Z

    :cond_1
    return-object v0
.end method

.method private registerSendMsgListenerAndGetSenderFuture()Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "sms_receiver_action"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sendWaitLock:Ljava/lang/Object;

    const-string v3, "sms_receiver_action"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;->getInstantByAction(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->doExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/miui/networkassistant/traffic/correction/impl/c;

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/traffic/correction/impl/c;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private releaseWakeup()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private sendSmsMessage(Lcom/miui/sdk/tc/TcDirection;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-static {}, Lef/x;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isAirModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sms_receiver_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/sdk/tc/TcDirection;->getDirection()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    move-object v4, p2

    invoke-static/range {v4 .. v9}, Lcom/miui/networkassistant/utils/TelephonyUtil;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized setConfigUpdated(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setImsi(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/sdk/tc/TcManager;->setImsi(Ljava/lang/String;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    iput p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mImsi:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized setStartCorrectionTime(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mStartCorrectTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setTcType(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startCorrectionByType(Ljava/util/List;IZI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/sdk/tc/TcDirection;",
            ">;IZI)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "MiuiTrafficCorrection startCorrectionByType: type = %s isBackground = %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficManageService-MiuiTrafficCorrection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->forceStopFlags:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->forceStopFlags:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/networkassistant/traffic/correction/impl/a;

    move-object v3, v1

    move-object v4, p0

    move v5, p2

    move v6, p3

    move-object v7, p1

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/miui/networkassistant/traffic/correction/impl/a;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;IZLjava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private declared-synchronized stopCurrentCorrection()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->releaseWakeup()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setFinished(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static stopInterceptSmsBySender(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->stopInterceptSmsBySender()Z

    move-result v0

    const-string v1, "icv_track"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopInterceptSmsBySender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,result = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private updatePluginLib()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/sdk/tc/TcManager;->setImsi(Ljava/lang/String;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-void
.end method


# virtual methods
.method public forceStop()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->forceStopFlags:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sendWaitLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_2
    :try_start_4
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->receiveWaitLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :goto_3
    :try_start_7
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->delayStopInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_4

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :goto_4
    return-void
.end method

.method public getBrands(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1}, Lcom/miui/sdk/tc/TcManager;->getBrands(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getCities(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1}, Lcom/miui/sdk/tc/TcManager;->getCities(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstructions(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/sdk/tc/TcManager;->getInstructionsMapByType(II)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getOperators()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcManager;->getOperators()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProvinceCodeByCityCode(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1}, Lcom/miui/sdk/tc/TcManager;->getProvinceCodeByCityCode(I)I

    move-result p1

    return p1
.end method

.method public getProvinces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcManager;->getProvinces()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTcType()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConfigUpdated()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFinished()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getStartCorrectionTime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProcessSms(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/sdk/tc/TcDirection;Ljava/util/HashMap;)Lcom/miui/networkassistant/model/TrafficUsedStatus;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/miui/sdk/tc/TcDirection;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/networkassistant/model/TrafficUsedStatus;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "onProcessSms \u89e3\u6790\u5931\u8d25"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/miui/sdk/tc/TcDirection;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "onProcessSms: start %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrafficManageService-MiuiTrafficCorrection"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v3

    new-instance v6, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    iget v7, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    const/4 v8, 0x4

    invoke-direct {v6, v8, v7}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    :try_start_0
    const-string v7, "slot_id"

    move-object/from16 v9, p2

    invoke-virtual {v9, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget v10, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    const/4 v11, 0x2

    if-eq v7, v10, :cond_0

    const-string v0, "onProcessSms \u975e\u5bf9\u5e94slotId\uff0c\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v11}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    return-object v6

    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-virtual {v6, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCurrentCorrectionType(I)V

    invoke-virtual {v1, v6}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    invoke-static/range {p2 .. p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v9

    const-string v10, "onProcessSms: "

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_9

    array-length v10, v9

    if-nez v10, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    array-length v12, v9

    move v13, v5

    :goto_0
    if-ge v13, v12, :cond_2

    aget-object v14, v9, v13

    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v9

    iget v12, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v9, v15, v12}, Lcom/miui/sdk/tc/TcManager;->isSmsNeedBlock(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v0, "onProcessSms \u89e3\u6790\u5931\u8d25 need block sms"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "[\\s\\S]*\\d[\\s\\S]*"

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v14

    iget v9, v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual/range {p3 .. p3}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v18

    move-object/from16 v16, v10

    move/from16 v17, v9

    move-object/from16 v19, p4

    invoke-virtual/range {v14 .. v19}, Lcom/miui/sdk/tc/TcManager;->getResult(Ljava/lang/String;Ljava/lang/String;IILjava/util/HashMap;)Lcom/miui/sdk/tc/DataUsage;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onProcessSms: result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/miui/sdk/tc/DataUsage;->getReturnCode()I

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v12, p3

    invoke-direct {v1, v7, v9, v12, v10}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->passSmsSuccess(ILcom/miui/sdk/tc/DataUsage;Lcom/miui/sdk/tc/TcDirection;Ljava/lang/String;)Lcom/miui/networkassistant/model/TrafficUsedStatus;

    move-result-object v3

    const-string v7, "onProcessSms \u89e3\u6790\u6210\u529f %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v5

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_5
    move-object/from16 v5, p1

    invoke-static {v5, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v5

    if-ne v3, v0, :cond_6

    invoke-virtual {v5, v10}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    if-ne v3, v11, :cond_7

    invoke-virtual {v5, v10}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillSmsDetail(Ljava/lang/String;)Z

    :cond_7
    :goto_1
    invoke-virtual {v6, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-virtual {v6, v10}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setFailureSms(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v4, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    return-object v6

    :cond_8
    :goto_2
    const-string v0, "onProcessSms \u4e0d\u5408\u7406\u7684\u683c\u5f0f\uff0c\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v11}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    return-object v6

    :cond_9
    :goto_3
    const-string v0, "onProcessSms \u5185\u5bb9\u4e3a\u7a7a\uff0c\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v11}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    :catch_1
    move-exception v0

    invoke-static {v4, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6, v8}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    return-object v6
.end method

.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiTrafficCorrection onTrafficCorrected status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficManageService-MiuiTrafficCorrection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->handleJustRemainStatus(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method public registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setFinished(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setStartCorrectionTime(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setStartCorrectionTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTotalLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTotalLimit:J

    return-void
.end method

.method public startCorrection(IIZLjava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->startCorrection(IIZLjava/util/Map;JI)Z

    move-result p1

    return p1
.end method

.method public startCorrection(IIZLjava/util/Map;JI)Z
    .locals 17
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p7

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "MiuiTrafficCorrection startCorrection, isBackground:%s, type:%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TrafficManageService-MiuiTrafficCorrection"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    iget v10, v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-static {v6, v10}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCustomizedSmsNum()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillCustomizedSmsContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    move v13, v9

    goto :goto_0

    :cond_0
    move v13, v8

    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move v14, v9

    goto :goto_1

    :cond_1
    move v14, v8

    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v16, v4, 0x2

    if-eqz v16, :cond_3

    if-eqz v14, :cond_2

    new-instance v14, Lcom/miui/sdk/tc/TcDirection;

    invoke-direct {v14, v12, v6, v5}, Lcom/miui/sdk/tc/TcDirection;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v5

    iget v6, v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v5, v10, v6}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-direct {v0, v5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getInstructionsByTcType(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_5

    if-eqz v13, :cond_4

    new-instance v5, Lcom/miui/sdk/tc/TcDirection;

    invoke-direct {v5, v10, v11, v9}, Lcom/miui/sdk/tc/TcDirection;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v5

    iget v6, v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v5, v10, v6}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    invoke-direct {v0, v9}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getInstructionsByTcType(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiuiTrafficCorrection startCorrection with directions size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "MiuiTrafficCorrection instructions is null"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v4, v9}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsLastStatus(Z)V

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-virtual {v4, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-direct {v0, v4}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    const-string v4, "cmd_is_empty"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStopReasonCorrection(IIZLjava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setFinished(Z)V

    return v8

    :cond_6
    invoke-direct {v0, v15, v4, v3, v2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->startCorrectionByType(Ljava/util/List;IZI)V

    return v9
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setConfigUpdated(Z)V

    new-instance v1, Lcom/miui/sdk/tc/UserConfig;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/sdk/tc/UserConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    iget-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->updatePluginLib()V

    iget-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    const/4 p3, 0x7

    invoke-virtual {p1, v1, p2, p3, p5}, Lcom/miui/sdk/tc/TcManager;->setConfig(Lcom/miui/sdk/tc/UserConfig;IILjava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object p1

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setConfigUpdated(Z)V

    new-instance p3, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/16 p5, 0xb

    invoke-direct {p3, p5, p4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    sget-object p3, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    if-ne p1, p3, :cond_1

    move v0, p2

    :cond_1
    return v0
.end method
