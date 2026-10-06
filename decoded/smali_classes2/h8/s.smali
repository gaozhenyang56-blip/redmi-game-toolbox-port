.class public Lh8/s;
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

    iput p5, p0, Lh8/s;->g:I

    iput p3, p0, Lh8/s;->d:I

    iput p4, p0, Lh8/s;->e:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    invoke-static {}, Lj8/u;->D()Z

    move-result v0

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/s;->f:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lh8/s;->f:Z

    invoke-static {p1}, Li8/c;->e0(Z)V

    iget-boolean p1, p0, Lh8/s;->f:Z

    invoke-static {p1}, Lj8/u;->M(Z)V

    return-void
.end method
