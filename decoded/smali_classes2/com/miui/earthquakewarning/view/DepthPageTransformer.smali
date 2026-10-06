.class public Lcom/miui/earthquakewarning/view/DepthPageTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    cmpg-float v1, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v1, :cond_2

    add-float/2addr v3, p2

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v0

    neg-float p2, p2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sub-float v1, v3, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v0

    neg-float v1, p2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    cmpl-float p2, p2, v3

    if-nez p2, :cond_3

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
