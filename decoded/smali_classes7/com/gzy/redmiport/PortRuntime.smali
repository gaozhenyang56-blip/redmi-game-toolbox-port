.class public final Lcom/gzy/redmiport/PortRuntime;
.super Ljava/lang/Object;
.source "PortRuntime.java"


# static fields
.field private static final COMMAND:Ljava/lang/String; = "a=$(dumpsys activity activities);p=$(printf \'%s\\n\' \"$a\"|sed -n \'s/.*topResumedActivity[=:].* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&p=$(dumpsys window windows|sed -n \'s/.*mCurrentFocus=.* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&p=$(printf \'%s\\n\' \"$a\"|sed -n \'s/.*mResumedActivity[=:].* \\([^/ ]*\\)\\/.*/\\1/p\'|head -1);[ -z \"$p\" ]&&exit 1;printf \'PACKAGE:%s\\n\' \"$p\";ls=$(dumpsys SurfaceFlinger --list|awk -v p=\"$p\" \'{ rest=$0; while ((i=index(rest,p))>0) {before=substr(rest,1,i-1); after=substr(rest,i+length(p));if (before !~ /[A-Za-z0-9_.]$/ && after !~ /^[A-Za-z0-9_.]/) { print; break; }rest=after; } }\');{ printf \'%s\\n\' \"$ls\"|grep SurfaceView; printf \'%s\\n\' \"$ls\"|grep -v SurfaceView; }|head -8|while IFS= read -r l; do [ -z \"$l\" ]&&continue;printf \'LAYER:%s\\n\' \"$l\";dumpsys SurfaceFlinger --latency \"$l\";done"

.field private static volatile attemptedAt:J

.field public static bootstrapFailure:Ljava/lang/Throwable;

.field private static volatile epoch:I

.field private static foreground:Landroid/app/Activity;

.field private static volatile fps:J

.field private static volatile fpsState:Ljava/lang/String;

.field private static initialized:Z

.field private static permissionRequested:Z

.field private static previousLayer:Ljava/lang/String;

.field private static previousTimestamp:J

.field private static volatile sampledAt:J

.field private static final sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    .line 26
    const-string v0, "\u7b49\u5f85\u6e38\u620f\u5e27\u6570\u636e"

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->fpsState:Ljava/lang/String;

    .line 30
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

    .line 67
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->requestPermission()V

    return-void
.end method

.method static synthetic access$1(J)V
    .registers 2

    .line 24
    sput-wide p0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    return-void
.end method

.method static synthetic access$10()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11()J
    .registers 2

    .line 28
    sget-wide v0, Lcom/gzy/redmiport/PortRuntime;->previousTimestamp:J

    return-wide v0
.end method

.method static synthetic access$12(Ljava/lang/String;)V
    .registers 1

    .line 27
    sput-object p0, Lcom/gzy/redmiport/PortRuntime;->previousLayer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(J)V
    .registers 2

    .line 28
    sput-wide p0, Lcom/gzy/redmiport/PortRuntime;->previousTimestamp:J

    return-void
.end method

.method static synthetic access$14()J
    .registers 2

    .line 24
    sget-wide v0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    return-wide v0
.end method

.method static synthetic access$2(J)V
    .registers 2

    .line 24
    sput-wide p0, Lcom/gzy/redmiport/PortRuntime;->sampledAt:J

    return-void
.end method

.method static synthetic access$3()I
    .registers 1

    .line 25
    sget v0, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    return v0
.end method

