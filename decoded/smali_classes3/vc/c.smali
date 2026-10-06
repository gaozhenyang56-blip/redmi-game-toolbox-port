.class public final Lvc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nViewUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewUtils.kt\ncom/miui/permcenter/settings/utils/ViewUtilsKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,89:1\n81#1,9:90\n81#1,5:99\n87#1,3:105\n81#1,9:108\n254#2:104\n*S KotlinDebug\n*F\n+ 1 ViewUtils.kt\ncom/miui/permcenter/settings/utils/ViewUtilsKt\n*L\n55#1:90,9\n61#1:99,5\n61#1:105,3\n70#1:108,9\n62#1:104\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(IILandroid/view/View;[I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lvc/c;->d(IILandroid/view/View;[I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroid/view/View;)F
    .locals 0

    invoke-static {p0}, Lvc/c;->e(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static final synthetic c(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lvc/c;->f(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final d(IILandroid/view/View;[I)Z
    .locals 5

    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, p3, v1

    aget v3, p3, v0

    if-gt v2, p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    if-gt p0, v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    if-gt v3, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    :goto_3
    return v1

    :cond_5
    return v0
.end method

.method private static final e(Landroid/view/View;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static final f(Landroid/view/View;)Z
    .locals 3

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    return v0
.end method
