.class public final Lzi/d4;
.super Lzi/c3;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzi/c3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lzi/d4;->b:Ljava/lang/String;

    iput-object v0, p0, Lzi/d4;->d:Ljava/lang/String;

    iput-object v0, p0, Lzi/d4;->f:Ljava/lang/String;

    iput-object v0, p0, Lzi/d4;->h:Ljava/lang/String;

    iput-object v0, p0, Lzi/d4;->j:Ljava/lang/String;

    iput-object v0, p0, Lzi/d4;->l:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lzi/d4;->m:I

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lzi/d4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/d4;->k:Z

    iput-object p1, p0, Lzi/d4;->l:Ljava/lang/String;

    return-object p0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lzi/d4;->k:Z

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lzi/d4;->m:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lzi/d4;->i()I

    :cond_0
    iget v0, p0, Lzi/d4;->m:I

    return v0
.end method

.method public bridge synthetic b(Lzi/b0;)Lzi/c3;
    .locals 0

    invoke-virtual {p0, p1}, Lzi/d4;->l(Lzi/b0;)Lzi/d4;

    move-result-object p1

    return-object p1
.end method

.method public e(Lzi/c1;)V
    .locals 2

    invoke-virtual {p0}, Lzi/d4;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/d4;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lzi/d4;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/d4;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lzi/d4;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/d4;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lzi/d4;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/d4;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lzi/d4;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lzi/d4;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lzi/d4;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lzi/d4;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lzi/d4;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/d4;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lzi/d4;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/d4;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lzi/d4;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/d4;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lzi/d4;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/d4;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lzi/d4;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lzi/d4;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lzi/d4;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lzi/d4;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    iput v1, p0, Lzi/d4;->m:I

    return v1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lzi/d4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/d4;->a:Z

    iput-object p1, p0, Lzi/d4;->b:Ljava/lang/String;

    return-object p0
.end method

.method public l(Lzi/b0;)Lzi/d4;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lzi/b0;->b()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lzi/c3;->g(Lzi/b0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/d4;->A(Ljava/lang/String;)Lzi/d4;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/d4;->x(Ljava/lang/String;)Lzi/d4;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/d4;->u(Ljava/lang/String;)Lzi/d4;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/d4;->r(Ljava/lang/String;)Lzi/d4;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/d4;->o(Ljava/lang/String;)Lzi/d4;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/d4;->k(Ljava/lang/String;)Lzi/d4;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lzi/d4;->a:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lzi/d4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/d4;->c:Z

    iput-object p1, p0, Lzi/d4;->d:Ljava/lang/String;

    return-object p0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lzi/d4;->c:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d4;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lzi/d4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/d4;->e:Z

    iput-object p1, p0, Lzi/d4;->f:Ljava/lang/String;

    return-object p0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lzi/d4;->e:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d4;->h:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lzi/d4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/d4;->g:Z

    iput-object p1, p0, Lzi/d4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lzi/d4;->g:Z

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d4;->j:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)Lzi/d4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/d4;->i:Z

    iput-object p1, p0, Lzi/d4;->j:Ljava/lang/String;

    return-object p0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lzi/d4;->i:Z

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d4;->l:Ljava/lang/String;

    return-object v0
.end method
