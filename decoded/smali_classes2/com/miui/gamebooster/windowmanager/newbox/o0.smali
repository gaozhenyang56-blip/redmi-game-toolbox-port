.class public Lcom/miui/gamebooster/windowmanager/newbox/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/k2;->y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/o0;->c(Landroid/content/res/Resources;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, La8/k2;->i(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static b()I
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, La8/z;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, La8/k2;->n(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const v0, 0x7f070e1f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/res/Resources;)I
    .locals 2

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->n(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f071011

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f071e0c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method
