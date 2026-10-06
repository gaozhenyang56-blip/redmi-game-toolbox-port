.class public final Lcom/gzy/redmiport/PortRuntime;
.super Ljava/lang/Object;
.source "PortRuntime.java"


# static fields
.field private static volatile attemptedAt:J

.field public static bootstrapFailure:Ljava/lang/Throwable;

.field private static volatile epoch:I

.field private static final errors:Ljava/util/concurrent/ExecutorService;

.field private static foreground:Landroid/app/Activity;

.field private static volatile fps:J

.field private static volatile fpsState:Ljava/lang/String;

.field private static initialized:Z

.field private static permissionRequested:Z

.field private static previousLayer:Ljava/lang/String;

.field private static previousTimestamp:J

.field private static volatile sampledAt:J

.field private static final sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static samplingGame:Ljava/lang/String;

.field private static scanOffset:I

.field private static final timer:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->worker:Ljava/util/concurrent/ExecutorService;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->errors:Ljava/util/concurrent/ExecutorService;

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    .line 27
    const-string v0, "\u7b49\u5f85\u6e38\u620f\u5e27\u6570\u636e"

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->fpsState:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->samplingGame:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .registers 0

    .line 68
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->requestPermission()V

    return-void
.end method

.method static synthetic access$1(J)V
    .registers 2

    .line 25
    sput-wide p0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    return-void
.end method

.method static synthetic access$10(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 2

    .line 90
    invoke-static {p0, p1}, Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$11()Ljava/lang/String;
    .registers 1

    .line 122
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->activeGame()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Ljava/lang/String;)V
    .registers 1

    .line 28
    sput-object p0, Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(J)V
    .registers 2

    .line 29
    sput-wide p0, Lcom/gzy/redmiport/PortRuntime;->previousTimestamp:J

    return-void
.end method

.method static synthetic access$14(I)V
    .registers 1

    .line 31
    sput p0, Lcom/gzy/redmiport/PortRuntime;->scanOffset:I

    return-void
.end method

.method static synthetic access$15()Ljava/lang/String;
    .registers 1

    .line 28
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16()J
    .registers 2

    .line 29
    sget-wide v0, Lcom/gzy/redmiport/PortRuntime;->previousTimestamp:J

    return-wide v0
.end method

.method static synthetic access$17()J
    .registers 2

    .line 25
    sget-wide v0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    return-wide v0
.end method

.method static synthetic access$2(J)V
    .registers 2

    .line 25
    sput-wide p0, Lcom/gzy/redmiport/PortRuntime;->sampledAt:J

    return-void
.end method

.method static synthetic access$3()I
    .registers 1

    .line 26
    sget v0, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    return v0
.end method

.method static synthetic access$4(I)V
    .registers 1

    .line 26
    sput p0, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .registers 1

    .line 118
    invoke-static {p0}, Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Z)V
    .registers 1

    .line 20
    sput-boolean p0, Lcom/gzy/redmiport/PortRuntime;->permissionRequested:Z

    return-void
.end method

.method static synthetic access$7()Landroid/app/Activity;
    .registers 1

    .line 19
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->foreground:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$8(Landroid/app/Activity;)V
    .registers 1

    .line 19
    sput-object p0, Lcom/gzy/redmiport/PortRuntime;->foreground:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$9()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 24
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static activeGame()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, ""

    :try_start_2
    const-string v1, "port_active_game"

    invoke-static {v1, v0}, Lcom/gzy/redmiport/PortPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v1

    return-object v0
.end method

