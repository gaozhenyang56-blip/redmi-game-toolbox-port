.class public final Lzi/f4;
.super Lzi/c3;
.source "SourceFile"


# instance fields
.field private A:I

.field private a:Z

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lzi/c4;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Lzi/a;

.field private w:Z

.field private x:Lzi/a;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lzi/c3;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzi/f4;->b:I

    const-string v1, ""

    iput-object v1, p0, Lzi/f4;->d:Ljava/lang/String;

    iput-object v1, p0, Lzi/f4;->f:Ljava/lang/String;

    iput-object v1, p0, Lzi/f4;->h:Ljava/lang/String;

    iput v0, p0, Lzi/f4;->j:I

    iput-object v1, p0, Lzi/f4;->l:Ljava/lang/String;

    iput-object v1, p0, Lzi/f4;->n:Ljava/lang/String;

    iput-object v1, p0, Lzi/f4;->p:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lzi/f4;->r:Lzi/c4;

    iput v0, p0, Lzi/f4;->t:I

    sget-object v1, Lzi/a;->c:Lzi/a;

    iput-object v1, p0, Lzi/f4;->v:Lzi/a;

    iput-object v1, p0, Lzi/f4;->x:Lzi/a;

    iput v0, p0, Lzi/f4;->z:I

    const/4 v0, -0x1

    iput v0, p0, Lzi/f4;->A:I

    return-void
.end method


# virtual methods
.method public A(I)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->s:Z

    iput p1, p0, Lzi/f4;->t:I

    return-object p0
.end method

