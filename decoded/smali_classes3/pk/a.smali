.class public final Lpk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a{\u0010\u000e\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00022\u0006\u0010\u0005\u001a\u00028\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00032%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u001e\u0010\u0011\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u000c0\u00032\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0000\u001a\u001c\u0010\u0013\u001a\u00020\u000c2\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0012\u001a\u00020\u0008H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "R",
        "T",
        "Lkotlin/Function2;",
        "Ltj/d;",
        "",
        "receiver",
        "completion",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "Loj/t;",
        "onCancellation",
        "b",
        "(Lak/p;Ljava/lang/Object;Ltj/d;Lak/l;)V",
        "fatalCompletion",
        "c",
        "e",
        "a",
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
.method private static final a(Ltj/d;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Lak/p;Ljava/lang/Object;Ltj/d;Lak/l;)V
    .locals 0
    .param p0    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "-TT;>;",
            "Lak/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Luj/b;->a(Lak/p;Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p0

    invoke-static {p0}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object p0

    sget-object p1, Loj/m;->b:Loj/m$a;

    sget-object p1, Loj/t;->a:Loj/t;

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/g;->b(Ltj/d;Ljava/lang/Object;Lak/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Lpk/a;->a(Ltj/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Ltj/d;Ltj/d;)V
    .locals 3
    .param p0    # Ltj/d;
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
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;",
            "Ltj/d<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object p0

    sget-object v0, Loj/m;->b:Loj/m$a;

    sget-object v0, Loj/t;->a:Loj/t;

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/g;->c(Ltj/d;Ljava/lang/Object;Lak/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lpk/a;->a(Ltj/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lak/p;Ljava/lang/Object;Ltj/d;Lak/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lpk/a;->b(Lak/p;Ljava/lang/Object;Ltj/d;Lak/l;)V

    return-void
.end method
