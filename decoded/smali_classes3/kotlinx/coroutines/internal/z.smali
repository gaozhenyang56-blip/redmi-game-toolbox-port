.class public Lkotlinx/coroutines/internal/z;
.super Llk/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llk/a<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001d\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0012\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0010\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00158@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/z;",
        "T",
        "Llk/a;",
        "Lkotlin/coroutines/jvm/internal/e;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "",
        "state",
        "Loj/t;",
        "G",
        "L0",
        "Ltj/d;",
        "c",
        "Ltj/d;",
        "uCont",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/e;",
        "callerFrame",
        "",
        "k0",
        "()Z",
        "isScopedCoroutine",
        "Llk/s1;",
        "P0",
        "()Llk/s1;",
        "parent",
        "Ltj/g;",
        "context",
        "<init>",
        "(Ltj/g;Ltj/d;)V",
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
.field public final c:Ltj/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltj/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltj/g;Ltj/d;)V
    .locals 1
    .param p1    # Ltj/g;
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
            "Ltj/g;",
            "Ltj/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Llk/a;-><init>(Ltj/g;ZZ)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    return-void
.end method


# virtual methods
.method protected G(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    invoke-static {v0}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    invoke-static {p1, v1}, Llk/a0;->a(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lkotlinx/coroutines/internal/g;->c(Ltj/d;Ljava/lang/Object;Lak/l;ILjava/lang/Object;)V

    return-void
.end method

.method protected L0(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    invoke-static {p1, v0}, Llk/a0;->a(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final P0()Llk/s1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Llk/a2;->e0()Llk/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Llk/r;->getParent()Llk/s1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ltj/d;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final k0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
