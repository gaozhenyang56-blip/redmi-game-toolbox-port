.class public final Lcom/miui/securityscan/scanner/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/o$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVirusScanManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirusScanManager.kt\ncom/miui/securityscan/scanner/VirusScanManager\n+ 2 Cursor.kt\nandroidx/core/database/CursorKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,685:1\n73#2:686\n515#3:687\n500#3,6:688\n*S KotlinDebug\n*F\n+ 1 VirusScanManager.kt\ncom/miui/securityscan/scanner/VirusScanManager\n*L\n321#1:686\n653#1:687\n653#1:688,6\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lcom/miui/securityscan/scanner/o$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final p:Loj/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loj/f<",
            "Lcom/miui/securityscan/scanner/o;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final s:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final t:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final u:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Z

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lcom/miui/securityscan/scanner/o$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private l:Landroid/os/HandlerThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/scanner/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/securityscan/scanner/o$b;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    sget-object v0, Loj/j;->a:Loj/j;

    sget-object v1, Lcom/miui/securityscan/scanner/o$a;->a:Lcom/miui/securityscan/scanner/o$a;

    invoke-static {v0, v1}, Loj/g;->b(Loj/j;Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/scanner/o;->p:Loj/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArrayList<String>().run \u2026nizedList(this)\n        }"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/securityscan/scanner/o;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/o;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/o;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/o;->t:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/o;->u:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lzf/n;

    invoke-direct {v9}, Lzf/n;-><init>()V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lzf/o;

    invoke-direct {v0, p0}, Lzf/o;-><init>(Lcom/miui/securityscan/scanner/o;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/securityscan/scanner/o$c;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/o$c;-><init>(Lcom/miui/securityscan/scanner/o;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->j:Lcom/miui/securityscan/scanner/o$c;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lzf/p;

    invoke-direct {v2, p0}, Lzf/p;-><init>(Lcom/miui/securityscan/scanner/o;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    new-instance v0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;-><init>(Lrf/e;ILbk/g;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    return-void
.end method

.method private static final B(Lcom/miui/securityscan/scanner/o;Landroid/os/Message;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const-string v2, "null cannot be cast to non-null type com.miui.securityscan.callback.ItemCallbackInterface.ModelScanCallback"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v3, p0, Lcom/miui/securityscan/scanner/o;->a:Z

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lcom/miui/securityscan/scanner/o;->u:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_2

    :goto_0
    invoke-static {p0, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lrf/e;

    invoke-interface {p0}, Lrf/e;->e()V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private final G(ZJ)Z
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lx4/y;->s()Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lsl/a;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final H(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "thread-incremental"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final I(Lcom/miui/securityscan/scanner/o;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_test_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock screen prepare start full scan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusScanManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    const-string v0, "key_full_scan_time"

    invoke-static {v0, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v0, 0x1

    const-string v4, "key_incremental_frequency"

    invoke-static {v4, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    int-to-long v2, v0

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    const-string p0, "can not start full scan because threshold"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/miui/securityscan/scanner/o$d;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/o$d;-><init>(Lcom/miui/securityscan/scanner/o;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/scanner/o;->N(Lrf/e;)V

    return-void
.end method

.method private final J(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->l:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "full-scan-receiver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/securityscan/scanner/o;->m:Landroid/os/Handler;

    iput-object v1, p0, Lcom/miui/securityscan/scanner/o;->l:Landroid/os/HandlerThread;

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/securityscan/scanner/o;->j:Lcom/miui/securityscan/scanner/o$c;

    const/4 v3, 0x4

    invoke-static {p1, v2, v1, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/securityscan/scanner/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Loj/t;->a:Loj/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private static final P(Lcom/miui/securityscan/scanner/o;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    new-instance v1, Lzf/r;

    invoke-direct {v1, p0}, Lzf/r;-><init>(Lcom/miui/securityscan/scanner/o;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    return-void
.end method

.method private static final Q(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lzf/s;

    invoke-direct {v1, p0, p1}, Lzf/s;-><init>(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final R(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.getVersion()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/scanner/o;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    invoke-static {}, Lo2/h;->w()Z

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v0, p0, v1, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->y6([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;ZI)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    invoke-static {}, Lo2/h;->w()Z

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->J1(Lcom/miui/guardprovider/aidl/IVirusObserver;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VirusScanManager"

    const-string v0, "incremental scan error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final S()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->j:Lcom/miui/securityscan/scanner/o$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/scanner/o;->Q(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/securityscan/scanner/o;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/scanner/o;->I(Lcom/miui/securityscan/scanner/o;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/securityscan/scanner/o;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/scanner/o;->B(Lcom/miui/securityscan/scanner/o;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/scanner/o;->H(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/scanner/o;->R(Lcom/miui/securityscan/scanner/o;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/securityscan/scanner/o;Lak/l;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/scanner/o;->u(Lcom/miui/securityscan/scanner/o;Lak/l;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/securityscan/scanner/o;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/scanner/o;->P(Lcom/miui/securityscan/scanner/o;)V

    return-void
.end method

.method public static final synthetic h()Loj/f;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->p:Loj/f;

    return-object v0
.end method

.method public static final synthetic i()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic j()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->q:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic k(Lcom/miui/securityscan/scanner/o;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/o;->m:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic l(Lcom/miui/securityscan/scanner/o;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/o;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic m()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->u:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static final synthetic n()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->t:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static final synthetic o()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic t(Lcom/miui/securityscan/scanner/o;Lak/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/securityscan/scanner/o;->s(Lak/l;)V

    return-void
.end method

.method private static final u(Lcom/miui/securityscan/scanner/o;Lak/l;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    const-string v0, "VirusScanManager"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->K0()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "checkGuardSupport exp"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/securityscan/scanner/o;->L(Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p2

    invoke-virtual {p2}, Lp9/a;->m()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkGuardSupport--preCheckSupport is true--isGuardSupport: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final x()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/scanner/o;->y(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/o;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v1, Lcom/miui/securityscan/scanner/o;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v1, Lcom/miui/securityscan/scanner/o;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_2

    sget-object v2, Lcom/miui/securityscan/scanner/o;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/miui/securityscan/scanner/o;->u:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-wide/16 v1, -0x1

    const-string v3, "full_scan"

    invoke-static {v3, v1, v2}, Lqf/c;->Q0(Ljava/lang/String;J)V

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/miui/securityscan/scanner/o;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final A()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final C(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "version"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "It\'s nothing"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "1"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final D()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final E()Z
    .locals 2

    const-string v0, "key_is_guard_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final F()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final K()V
    .locals 3

    const-string v0, "VirusScanManager"

    const-string v1, "resetScanState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/o;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->R0([Lcom/miui/guardprovider/aidl/VirusInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/scanner/o;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "key_full_scan_time"

    invoke-static {v2, v0, v1}, Lr4/a;->q(Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo2/h;->K(J)V

    sget-object v0, Lcom/miui/securityscan/scanner/o;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public final L(Z)V
    .locals 1

    const-string v0, "key_is_guard_support"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public final M(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/scanner/o;->a:Z

    return-void
.end method

.method public final N(Lrf/e;)V
    .locals 9
    .param p1    # Lrf/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre start Full scan: support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTestNew: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securityscan/scanner/o;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFullScanning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusScanManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/o;->e:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "startFullScan return when scanRunnable removed"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/o;->x()Ljava/util/Map;

    move-result-object v6

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-string v1, "handler.obtainMessage(KE\u2026L_SCAN_WATCHER, callback)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/scanner/m;->g(Landroid/content/Context;)Lcom/miui/securityscan/scanner/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lo2/h;->w()Z

    move-result v5

    const/4 v8, 0x4

    const-string v7, "SCREENOFF_FULLSCAN"

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/miui/securityscan/scanner/m;->n(ZLrf/e;ZLjava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public final O(Lrf/e;)V
    .locals 3
    .param p1    # Lrf/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->t8(Lrf/e;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->s8(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare to start incrementalScan, isIncremental: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/securityscan/scanner/o;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusScanManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/o;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->r8(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/o;->a:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lzf/q;

    invoke-direct {v1, p0}, Lzf/q;-><init>(Lcom/miui/securityscan/scanner/o;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-string v0, "handler.obtainMessage(KE\u2026L_SCAN_WATCHER, callback)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "VirusScanManager"

    if-eqz v0, :cond_0

    const-string v0, "prepare to cancel full scan"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/scanner/m;->g(Landroid/content/Context;)Lcom/miui/securityscan/scanner/m;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/securityscan/scanner/o;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/m;->e(I)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v0, "prepare to cancel scanRunnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->m:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/o;->a:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->n:Lcom/miui/securityscan/scanner/IncrementalScanObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->r8(Z)V

    return-void
.end method

.method public final r()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/miui/securityscan/scanner/o;->t(Lcom/miui/securityscan/scanner/o;Lak/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final s(Lak/l;)V
    .locals 8
    .param p1    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://guard/support_incremental"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "VirusScanManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "support"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v4, :cond_2

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGuardSupportIncremental: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "key_test_type"

    invoke-static {v0, v3}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Lcom/miui/securityscan/scanner/o;->e:Z

    const-wide/16 v4, -0x1

    const-string v6, "key_full_scan_time"

    invoke-static {v6, v4, v5}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    sget-boolean v6, Lsl/a;->a:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/miui/securityscan/scanner/o;->e:Z

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    const-string v7, "getInstance()"

    invoke-static {v6, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/miui/securityscan/scanner/o;->J(Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/miui/securityscan/scanner/o;->S()V

    :goto_3
    if-ne v0, v2, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_4
    invoke-direct {p0, v2, v4, v5}, Lcom/miui/securityscan/scanner/o;->G(ZJ)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre check testType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isIncrementalSupport: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    new-instance v1, Lzf/m;

    invoke-direct {v1, p0, p1}, Lzf/m;-><init>(Lcom/miui/securityscan/scanner/o;Lak/l;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v3}, Lcom/miui/securityscan/scanner/o;->L(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGuardSupport--preCheckSupport is false--isGuardSupport: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    return-void
.end method

.method public final v(Z)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "key_test_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exchangeScanType currentType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirusScanManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p1, :cond_0

    invoke-static {v0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/miui/securityscan/scanner/o;->t(Lcom/miui/securityscan/scanner/o;Lak/l;ILjava/lang/Object;)V

    :cond_0
    const-wide/16 v0, -0x1

    const-string p1, "key_full_scan_time"

    invoke-static {p1, v0, v1}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/miui/securityscan/scanner/o;->e:Z

    if-eqz p1, :cond_1

    const-string p1, "abtest_new"

    goto :goto_0

    :cond_1
    const-string p1, "abtest_old"

    :goto_0
    iget-object v2, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {p1, v2, v0, v1}, Lqf/c;->P0(Ljava/lang/String;ZJ)V

    iget-object p1, p0, Lcom/miui/securityscan/scanner/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/securityscan/scanner/o;->e:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/securityscan/scanner/o;->G(ZJ)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/o;->E()Z

    move-result p1

    invoke-static {p1}, Lqf/c;->b1(Z)V

    :cond_2
    return-void
.end method

.method public final w(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "run"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VirusScanManager"

    const-string v1, "getAllScanAppPaths start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v2

    invoke-virtual {v2}, Li4/a;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/antivirus/model/i;

    invoke-direct {v4}, Lcom/miui/antivirus/model/i;-><init>()V

    sget-object v5, Lo2/b$c;->a:Lo2/b$c;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->o(Lo2/b$c;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->m(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v5}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->k(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->r(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v5, "appInfo.sourceDir"

    invoke-static {v3, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    const-string v2, "getAllScanAppPaths start apks"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    :try_start_0
    const-string v5, "external"

    const-string v6, "_data"

    const-string v7, "date_modified"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data LIKE \'%.apk\'"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/miui/securityscan/scanner/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_5
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lx4/f1;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance v6, Lcom/miui/antivirus/model/i;

    invoke-direct {v6}, Lcom/miui/antivirus/model/i;-><init>()V

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/antivirus/model/i;->k(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/miui/antivirus/model/i;->m(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/miui/antivirus/model/i;->r(Ljava/lang/String;)V

    sget-object v5, Lo2/b$c;->b:Lo2/b$c;

    invoke-virtual {v6, v5}, Lcom/miui/antivirus/model/i;->o(Lo2/b$c;)V

    const-string v5, "absolutePath"

    invoke-static {v4, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    const-string v3, "getAllScanAppPaths Exception"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_2
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    const-string p1, "getAllScanAppPaths end"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :goto_3
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final z()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->k:Landroid/os/Handler;

    return-object v0
.end method
