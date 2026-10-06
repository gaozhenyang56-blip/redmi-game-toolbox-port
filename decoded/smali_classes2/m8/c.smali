.class public Lm8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lm8/b;

.field private b:Ljava/lang/Long;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z


# direct methods
.method public constructor <init>(Lm8/b;Ljava/lang/Long;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lm8/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lm8/c;->a:Lm8/b;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lm8/c;->b:Ljava/lang/Long;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lm8/c;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, La8/g0;->H()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lm8/c;->e:Z

    return-void
.end method

.method static synthetic a(Lm8/c;)Z
    .locals 0

    iget-boolean p0, p0, Lm8/c;->e:Z

    return p0
.end method

.method static synthetic b(Lm8/c;I)I
    .locals 0

    invoke-direct {p0, p1}, Lm8/c;->g(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lm8/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lm8/c;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private g(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lm8/c;->a:Lm8/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lm8/c$a;

    invoke-direct {v0, p0}, Lm8/c$a;-><init>(Lm8/c;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lm8/c;->a:Lm8/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Landroid/util/Pair;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast p1, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lm8/b;->c(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lc7/b;->b(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lm8/c;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    iget-object v1, p0, Lm8/c;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lm8/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lm8/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lm8/c;->a:Lm8/b;

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lm8/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lm8/c;->e:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lm8/c;->i(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lm8/c;->h()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
