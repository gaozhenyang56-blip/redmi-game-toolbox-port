.class public Lcom/xiaomi/security/xsof/MiSafetyDetectService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;,
        Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lij/d;

.field private c:Lej/b;

.field private d:Lhj/b;

.field private e:Landroid/os/HandlerThread;

.field private f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->g:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)Lij/d;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->b:Lij/d;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->m()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->l(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/security/xsof/MiSafetyDetectService;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->h(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Ldj/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->n(Ldj/a;)V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lfj/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x3f2

    if-eq p2, p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Authentication failed, ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Mi-SDS"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p2
.end method

.method private h(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(Ljava/lang/String;I)Z
    .locals 5

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x3e8

    cmp-long p1, v1, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private j()Z
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return v4

    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0xea60

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0
.end method

.method private k(Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->i(Ljava/lang/String;I)Z

    move-result p2

    const-string v0, "Mi-SDS"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The package ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] calls the api frequently, retries late!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3ef

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "internal error , service is busy, retries late!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3f8

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private l(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p1, Ldj/a;

    const-string v1, "Mi-SDS"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error, task type : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    check-cast p1, Ldj/a;

    invoke-virtual {p1}, Ldj/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Task , reason:  [canceled, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Ldj/a;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v0, p1, Ldj/a;->a:I

    invoke-virtual {p1}, Ldj/a;->a()Lgj/a;

    move-result-object v1

    invoke-virtual {v1}, Lgj/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->k(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2, v3}, Ldj/a;->c(Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lgj/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lgj/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lgj/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3f4

    if-ne v1, v3, :cond_4

    const-wide/16 v0, 0xc8

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->o(Ldj/a;J)V

    return-void

    :cond_4
    const/16 v3, 0x3f2

    if-eq v1, v3, :cond_5

    invoke-virtual {p1, v2, v1}, Ldj/a;->c(Ljava/lang/String;I)V

    return-void

    :cond_5
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->d:Lhj/b;

    invoke-virtual {v0, p1}, Lhj/b;->b(Ldj/a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->c:Lej/b;

    invoke-virtual {v0, p1}, Lej/b;->b(Ldj/a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->b:Lij/d;

    invoke-virtual {v0, p1}, Lij/d;->k(Ldj/a;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private n(Ldj/a;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->o(Ldj/a;J)V

    return-void
.end method

.method private o(Ldj/a;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    if-nez v0, :cond_0

    const-string p1, "Mi-SDS"

    const-string p2, "sendMessageDelayed: mWorkHandler is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Ldj/a;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mi-SDS"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;

    invoke-direct {p1, p0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$MiSafetyDetectImpl;-><init>(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lij/d;

    invoke-direct {v0, p0}, Lij/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->b:Lij/d;

    new-instance v0, Lej/b;

    invoke-direct {v0, p0}, Lej/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->c:Lej/b;

    new-instance v0, Lhj/b;

    invoke-direct {v0, p0}, Lhj/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->d:Lhj/b;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiSafetyDetectService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    iget-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;-><init>(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    const-string v0, "Mi-SDS"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->b:Lij/d;

    invoke-virtual {v0}, Lij/d;->t()V

    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->f:Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;

    :cond_1
    const-string v0, "Mi-SDS"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mi-SDS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
