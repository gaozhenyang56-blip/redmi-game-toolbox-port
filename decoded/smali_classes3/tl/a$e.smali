.class Ltl/a$e;
.super Ltl/a$c;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x21
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Landroid/view/Choreographer;

.field private final c:Landroid/os/Looper;

.field private d:J

.field private final e:Landroid/view/Choreographer$VsyncCallback;

.field private final f:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Ltl/a$a;)V
    .locals 2

    invoke-direct {p0, p1}, Ltl/a$c;-><init>(Ltl/a$a;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Ltl/a$e;->b:Landroid/view/Choreographer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Ltl/a$e;->c:Landroid/os/Looper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltl/a$e;->d:J

    new-instance p1, Ltl/a$e$a;

    invoke-direct {p1, p0}, Ltl/a$e$a;-><init>(Ltl/a$e;)V

    iput-object p1, p0, Ltl/a$e;->e:Landroid/view/Choreographer$VsyncCallback;

    new-instance p1, Ltl/a$e$b;

    invoke-direct {p1, p0}, Ltl/a$e$b;-><init>(Ltl/a$e;)V

    iput-object p1, p0, Ltl/a$e;->f:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method static synthetic e(Ltl/a$e;J)J
    .locals 0

    iput-wide p1, p0, Ltl/a$e;->d:J

    return-wide p1
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Ltl/a$e;->d:J

    return-wide v0
.end method

.method b()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ltl/a$e;->c:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Ltl/a$e;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Ltl/a$e;->e:Landroid/view/Choreographer$VsyncCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V

    iget-object v0, p0, Ltl/a$e;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Ltl/a$e;->f:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Ltl/a$e;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Ltl/a$e;->e:Landroid/view/Choreographer$VsyncCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V

    return-void
.end method
