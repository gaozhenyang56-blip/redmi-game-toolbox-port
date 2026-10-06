.class public Lh8/a;
.super Lh8/b;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lh8/b;-><init>(I)V

    iput p2, p0, Lh8/b;->c:I

    iput p5, p0, Lh8/a;->g:I

    iput p3, p0, Lh8/a;->d:I

    iput p4, p0, Lh8/a;->e:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupport: func="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh8/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tfrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj8/u;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tvpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj8/u;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvancedSettingsModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lh8/a;->g:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    invoke-static {v0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lh8/a;->g:I

    return v0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lh8/a;->g:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const v0, 0x7f0810b6

    return v0

    :cond_0
    const v0, 0x7f0810b8

    return v0
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lh8/a;->g:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const v0, 0x7f0810b7

    return v0

    :cond_0
    const v0, 0x7f0810b9

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lh8/a;->f:Z

    return v0
.end method

.method public k()Z
    .locals 4

    iget v0, p0, Lh8/a;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Li8/c;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Li8/c;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/a;->f:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lh8/a;->g:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lh8/a;->f:Z

    invoke-static {p1}, Lj8/u;->P(Z)V

    iget-boolean p1, p0, Lh8/a;->f:Z

    invoke-static {p1}, Li8/c;->K0(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lj8/u;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lh8/a;->f:Z

    invoke-static {p1}, Lj8/u;->L(Z)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lh8/a;->f:Z

    invoke-static {p1}, Lj8/u;->K(Z)V

    iget-boolean p1, p0, Lh8/a;->f:Z

    invoke-static {p1}, Li8/c;->k0(Z)V

    :goto_0
    return-void
.end method
