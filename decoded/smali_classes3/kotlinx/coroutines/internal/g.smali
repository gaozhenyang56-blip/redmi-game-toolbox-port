.class public final Lkotlinx/coroutines/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001aW\u0010\u000b\u001a\u00020\t\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022%\u0008\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\u0012\u0010\u000f\u001a\u00020\u000e*\u0008\u0012\u0004\u0012\u00020\t0\rH\u0000\"\u001a\u0010\u0015\u001a\u00020\u00108\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u0012\u0004\u0008\u0013\u0010\u0014\"\u001a\u0010\u0017\u001a\u00020\u00108\u0000X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0012\u0012\u0004\u0008\u0016\u0010\u0014\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "T",
        "Ltj/d;",
        "Loj/m;",
        "result",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "Loj/t;",
        "onCancellation",
        "b",
        "(Ltj/d;Ljava/lang/Object;Lak/l;)V",
        "Lkotlinx/coroutines/internal/f;",
        "",
        "d",
        "Lkotlinx/coroutines/internal/b0;",
        "a",
        "Lkotlinx/coroutines/internal/b0;",
        "getUNDEFINED$annotations",
        "()V",
        "UNDEFINED",
        "getREUSABLE_CLAIMED$annotations",
        "REUSABLE_CLAIMED",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final a:Lkotlinx/coroutines/internal/b0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lkotlinx/coroutines/internal/b0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->b:Lkotlinx/coroutines/internal/b0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final b(Ltj/d;Ljava/lang/Object;Lak/l;)V
    .locals 6
    .param p0    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ltj/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lak/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-eqz v0, :cond_8

    check-cast p0, Lkotlinx/coroutines/internal/f;

    invoke-static {p1, p2}, Llk/a0;->b(Ljava/lang/Object;Lak/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/internal/f;->d:Llk/d0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Ltj/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Llk/d0;->W(Ltj/g;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->f:Ljava/lang/Object;

    iput v1, p0, Llk/t0;->c:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/f;->d:Llk/d0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Ltj/g;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Llk/d0;->L(Ltj/g;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v0, Llk/p2;->a:Llk/p2;

    invoke-virtual {v0}, Llk/p2;->a()Llk/c1;

    move-result-object v0

    invoke-virtual {v0}, Llk/c1;->e0()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->f:Ljava/lang/Object;

    iput v1, p0, Llk/t0;->c:I

    invoke-virtual {v0, p0}, Llk/c1;->a0(Llk/t0;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v1}, Llk/c1;->c0(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Ltj/g;

    move-result-object v3

    sget-object v4, Llk/s1;->c0:Llk/s1$b;

    invoke-interface {v3, v4}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v3

    check-cast v3, Llk/s1;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Llk/s1;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Llk/s1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/internal/f;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Loj/m;->b:Loj/m$a;

    invoke-static {v3}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_7

    iget-object p2, p0, Lkotlinx/coroutines/internal/f;->e:Ltj/d;

    iget-object v3, p0, Lkotlinx/coroutines/internal/f;->g:Ljava/lang/Object;

    invoke-interface {p2}, Ltj/d;->getContext()Ltj/g;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v3, v5, :cond_3

    invoke-static {p2, v4, v3}, Llk/c0;->g(Ltj/d;Ltj/g;Ljava/lang/Object;)Llk/u2;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/f;->e:Ltj/d;

    invoke-interface {v5, p1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Loj/t;->a:Loj/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, Llk/u2;->Q0()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Llk/u2;->Q0()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    :cond_6
    throw p1

    :cond_7
    :goto_2
    invoke-virtual {v0}, Llk/c1;->g0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_7

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1, v2}, Llk/t0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    invoke-virtual {v0, v1}, Llk/c1;->Y(Z)V

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Llk/c1;->Y(Z)V

    throw p0

    :cond_8
    invoke-interface {p0, p1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic c(Ltj/d;Ljava/lang/Object;Lak/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/g;->b(Ltj/d;Ljava/lang/Object;Lak/l;)V

    return-void
.end method

.method public static final d(Lkotlinx/coroutines/internal/f;)Z
    .locals 5
    .param p0    # Lkotlinx/coroutines/internal/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/f<",
            "-",
            "Loj/t;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Loj/t;->a:Loj/t;

    sget-object v1, Llk/p2;->a:Llk/p2;

    invoke-virtual {v1}, Llk/p2;->a()Llk/c1;

    move-result-object v1

    invoke-virtual {v1}, Llk/c1;->f0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Llk/c1;->e0()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-object v0, p0, Lkotlinx/coroutines/internal/f;->f:Ljava/lang/Object;

    iput v4, p0, Llk/t0;->c:I

    invoke-virtual {v1, p0}, Llk/c1;->a0(Llk/t0;)V

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Llk/c1;->c0(Z)V

    :try_start_0
    invoke-virtual {p0}, Llk/t0;->run()V

    :cond_2
    invoke-virtual {v1}, Llk/c1;->g0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2}, Llk/t0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-virtual {v1, v4}, Llk/c1;->Y(Z)V

    :goto_1
    return v3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, Llk/c1;->Y(Z)V

    throw p0
.end method
