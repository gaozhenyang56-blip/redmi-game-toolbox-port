.class Ljg/e$f;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ljg/e$f;->a:Ljg/e;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Ljg/e$f;->a:Ljg/e;

    invoke-static {p1}, Ljg/e;->r(Ljg/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-static {}, Lpg/d;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Ljg/e$f;->a:Ljg/e;

    invoke-static {p1}, Ljg/e;->r(Ljg/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljg/e$f;->a:Ljg/e;

    invoke-static {p1}, Ljg/e;->q(Ljg/e;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ljg/e$f$a;

    invoke-direct {v0, p0}, Ljg/e$f$a;-><init>(Ljg/e$f;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
