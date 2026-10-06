.class Lcom/miui/gamebooster/customview/AuditionView$g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/customview/AuditionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:[S

.field private b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private c:Z

.field final synthetic d:Lcom/miui/gamebooster/customview/AuditionView;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->d:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->a:[S

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->v(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/encoder/SoundSupport;

    move-result-object p1

    invoke-static {}, La8/j2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/AuditionView$g;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/encoder/SoundSupport;->setMode(F)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    const-string v0, "original"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "loli"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-string v0, "lady"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-string v0, "men"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const-string v0, "cartoon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const-string v0, "robot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    return p1

    :cond_5
    return v1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->a:[S

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->d:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->v(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/encoder/SoundSupport;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->d:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->v(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/encoder/SoundSupport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/encoder/SoundSupport;->putSamples([S)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->d:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->v(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/encoder/SoundSupport;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->d:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->v(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/encoder/SoundSupport;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/encoder/SoundSupport;->receiveSamples(I)[S

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->d:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v1}, Lcom/miui/gamebooster/customview/AuditionView;->o(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AuditionView"

    const-string v1, "effect samples buffer queue put error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public b([S)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AuditionView"

    const-string v0, "effect buffer queue put error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->c:Z

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->a:[S

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/AuditionView$g;->b([S)V

    return-void
.end method

.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$g;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView$g;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AuditionView"

    const-string v2, "audio effect process buffer error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/AuditionView$g;->e()V

    goto :goto_0
.end method
