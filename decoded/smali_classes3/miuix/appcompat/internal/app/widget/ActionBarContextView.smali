.class public Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;,
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;
    }
.end annotation


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final DAMPING:F = 0.9f

.field private static final DELAY_DURATION_50:I = 0x32

.field private static final STIFFNESS_HIGH:F = 986.96f

.field private static final STIFFNESS_LOW:F = 322.27f

.field private static final TYPE_NON_TOUCH:I = 0x1

.field private static final TYPE_TOUCH:I


# instance fields
.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private mActionModeBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimateStart:Z

.field private mAnimateToVisible:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/b;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationMode:I

.field private mAnimationProgress:F

.field private mBackgroundViewApplyBlur:Z

.field private mButton1:Landroid/widget/Button;

.field private mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mButton2:Landroid/widget/Button;

.field private mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseTotalHeight:I

.field private mContentInset:I

.field private mExpandTitleStyleRes:I

.field private mExpandTitleView:Landroid/widget/TextView;

.field private mExpandTotalHeight:I

.field private mIsAnimating:Z

.field private mMainContainer:Landroid/view/View;

.field private mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mMovableMainContainer:Landroid/widget/FrameLayout;

.field private mNonTouchScrolling:Z

.field private mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mRequestAnimation:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStartWithAnim:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTouchScrolling:Z

