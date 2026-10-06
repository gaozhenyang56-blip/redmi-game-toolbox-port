.class public final Lzi/e4;
.super Lzi/c3;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzi/c3;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/e4;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lzi/e4;->d:Ljava/lang/String;

    iput-object v0, p0, Lzi/e4;->f:Ljava/lang/String;

    iput-object v0, p0, Lzi/e4;->h:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lzi/e4;->i:I

    return-void
.end method

.method public static n([B)Lzi/e4;
    .locals 1

    new-instance v0, Lzi/e4;

    invoke-direct {v0}, Lzi/e4;-><init>()V

    invoke-virtual {v0, p0}, Lzi/c3;->c([B)Lzi/c3;

    move-result-object p0

    check-cast p0, Lzi/e4;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/e4;->i:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lzi/e4;->i()I

    :cond_0
    iget v0, p0, Lzi/e4;->i:I

    return v0
.end method

.method public bridge synthetic b(Lzi/b0;)Lzi/c3;
    .locals 0

    invoke-virtual {p0, p1}, Lzi/e4;->l(Lzi/b0;)Lzi/e4;

    move-result-object p1

    return-object p1
.end method

.method public e(Lzi/c1;)V
    .locals 2

    invoke-virtual {p0}, Lzi/e4;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/e4;->o()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->y(IZ)V

    :cond_0
    invoke-virtual {p0}, Lzi/e4;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/e4;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lzi/e4;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/e4;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lzi/e4;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/e4;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lzi/e4;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/e4;->o()Z

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->h(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lzi/e4;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/e4;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lzi/e4;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/e4;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lzi/e4;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/e4;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lzi/e4;->i:I

    return v1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/e4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lzi/e4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/e4;->c:Z

    iput-object p1, p0, Lzi/e4;->d:Ljava/lang/String;

    return-object p0
.end method

.method public l(Lzi/b0;)Lzi/e4;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lzi/b0;->b()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lzi/c3;->g(Lzi/b0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/e4;->t(Ljava/lang/String;)Lzi/e4;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/e4;->q(Ljava/lang/String;)Lzi/e4;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/e4;->k(Ljava/lang/String;)Lzi/e4;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lzi/b0;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lzi/e4;->m(Z)Lzi/e4;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public m(Z)Lzi/e4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/e4;->a:Z

    iput-boolean p1, p0, Lzi/e4;->b:Z

    return-object p0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lzi/e4;->b:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/e4;->f:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lzi/e4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/e4;->e:Z

    iput-object p1, p0, Lzi/e4;->f:Ljava/lang/String;

    return-object p0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lzi/e4;->a:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/e4;->h:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)Lzi/e4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/e4;->g:Z

    iput-object p1, p0, Lzi/e4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lzi/e4;->c:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lzi/e4;->e:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lzi/e4;->g:Z

    return v0
.end method
