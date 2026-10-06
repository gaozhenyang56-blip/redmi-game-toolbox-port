.class public final Lzi/j4;
.super Lzi/c3;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lzi/a;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzi/c3;-><init>()V

    sget-object v0, Lzi/a;->c:Lzi/a;

    iput-object v0, p0, Lzi/j4;->b:Lzi/a;

    const/4 v0, -0x1

    iput v0, p0, Lzi/j4;->c:I

    return-void
.end method

.method public static m([B)Lzi/j4;
    .locals 1

    new-instance v0, Lzi/j4;

    invoke-direct {v0}, Lzi/j4;-><init>()V

    invoke-virtual {v0, p0}, Lzi/c3;->c([B)Lzi/c3;

    move-result-object p0

    check-cast p0, Lzi/j4;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/j4;->c:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lzi/j4;->i()I

    :cond_0
    iget v0, p0, Lzi/j4;->c:I

    return v0
.end method

.method public bridge synthetic b(Lzi/b0;)Lzi/c3;
    .locals 0

    invoke-virtual {p0, p1}, Lzi/j4;->l(Lzi/b0;)Lzi/j4;

    move-result-object p1

    return-object p1
.end method

.method public e(Lzi/c1;)V
    .locals 2

    invoke-virtual {p0}, Lzi/j4;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/j4;->j()Lzi/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzi/c1;->w(ILzi/a;)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lzi/j4;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lzi/j4;->j()Lzi/a;

    move-result-object v2

    invoke-static {v0, v2}, Lzi/c1;->f(ILzi/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iput v1, p0, Lzi/j4;->c:I

    return v1
.end method

.method public j()Lzi/a;
    .locals 1

    iget-object v0, p0, Lzi/j4;->b:Lzi/a;

    return-object v0
.end method

.method public k(Lzi/a;)Lzi/j4;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/j4;->a:Z

    iput-object p1, p0, Lzi/j4;->b:Lzi/a;

    return-object p0
.end method

.method public l(Lzi/b0;)Lzi/j4;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lzi/b0;->b()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lzi/c3;->g(Lzi/b0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lzi/b0;->f()Lzi/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzi/j4;->k(Lzi/a;)Lzi/j4;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lzi/j4;->a:Z

    return v0
.end method
