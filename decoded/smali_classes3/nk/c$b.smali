.class public final Lnk/c$b;
.super Lkotlinx/coroutines/internal/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnk/c;->f(Lnk/y;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "nk/c$b",
        "Lkotlinx/coroutines/internal/o$a;",
        "Lkotlinx/coroutines/internal/o;",
        "Lkotlinx/coroutines/internal/Node;",
        "affected",
        "",
        "i",
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
.field final synthetic d:Lnk/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/o;Lnk/c;)V
    .locals 0

    iput-object p2, p0, Lnk/c$b;->d:Lnk/c;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/o$a;-><init>(Lkotlinx/coroutines/internal/o;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/o;

    invoke-virtual {p0, p1}, Lnk/c$b;->i(Lkotlinx/coroutines/internal/o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lkotlinx/coroutines/internal/o;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Lnk/c$b;->d:Lnk/c;

    invoke-virtual {p1}, Lnk/c;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/n;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
