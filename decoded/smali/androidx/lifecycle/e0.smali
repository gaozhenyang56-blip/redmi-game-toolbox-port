.class public final Landroidx/lifecycle/e0;
.super Llk/d0;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/lifecycle/g;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Llk/d0;-><init>()V

    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0}, Landroidx/lifecycle/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/e0;->c:Landroidx/lifecycle/g;

    return-void
.end method


# virtual methods
.method public L(Ltj/g;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/e0;->c:Landroidx/lifecycle/g;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/g;->c(Ltj/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public W(Ltj/g;)Z
    .locals 1
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object v0

    invoke-virtual {v0}, Llk/d2;->Y()Llk/d2;

    move-result-object v0

    invoke-virtual {v0, p1}, Llk/d0;->W(Ltj/g;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/e0;->c:Landroidx/lifecycle/g;

    invoke-virtual {p1}, Landroidx/lifecycle/g;->b()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
