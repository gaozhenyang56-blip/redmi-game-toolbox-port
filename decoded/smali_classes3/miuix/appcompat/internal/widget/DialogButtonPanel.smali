.class public Lmiuix/appcompat/internal/widget/DialogButtonPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final BUTTON_TEXT_SIZE_NORMAL:F = 17.0f

.field private static final BUTTON_TEXT_SIZE_SMALL:F = 14.0f


# instance fields
.field private isContentLandscape:Z

.field private mButtonMarginHorizontal:I

.field private mButtonMarginVertical:I

.field private mButtonMinHeight:I

.field private mButtonTextSize:F

.field private mButtonsFullyVisibleHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDensityDpi:I

.field private mForceVertical:Z

.field private mLastDensityDpi:I

.field private mPanelPaddingHorizontal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x41880000    # 17.0f

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_button_panel_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_btn_margin_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_button_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMinHeight:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mLastDensityDpi:I

    return-void
.end method

.method private adjustButtonScrollIfNeed()V
    .locals 4

    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isContentLandscape:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/c;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonsFullyVisibleHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    instance-of v1, v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v1, :cond_3

    sget v1, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    check-cast v1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private handleButtonLayout(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isVerticalNeeded(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->resizeButtonTextSize(I)V

    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->handleVerticalLayout(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->handleHorizontalLayout(I)V

    :goto_0
    return-void
.end method

.method private handleHorizontalLayout(I)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result v1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMinHeight:I

    invoke-virtual {v4, v7}, Landroid/view/View;->setMinimumHeight(I)V

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x2

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_1
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_2
    if-eqz v5, :cond_3

    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-lez p1, :cond_5

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMinHeight:I

    :cond_5
    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonsFullyVisibleHeight:I

    return-void
.end method

.method private handleVerticalLayout(I)V
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v6, v0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMinHeight:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v5, -0x1

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-eqz v6, :cond_2

    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    :cond_2
    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-lez v3, :cond_5

    iget p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMinHeight:I

    mul-int/2addr p1, v3

    sub-int/2addr v3, v0

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    mul-int/2addr v3, v0

    add-int v1, p1, v3

    :cond_5
    iput v1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonsFullyVisibleHeight:I

    return-void
.end method

.method private isEllipsized(Landroid/widget/TextView;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isVerticalNeeded(I)Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ge v3, v2, :cond_3

    return v4

    :cond_3
    const/4 v5, 0x3

    if-lt v3, v5, :cond_4

    return v1

    :cond_4
    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v2

    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v4
.end method

.method private resizeButtonTextSize(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v2, v3}, Lmiuix/view/e;->b(Landroid/widget/TextView;F)V

    invoke-direct {p0, v2, p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p1, v1}, Lmiuix/view/e;->b(Landroid/widget/TextView;F)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public getButtonFullyVisibleHeight()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonsFullyVisibleHeight:I

    return v0
.end method

.method public isContentLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isContentLandscape:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mLastDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mCurrentDensityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mPanelPaddingHorizontal:I

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginHorizontal:I

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMarginVertical:I

    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMinHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonMinHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mButtonTextSize:F

    invoke-static {v1, v2}, Lmiuix/view/e;->b(Landroid/widget/TextView;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->adjustButtonScrollIfNeed()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->handleButtonLayout(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setForceVertical(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->mForceVertical:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
