.class final Lkotlinx/coroutines/internal/u;
.super Llk/d2;
.source "SourceFile"

# interfaces
.implements Llk/p0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008!\u0010\"J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\n\u0010\r\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010\r\u001a\u00060\u000bj\u0002`\u000cH\u0016J\u001e\u0010\u0014\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/u;",
        "Llk/d2;",
        "Llk/p0;",
        "",
        "b0",
        "Ltj/g;",
        "context",
        "",
        "W",
        "",
        "timeMillis",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Llk/y0;",
        "t",
        "a0",
        "Llk/l;",
        "Loj/t;",
        "continuation",
        "c0",
        "",
        "toString",
        "",
        "c",
        "Ljava/lang/Throwable;",
        "cause",
        "d",
        "Ljava/lang/String;",
        "errorHint",
        "Y",
        "()Llk/d2;",
        "immediate",
        "<init>",
        "(Ljava/lang/Throwable;Ljava/lang/String;)V",
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
.field private final c:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Llk/d2;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/u;->c:Ljava/lang/Throwable;

    iput-object p2, p0, Lkotlinx/coroutines/internal/u;->d:Ljava/lang/String;

    return-void
.end method

.method private final b0()Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/u;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module with the Main dispatcher had failed to initialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lkotlinx/coroutines/internal/u;->c:Ljava/lang/Throwable;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/internal/t;->d()Ljava/lang/Void;

    new-instance v0, Loj/e;

    invoke-direct {v0}, Loj/e;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic L(Ltj/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/u;->a0(Ltj/g;Ljava/lang/Runnable;)Ljava/lang/Void;

    return-void
.end method

.method public W(Ltj/g;)Z
    .locals 0
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->b0()Ljava/lang/Void;

    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method

.method public Y()Llk/d2;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public a0(Ltj/g;Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->b0()Ljava/lang/Void;

    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method

.method public c0(JLlk/l;)Ljava/lang/Void;
    .locals 0
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
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->b0()Ljava/lang/Void;

    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method

.method public bridge synthetic p(JLlk/l;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/u;->c0(JLlk/l;)Ljava/lang/Void;

    return-void
.end method

.method public t(JLjava/lang/Runnable;Ltj/g;)Llk/y0;
    .locals 0
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

    invoke-direct {p0}, Lkotlinx/coroutines/internal/u;->b0()Ljava/lang/Void;

    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatchers.Main[missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/u;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkotlinx/coroutines/internal/u;->c:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
