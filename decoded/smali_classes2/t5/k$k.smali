.class final Lt5/k$k;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/k;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ljava/lang/Integer;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt5/k;


# direct methods
.method constructor <init>(Lt5/k;)V
    .locals 0

    iput-object p1, p0, Lt5/k$k;->a:Lt5/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/HashMap;)V
    .locals 3
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lt5/k$k;->a:Lt5/k;

    invoke-static {v0}, Lt5/k;->n(Lt5/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt5/k$b;

    instance-of v0, p1, Lt5/k$d;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lt5/k$k;->a:Lt5/k;

    check-cast p1, Lt5/k$d;

    invoke-static {p2, p1}, Lt5/k;->k(Lt5/k;Lt5/k$d;)V

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lt5/k$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lt5/k$e;

    if-eqz p2, :cond_1

    const-string v2, "STRENGTH"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Lt5/k$e;->e(Ljava/lang/Integer;)V

    iget-object p2, p0, Lt5/k$k;->a:Lt5/k;

    invoke-virtual {p1}, Lt5/k$b;->a()I

    move-result v0

    check-cast p1, Lt5/k$e;

    invoke-virtual {p1}, Lt5/k$e;->d()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, v0, p1, v1}, Lt5/k;->o(Lt5/k;ILjava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lt5/k$f;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lt5/k$f;

    if-eqz p2, :cond_3

    const-string v2, "STITCH"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v1

    :goto_1
    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Lt5/k$f;->e(Ljava/lang/Boolean;)V

    iget-object p2, p0, Lt5/k$k;->a:Lt5/k;

    invoke-virtual {p1}, Lt5/k$b;->a()I

    move-result v0

    check-cast p1, Lt5/k$f;

    invoke-virtual {p1}, Lt5/k$f;->d()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lt5/k;->o(Lt5/k;ILjava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lt5/k$k;->a(ILjava/util/HashMap;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