.field private mTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mBackgroundViewApplyBlur:Z

    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    sget v2, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_expandTitleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_minHeight:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x1020019

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_action_mode_select_all:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x102001a

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_actionModeAnim:I

    invoke-virtual {v8, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->lambda$makeContextViewsShowHideWithAnimation$0(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    return p1
.end method

.method static synthetic access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$802(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    return p0
.end method

.method private addSplitMenuView()V
    .locals 6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setSupportBlur(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setEnableBlur(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->applyBlur(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mBackgroundViewApplyBlur:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->updateBackground(Z)V

    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v2, v4}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-static {v2, v3}, Lpl/j;->k(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v2}, Lpl/j;->k(Landroid/view/View;I)V

    :cond_5
    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    instance-of v3, v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    if-eqz v3, :cond_6

    check-cast v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setSuspendEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .locals 6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v0, p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v3, v4, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1, v0, v4, v4, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v3, v4, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v3, v4, v4, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onAllAnimationsEnd()V

    return-void
.end method

.method private bindActionMenuItemInfo(Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method private bindButtonInfo(Landroid/widget/Button;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_mode_title_button_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_3
    const p2, 0x7fffffff

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxHeight(I)V

    return-void
.end method

.method public static synthetic c(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->lambda$makeContextViewsShowHideWithAnimation$1(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    return-void
.end method

.method private canTitleBeShown()Z
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTitleEnableEllipsis()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    return v3
.end method

.method private clearBackground()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackgroundInternal(Z)V

    :cond_0
    return-void
.end method

.method private getButton(I)Landroid/widget/Button;
    .locals 1

    const v0, 0x1020019

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    return-object p1

    :cond_0
    const v0, 0x102001a

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getButtonMenuItem(I)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 1

    const v0, 0x1020019

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p1

    :cond_0
    const v0, 0x102001a

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;
    .locals 2

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-direct {v0, p1, v1, p4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    invoke-virtual {v0, p3}, Lmiuix/animation/physics/DynamicAnimation;->setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p1

    const p2, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    const/high16 p1, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object v0
.end method

.method private static synthetic lambda$makeContextViewsShowHideWithAnimation$0(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->countDown()V

    return-void
.end method

.method private static synthetic lambda$makeContextViewsShowHideWithAnimation$1(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->countDown()V

    return-void
.end method

.method private onAllAnimationsEnd()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->killMode()V

    :cond_0
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    if-eqz v3, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    aput-object v2, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    return-void
.end method

.method private onFinishStartActionMode(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private onLayoutCollapseViews(IIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr p4, p2

    sub-int/2addr p4, v6

    div-int/lit8 p4, p4, 0x2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int v4, v2, p2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int v5, p4, p2

    move-object v0, p0

    move v3, p4

    invoke-static/range {v0 .. v5}, Lpl/j;->i(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    :cond_0
    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, p1, p3, p4, v6}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHideWithAnimation(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private resetBackground()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackgroundInternal(Z)V

    :cond_0
    return-void
.end method

.method private setButtonContentDescription(Landroid/widget/Button;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_cancel:I

    if-eq v0, p2, :cond_9

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_cancel_light:I

    if-eq v0, p2, :cond_9

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_cancel_dark:I

    if-ne v0, p2, :cond_1

    goto :goto_3

    :cond_1
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_confirm:I

    if-eq v0, p2, :cond_8

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_confirm_light:I

    if-eq v0, p2, :cond_8

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_confirm_dark:I

    if-ne v0, p2, :cond_2

    goto :goto_2

    :cond_2
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_select_all:I

    if-eq v0, p2, :cond_7

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_select_all_light:I

    if-eq v0, p2, :cond_7

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_select_all_dark:I

    if-ne v0, p2, :cond_3

    goto :goto_1

    :cond_3
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all:I

    if-eq v0, p2, :cond_6

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_deselect_all_light:I

    if-eq v0, p2, :cond_6

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_deselect_all_dark:I

    if-ne v0, p2, :cond_4

    goto :goto_0

    :cond_4
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_delete:I

    if-eq v0, p2, :cond_5

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_delete_light:I

    if-eq v0, p2, :cond_5

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_delete_dark:I

    if-ne v0, p2, :cond_a

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_delete_description:I

    goto :goto_4

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_deselect_all_description:I

    goto :goto_4

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_select_all_description:I

    goto :goto_4

    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_confirm_description:I

    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_cancel_description:I

    :goto_4
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method private setSplitAnimating(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setAnimating(Z)V

    :cond_0
    return-void
.end method

.method private stopSplitMenuAnimation()V
    .locals 6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    :goto_0
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v4, v0

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHide(Z)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHideWithAnimation(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHide(Z)V

    :goto_0
    return-void
.end method

.method protected cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->stopSplitMenuAnimation()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method public closeMode()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->endAnimation()V

    const/4 v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected endAnimation()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->skipToEnd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->stopSplitMenuAnimation()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getActionBarStyle()I
    .locals 1

    const v0, 0x1010394

    return v0
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getAnimationProgress()F
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    return v0
.end method

.method public getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    return v0
.end method

.method public bridge synthetic getExpandState()I
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedHeight()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTotalHeight:I

    return v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitleView(I)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleView(I)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    return-object p1

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    return-object p1
.end method

.method public getViewHeight()I
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->killMode()V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_5

    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_responsive_action_menu_layout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_menu_item_layout:I

    invoke-direct {v1, v2, v0, v3, v4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setActionEditMode(Z)V

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addSplitMenuView()V

    :goto_1
    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ActionBarOverlayLayout not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initTitle()V
    .locals 8

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_title_item:I

    invoke-virtual {v0, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x1020019

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x102001a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    const/high16 v4, 0x42700000    # 60.0f

    const v5, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_0

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    aput-object v6, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v6, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v6}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v6, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v5, v6}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    new-array v7, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v6, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    aput-object v6, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    invoke-interface {v0, v4}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    aput-object v6, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v6, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v6}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    new-array v7, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v6, v7}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    aput-object v6, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v6, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v6}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v6, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v5, v6}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    new-array v6, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v5, v6}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    aput-object v5, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    invoke-interface {v0, v4}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    new-array v0, v2, [Landroid/view/View;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    aput-object v4, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v4, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v4}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    new-array v5, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v4, v5}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Lmiuix/theme/b;->a(Landroid/widget/TextView;)V

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    if-eqz v0, :cond_4

    move v6, v3

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v5, v3

    :cond_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v4, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v4, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_1

    :cond_9
    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v2, 0x14

    invoke-virtual {v0, v4, v3, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_a
    :goto_1
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mIsAnimating:Z

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isResizable()Z
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public bridge synthetic isUserSetExpandState()Z
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    move-result v0

    return v0
.end method

.method public killMode()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onWillRemoved()V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    :cond_2
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected makeContextViewsShowHide(Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    int-to-float v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    return-void
.end method

.method protected makeContextViewsShowHideWithAnimation(Z)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v2, p1

    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    if-ne v2, v0, :cond_0

    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    const/4 v9, 0x0

    iput-boolean v9, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :goto_0
    if-eqz v2, :cond_2

    const v3, 0x43a1228f

    goto :goto_1

    :cond_2
    const v3, 0x4476bd71

    :goto_1
    invoke-direct {v8, v8, v3, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v1

    if-eqz v2, :cond_3

    const-wide/16 v3, 0x32

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartDelay(J)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    iput-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    const/4 v10, 0x1

    if-nez v0, :cond_4

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    new-instance v2, Lmiuix/appcompat/internal/app/widget/b;

    invoke-direct {v2, v8}, Lmiuix/appcompat/internal/app/widget/b;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    invoke-direct {v0, v10, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;-><init>(ILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;)V

    new-instance v2, Lmiuix/appcompat/internal/app/widget/c;

    invoke-direct {v2, v0}, Lmiuix/appcompat/internal/app/widget/c;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;)V

    invoke-virtual {v1, v2}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void

    :cond_4
    new-instance v7, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/b;

    invoke-direct {v0, v8}, Lmiuix/appcompat/internal/app/widget/b;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    const/4 v11, 0x2

    invoke-direct {v7, v11, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;-><init>(ILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;)V

    new-instance v0, Lmiuix/appcompat/internal/app/widget/d;

    invoke-direct {v0, v7}, Lmiuix/appcompat/internal/app/widget/d;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;)V

    invoke-virtual {v1, v0}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    iget-object v12, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-nez v12, :cond_5

    move v4, v9

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    move v4, v0

    :goto_3
    if-eqz v2, :cond_6

    move v14, v4

    move v15, v9

    goto :goto_4

    :cond_6
    move v15, v4

    move v14, v9

    :goto_4
    if-eqz v12, :cond_9

    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-nez v0, :cond_7

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    new-array v3, v11, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    :cond_7
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTransitionListener:Lmiuix/animation/listener/TransitionListener;

    if-eqz v0, :cond_8

    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v10, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v3, v9

    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_8
    iget-object v6, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    new-array v5, v10, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v11, v3

    move-object v3, v13

    move-object v10, v5

    move v5, v15

    move-object/from16 v16, v6

    move v6, v14

    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;ZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;)V

    iput-object v11, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTransitionListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v11, v10, v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    aput-object v12, v1, v9

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v3, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    invoke-virtual {v13, v9, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/b;

    invoke-interface {v1, p1}, Lmiuix/view/b;->onStop(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/b;

    invoke-interface {v1, p1}, Lmiuix/view/b;->onStart(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/b;

    invoke-interface {v1, p1, p2}, Lmiuix/view/b;->onUpdate(ZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionMode:[I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getActionBarStyle()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_android_minHeight:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarPaddingEnd:I

    invoke-static {v0, v1}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-ne p2, v1, :cond_4

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_3

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v3, :cond_2

    const/16 v4, 0x14

    invoke-virtual {v3, v0, v2, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    :cond_2
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_4
    if-nez p2, :cond_6

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    :cond_7
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int v0, p4, p2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sub-int v9, p5, p3

    sub-int v7, v9, v1

    sub-int/2addr p5, v1

    invoke-direct {p0, p2, p3, p4, p5}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutCollapseViews(IIII)V

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v8, p4

    invoke-virtual/range {v4 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutExpandViews(ZIIII)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->animateLayoutWithProcess(F)V

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    const/16 p1, 0x280

    if-le v0, p1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    return-void
.end method

.method protected onLayoutExpandViews(ZIIII)V
    .locals 1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    invoke-static {p0}, Lpl/j;->f(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p2, p4, p1

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p5, p3

    sub-int/2addr p4, p5

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_0
    sub-int/2addr p2, v1

    const/high16 v1, -0x80000000

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v3, v2, p2, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    invoke-virtual {v5, v2, p2}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->canTitleBeShown()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v6, :cond_4

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_4
    if-gtz v0, :cond_6

    if-lez v3, :cond_5

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int v4, p2, v0

    :cond_5
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    goto :goto_3

    :cond_6
    if-lt v3, v0, :cond_7

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    :cond_7
    :goto_3
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTotalHeight:I

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    add-int/2addr p2, v0

    :goto_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_9
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    goto :goto_4

    :goto_5
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p3, :cond_2

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    if-le p1, p2, :cond_2

    sub-int/2addr p1, p3

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-lt p1, p2, :cond_1

    sub-int p1, p5, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    const/4 p1, 0x1

    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p2, p5, :cond_2

    aput p3, p6, p1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gez p5, :cond_2

    if-ge p3, p2, :cond_2

    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    sub-int p6, p3, p5

    const/4 v0, 0x1

    if-gt p6, p2, :cond_1

    sub-int p1, p4, p5

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    aget p1, p7, v0

    add-int/2addr p1, p5

    aput p1, p7, v0

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p3

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    aget p1, p7, v0

    neg-int p2, p2

    add-int/2addr p1, p2

    aput p1, p7, v0

    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p1, p4, :cond_2

    aput p5, p8, v0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-nez p4, :cond_1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    const v1, 0x102001a

    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->postShowOverflowMenu()V

    :cond_0
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    :cond_0
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_3
    if-ne v0, p1, :cond_4

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_4
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, v0

    if-le p2, v1, :cond_5

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    sub-int/2addr v0, p2

    invoke-virtual {p1, v2, p2, v2, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public refreshBottomMenu()V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addSplitMenuView()V

    :cond_0
    return-void
.end method

.method public removeAnimationListener(Lmiuix/view/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-void
.end method

.method public setActionModeAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method public bridge synthetic setBottomMenuMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setBottomMenuMode(I)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->bindButtonInfo(Landroid/widget/Button;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getButtonMenuItem(I)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->bindActionMenuItemInfo(Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, v0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButtonContentDescription(Landroid/widget/Button;I)V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->bindButtonInfo(Landroid/widget/Button;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getButtonMenuItem(I)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->bindActionMenuItemInfo(Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentInset(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public bridge synthetic setExpandState(IZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public bridge synthetic setPendingInset(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public bridge synthetic setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSubTitleClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public bridge synthetic setTitleClickable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setTitleClickable(Z)V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mBackgroundViewApplyBlur:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->clearBackground()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->resetBackground()V

    :goto_0
    return-void
.end method