.method public static connect(Landroid/app/Application;)V
    .registers 3

    .line 79
    invoke-static {}, Lcom/gzy/redmidiag/CrashReporter;->diagnosticProcess()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_20

    .line 80
    :cond_15
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gzy/redmiport/PortRuntime$5;

    invoke-direct {v1, p0}, Lcom/gzy/redmiport/PortRuntime$5;-><init>(Landroid/app/Application;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void

    .line 79
    :cond_20
    :goto_20
    return-void
.end method

.method public static fpsStatus()Ljava/lang/String;
    .registers 1

    .line 123
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->fpsState:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 3

    .line 34
    invoke-static {}, Lcom/gzy/redmidiag/CrashReporter;->diagnosticProcess()Z

    move-result v0

    if-nez v0, :cond_45

    sget-boolean v0, Lcom/gzy/redmiport/PortRuntime;->initialized:Z

    if-eqz v0, :cond_b

    goto :goto_45

    .line 35
    :cond_b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gzy/redmiport/PortRuntime;->initialized:Z

    .line 37
    :try_start_e
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lrikka/shizuku/ShizukuProvider;->enableMultiProcessSupport(Z)V

    .line 38
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$1;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$1;-><init>()V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addBinderReceivedListenerSticky(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V

    .line 41
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$2;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$2;-><init>()V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V

    .line 44
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$3;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$3;-><init>()V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V

    .line 53
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$4;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_3e

    .line 66
    goto :goto_44

    :catchall_3e
    move-exception p0

    const-string v0, "Shizuku initialization"

    invoke-static {v0, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :goto_44
    return-void

    .line 34
    :cond_45
    :goto_45
    return-void
.end method

.method public static open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    .line 88
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static open(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 8

    .line 92
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_58

    .line 93
    :cond_e
    const-class v1, Lrikka/shizuku/Shizuku;

    const-string v2, "newProcess"

    const-class v3, [Ljava/lang/String;

    const-class v4, [Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 95
    const-string v2, "sh"

    const-string v3, "-c"

    filled-new-array {v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Process;

    .line 96
    sget-object v1, Lcom/gzy/redmiport/PortRuntime;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/gzy/redmiport/PortRuntime$6;

    invoke-direct {v2, p0}, Lcom/gzy/redmiport/PortRuntime$6;-><init>(Ljava/lang/Process;)V

    .line 98
    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    invoke-interface {v1, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 100
    sget-object v1, Lcom/gzy/redmiport/PortRuntime;->errors:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/gzy/redmiport/PortRuntime$7;

    invoke-direct {v2, p0}, Lcom/gzy/redmiport/PortRuntime$7;-><init>(Ljava/lang/Process;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 107
    new-instance v1, Lcom/gzy/redmiport/PortRuntime$8;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/gzy/redmiport/PortRuntime$8;-><init>(Ljava/io/InputStream;Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Process;)V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    return-object v1

    .line 92
    :cond_58
    :goto_58
    return-object v0

    .line 115
    :catchall_59
    move-exception p0

    const-string p1, "Shizuku shell channel"

    invoke-static {p1, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static requestPermission()V
    .registers 2

    .line 69
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->foreground:Landroid/app/Activity;

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/gzy/redmiport/PortRuntime;->permissionRequested:Z

    if-eqz v0, :cond_9

    goto :goto_35

    .line 71
    :cond_9
    :try_start_9
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lrikka/shizuku/Shizuku;->isPreV11()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2d

    .line 72
    :cond_16
    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 73
    :cond_1d
    invoke-static {}, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    .line 74
    :cond_24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gzy/redmiport/PortRuntime;->permissionRequested:Z

    .line 75
    const/16 v0, 0x4b1

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->requestPermission(I)V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2e

    .line 76
    goto :goto_34

    .line 71
    :cond_2d
    :goto_2d
    return-void

    .line 76
    :catchall_2e
    move-exception v0

    const-string v1, "Shizuku authorization"

    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_34
    return-void

    .line 69
    :cond_35
    :goto_35
    return-void
.end method

.method public static resetFps()V
    .registers 3

    .line 117
    sget v0, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gzy/redmiport/PortRuntime;->sampledAt:J

    sput-wide v0, Lcom/gzy/redmiport/PortRuntime;->attemptedAt:J

    const/4 v2, 0x0

    sput-object v2, Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;

    sput-wide v0, Lcom/gzy/redmiport/PortRuntime;->previousTimestamp:J

    const/4 v0, 0x0

    sput v0, Lcom/gzy/redmiport/PortRuntime;->scanOffset:I

    const-string v0, "\u7b49\u5f85\u6e38\u620f\u5e27\u6570\u636e"

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V

    return-void
.end method

.method public static sampleFps()J
    .registers 10

    .line 125
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->activeGame()Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/gzy/redmiport/PortRuntime;->samplingGame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->samplingGame:Ljava/lang/String;

    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->resetFps()V

    .line 127
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1f

    const-string v0, "\u7b49\u5f85\u5df2\u6dfb\u52a0\u7684\u524d\u53f0\u6e38\u620f"

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->state(Ljava/lang/String;)V

    return-wide v2

    .line 128
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 129
    sget-wide v6, Lcom/gzy/redmiport/PortRuntime;->attemptedAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x320

    cmp-long v1, v6, v8

    if-ltz v1, :cond_49

    sget-object v1, Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 130
    sput-wide v4, Lcom/gzy/redmiport/PortRuntime;->attemptedAt:J

    .line 131
    sget v1, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    .line 132
    sget-object v6, Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;

    .line 133
    sget v7, Lcom/gzy/redmiport/PortRuntime;->scanOffset:I

    .line 134
    sget-object v8, Lcom/gzy/redmiport/PortRuntime;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/gzy/redmiport/PortRuntime$9;

    invoke-direct {v9, v0, v6, v7, v1}, Lcom/gzy/redmiport/PortRuntime$9;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 165
    :cond_49
    sget-wide v0, Lcom/gzy/redmiport/PortRuntime;->sampledAt:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5c

    sget-wide v0, Lcom/gzy/redmiport/PortRuntime;->sampledAt:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0xdac

    cmp-long v0, v4, v0

    if-gez v0, :cond_5c

    sget-wide v2, Lcom/gzy/redmiport/PortRuntime;->fps:J

    :cond_5c
    return-wide v2
.end method

.method private static state(Ljava/lang/String;)V
    .registers 2

    .line 119
    sput-object p0, Lcom/gzy/redmiport/PortRuntime;->fpsState:Ljava/lang/String;

    .line 120
    :try_start_2
    const-string v0, "port_fps_status"

    invoke-static {v0, p0}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    .line 121
    :goto_9
    return-void
.end method
