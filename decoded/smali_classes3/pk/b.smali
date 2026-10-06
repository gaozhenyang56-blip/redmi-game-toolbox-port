.class public final Lpk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aT\u0010\u0008\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00022\u0006\u0010\u0005\u001a\u00028\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a[\u0010\r\u001a\u0004\u0018\u00010\u0004\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0005\u001a\u00028\u00012\'\u0010\u000c\u001a#\u0008\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002\u00a2\u0006\u0002\u0008\u000bH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001a[\u0010\u000f\u001a\u0004\u0018\u00010\u0004\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0005\u001a\u00028\u00012\'\u0010\u000c\u001a#\u0008\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002\u00a2\u0006\u0002\u0008\u000bH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "R",
        "T",
        "Lkotlin/Function2;",
        "Ltj/d;",
        "",
        "receiver",
        "completion",
        "Loj/t;",
        "a",
        "(Lak/p;Ljava/lang/Object;Ltj/d;)V",
        "Lkotlinx/coroutines/internal/z;",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "b",
        "(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Lak/p;)Ljava/lang/Object;",
        "c",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lak/p;Ljava/lang/Object;Ltj/d;)V
    .locals 3
    .param p0    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lak/p<",
            "-TR;-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ltj/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->a(Ltj/d;)Ltj/d;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Ltj/d;->getContext()Ltj/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/f0;->c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    :try_start_1
    invoke-static {p0, v2}, Lbk/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lak/p;

    invoke-interface {p0, p1, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/f0;->a(Ltj/g;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Loj/m;->b:Loj/m$a;

    invoke-static {p0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Lak/p;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlinx/coroutines/internal/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/z<",
            "-TT;>;TR;",
            "Lak/p<",
            "-TR;-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Lbk/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lak/p;

    invoke-interface {p2, p1, p0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Llk/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Llk/w;-><init>(Ljava/lang/Throwable;ZILbk/g;)V

    move-object p1, p2

    :goto_0
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    :goto_1
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Llk/a2;->o0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Llk/b2;->b:Lkotlinx/coroutines/internal/b0;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p0, Llk/w;

    if-nez p1, :cond_2

    invoke-static {p0}, Llk/b2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_2
    check-cast p0, Llk/w;

    iget-object p0, p0, Llk/w;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final c(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Lak/p;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlinx/coroutines/internal/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/z<",
            "-TT;>;TR;",
            "Lak/p<",
            "-TR;-",
            "Ltj/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p2, v1}, Lbk/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lak/p;

    invoke-interface {p2, p1, p0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Llk/w;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v1, v2}, Llk/w;-><init>(Ljava/lang/Throwable;ZILbk/g;)V

    move-object p1, p2

    :goto_0
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    :goto_1
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Llk/a2;->o0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Llk/b2;->b:Lkotlinx/coroutines/internal/b0;

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, p2, Llk/w;

    if-eqz v1, :cond_6

    check-cast p2, Llk/w;

    iget-object p2, p2, Llk/w;->a:Ljava/lang/Throwable;

    instance-of v1, p2, Llk/q2;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Llk/q2;

    iget-object v1, v1, Llk/q2;->a:Llk/s1;

    if-eq v1, p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_5

    instance-of p0, p1, Llk/w;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    check-cast p1, Llk/w;

    iget-object p0, p1, Llk/w;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    throw p2

    :cond_6
    invoke-static {p2}, Llk/b2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object p0, p1

    :goto_3
    return-object p0
.end method
