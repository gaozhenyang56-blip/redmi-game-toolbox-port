.class public Lz6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, La8/k2;->r(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    invoke-static {}, La8/k2;->u()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x428c0000    # 70.0f

    :goto_0
    invoke-static {p0, v1}, Lx4/a0;->a(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    if-eqz v0, :cond_0

    invoke-static {p0}, La8/k2;->n(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, La8/k2;->o(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {p0, v1}, Lx4/a0;->a(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "game_time_float_window_tag"

    invoke-static {v0}, Ll8/b;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ll8/b;->q(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Ly6/a;

    invoke-direct {v1, p0}, Ly6/a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Ll8/b;->D(Landroid/content/Context;)Ll8/b$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Ll8/b$b;->c(Ljava/lang/String;)Ll8/b$b;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070fb9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ll8/b$b;->e(Landroid/view/View;II)Ll8/b$b;

    move-result-object p1

    invoke-static {p0}, Lz6/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lz6/a;->b(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ll8/b$b;->d(II)Ll8/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Ll8/b$b;->b(Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, La8/o0;->v(Z)V

    return-void
.end method

.method public static d()V
    .locals 1

    const-string v0, "game_time_float_window_tag"

    invoke-static {v0}, Ll8/b;->q(Ljava/lang/String;)V

    return-void
.end method
