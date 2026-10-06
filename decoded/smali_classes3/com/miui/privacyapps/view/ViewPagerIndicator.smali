.class public Lcom/miui/privacyapps/view/ViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/drawable/GradientDrawable;

.field private c:Landroid/graphics/drawable/GradientDrawable;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->b()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x10100a1

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v0, v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    aget-object p1, v0, v1

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071ef5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->e:I

    iput v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->f:I

    return-void
.end method


# virtual methods
.method public c(IIIII)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p4, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p4, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    new-instance p4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p4, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-void
.end method

.method public d(IIII)V
    .locals 0

    iput p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->e:I

    iput p2, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->g:I

    iput p3, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->f:I

    iput p4, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->h:I

    return-void
.end method

.method public e(II)V
    .locals 6

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->d:I

    iget-boolean v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    rem-int/2addr p2, p1

    goto :goto_0

    :cond_1
    if-gtz p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    if-lt p2, p1, :cond_3

    add-int/lit8 p2, p1, -0x1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v2, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->e:I

    iget v3, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->g:I

    iget v4, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->f:I

    iget v5, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->h:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_6

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->b:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->c:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_4

    invoke-direct {p0, v4, v5}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080f21

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne v2, p2, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->i:Z

    return-void
.end method

.method public setIndicatorNum(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->e(II)V

    return-void
.end method

.method public setSelected(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->d:I

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->d:I

    if-lt p1, v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v2, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->d:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method
