.class final Lkotlinx/coroutines/flow/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/a0;
.implements Lkotlinx/coroutines/flow/e;
.implements Lok/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/a0<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/e;",
        "Lok/l<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0008\u0012\u0004\u0012\u00028\u00000\u0004B\u001f\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ!\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ&\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R\u0014\u0010\u0017\u001a\u00028\u00008\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/u;",
        "T",
        "Lkotlinx/coroutines/flow/a0;",
        "",
        "Lok/l;",
        "Lkotlinx/coroutines/flow/f;",
        "collector",
        "",
        "collect",
        "(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;",
        "Ltj/g;",
        "context",
        "",
        "capacity",
        "Lnk/e;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/e;",
        "a",
        "Llk/s1;",
        "Llk/s1;",
        "job",
        "getValue",
        "()Ljava/lang/Object;",
        "value",
        "flow",
        "<init>",
        "(Lkotlinx/coroutines/flow/a0;Llk/s1;)V",
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
.field private final a:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final synthetic b:Lkotlinx/coroutines/flow/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/a0;Llk/s1;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/a0<",
            "+TT;>;",
            "Llk/s1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/flow/u;->a:Llk/s1;

    iput-object p1, p0, Lkotlinx/coroutines/flow/u;->b:Lkotlinx/coroutines/flow/a0;

    return-void
.end method


# virtual methods
.method public a(Ltj/g;ILnk/e;)Lkotlinx/coroutines/flow/e;
    .locals 0
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnk/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/g;",
            "I",
            "Lnk/e;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/c0;->d(Lkotlinx/coroutines/flow/a0;Ltj/g;ILnk/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Ltj/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/u;->b:Lkotlinx/coroutines/flow/a0;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/w;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/u;->b:Lkotlinx/coroutines/flow/a0;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/a0;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
