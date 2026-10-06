.class public Lj5/a;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lj5/a;->a:Landroidx/lifecycle/c0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lj5/a;->a:Landroidx/lifecycle/c0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Ld5/f;->b()Ld5/f;

    move-result-object v0

    iget-object v1, p0, Lj5/a;->a:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Ld5/f;->c(Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public c(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V
    .locals 1

    iget-object v0, p0, Lj5/a;->a:Landroidx/lifecycle/c0;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method
