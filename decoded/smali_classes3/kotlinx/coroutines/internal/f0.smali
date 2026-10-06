.class public final Lkotlinx/coroutines/internal/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0000\u001a\u001a\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0000\"\u0014\u0010\u000b\u001a\u00020\t8\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\n\"*\u0010\u000f\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000e\"2\u0010\u0011\u001a \u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0010\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00100\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000e\"&\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00120\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Ltj/g;",
        "context",
        "",
        "b",
        "countOrElement",
        "c",
        "oldState",
        "Loj/t;",
        "a",
        "Lkotlinx/coroutines/internal/b0;",
        "Lkotlinx/coroutines/internal/b0;",
        "NO_THREAD_ELEMENTS",
        "Lkotlin/Function2;",
        "Ltj/g$b;",
        "Lak/p;",
        "countAll",
        "Llk/o2;",
        "findOne",
        "Lkotlinx/coroutines/internal/i0;",
        "d",
        "updateState",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/b0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/Object;",
            "Ltj/g$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Llk/o2<",
            "*>;",
            "Ltj/g$b;",
            "Llk/o2<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Lkotlinx/coroutines/internal/i0;",
            "Ltj/g$b;",
            "Lkotlinx/coroutines/internal/i0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    sget-object v0, Lkotlinx/coroutines/internal/f0$a;->a:Lkotlinx/coroutines/internal/f0$a;

    sput-object v0, Lkotlinx/coroutines/internal/f0;->b:Lak/p;

    sget-object v0, Lkotlinx/coroutines/internal/f0$b;->a:Lkotlinx/coroutines/internal/f0$b;

    sput-object v0, Lkotlinx/coroutines/internal/f0;->c:Lak/p;

    sget-object v0, Lkotlinx/coroutines/internal/f0$c;->a:Lkotlinx/coroutines/internal/f0$c;

    sput-object v0, Lkotlinx/coroutines/internal/f0;->d:Lak/p;

    return-void
.end method

.method public static final a(Ltj/g;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/i0;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/internal/i0;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/i0;->b(Ltj/g;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lkotlinx/coroutines/internal/f0;->c:Lak/p;

    invoke-interface {p0, v0, v1}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Llk/o2;

    invoke-interface {v0, p0, p1}, Llk/o2;->O(Ltj/g;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Ltj/g;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/f0;->b:Lak/p;

    invoke-interface {p0, v0, v1}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Ltj/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/f0;->b(Ltj/g;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/i0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/i0;-><init>(Ltj/g;I)V

    sget-object p1, Lkotlinx/coroutines/internal/f0;->d:Lak/p;

    invoke-interface {p0, v0, p1}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast p1, Llk/o2;

    invoke-interface {p1, p0}, Llk/o2;->e(Ltj/g;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
