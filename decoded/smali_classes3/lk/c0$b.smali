.class final Llk/c0$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llk/c0;->a(Ltj/g;Ltj/g;Z)Ltj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ltj/g;",
        "Ltj/g$b;",
        "Ltj/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Ltj/g;",
        "result",
        "Ltj/g$b;",
        "element",
        "a",
        "(Ltj/g;Ltj/g$b;)Ltj/g;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lbk/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk/y<",
            "Ltj/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lbk/y;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbk/y<",
            "Ltj/g;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Llk/c0$b;->a:Lbk/y;

    iput-boolean p2, p0, Llk/c0$b;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ltj/g;Ltj/g$b;)Ltj/g;
    .locals 4
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Llk/b0;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Llk/c0$b;->a:Lbk/y;

    iget-object v0, v0, Lbk/y;->a:Ljava/lang/Object;

    check-cast v0, Ltj/g;

    invoke-interface {p2}, Ltj/g$b;->getKey()Ltj/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Llk/c0$b;->b:Z

    check-cast p2, Llk/b0;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Llk/b0;->s()Llk/b0;

    move-result-object p2

    :cond_1
    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Llk/c0$b;->a:Lbk/y;

    iget-object v2, v1, Lbk/y;->a:Ljava/lang/Object;

    check-cast v2, Ltj/g;

    invoke-interface {p2}, Ltj/g$b;->getKey()Ltj/g$c;

    move-result-object v3

    invoke-interface {v2, v3}, Ltj/g;->l(Ltj/g$c;)Ltj/g;

    move-result-object v2

    iput-object v2, v1, Lbk/y;->a:Ljava/lang/Object;

    check-cast p2, Llk/b0;

    invoke-interface {p2, v0}, Llk/b0;->J(Ltj/g$b;)Ltj/g;

    move-result-object p2

    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ltj/g;

    check-cast p2, Ltj/g$b;

    invoke-virtual {p0, p1, p2}, Llk/c0$b;->a(Ltj/g;Ltj/g$b;)Ltj/g;

    move-result-object p1

    return-object p1
.end method
