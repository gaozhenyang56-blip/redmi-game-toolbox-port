.class public final Llk/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "lk/x1",
        "lk/y1"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Llk/s1;)Llk/u;
    .locals 0
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Llk/y1;->a(Llk/s1;)Llk/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Llk/s1;ILjava/lang/Object;)Llk/u;
    .locals 0

    invoke-static {p0, p1, p2}, Llk/y1;->b(Llk/s1;ILjava/lang/Object;)Llk/u;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ltj/g;Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Llk/y1;->c(Ltj/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic d(Ltj/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Llk/y1;->d(Ltj/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Llk/s1;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/s1;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Llk/y1;->e(Llk/s1;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Llk/l;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p0    # Llk/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/l<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Llk/x1;->a(Llk/l;Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static final g(Llk/s1;Llk/y0;)Llk/y0;
    .locals 0
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llk/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Llk/y1;->f(Llk/s1;Llk/y0;)Llk/y0;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Llk/s1;)V
    .locals 0
    .param p0    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Llk/y1;->g(Llk/s1;)V

    return-void
.end method

.method public static final i(Ltj/g;)V
    .locals 0
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Llk/y1;->h(Ltj/g;)V

    return-void
.end method
