.class public Lrf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/c;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lwf/b;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Z


# direct methods
.method public constructor <init>(Lwf/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrf/b;->b:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrf/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "GroupFinishOptimizeCallBack"

    const-string v1, "GroupFinishOptimizeCallBack onMemoryOptimizeFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lrf/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lwf/b;->U()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "GroupFinishOptimizeCallBack"

    const-string v1, "GroupFinishOptimizeCallBack onSystemAppOptimizeFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lrf/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lrf/b;->b:Z

    invoke-interface {v0}, Lwf/b;->P()V

    :cond_0
    return-void
.end method
