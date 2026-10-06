.class public final Lc3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lak/a;)V
    .locals 1
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/a<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/lifecycle/c0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc3/t;->a:Landroidx/lifecycle/c0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lhk/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lhk/h<",
            "*>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lc3/t;->a:Landroidx/lifecycle/c0;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lhk/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lhk/h<",
            "*>;TT;)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lc3/t;->a:Landroidx/lifecycle/c0;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method
