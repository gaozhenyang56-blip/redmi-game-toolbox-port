.class public Ldb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    invoke-static {p0}, Lbl/p;->g(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {p0}, Ldb/d;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {p0}, Lbl/p;->g(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move v2, p0

    :goto_0
    invoke-static {v0, v2, v1, v3}, Ldb/e;->i(IIII)Z

    move-result p0

    div-int/lit8 v4, v2, 0xc

    const v5, 0x3c23d70a    # 0.01f

    int-to-float v6, v0

    int-to-float v1, v1

    div-float/2addr v6, v1

    invoke-static {v6, v5, p0}, Ldb/e;->f(FFZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    invoke-static {v6, v5, p0}, Ldb/e;->d(FFZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x7

    return p0

    :cond_2
    invoke-static {v6, v5, p0}, Ldb/e;->e(FFZ)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    invoke-static {v2, v3}, Ldb/e;->h(II)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0, v2, v4}, Ldb/e;->g(III)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x4

    return p0

    :cond_5
    invoke-static {v0, v2, v4}, Ldb/e;->j(III)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-static {v0, v2, v4}, Ldb/e;->g(III)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    return p0

    :cond_7
    invoke-static {v0, v2, v4}, Ldb/e;->k(III)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static b()I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private static d(FFZ)Z
    .locals 1

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f400000    # 0.75f

    sub-float v0, p2, p1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    add-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(FFZ)Z
    .locals 1

    if-eqz p2, :cond_0

    const p2, 0x3faa9fbe    # 1.333f

    sub-float v0, p2, p1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    add-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f(FFZ)Z
    .locals 1

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f100000    # 0.5625f

    sub-float v0, p2, p1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    add-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(III)Z
    .locals 1

    int-to-float p0, p0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    sub-float v0, p1, p2

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    add-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(II)Z
    .locals 0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i(IIII)Z
    .locals 0

    if-lt p2, p1, :cond_0

    if-ge p0, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static j(III)Z
    .locals 1

    int-to-float p0, p0

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    sub-float v0, p1, p2

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    add-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static k(III)Z
    .locals 1

    int-to-float p0, p0

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    sub-float v0, p1, p2

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    add-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
