.class public final Lnk/m;
.super Lnk/y;
.source "SourceFile"

# interfaces
.implements Lnk/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lnk/y;",
        "Lnk/w<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000f\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008 \u0010!J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00028\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\n\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0014\u0010\u0010\u001a\u00020\u00082\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0019\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0001\u0010\u001cR\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lnk/m;",
        "E",
        "Lnk/y;",
        "Lnk/w;",
        "Lkotlinx/coroutines/internal/o$b;",
        "otherOp",
        "Lkotlinx/coroutines/internal/b0;",
        "C",
        "Loj/t;",
        "z",
        "value",
        "g",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;",
        "f",
        "(Ljava/lang/Object;)V",
        "closed",
        "B",
        "",
        "toString",
        "",
        "d",
        "Ljava/lang/Throwable;",
        "closeCause",
        "H",
        "()Ljava/lang/Throwable;",
        "sendException",
        "G",
        "receiveException",
        "()Lnk/m;",
        "offerResult",
        "F",
        "pollResult",
        "<init>",
        "(Ljava/lang/Throwable;)V",
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
.field public final d:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lnk/y;-><init>()V

    iput-object p1, p0, Lnk/m;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public bridge synthetic A()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnk/m;->F()Lnk/m;

    move-result-object v0

    return-object v0
.end method

.method public B(Lnk/m;)V
    .locals 0
    .param p1    # Lnk/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk/m<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public C(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/o$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Llk/n;->a:Lkotlinx/coroutines/internal/b0;

    return-object p1
.end method

.method public E()Lnk/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnk/m<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public F()Lnk/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnk/m<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final G()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnk/m;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lnk/n;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lnk/n;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final H()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnk/m;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lnk/o;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lnk/o;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnk/m;->E()Lnk/m;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .locals 0
    .param p2    # Lkotlinx/coroutines/internal/o$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/o$b;",
            ")",
            "Lkotlinx/coroutines/internal/b0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Llk/n;->a:Lkotlinx/coroutines/internal/b0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Llk/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnk/m;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 0

    return-void
.end method
