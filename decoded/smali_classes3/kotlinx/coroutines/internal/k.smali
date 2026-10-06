.class public final Lkotlinx/coroutines/internal/k;
.super Llk/d0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Llk/p0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u00032\u00020\u0004B\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0001\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\'\u0010(J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\u0008\u001a\u00020\u00052\n\u0010\u0007\u001a\u00060\u0002j\u0002`\u0003H\u0002J%\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\n\u0010\u0007\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u000c\u001a\u00020\u000bH\u0096\u0001J\u001f\u0010\u0012\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0096\u0001J\u0008\u0010\u0013\u001a\u00020\u0010H\u0016J\u001c\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0010\u0007\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u001c\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\n\u0010\u0007\u001a\u00060\u0002j\u0002`\u0003H\u0017R\u0014\u0010\u0018\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u001e\u0010!\u001a\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010&\u001a\u00060\"j\u0002`#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/k;",
        "Llk/d0;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "Llk/p0;",
        "",
        "Z",
        "block",
        "Y",
        "",
        "timeMillis",
        "Ltj/g;",
        "context",
        "Llk/y0;",
        "t",
        "Llk/l;",
        "Loj/t;",
        "continuation",
        "p",
        "run",
        "L",
        "V",
        "c",
        "Llk/d0;",
        "dispatcher",
        "",
        "d",
        "I",
        "parallelism",
        "runningWorkers",
        "Lkotlinx/coroutines/internal/p;",
        "f",
        "Lkotlinx/coroutines/internal/p;",
        "queue",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "g",
        "Ljava/lang/Object;",
        "workerAllocationLock",
        "<init>",
        "(Llk/d0;I)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final c:Llk/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:I

.field private final synthetic e:Llk/p0;

.field private final f:Lkotlinx/coroutines/internal/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/p<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Llk/d0;I)V
    .locals 0
    .param p1    # Llk/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Llk/d0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->c:Llk/d0;

    iput p2, p0, Lkotlinx/coroutines/internal/k;->d:I

    instance-of p2, p1, Llk/p0;

    if-eqz p2, :cond_0

    check-cast p1, Llk/p0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Llk/o0;->a()Llk/p0;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->e:Llk/p0;

    new-instance p1, Lkotlinx/coroutines/internal/p;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/p;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/internal/p;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->g:Ljava/lang/Object;

    return-void
.end method

.method private final Y(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/p;->a(Ljava/lang/Object;)Z

    iget p1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    iget v0, p0, Lkotlinx/coroutines/internal/k;->d:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final Z()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    iget v2, p0, Lkotlinx/coroutines/internal/k;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    iget v1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public L(Ltj/g;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/k;->Y(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/k;->Z()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->c:Llk/d0;

    invoke-virtual {p1, p0, p0}, Llk/d0;->L(Ltj/g;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public V(Ltj/g;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/k;->Y(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/k;->Z()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->c:Llk/d0;

    invoke-virtual {p1, p0, p0}, Llk/d0;->V(Ltj/g;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public p(JLlk/l;)V
    .locals 1
    .param p3    # Llk/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Llk/l<",
            "-",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->e:Llk/p0;

    invoke-interface {v0, p1, p2, p3}, Llk/p0;->p(JLlk/l;)V

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Ltj/h;->a:Ltj/h;

    invoke-static {v3, v2}, Llk/g0;->a(Ltj/g;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lkotlinx/coroutines/internal/k;->c:Llk/d0;

    invoke-virtual {v2, p0}, Llk/d0;->W(Ltj/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->c:Llk/d0;

    invoke-virtual {v0, p0, p0}, Llk/d0;->L(Ltj/g;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/k;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    iget-object v2, p0, Lkotlinx/coroutines/internal/k;->f:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/p;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    sget-object v2, Loj/t;->a:Loj/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public t(JLjava/lang/Runnable;Ltj/g;)Llk/y0;
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->e:Llk/p0;

    invoke-interface {v0, p1, p2, p3, p4}, Llk/p0;->t(JLjava/lang/Runnable;Ltj/g;)Llk/y0;

    move-result-object p1

    return-object p1
.end method
