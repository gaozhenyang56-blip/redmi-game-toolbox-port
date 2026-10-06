.class public Lpf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lpf/a;->a:Landroid/os/Handler;

    iput-object p1, p0, Lpf/a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lpf/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpf/a;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lpf/a;->c:Z

    if-nez v2, :cond_0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpf/a;->c:Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpf/a;->c:Z

    iget-object v0, p0, Lpf/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lpf/a;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lpf/a;->a:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lpf/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lpf/a;->c:Z

    iget-object v1, p0, Lpf/a;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
