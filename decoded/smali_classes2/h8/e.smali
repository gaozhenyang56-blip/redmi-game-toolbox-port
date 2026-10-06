.class public Lh8/e;
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

    iput p5, p0, Lh8/e;->g:I

    iput p3, p0, Lh8/e;->d:I

    iput p4, p0, Lh8/e;->e:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    invoke-static {}, La8/g0;->z()Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lh8/e;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lh8/e;->e:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lh8/e;->d:I

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lh8/e;->f:Z

    return v0
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/e;->f:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lh8/e;->f:Z

    invoke-static {p1}, Li8/c;->i0(Z)V

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lh8/e;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-static {p1, v0}, Lj8/g;->w(Ljava/lang/String;I)V

    return-void
.end method
