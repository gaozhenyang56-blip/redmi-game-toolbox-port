.class public Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "SourceFile"


# static fields
.field private static final ITEM_NORMAL_PADDING_TOP_DP:I = 0x8

.field private static final ITEM_SMALL_PADDING_TOP_DP:I = 0x5

.field private static final MENU_ITEM_GAP_DP:I = 0xb

.field private static final MENU_ITEM_GAP_DP_IN_LARGER_FONT:I = 0x10

.field private static final SUSPEND_ITEM_CENTER_EXTRA_UP_DP:I = 0x2

.field private static final SUSPEND_MENU_MIN_MARGIN_DP:I = 0x10

.field private static final SUSPEND_MENU_MIN_WIDTH_DP:I = 0xc4

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mApplyBlur:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mBackgroundInBlur:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mBlurHelper:Lmiuix/view/k;

.field private mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mBottomMenuItemHeight:I

.field private final mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewClipBounds:Landroid/graphics/Rect;

.field private mDensityDpi:I

.field private mHasOnlyCustomView:Z

.field private mIsCustomViewHidden:Z

.field private mIsEmpty:Z

.field private mIsHidden:Z

.field private mItemNormalPaddingTop:I

.field private mItemSmallPaddingTop:I

.field private mLargeFontAdaptionEnabled:Z

.field private mMenuItemGap:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

.field private mOffSet:I

