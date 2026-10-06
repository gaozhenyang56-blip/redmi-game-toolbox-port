.class public Ldl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lbl/o;Landroid/content/Context;Landroid/graphics/Point;)Lbl/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lbl/o;->c:Landroid/graphics/Point;

    invoke-static {p1, p2, v0}, Lbl/p;->l(Landroid/content/res/Configuration;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lbl/o;->g:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lbl/o;->g:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    iget-object p2, p0, Lbl/o;->c:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    :cond_1
    invoke-static {p0, p1}, Ldl/a;->c(Lbl/o;F)Lbl/o;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lbl/o;Landroid/content/Context;Landroid/graphics/Point;)Lbl/o;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p1, p2}, Ldl/a;->a(Lbl/o;Landroid/content/Context;Landroid/graphics/Point;)Lbl/o;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lbl/o;F)Lbl/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lbl/o;->g:I

    goto :goto_1

    :cond_0
    const v0, 0x3f3d70a4    # 0.74f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f428f5c    # 0.76f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/16 p1, 0x2003

    goto :goto_0

    :cond_1
    const v0, 0x3fa8f5c3    # 1.32f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    const v0, 0x3fab851f    # 1.34f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const/16 p1, 0x2002

    goto :goto_0

    :cond_2
    const v0, 0x3fe147ae    # 1.76f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    const v0, 0x3fe51eb8    # 1.79f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/16 p1, 0x2001

    goto :goto_0

    :cond_3
    const/16 p1, 0x2004

    goto :goto_0

    :goto_1
    return-object p0
.end method
