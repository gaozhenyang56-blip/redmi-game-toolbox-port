.class public Lnk/q;
.super Lnk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lnk/a<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012 \u0010\u001b\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0019j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J/\u0010\r\u001a\u00020\u000c2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0014\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0011\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001e"
    }
    d2 = {
        "Lnk/q;",
        "E",
        "Lnk/a;",
        "element",
        "",
        "y",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/internal/j;",
        "Lnk/y;",
        "list",
        "Lnk/m;",
        "closed",
        "Loj/t;",
        "N",
        "(Ljava/lang/Object;Lnk/m;)V",
        "",
        "J",
        "()Z",
        "isBufferAlwaysEmpty",
        "K",
        "isBufferEmpty",
        "s",
        "isBufferAlwaysFull",
        "v",
        "isBufferFull",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "(Lak/l;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lak/l;)V
    .locals 0
    .param p1    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/l<",
            "-TE;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnk/a;-><init>(Lak/l;)V

    return-void
.end method


# virtual methods
.method protected final J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected N(Ljava/lang/Object;Lnk/m;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnk/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnk/m<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    check-cast p1, Lnk/y;

    instance-of v1, p1, Lnk/c$a;

    if-eqz v1, :cond_0

    iget-object p2, p0, Lnk/c;->a:Lak/l;

    if-eqz p2, :cond_5

    check-cast p1, Lnk/c$a;

    iget-object p1, p1, Lnk/c$a;->d:Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/internal/v;->c(Lak/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/j0;)Lkotlinx/coroutines/internal/j0;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p2}, Lnk/y;->B(Lnk/m;)V

    goto :goto_2

    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnk/y;

    instance-of v4, v3, Lnk/c$a;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnk/c;->a:Lak/l;

    if-eqz v4, :cond_2

    check-cast v3, Lnk/c$a;

    iget-object v3, v3, Lnk/c$a;->d:Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lkotlinx/coroutines/internal/v;->c(Lak/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/j0;)Lkotlinx/coroutines/internal/j0;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p2}, Lnk/y;->B(Lnk/m;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    move-object v0, v2

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    return-void

    :cond_6
    throw v0
.end method

.method protected final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    :cond_0
    invoke-super {p0, p1}, Lnk/c;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnk/b;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v1, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lnk/b;->c:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, p1}, Lnk/c;->A(Ljava/lang/Object;)Lnk/w;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    instance-of v1, v0, Lnk/m;

    if-eqz v1, :cond_0

    return-object v0

    :cond_3
    instance-of p1, v0, Lnk/m;

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offerInternal result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
