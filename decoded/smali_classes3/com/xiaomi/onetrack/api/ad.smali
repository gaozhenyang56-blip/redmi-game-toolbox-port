.class public Lcom/xiaomi/onetrack/api/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/ad$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BroadcastManager"

.field private static b:Ljava/lang/String; = "onetrack_broadcast_manager"

.field private static volatile c:Lcom/xiaomi/onetrack/api/ad; = null

.field private static final e:I = 0xa

.field private static final f:I = 0x64

.field private static final g:I = 0x65

.field private static volatile h:Z

.field private static volatile j:Z


# instance fields
.field private d:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/api/ak;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Z

.field private m:Z

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/ad;->l:Z

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/ad;->m:Z

    new-instance v0, Lcom/xiaomi/onetrack/api/ae;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ae;-><init>(Lcom/xiaomi/onetrack/api/ad;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->n:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/xiaomi/onetrack/api/af;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/af;-><init>(Lcom/xiaomi/onetrack/api/ad;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->o:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/xiaomi/onetrack/api/ad;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/xiaomi/onetrack/api/ad$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/xiaomi/onetrack/api/ad$a;-><init>(Lcom/xiaomi/onetrack/api/ad;Landroid/os/Looper;Lcom/xiaomi/onetrack/api/ae;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/ad;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/api/ad;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/api/ad;->c:Lcom/xiaomi/onetrack/api/ad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/api/ad;->b()V

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/api/ad;->c:Lcom/xiaomi/onetrack/api/ad;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/onetrack/api/ak;

    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2}, Lcom/xiaomi/onetrack/api/ak;->a(Z)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/api/ad;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/ad;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/api/ad;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ad;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/api/ad;->c:Lcom/xiaomi/onetrack/api/ad;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/onetrack/api/ad;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/api/ad;->c:Lcom/xiaomi/onetrack/api/ad;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/onetrack/api/ad;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/ad;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/api/ad;->c:Lcom/xiaomi/onetrack/api/ad;

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
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/api/ad;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/ad;->l:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/api/ad;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/ad;->m:Z

    return p0
.end method

.method private g()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "BroadcastManager"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register screen receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "BroadcastManager"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register net receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/onetrack/api/ak;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/ad;->l:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/ad;->m:Z

    return-void
.end method

.method public e()V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/onetrack/api/ad;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/onetrack/api/ad;->h:Z

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ad;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/onetrack/api/ad;->h:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/onetrack/api/ad;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/onetrack/api/ad;->j:Z

    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get network status for the first time, isNetworkConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastManager"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/n;->b(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ad;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/onetrack/api/ad;->j:Z

    :cond_0
    :goto_0
    return-void
.end method
