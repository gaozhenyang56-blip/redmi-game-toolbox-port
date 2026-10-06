.class public final Lzi/b4;
.super Lzi/c3;
.source "SourceFile"


# instance fields
.field private A:I

.field private a:Z

.field private b:I

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:J

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lzi/c3;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzi/b4;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lzi/b4;->d:J

    const-string v3, ""

    iput-object v3, p0, Lzi/b4;->f:Ljava/lang/String;

    iput-object v3, p0, Lzi/b4;->h:Ljava/lang/String;

    iput-object v3, p0, Lzi/b4;->j:Ljava/lang/String;

    iput-object v3, p0, Lzi/b4;->l:Ljava/lang/String;

    iput-object v3, p0, Lzi/b4;->n:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, p0, Lzi/b4;->p:I

    iput v0, p0, Lzi/b4;->r:I

    iput v0, p0, Lzi/b4;->t:I

    iput-object v3, p0, Lzi/b4;->v:Ljava/lang/String;

    iput-wide v1, p0, Lzi/b4;->x:J

    iput-wide v1, p0, Lzi/b4;->z:J

    const/4 v0, -0x1

    iput v0, p0, Lzi/b4;->A:I

    return-void
.end method


# virtual methods
.method public A(I)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->q:Z

    iput p1, p0, Lzi/b4;->r:I

    return-object p0
.end method

.method public B(J)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->y:Z

    iput-wide p1, p0, Lzi/b4;->z:J

    return-object p0
.end method

.method public C(Ljava/lang/String;)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->i:Z

    iput-object p1, p0, Lzi/b4;->j:Ljava/lang/String;

    return-object p0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->e:Z

    return v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lzi/b4;->p:I

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/b4;->l:Ljava/lang/String;

    return-object v0
.end method

.method public G(I)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->s:Z

    iput p1, p0, Lzi/b4;->t:I

    return-object p0
.end method

.method public H(Ljava/lang/String;)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->k:Z

    iput-object p1, p0, Lzi/b4;->l:Ljava/lang/String;

    return-object p0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->g:Z

    return v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lzi/b4;->r:I

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/b4;->n:Ljava/lang/String;

    return-object v0
.end method

.method public L(Ljava/lang/String;)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->m:Z

    iput-object p1, p0, Lzi/b4;->n:Ljava/lang/String;

    return-object p0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->i:Z

    return v0
.end method

.method public N()I
    .locals 1

    iget v0, p0, Lzi/b4;->t:I

    return v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/b4;->v:Ljava/lang/String;

    return-object v0
.end method

.method public P(Ljava/lang/String;)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->u:Z

    iput-object p1, p0, Lzi/b4;->v:Ljava/lang/String;

    return-object p0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->k:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->m:Z

    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->o:Z

    return v0
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->q:Z

    return v0
.end method

.method public U()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->s:Z

    return v0
.end method

.method public V()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->u:Z

    return v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->w:Z

    return v0
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->y:Z

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lzi/b4;->A:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lzi/b4;->i()I

    :cond_0
    iget v0, p0, Lzi/b4;->A:I

    return v0
.end method

.method public bridge synthetic b(Lzi/b0;)Lzi/c3;
    .locals 0

    invoke-virtual {p0, p1}, Lzi/b4;->p(Lzi/b0;)Lzi/b4;

    move-result-object p1

    return-object p1
.end method

.method public e(Lzi/c1;)V
    .locals 3

    invoke-virtual {p0}, Lzi/b4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/b4;->x()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_0
    invoke-virtual {p0}, Lzi/b4;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/b4;->j()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lzi/c1;->N(IJ)V

    :cond_1
    invoke-virtual {p0}, Lzi/b4;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/b4;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lzi/b4;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/b4;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lzi/b4;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lzi/b4;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lzi/b4;->Q()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lzi/b4;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lzi/b4;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lzi/b4;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lzi/b4;->S()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lzi/b4;->E()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_7
    invoke-virtual {p0}, Lzi/b4;->T()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lzi/b4;->J()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_8
    invoke-virtual {p0}, Lzi/b4;->U()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lzi/b4;->N()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->t(II)V

    :cond_9
    invoke-virtual {p0}, Lzi/b4;->V()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0}, Lzi/b4;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->v(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lzi/b4;->W()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0}, Lzi/b4;->r()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lzi/c1;->N(IJ)V

    :cond_b
    invoke-virtual {p0}, Lzi/b4;->X()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p0}, Lzi/b4;->y()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lzi/c1;->N(IJ)V

    :cond_c
    return-void
