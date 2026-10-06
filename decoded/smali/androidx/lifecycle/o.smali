.class public abstract Landroidx/lifecycle/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk/i0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Landroidx/lifecycle/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final c(Lak/p;)Llk/s1;
    .locals 7
    .param p1    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Llk/s1;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "launchWhenStarted is deprecated as it can lead to wasted resources in some cases. Replace with suspending repeatOnLifecycle to run the block whenever the Lifecycle state is at least Lifecycle.State.STARTED."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/lifecycle/o$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Landroidx/lifecycle/o$a;-><init>(Landroidx/lifecycle/o;Lak/p;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object p1

    return-object p1
.end method
