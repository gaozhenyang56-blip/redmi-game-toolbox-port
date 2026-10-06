.class public final Lzi/k4;
.super Lzi/c3;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lzi/a;

.field private c:Z

.field private d:Lzi/c4;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzi/c3;-><init>()V

    sget-object v0, Lzi/a;->c:Lzi/a;

    iput-object v0, p0, Lzi/k4;->b:Lzi/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lzi/k4;->d:Lzi/c4;

    const/4 v0, -0x1

    iput v0, p0, Lzi/k4;->e:I

    return-void
.end method

.method public static o([B)Lzi/k4;
    .locals 1

    new-instance v0, Lzi/k4;

    invoke-direct {v0}, Lzi/k4;-><init>()V

    invoke-virtual {v0, p0}, Lzi/c3;->c([B)Lzi/c3;

    move-result-object p0

    check-cast p0, Lzi/k4;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/k4;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lzi/k4;->i()I

    :cond_0
    iget v0, p0, Lzi/k4;->e:I

    return v0
.end method

.method public bridge synthetic b(Lzi/b0;)Lzi/c3;
    .locals 0

    invoke-virtual {p0, p1}, Lzi/k4;->m(Lzi/b0;)Lzi/k4;

    move-result-object p1

    return-object p1
.end method

.method public e(Lzi/c1;)V
    .locals 2

    invoke-virtual {p0}, Lzi/k4;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/k4;->j()Lzi/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->w(ILzi/a;)V

    :cond_0
    invoke-virtual {p0}, Lzi/k4;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/k4;->k()Lzi/c4;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->x(ILzi/c3;)V

    :cond_1
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lzi/k4;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/k4;->j()Lzi/a;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->f(ILzi/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lzi/k4;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lzi/k4;->k()Lzi/c4;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->g(ILzi/c3;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iput v1, p0, Lzi/k4;->e:I

    return v1
.end method

.method public j()Lzi/a;
    .locals 1

    iget-object v0, p0, Lzi/k4;->b:Lzi/a;

    return-object v0
.end method

.method public k()Lzi/c4;
    .locals 1

    iget-object v0, p0, Lzi/k4;->d:Lzi/c4;

    return-object v0
.end method

.method public l(Lzi/a;)Lzi/k4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/k4;->a:Z

    iput-object p1, p0, Lzi/k4;->b:Lzi/a;

    return-object p0
.end method

.method public m(Lzi/b0;)Lzi/k4;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lzi/b0;->b()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lzi/c3;->g(Lzi/b0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    new-instance v0, Lzi/c4;

    invoke-direct {v0}, Lzi/c4;-><init>()V

    invoke-virtual {p1, v0}, Lzi/b0;->k(Lzi/c3;)V

    invoke-virtual {p0, v0}, Lzi/k4;->n(Lzi/c4;)Lzi/k4;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lzi/b0;->f()Lzi/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/k4;->l(Lzi/a;)Lzi/k4;

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public n(Lzi/c4;)Lzi/k4;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/k4;->c:Z

    iput-object p1, p0, Lzi/k4;->d:Lzi/c4;

    return-object p0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lzi/k4;->a:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lzi/k4;->c:Z

    return v0
.end method