.end method

.method public i()I
    .locals 4

    invoke-virtual {p0}, Lzi/b4;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/b4;->x()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lzi/b4;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/b4;->j()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lzi/c1;->I(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lzi/b4;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lzi/b4;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lzi/b4;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lzi/b4;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lzi/b4;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lzi/b4;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lzi/b4;->Q()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lzi/b4;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lzi/b4;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lzi/b4;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lzi/b4;->S()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lzi/b4;->E()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lzi/b4;->T()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lzi/b4;->J()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lzi/b4;->U()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lzi/b4;->N()I

    move-result v2

    invoke-static {v0, v2}, Lzi/c1;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lzi/b4;->V()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0}, Lzi/b4;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->e(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {p0}, Lzi/b4;->W()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0}, Lzi/b4;->r()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lzi/c1;->I(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-virtual {p0}, Lzi/b4;->X()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p0}, Lzi/b4;->y()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lzi/c1;->I(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    iput v1, p0, Lzi/b4;->A:I

    return v1
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lzi/b4;->d:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/b4;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lzi/b4;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/b4;->k:Z

    const-string v0, ""

    iput-object v0, p0, Lzi/b4;->l:Ljava/lang/String;

    return-object p0
.end method

.method public m(I)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->a:Z

    iput p1, p0, Lzi/b4;->b:I

    return-object p0
.end method

.method public n(J)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->c:Z

    iput-wide p1, p0, Lzi/b4;->d:J

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->e:Z

    iput-object p1, p0, Lzi/b4;->f:Ljava/lang/String;

    return-object p0
.end method

.method public p(Lzi/b0;)Lzi/b4;
    .locals 2

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
    invoke-virtual {p1}, Lzi/b0;->q()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lzi/b4;->B(J)Lzi/b4;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lzi/b0;->q()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lzi/b4;->u(J)Lzi/b4;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/b4;->P(Ljava/lang/String;)Lzi/b4;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/b4;->G(I)Lzi/b4;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/b4;->A(I)Lzi/b4;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/b4;->t(I)Lzi/b4;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/b4;->L(Ljava/lang/String;)Lzi/b4;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/b4;->H(Ljava/lang/String;)Lzi/b4;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/b4;->C(Ljava/lang/String;)Lzi/b4;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/b4;->v(Ljava/lang/String;)Lzi/b4;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lzi/b0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/b4;->o(Ljava/lang/String;)Lzi/b4;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lzi/b0;->q()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lzi/b4;->n(J)Lzi/b4;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lzi/b0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lzi/b4;->m(I)Lzi/b4;

    goto :goto_0

    :sswitch_d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x5a -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->a:Z

    return v0
.end method

.method public r()J
    .locals 2

    iget-wide v0, p0, Lzi/b4;->x:J

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/b4;->h:Ljava/lang/String;

    return-object v0
.end method

.method public t(I)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->o:Z

    iput p1, p0, Lzi/b4;->p:I

    return-object p0
.end method

.method public u(J)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->w:Z

    iput-wide p1, p0, Lzi/b4;->x:J

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lzi/b4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/b4;->g:Z

    iput-object p1, p0, Lzi/b4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lzi/b4;->c:Z

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lzi/b4;->b:I

    return v0
.end method

.method public y()J
    .locals 2

    iget-wide v0, p0, Lzi/b4;->z:J

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/b4;->j:Ljava/lang/String;

    return-object v0
.end method