.field private mOriginViewParentClipState:[Z

.field private mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSuspendEnabled:Z

.field private mSuspendItemCenterExtraUp:I

.field private mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mSuspendMenuBackgroundRadius:I

.field private mSuspendMenuMiShadowColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mSuspendMenuMiShadowRadius:F

.field private mSuspendMenuMiShadowRadiusOffsetX:F

.field private mSuspendMenuMiShadowRadiusOffsetY:F

.field private mSuspendMenuMinMargin:I

.field private mSuspendMenuMinWidth:I

.field private mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, -0x2

    invoke-virtual {v1, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;

    invoke-direct {v5, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    aput-object v5, v4, v0

    invoke-virtual {v1, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    sget v1, Lmiuix/appcompat/R$attr;->largeFontAdaptationEnabled:I

    invoke-static {p1, v1, v3}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_1

    invoke-static {p1, v2}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    :goto_1
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height_in_large_font:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-boolean v5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    if-eqz v5, :cond_2

    move v4, v1

    :cond_2
    iput v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    invoke-static {p1, v2}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    const/high16 v1, 0x43440000    # 196.0f

    invoke-static {p1, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$color;->miuix_appcompat_suspend_menu_mi_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {p0, v3}, Lmiuix/smooth/c;->e(Landroid/view/View;Z)V

    new-instance p2, Lmiuix/view/k;

    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    invoke-direct {p2, p1, p0, v0, v1}, Lmiuix/view/k;-><init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/k$a;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$502(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    return p1
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method private getActionMenuItemCount()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private getChildrenHeight(Landroid/widget/LinearLayout;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getCustomViewClipBounds()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomViewClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getMaxChildrenTotalHeight()I
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getChildrenHeight(Landroid/widget/LinearLayout;)I

    move-result v3

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private keepHidden()V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lpl/j;->e(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method private measureActionMenuItem(IIZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lbl/i;->p(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lbl/i;->n(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lbl/i;->q(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    :goto_1
    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView:[I

    sget v3, Lmiuix/appcompat/R$attr;->responsiveActionMenuViewStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_bottomMenuBackground:I

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    sget p1, Lmiuix/appcompat/R$styleable;->ResponsiveActionMenuView_suspendMenuBackground:I

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lbl/h;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw p1
.end method

.method private resetActionMenuItemPaddingTop(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private restoreParentClipState(Landroid/view/View;)V
    .locals 4

    sget-boolean v0, Lbl/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    :cond_1
    return-void
.end method

.method private updateBackground()V
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mViewOutlineInSuspend:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBackgroundInBlur:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->mBackgroundViewApplyBlur:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public applyBlur(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {v0, p1}, Lmiuix/view/k;->a(Z)V

    return-void
.end method

.method protected clearBackground()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clipParent(Landroid/view/View;)V
    .locals 6

    sget-boolean v0, Lbl/g;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Z

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOriginViewParentClipState:[Z

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v5

    aput-boolean v5, v4, v2

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    check-cast p1, Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public filterLeftoverView(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v1

    :cond_3
    return v2
.end method

.method public getBottomMenuCustomViewOffset()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    return v0
.end method

.method public getCollapsedHeight()I
    .locals 3

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lpl/j;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-gtz v2, :cond_2

    return v1

    :cond_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasOnlyCustomView()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    return v0
.end method

.method public hideBottomMenuCustomView()V
    .locals 7

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "target"

    aput-object v4, v3, v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v6

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v0, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iput-boolean v6, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    :cond_0
    return-void
.end method

.method public isApplyBlur()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {v0}, Lmiuix/view/k;->e()Z

    move-result v0

    return v0
.end method

.method public isEnableBlur()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {v0}, Lmiuix/view/k;->f()Z

    move-result v0

    return v0
.end method

.method public isSupportBlur()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {v0}, Lmiuix/view/k;->g()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-boolean v0, Lbl/g;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->clipParent(Landroid/view/View;)V

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    iget v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    int-to-float v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Lbl/g;->b(Landroid/view/View;IFFF)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    invoke-static {p0}, Lbl/g;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/c;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/c;-><init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/view/k;->h()V

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    if-eq p1, v0, :cond_5

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mDensityDpi:I

    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    const/high16 v0, 0x41800000    # 16.0f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x43440000    # 196.0f

    invoke-static {p1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemNormalPaddingTop:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mItemSmallPaddingTop:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_bottom_menu_height_in_large_font:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-boolean v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mLargeFontAdaptionEnabled:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_bg_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_suspend_menu_mi_shadow_radius_offset_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    sget-boolean p1, Lbl/g;->a:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isSuspend()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowColor:I

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetX:F

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadiusOffsetY:F

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMiShadowRadius:F

    invoke-static {p0, p1, v0, v1, v2}, Lbl/g;->b(Landroid/view/View;IFFF)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lbl/g;->a(Landroid/view/View;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAttrs:Landroid/util/AttributeSet;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->refreshMenuBackgroundDrawables(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz p1, :cond_5

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->setShadowHostViewRadius(I)V

    :cond_5
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-boolean p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    const/16 p4, 0x8

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, p4, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/lit8 v4, p1, 0x0

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 v5, p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lpl/j;->i(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, p4, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/lit8 v4, p3, 0x0

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/lit8 v5, p3, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lpl/j;->i(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    iget p4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr p3, p4

    if-gez p3, :cond_3

    :cond_2
    move p3, p5

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    move p1, v0

    :goto_0
    if-ge p5, p4, :cond_5

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, p1, v0

    move-object v0, p0

    move-object v1, v6

    move v2, p1

    move v3, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lpl/j;->i(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    iput-boolean v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    iput-boolean v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getActionMenuItemCount()I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v6, :cond_5

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42e60000    # 115.0f

    invoke-static {v6, v12}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    iget-object v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42a00000    # 80.0f

    invoke-static {v6, v12}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v6

    const/high16 v12, -0x80000000

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    add-int/lit8 v13, v7, -0x1

    iget v14, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v13, v14

    iget v14, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v14, v7

    add-int/2addr v14, v13

    iget v15, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    mul-int/lit8 v16, v15, 0x2

    sub-int v9, v8, v16

    if-lt v14, v9, :cond_1

    sub-int/2addr v8, v5

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v8, v15

    sub-int/2addr v8, v13

    div-int/2addr v8, v7

    iput v8, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    :cond_1
    iget v8, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-direct {v0, v8, v12, v10}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getMaxChildrenTotalHeight()I

    move-result v8

    iget v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendItemCenterExtraUp:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v8, v6, v8

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v0, v8}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->resetActionMenuItemPaddingTop(I)V

    iput v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    add-int/2addr v6, v13

    iget v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    :cond_2
    sub-int v5, v8, v5

    add-int/lit8 v6, v7, -0x1

    iget v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemGap:I

    mul-int/2addr v6, v9

    sub-int/2addr v5, v6

    div-int/2addr v5, v7

    iput v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemWidth:I

    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuItemHeight:I

    add-int/2addr v6, v3

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-boolean v9, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    invoke-direct {v0, v5, v7, v9}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->measureActionMenuItem(IIZ)V

    iput v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    :goto_0
    iget v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    iget-boolean v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-nez v5, :cond_3

    sub-int/2addr v2, v3

    :cond_3
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_4

    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    iget v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v2, v1

    :cond_4
    invoke-virtual {v0, v8, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    return-void

    :cond_5
    :goto_1
    iput v2, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuItemHeight:I

    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_6

    goto :goto_4

    :cond_6
    iput-boolean v10, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mHasOnlyCustomView:Z

    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    iget-boolean v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eqz v5, :cond_7

    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    iget v6, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuMinMargin:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v8, v6

    goto :goto_2

    :cond_7
    iget-object v5, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    :goto_2
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->getCustomViewClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    iget v4, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    sub-int/2addr v3, v4

    if-gez v3, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_5

    :cond_9
    :goto_4
    iput-boolean v10, v0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsEmpty:Z

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_5
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->keepHidden()V

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    return-void
.end method

.method public onWillRemoved()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onWillRemoved()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->restoreParentClipState(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->onWillRemoved()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mParentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    :cond_0
    return-void
.end method

.method public removeCustomView()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    :cond_0
    return-void
.end method

.method protected resetBackground()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mOffSet:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {v0, p1}, Lmiuix/view/k;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->applyBlur(Z)V

    :cond_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsHidden:Z

    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {v0, p1}, Lmiuix/view/k;->n(Z)V

    return-void
.end method

.method public setSuspendEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {p1}, Lmiuix/view/k;->j()V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBlurHelper:Lmiuix/view/k;

    invoke-virtual {p1}, Lmiuix/view/k;->i()V

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public showBottomMenuCustomView()V
    .locals 7

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "target"

    aput-object v4, v3, v0

    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mCustomView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mIsCustomViewHidden:Z

    :cond_0
    return-void
.end method
