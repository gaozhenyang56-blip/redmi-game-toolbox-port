.class public final Lkotlinx/coroutines/flow/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a!\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a6\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0000\"\u001a\u0010\u0012\u001a\u00020\u000e8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000f\u0012\u0004\u0008\u0010\u0010\u0011\"\u001a\u0010\u0015\u001a\u00020\u000e8\u0002X\u0083\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000f\u0012\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "T",
        "value",
        "Lkotlinx/coroutines/flow/s;",
        "a",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/flow/s;",
        "Lkotlinx/coroutines/flow/a0;",
        "Ltj/g;",
        "context",
        "",
        "capacity",
        "Lnk/e;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/e;",
        "d",
        "Lkotlinx/coroutines/internal/b0;",
        "Lkotlinx/coroutines/internal/b0;",
        "getNONE$annotations",
        "()V",
        "NONE",
        "b",
        "getPENDING$annotations",
        "PENDING",
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
.field private static final a:Lkotlinx/coroutines/internal/b0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lkotlinx/coroutines/internal/b0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/c0;->a:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/c0;->b:Lkotlinx/coroutines/internal/b0;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlinx/coroutines/flow/s<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/b0;

    if-nez p0, :cond_0

    sget-object p0, Lok/o;->a:Lkotlinx/coroutines/internal/b0;

    :cond_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/b0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/c0;->a:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/c0;->b:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final d(Lkotlinx/coroutines/flow/a0;Ltj/g;ILnk/e;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/a0<",
            "+TT;>;",
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

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    :cond_1
    sget-object v0, Lnk/e;->b:Lnk/e;

    if-ne p3, v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/y;->e(Lkotlinx/coroutines/flow/w;Ltj/g;ILnk/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method