.method public B(Ljava/lang/String;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->g:Z

    iput-object p1, p0, Lzi/f4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->e:Z

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lzi/f4;->j:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/f4;->l:Ljava/lang/String;

    return-object v0
.end method

.method public F(I)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->y:Z

    iput p1, p0, Lzi/f4;->z:I

    return-object p0
.end method

.method public G(Ljava/lang/String;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->k:Z

    iput-object p1, p0, Lzi/f4;->l:Ljava/lang/String;

    return-object p0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->g:Z

    return v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Lzi/f4;->t:I

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/f4;->n:Ljava/lang/String;

    return-object v0
.end method

.method public K(Ljava/lang/String;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->m:Z

    iput-object p1, p0, Lzi/f4;->n:Ljava/lang/String;

    return-object p0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->i:Z

    return v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lzi/f4;->z:I

    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/f4;->p:Ljava/lang/String;

    return-object v0
.end method

.method public O(Ljava/lang/String;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->o:Z

    iput-object p1, p0, Lzi/f4;->p:Ljava/lang/String;

    return-object p0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->k:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->m:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->o:Z

    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->q:Z

    return v0
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->s:Z

    return v0
.end method

.method public U()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->u:Z

    return v0
.end method

.method public V()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->w:Z

    return v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->y:Z

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lzi/f4;->A:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lzi/f4;->i()I

    :cond_0
    iget v0, p0, Lzi/f4;->A:I

    return v0
.end method

.method public bridge synthetic b(Lzi/b0;)Lzi/c3;
    .locals 0

    invoke-virtual {p0, p1}, Lzi/f4;->p(Lzi/b0;)Lzi/f4;

    move-result-object p1

    return-object p1
.end method

.method public e(Lzi/c1;)V
    .locals 2

    invoke-virtual {p0}, Lzi/f4;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/f4;->y()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->M(II)V

    :cond_0
    invoke-virtual {p0}, Lzi/f4;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/f4;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lzi/f4;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/f4;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lzi/f4;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/f4;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lzi/f4;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lzi/f4;->D()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_4
    invoke-virtual {p0}, Lzi/f4;->P()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lzi/f4;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lzi/f4;->Q()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lzi/f4;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lzi/f4;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lzi/f4;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lzi/f4;->S()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lzi/f4;->l()Lzi/c4;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->x(ILzi/c3;)V

    :cond_8
    invoke-virtual {p0}, Lzi/f4;->T()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lzi/f4;->I()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_9
    invoke-virtual {p0}, Lzi/f4;->U()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0}, Lzi/f4;->k()Lzi/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->w(ILzi/a;)V

    :cond_a
    invoke-virtual {p0}, Lzi/f4;->V()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0}, Lzi/f4;->t()Lzi/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->w(ILzi/a;)V

    :cond_b
    invoke-virtual {p0}, Lzi/f4;->W()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p0}, Lzi/f4;->M()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_c
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lzi/f4;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/f4;->y()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->H(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lzi/f4;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/f4;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lzi/f4;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/f4;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lzi/f4;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/f4;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lzi/f4;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lzi/f4;->D()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lzi/f4;->P()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lzi/f4;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lzi/f4;->Q()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lzi/f4;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lzi/f4;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lzi/f4;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lzi/f4;->S()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lzi/f4;->l()Lzi/c4;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->g(ILzi/c3;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lzi/f4;->T()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lzi/f4;->I()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lzi/f4;->U()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0}, Lzi/f4;->k()Lzi/a;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->f(ILzi/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lzi/f4;->V()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0}, Lzi/f4;->t()Lzi/a;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->f(ILzi/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lzi/f4;->W()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p0}, Lzi/f4;->M()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    iput v1, p0, Lzi/f4;->A:I

    return v1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/f4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lzi/a;
    .locals 1

    iget-object v0, p0, Lzi/f4;->v:Lzi/a;

    return-object v0
.end method

.method public l()Lzi/c4;
    .locals 1

    iget-object v0, p0, Lzi/f4;->r:Lzi/c4;

    return-object v0
.end method

.method public m(I)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->a:Z

    iput p1, p0, Lzi/f4;->b:I

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->c:Z

    iput-object p1, p0, Lzi/f4;->d:Ljava/lang/String;

    return-object p0
.end method

.method public o(Lzi/a;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->u:Z

    iput-object p1, p0, Lzi/f4;->v:Lzi/a;

    return-object p0
.end method

.method public p(Lzi/b0;)Lzi/f4;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lzi/b0;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lzi/c3;->g(Lzi/b0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/f4;->F(I)Lzi/f4;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lzi/b0;->f()Lzi/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->w(Lzi/a;)Lzi/f4;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lzi/b0;->f()Lzi/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->o(Lzi/a;)Lzi/f4;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/f4;->A(I)Lzi/f4;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lzi/c4;

    invoke-direct {v0}, Lzi/c4;-><init>()V

    invoke-virtual {p1, v0}, Lzi/b0;->k(Lzi/c3;)V

    invoke-virtual {p0, v0}, Lzi/f4;->q(Lzi/c4;)Lzi/f4;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->O(Ljava/lang/String;)Lzi/f4;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->K(Ljava/lang/String;)Lzi/f4;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->G(Ljava/lang/String;)Lzi/f4;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/f4;->u(I)Lzi/f4;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->B(Ljava/lang/String;)Lzi/f4;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->v(Ljava/lang/String;)Lzi/f4;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/f4;->n(Ljava/lang/String;)Lzi/f4;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lzi/b0;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/f4;->m(I)Lzi/f4;

    goto :goto_0

    :sswitch_d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x28 -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x50 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public q(Lzi/c4;)Lzi/f4;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->q:Z

    iput-object p1, p0, Lzi/f4;->r:Lzi/c4;

    return-object p0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->a:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/f4;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lzi/a;
    .locals 1

    iget-object v0, p0, Lzi/f4;->x:Lzi/a;

    return-object v0
.end method

.method public u(I)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->i:Z

    iput p1, p0, Lzi/f4;->j:I

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->e:Z

    iput-object p1, p0, Lzi/f4;->f:Ljava/lang/String;

    return-object p0
.end method

.method public w(Lzi/a;)Lzi/f4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/f4;->w:Z

    iput-object p1, p0, Lzi/f4;->x:Lzi/a;

    return-object p0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lzi/f4;->c:Z

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lzi/f4;->b:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/f4;->h:Ljava/lang/String;

    return-object v0
.end method
