.class public final Lzi/a4;
.super Lzi/c3;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzi/c3;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzi/a4;->b:I

    iput-boolean v0, p0, Lzi/a4;->d:Z

    iput v0, p0, Lzi/a4;->f:I

    iput-boolean v0, p0, Lzi/a4;->h:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzi/a4;->i:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lzi/a4;->j:I

    return-void
.end method

.method public static o([B)Lzi/a4;
    .locals 1

    new-instance v0, Lzi/a4;

    invoke-direct {v0}, Lzi/a4;-><init>()V

    invoke-virtual {v0, p0}, Lzi/c3;->c([B)Lzi/c3;

    move-result-object p0

    check-cast p0, Lzi/a4;

    return-object p0
.end method

.method public static r(Lzi/b0;)Lzi/a4;
    .locals 1

    new-instance v0, Lzi/a4;

    invoke-direct {v0}, Lzi/a4;-><init>()V

    invoke-virtual {v0, p0}, Lzi/a4;->m(Lzi/b0;)Lzi/a4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lzi/a4;->g:Z

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lzi/a4;->j:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lzi/a4;->i()I

    :cond_0
    iget v0, p0, Lzi/a4;->j:I

    return v0
.end method

.method public bridge synthetic b(Lzi/b0;)Lzi/c3;
    .locals 0

    invoke-virtual {p0, p1}, Lzi/a4;->m(Lzi/b0;)Lzi/a4;

    move-result-object p1

    return-object p1
.end method

.method public e(Lzi/c1;)V
    .locals 3

    invoke-virtual {p0}, Lzi/a4;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/a4;->u()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->M(II)V

    :cond_0
    invoke-virtual {p0}, Lzi/a4;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/a4;->t()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->y(IZ)V

    :cond_1
    invoke-virtual {p0}, Lzi/a4;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/a4;->w()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_2
    invoke-virtual {p0}, Lzi/a4;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/a4;->z()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->y(IZ)V

    :cond_3
    invoke-virtual {p0}, Lzi/a4;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public i()I
    .locals 5

    invoke-virtual {p0}, Lzi/a4;->p()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzi/a4;->u()I

    move-result v0

    invoke-static {v1, v0}, Lzi/c1;->H(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lzi/a4;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0}, Lzi/a4;->t()Z

    move-result v4

    invoke-static {v3, v4}, Lzi/c1;->h(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    invoke-virtual {p0}, Lzi/a4;->x()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p0}, Lzi/a4;->w()I

    move-result v4

    invoke-static {v3, v4}, Lzi/c1;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    invoke-virtual {p0}, Lzi/a4;->A()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lzi/a4;->z()Z

    move-result v4

    invoke-static {v3, v4}, Lzi/c1;->h(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    invoke-virtual {p0}, Lzi/a4;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lzi/c1;->j(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lzi/a4;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lzi/a4;->j:I

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzi/a4;->i:Ljava/util/List;

    return-object v0
.end method

.method public k(I)Lzi/a4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/a4;->a:Z

    iput p1, p0, Lzi/a4;->b:I

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lzi/a4;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lzi/a4;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzi/a4;->i:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lzi/a4;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public m(Lzi/b0;)Lzi/a4;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lzi/b0;->b()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lzi/c3;->g(Lzi/b0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/a4;->l(Ljava/lang/String;)Lzi/a4;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lzi/b0;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lzi/a4;->s(Z)Lzi/a4;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/a4;->q(I)Lzi/a4;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lzi/b0;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lzi/a4;->n(Z)Lzi/a4;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lzi/b0;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/a4;->k(I)Lzi/a4;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public n(Z)Lzi/a4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/a4;->c:Z

    iput-boolean p1, p0, Lzi/a4;->d:Z

    return-object p0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lzi/a4;->a:Z

    return v0
.end method

.method public q(I)Lzi/a4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/a4;->e:Z

    iput p1, p0, Lzi/a4;->f:I

    return-object p0
.end method

.method public s(Z)Lzi/a4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/a4;->g:Z

    iput-boolean p1, p0, Lzi/a4;->h:Z

    return-object p0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lzi/a4;->d:Z

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lzi/a4;->b:I

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lzi/a4;->c:Z

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lzi/a4;->f:I

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lzi/a4;->e:Z

    return v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lzi/a4;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lzi/a4;->h:Z

    return v0
.end method
