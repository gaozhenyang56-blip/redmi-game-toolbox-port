.class public Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mCollapseTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapseTitlePaintTextSize:F

.field private mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultSubtitleSize:F

.field private mIsTitleDirty:Z

.field private mLargeFontAdaptEnable:Z

.field private mLargeFontTitleMaxLine:I

.field private mSubtitleSizeable:Z

.field private mSubtitleStyle:I

.field private mTextColorTransitEnable:Z

.field private mTitleLength:F

.field private mTitleStyle:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    const/4 v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$init$0()V

    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->lambda$init$1()V

    return-void
.end method

.method private getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private synthetic lambda$init$0()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    const v2, 0x101039c

    invoke-static {v1, v2}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget v1, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_bar_subtitle_bg_land:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private resetTitleMaxLine(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canTitleBeShown(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitlePaintTextSize:F

    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_3

    return v3

    :cond_3
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleLength:F

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    return v3
.end method

.method public getHitRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSubtitleAdjustSize()F
    .locals 8

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_0

    return v0

    :cond_0
    new-instance v3, Landroid/text/TextPaint;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    :goto_0
    if-le v4, v2, :cond_1

    cmpl-float v4, v0, v5

    if-ltz v4, :cond_1

    sub-float/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getTitleParent()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleVisibility()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 9

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v1

    iget-object v1, v1, Lbl/o;->c:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lsl/b;->a(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_subtitle_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mDefaultSubtitleSize:F

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v2, Lmiuix/appcompat/internal/view/CollapseTitleColorTransitionTextView;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v7, Lmiuix/appcompat/R$attr;->collapseTitleTheme:I

    const/4 v8, 0x0

    invoke-direct {v2, v6, v8, v7}, Lmiuix/appcompat/internal/view/CollapseTitleColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v6, Lmiuix/appcompat/R$attr;->actionBarTitleAdaptLargeFont:I

    invoke-static {v2, v6, v3}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v2

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontAdaptEnable:Z

    if-eqz v3, :cond_4

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/appcompat/R$attr;->collapseTitleLargeFontMaxLine:I

    invoke-static {v2, v3, v5}, Lpl/d;->j(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mLargeFontTitleMaxLine:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_4
    sget v2, Lmiuix/appcompat/R$attr;->collapseSubtitleTheme:I

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v7, v2

    :goto_4
    new-instance v2, Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v8, v7}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lxk/a;

    invoke-direct {v3, p0}, Lxk/a;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_6

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    new-instance v3, Lxk/b;

    invoke-direct {v3, p0}, Lxk/b;-><init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getChildLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_7

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_start_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_5

    :cond_7
    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v1, Lmiuix/appcompat/R$dimen;->action_bar_subtitle_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public setAllTitlesClickable(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->resetTitleMaxLine(Z)V

    return-void
.end method

.method public setSubTitleOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSubTitleStyle(I)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->q(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSubTitleTextSize(F)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setSubTitleVisibility(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTextColorTransitEnable(ZI)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v1, v0, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mIsTitleDirty:Z

    :cond_0
    return-void
.end method

.method public setTitleStyle(I)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->q(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mVisible:Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startColorTransition(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTextColorTransitEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V

    return-void
.end method

.method public updateTitleCenter(Z)V
    .locals 4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getTitleParent()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const v3, 0x800003

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    or-int/lit8 p1, v2, 0x10

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method
