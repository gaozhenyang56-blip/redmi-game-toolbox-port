.class public final Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aJ\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0005H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/lifecycle/r0;",
        "VM",
        "Landroidx/fragment/app/Fragment;",
        "Lhk/b;",
        "viewModelClass",
        "Lkotlin/Function0;",
        "Landroidx/lifecycle/x0;",
        "storeProducer",
        "Landroidx/lifecycle/u0$b;",
        "factoryProducer",
        "Loj/f;",
        "a",
        "fragment-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;Lhk/b;Lak/a;Lak/a;)Loj/f;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lhk/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/r0;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lhk/b<",
            "TVM;>;",
            "Lak/a<",
            "+",
            "Landroidx/lifecycle/x0;",
            ">;",
            "Lak/a<",
            "+",
            "Landroidx/lifecycle/u0$b;",
            ">;)",
            "Loj/f<",
            "TVM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance p3, Landroidx/fragment/app/x$a;

    invoke-direct {p3, p0}, Landroidx/fragment/app/x$a;-><init>(Landroidx/fragment/app/Fragment;)V

    :cond_0
    new-instance p0, Landroidx/lifecycle/t0;

    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;)V

    return-object p0
.end method
