.class final Lkotlinx/coroutines/flow/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B3\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0018\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0005R\u0016\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/x$a;",
        "Llk/y0;",
        "Loj/t;",
        "a",
        "Lkotlinx/coroutines/flow/x;",
        "Lkotlinx/coroutines/flow/x;",
        "flow",
        "",
        "b",
        "J",
        "index",
        "",
        "c",
        "Ljava/lang/Object;",
        "value",
        "Ltj/d;",
        "d",
        "Ltj/d;",
        "cont",
        "<init>",
        "(Lkotlinx/coroutines/flow/x;JLjava/lang/Object;Ltj/d;)V",
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
.field public final a:Lkotlinx/coroutines/flow/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/x<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ltj/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/x;JLjava/lang/Object;Ltj/d;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/x<",
            "*>;J",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/x$a;->a:Lkotlinx/coroutines/flow/x;

    iput-wide p2, p0, Lkotlinx/coroutines/flow/x$a;->b:J

    iput-object p4, p0, Lkotlinx/coroutines/flow/x$a;->c:Ljava/lang/Object;

    iput-object p5, p0, Lkotlinx/coroutines/flow/x$a;->d:Ltj/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/x$a;->a:Lkotlinx/coroutines/flow/x;

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/x;->k(Lkotlinx/coroutines/flow/x;Lkotlinx/coroutines/flow/x$a;)V

    return-void
.end method
