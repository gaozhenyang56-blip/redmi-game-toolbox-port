.class public final Lkotlinx/coroutines/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0000H\u0001\" \u0010\t\u001a\u00020\u00008\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0004\u0010\u0006\" \u0010\u000c\u001a\u00020\u00008\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0005\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\n\u0010\u0006*\n\u0010\r\"\u00020\u00002\u00020\u0000*\u001c\u0010\u000f\u001a\u0004\u0008\u0000\u0010\u000e\"\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0000*\u000c\u0008\u0002\u0010\u0010\"\u00020\u00012\u00020\u0001*\n\u0010\u0012\"\u00020\u00112\u00020\u0011*\u001c\u0010\u0013\u001a\u0004\u0008\u0000\u0010\u000e\"\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "",
        "Lkotlinx/coroutines/internal/o;",
        "Lkotlinx/coroutines/internal/Node;",
        "b",
        "a",
        "Ljava/lang/Object;",
        "()Ljava/lang/Object;",
        "getCONDITION_FALSE$annotations",
        "()V",
        "CONDITION_FALSE",
        "getLIST_EMPTY",
        "getLIST_EMPTY$annotations",
        "LIST_EMPTY",
        "AbstractAtomicDesc",
        "T",
        "AddLastDesc",
        "Node",
        "Lkotlinx/coroutines/internal/o$b;",
        "PrepareOp",
        "RemoveFirstDesc",
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
.field private static final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/n;->a:Ljava/lang/Object;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final a()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/internal/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/o;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/internal/x;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/x;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/x;->a:Lkotlinx/coroutines/internal/o;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    :cond_2
    return-object v0
.end method
