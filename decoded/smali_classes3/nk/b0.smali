.class public final Lnk/b0;
.super Lnk/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lnk/a0<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B;\u0012\u0006\u0010\u000c\u001a\u00028\u0000\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r\u0012\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00028\u0000`\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016R*\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00028\u0000`\u00088\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lnk/b0;",
        "E",
        "Lnk/a0;",
        "",
        "u",
        "Loj/t;",
        "D",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "f",
        "Lak/l;",
        "onUndeliveredElement",
        "pollResult",
        "Llk/l;",
        "cont",
        "<init>",
        "(Ljava/lang/Object;Llk/l;Lak/l;)V",
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
.field public final f:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "TE;",
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
.method public constructor <init>(Ljava/lang/Object;Llk/l;Lak/l;)V
    .locals 0
    .param p2    # Llk/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Llk/l<",
            "-",
            "Loj/t;",
            ">;",
            "Lak/l<",
            "-TE;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnk/a0;-><init>(Ljava/lang/Object;Llk/l;)V

    iput-object p3, p0, Lnk/b0;->f:Lak/l;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    iget-object v0, p0, Lnk/b0;->f:Lak/l;

    invoke-virtual {p0}, Lnk/a0;->A()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lnk/a0;->e:Llk/l;

    invoke-interface {v2}, Ltj/d;->getContext()Ltj/g;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/v;->b(Lak/l;Ljava/lang/Object;Ltj/g;)V

    return-void
.end method

.method public u()Z
    .locals 1

    invoke-super {p0}, Lkotlinx/coroutines/internal/o;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lnk/b0;->D()V

    const/4 v0, 0x1

    return v0
.end method
