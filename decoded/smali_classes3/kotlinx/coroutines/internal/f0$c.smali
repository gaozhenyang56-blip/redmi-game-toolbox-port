.class final Lkotlinx/coroutines/internal/f0$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Lkotlinx/coroutines/internal/i0;",
        "Ltj/g$b;",
        "Lkotlinx/coroutines/internal/i0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/i0;",
        "state",
        "Ltj/g$b;",
        "element",
        "a",
        "(Lkotlinx/coroutines/internal/i0;Ltj/g$b;)Lkotlinx/coroutines/internal/i0;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/f0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/f0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/f0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/f0$c;->a:Lkotlinx/coroutines/internal/f0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/i0;Ltj/g$b;)Lkotlinx/coroutines/internal/i0;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Llk/o2;

    if-eqz v0, :cond_0

    check-cast p2, Llk/o2;

    iget-object v0, p1, Lkotlinx/coroutines/internal/i0;->a:Ltj/g;

    invoke-interface {p2, v0}, Llk/o2;->e(Ltj/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/i0;->a(Llk/o2;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/i0;

    check-cast p2, Ltj/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/f0$c;->a(Lkotlinx/coroutines/internal/i0;Ltj/g$b;)Lkotlinx/coroutines/internal/i0;

    move-result-object p1

    return-object p1
.end method
