.class public Lf1/r;
.super Lf1/a;
.source "SourceFile"


# instance fields
.field private final o:Ll1/a;

.field private final p:Ljava/lang/String;

.field private final q:Z

.field private final r:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/p;)V
    .locals 11

    invoke-virtual {p3}, Lk1/p;->b()Lk1/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lk1/p$b;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lk1/p;->e()Lk1/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lk1/p$c;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lk1/p;->g()F

    move-result v6

    invoke-virtual {p3}, Lk1/p;->i()Lj1/d;

    move-result-object v7

    invoke-virtual {p3}, Lk1/p;->j()Lj1/b;

    move-result-object v8

    invoke-virtual {p3}, Lk1/p;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lk1/p;->d()Lj1/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lf1/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLj1/d;Lj1/b;Ljava/util/List;Lj1/b;)V

    iput-object p2, p0, Lf1/r;->o:Ll1/a;

    invoke-virtual {p3}, Lk1/p;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf1/r;->p:Ljava/lang/String;

    invoke-virtual {p3}, Lk1/p;->k()Z

    move-result p1

    iput-boolean p1, p0, Lf1/r;->q:Z

    invoke-virtual {p3}, Lk1/p;->c()Lj1/a;

    move-result-object p1

    invoke-virtual {p1}, Lj1/a;->a()Lg1/a;

    move-result-object p1

    iput-object p1, p0, Lf1/r;->r:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    invoke-virtual {p2, p1}, Ll1/a;->j(Lg1/a;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Lq1/c;)V
    .locals 1
    .param p2    # Lq1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lq1/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lf1/a;->d(Ljava/lang/Object;Lq1/c;)V

    sget-object v0, Lcom/airbnb/lottie/j;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lf1/r;->r:Lg1/a;

    invoke-virtual {p1, p2}, Lg1/a;->m(Lq1/c;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/j;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lf1/r;->s:Lg1/a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lf1/r;->o:Ll1/a;

    invoke-virtual {v0, p1}, Ll1/a;->D(Lg1/a;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/r;->s:Lg1/a;

    goto :goto_0

    :cond_2
    new-instance p1, Lg1/p;

    invoke-direct {p1, p2}, Lg1/p;-><init>(Lq1/c;)V

    iput-object p1, p0, Lf1/r;->s:Lg1/a;

    invoke-virtual {p1, p0}, Lg1/a;->a(Lg1/a$b;)V

    iget-object p1, p0, Lf1/r;->o:Ll1/a;

    iget-object p2, p0, Lf1/r;->r:Lg1/a;

    invoke-virtual {p1, p2}, Ll1/a;->j(Lg1/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lf1/r;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf1/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lf1/r;->r:Lg1/a;

    check-cast v1, Lg1/b;

    invoke-virtual {v1}, Lg1/b;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lf1/r;->s:Lg1/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lf1/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lg1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lf1/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf1/r;->p:Ljava/lang/String;

    return-object v0
.end method