.method static synthetic access$4(I)V
    .registers 1

    .line 25
    sput p0, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .registers 1

    .line 26
    sput-object p0, Lcom/gzy/redmiport/PortRuntime;->fpsState:Ljava/lang/String;

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

    .line 23
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static connect(Landroid/app/Application;)V
    .registers 3

    .line 78
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

    .line 79
    :cond_15
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gzy/redmiport/PortRuntime$5;

    invoke-direct {v1, p0}, Lcom/gzy/redmiport/PortRuntime$5;-><init>(Landroid/app/Application;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void

    .line 78
    :cond_20
    :goto_20
    return-void
.end method

.method public static fpsStatus()Ljava/lang/String;
    .registers 1

    .line 114
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->fpsState:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 3

    .line 33
    invoke-static {}, Lcom/gzy/redmidiag/CrashReporter;->diagnosticProcess()Z

    move-result v0

    if-nez v0, :cond_45

    sget-boolean v0, Lcom/gzy/redmiport/PortRuntime;->initialized:Z

    if-eqz v0, :cond_b

    goto :goto_45

    .line 34
    :cond_b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gzy/redmiport/PortRuntime;->initialized:Z

    .line 36
    :try_start_e
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lrikka/shizuku/ShizukuProvider;->enableMultiProcessSupport(Z)V

    .line 37
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$1;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$1;-><init>()V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addBinderReceivedListenerSticky(Lrikka/shizuku/Shizuku$OnBinderReceivedListener;)V

    .line 40
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$2;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$2;-><init>()V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addBinderDeadListener(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V

    .line 43
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$3;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$3;-><init>()V

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->addRequestPermissionResultListener(Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;)V

    .line 52
    new-instance v0, Lcom/gzy/redmiport/PortRuntime$4;

    invoke-direct {v0}, Lcom/gzy/redmiport/PortRuntime$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_3e

    .line 65
    goto :goto_44

    :catchall_3e
    move-exception p0

    const-string v0, "Shizuku initialization"

    invoke-static {v0, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :goto_44
    return-void

    .line 33
    :cond_45
    :goto_45
    return-void
.end method

.method public static open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    .line 88
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_59

    .line 89
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

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    const-string v2, "sh"

    const-string v3, "-c"

    filled-new-array {v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Process;

    .line 92
    sget-object v1, Lcom/gzy/redmiport/PortRuntime;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/gzy/redmiport/PortRuntime$6;

    invoke-direct {v2, p0}, Lcom/gzy/redmiport/PortRuntime$6;-><init>(Ljava/lang/Process;)V

    .line 94
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    const-wide/16 v4, 0x3

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/gzy/redmiport/PortRuntime;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/gzy/redmiport/PortRuntime$7;

    invoke-direct {v3, p0}, Lcom/gzy/redmiport/PortRuntime$7;-><init>(Ljava/lang/Process;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 103
    new-instance v2, Lcom/gzy/redmiport/PortRuntime$8;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Lcom/gzy/redmiport/PortRuntime$8;-><init>(Ljava/io/InputStream;Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Process;)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5a

    return-object v2

    .line 88
    :cond_59
    :goto_59
    return-object v0

    .line 111
    :catchall_5a
    move-exception p0

    const-string v1, "Shizuku shell channel"

    invoke-static {v1, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static requestPermission()V
    .registers 2

    .line 68
    sget-object v0, Lcom/gzy/redmiport/PortRuntime;->foreground:Landroid/app/Activity;

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/gzy/redmiport/PortRuntime;->permissionRequested:Z

    if-eqz v0, :cond_9

    goto :goto_35

    .line 70
    :cond_9
    :try_start_9
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lrikka/shizuku/Shizuku;->isPreV11()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2d

    .line 71
    :cond_16
    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 72
    :cond_1d
    invoke-static {}, Lrikka/shizuku/Shizuku;->shouldShowRequestPermissionRationale()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    .line 73
    :cond_24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gzy/redmiport/PortRuntime;->permissionRequested:Z

    .line 74
    const/16 v0, 0x4b1

    invoke-static {v0}, Lrikka/shizuku/Shizuku;->requestPermission(I)V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2e

    .line 75
    goto :goto_34

    .line 70
    :cond_2d
    :goto_2d
    return-void

    .line 75
    :catchall_2e
    move-exception v0

    const-string v1, "Shizuku authorization"

    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :goto_34
    return-void

    .line 68
    :cond_35
    :goto_35
    return-void
.end method

.method public static resetFps()V
    .registers 3

    .line 113
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

    const-string v0, "\u7b49\u5f85\u6e38\u620f\u5e27\u6570\u636e"

    sput-object v0, Lcom/gzy/redmiport/PortRuntime;->fpsState:Ljava/lang/String;

    return-void
.end method

.method public static sampleFps()J
    .registers 6

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 117
    sget-wide v2, Lcom/gzy/redmiport/PortRuntime;->attemptedAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-ltz v2, :cond_26

    sget-object v2, Lcom/gzy/redmiport/PortRuntime;->sampling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 118
    sput-wide v0, Lcom/gzy/redmiport/PortRuntime;->attemptedAt:J

    .line 119
    sget v2, Lcom/gzy/redmiport/PortRuntime;->epoch:I

    .line 120
    sget-object v3, Lcom/gzy/redmiport/PortRuntime;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/gzy/redmiport/PortRuntime$9;

    invoke-direct {v4, v2}, Lcom/gzy/redmiport/PortRuntime$9;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 146
    :cond_26
    sget-wide v2, Lcom/gzy/redmiport/PortRuntime;->sampledAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3a

    sget-wide v2, Lcom/gzy/redmiport/PortRuntime;->sampledAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xdac

    cmp-long v0, v0, v2

    if-gez v0, :cond_3a

    sget-wide v0, Lcom/gzy/redmiport/PortRuntime;->fps:J

    goto :goto_3c

    :cond_3a
    const-wide/16 v0, -0x1

    :goto_3c
    return-wide v0
.end method
