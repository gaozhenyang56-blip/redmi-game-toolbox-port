.class public Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/j0;
.implements Lmiuix/appcompat/app/IMenuState;
.implements Lmiuix/view/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field protected mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field protected mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

.field private mAnimating:Z

.field private mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/graphics/Rect;

.field private mBottomExtraInset:I

.field private mBottomMenuExtraInset:I

.field private mBottomMenuMode:I

.field private mBottomMenuModeConfig:I

.field private final mBottomMenuVisibleHeight:[I

.field private mCallback:Landroid/view/Window$Callback;

.field private mContentAutoFitSystemWindow:Z

.field private mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskInsets:Landroid/graphics/Rect;

.field protected mContentView:Landroid/view/View;

.field private mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

.field private mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field private mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field private mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

.field protected final mCoordinatedScrollViewSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCorrectNestedScrollMotionEventEnabled:Z

.field private final mCurrentContentInset:Landroid/graphics/Rect;

.field private mDeviceType:I

.field private mExtraHorizontalPadding:I

.field private mExtraPaddingApplyToContentEnable:Z

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingInitEnable:Z

.field private mExtraPaddingObserver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyk/a;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraPaddingPolicy:Lyk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

.field private mInflateLayout:Landroid/view/View;

.field private mInnerInsets:Landroid/graphics/Rect;

.field private mInsetTopInMiuixFloating:I

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mIsInSearchMode:Z

.field private mIsMiuixFloating:Z

.field private mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastDispatchContentInset:Landroid/graphics/Rect;

.field private mLastInnerInsets:Landroid/graphics/Rect;

.field private mLayoutStable:Z

.field private mLifecycleOwner:Landroidx/lifecycle/v;

.field private mNestedScrollingParentEnabled:Z

.field private final mOffsetInWindow:[I

.field private mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

.field private final mOriginalInset:Landroid/graphics/Rect;

.field private mOverlayMode:Z

.field private mRequestFitSystemWindow:Z

.field private mRootSubDecor:Z

.field private mShouldExtraPaddingHorizontalNotifyChanged:Z

.field protected mSplitAnimContentMask:Landroid/view/ViewStub;

.field private mSqueezeContentByIme:Z

.field private final mThemeCompatSystemInset:Landroid/graphics/Rect;

.field private mTranslucentStatus:I

.field private mWindowInsetsController:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/v;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuVisibleHeight:[I

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-direct {v4, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    iput-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mNestedScrollingParentEnabled:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    invoke-static {p1}, Lmiuix/smooth/c;->a(Landroid/content/Context;)V

    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-static {p1}, Lsl/b;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    sget p3, Lmiuix/appcompat/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz p3, :cond_0

    sget p3, Lmiuix/appcompat/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget p2, Lmiuix/appcompat/R$attr;->bottomMenuMode:I

    invoke-static {p1, p2, v1}, Lpl/d;->j(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    sget p2, Lmiuix/appcompat/R$attr;->squeezeContentByIme:I

    invoke-static {p1, p2, v1}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    sget p2, Lmiuix/appcompat/R$attr;->layoutStable:I

    invoke-static {p1, p2, v1}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method static synthetic access$202(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    return-void
.end method

.method private adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    invoke-interface {p1, v0}, Lmiuix/appcompat/app/IContentInsetState;->onDispatchNestedScrollOffset([I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method private applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v1, :cond_0

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p4, :cond_1

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v1, :cond_1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move p3, v0

    :cond_1
    if-eqz p5, :cond_2

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p5, :cond_2

    iput p5, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move p3, v0

    :cond_2
    if-eqz p6, :cond_3

    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p2, :cond_3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    return v0
.end method

.method private computeFitSystemInsets(ZZILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    invoke-virtual {p5, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p4, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-nez p1, :cond_1

    iput p4, p5, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_4

    sub-int/2addr p1, p3

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    if-gez p1, :cond_4

    :cond_3
    :goto_0
    iput p4, p5, Landroid/graphics/Rect;->bottom:I

    :cond_4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    if-eqz p1, :cond_5

    if-lez p3, :cond_5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .locals 1

    instance-of v0, p1, Lmiuix/view/l$b;

    if-eqz v0, :cond_0

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0

    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method private dismissContextMenu()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    :cond_0
    return-void
.end method

.method private dispatchContentInset(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->notifyContentInset()V

    :cond_0
    return-void
.end method

.method private dispatchInsetsIgnoreVisibility(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lmiuix/view/n;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lmiuix/view/n;

    invoke-interface {v3, p2}, Lmiuix/view/n;->a(Z)V

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchInsetsIgnoreVisibility(Landroid/view/ViewGroup;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAdjustView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object p1

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method private getDisplayCoutInsets()Landroidx/core/graphics/e;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->H(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->e()Landroidx/core/view/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/f;->a(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    :goto_1
    invoke-static {v1, v2, v3, v0}, Landroidx/core/graphics/e;->b(IIII)Landroidx/core/graphics/e;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v0}, Landroidx/core/view/g;->b()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/view/g;->d()I

    move-result v2

    invoke-virtual {v0}, Landroidx/core/view/g;->c()I

    move-result v3

    invoke-virtual {v0}, Landroidx/core/view/g;->a()I

    move-result v0

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private internalShowContextMenu(Landroid/view/View;FF)Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;FF)Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCutoutToLeftEdge(Landroidx/core/graphics/e;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p1, Landroidx/core/graphics/e;->a:I

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isCutoutToRightEdge(Landroidx/core/graphics/e;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p1, Landroidx/core/graphics/e;->c:I

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isLayoutHideNavigation()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNavigationBarToLeftEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->a()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->f()I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->g(I)Landroidx/core/graphics/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->a()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->f()I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object p1

    :goto_0
    iget p1, p1, Landroidx/core/graphics/e;->a:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private isNavigationBarToRightEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->a()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->f()I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->g(I)Landroidx/core/graphics/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->a()I

    move-result p2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->f()I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object p1

    :goto_0
    iget p1, p1, Landroidx/core/graphics/e;->c:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->refreshBottomMenu()V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->refreshBottomMenu()V

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/v;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->e:Landroidx/lifecycle/l$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->close()V

    :cond_4
    return-void
.end method

.method private notifyContentInset()V
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateContentInsetForNestedObserver(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastDispatchContentInset:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lmiuix/appcompat/app/IContentInsetState;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private pullChildren()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_3

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->windowActionBar:I

    invoke-static {v0, v1, v2}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setOverlayMode(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuMode(I)V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setMiuixFloatingOnInit(Z)V

    :cond_3
    return-void
.end method

.method private updateExtraPaddingHorizontal(Landroid/content/Context;Lyk/b;II)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lyk/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {p1, v1}, Lbl/c;->j(Landroid/content/Context;Landroid/content/res/Configuration;)Lbl/o;

    move-result-object p1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    iget-object p3, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    :cond_0
    move v5, p3

    if-ne p4, v1, :cond_1

    iget-object p3, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->y:I

    :cond_1
    move v6, p4

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iget-object p1, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-boolean v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    move-object v2, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lyk/b;->i(IIIIFZ)V

    invoke-virtual {p2}, Lyk/b;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lyk/b;->f()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    if-eq p1, p2, :cond_3

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public addExtraPaddingObserver(Lyk/a;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    invoke-interface {p1, v0}, Lyk/a;->setExtraHorizontalPadding(I)Z

    :cond_1
    return-void
.end method

.method public animateContentMarginBottomByBottomMenu(I)V
    .locals 8

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    :cond_0
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v3, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, v3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public applyWindowInsets(ZZZZZ)V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInsetsController:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInsetsController:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInsetsController:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;

    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->isFloatingMode:Z

    const/4 v2, 0x1

    if-eq v1, p1, :cond_1

    iput-boolean p1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->isFloatingMode:Z

    move p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreLeftInset:Z

    if-eq v1, p2, :cond_2

    iput-boolean p2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreLeftInset:Z

    move p1, v2

    :cond_2
    iget-boolean p2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreTopInset:Z

    if-eq p2, p3, :cond_3

    iput-boolean p3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreTopInset:Z

    move p1, v2

    :cond_3
    iget-boolean p2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreRightInset:Z

    if-eq p2, p4, :cond_4

    iput-boolean p4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreRightInset:Z

    move p1, v2

    :cond_4
    iget-boolean p2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreBottomInset:Z

    if-eq p2, p5, :cond_5

    iput-boolean p5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreBottomInset:Z

    goto :goto_1

    :cond_5
    move v2, p1

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    :cond_6
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :cond_4
    :goto_0
    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 10

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    invoke-direct {p0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchInsetsIgnoreVisibility(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v6

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOriginalInset:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->H(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsCompat;->g(I)Landroidx/core/graphics/e;

    move-result-object v3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v4

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->b()I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/core/view/WindowInsetsCompat;->g(I)Landroidx/core/graphics/e;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object v3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v4

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->b()I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object v4

    :goto_0
    iget v3, v3, Landroidx/core/graphics/e;->d:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->c()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object v5

    iget v5, v5, Landroidx/core/graphics/e;->d:I

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v9, v4, Landroidx/core/graphics/e;->a:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroidx/core/graphics/e;->c:I

    iput v4, v8, Landroid/graphics/Rect;->right:I

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    if-eqz v4, :cond_2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object v4

    iget v4, v4, Landroidx/core/graphics/e;->d:I

    if-lez v4, :cond_2

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    move v3, v7

    move v5, v3

    :cond_2
    :goto_1
    if-nez v2, :cond_4

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    invoke-direct {p0, v1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isNavigationBarToLeftEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v4, Landroid/graphics/Rect;->left:I

    :cond_3
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLayoutStable:Z

    invoke-direct {p0, v1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isNavigationBarToRightEdge(Landroidx/core/view/WindowInsetsCompat;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :cond_4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    if-eqz v1, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v1, v0}, Lmiuix/appcompat/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    :cond_5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInsetsController:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->isFloatingMode:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v7, v0, Landroid/graphics/Rect;->left:I

    iput v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    iput v7, v0, Landroid/graphics/Rect;->left:I

    iput v7, v0, Landroid/graphics/Rect;->right:I

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v8, 0x1

    if-lt v0, v1, :cond_c

    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v0, v8, :cond_8

    move v0, v8

    goto :goto_2

    :cond_8
    move v0, v7

    :goto_2
    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010586

    invoke-static {v0, v1, v7}, Lpl/d;->j(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v8, :cond_9

    move v0, v8

    goto :goto_3

    :cond_9
    move v0, v7

    :cond_a
    :goto_3
    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->left:I

    iput v7, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getDisplayCoutInsets()Landroidx/core/graphics/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isCutoutToLeftEdge(Landroidx/core/graphics/e;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    :cond_b
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isCutoutToRightEdge(Landroidx/core/graphics/e;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->right:I

    :cond_c
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v2, :cond_e

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v3, :cond_f

    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInsetsController:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;

    if-eqz v0, :cond_13

    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->isFloatingMode:Z

    if-nez v1, :cond_13

    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreLeftInset:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->left:I

    :cond_10
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreTopInset:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->top:I

    :cond_11
    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreRightInset:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :cond_12
    iget-boolean v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->ignoreBottomInset:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    :cond_13
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, v6

    move v3, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->computeFitSystemInsets(ZZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_17

    if-eqz v6, :cond_14

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    :cond_14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    instance-of v1, v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    if-eqz v1, :cond_15

    check-cast v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;->setPendingInsets(Landroid/graphics/Rect;)V

    :cond_15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v6, :cond_16

    move v4, v8

    goto :goto_4

    :cond_16
    move v4, v7

    :goto_4
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    move v9, v0

    goto :goto_5

    :cond_17
    move v9, v7

    :goto_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setPendingInset(Landroid/graphics/Rect;)V

    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mWindowInsetsController:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;

    if-eqz v1, :cond_1a

    iget-boolean v1, v1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$WindowInsetsController;->isFloatingMode:Z

    if-eqz v1, :cond_1a

    :cond_19
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1a
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSqueezeContentByIme:Z

    if-eqz v0, :cond_1b

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_6

    :cond_1b
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_6
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v9, v0

    :cond_1c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    :cond_1d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v9, v8

    :cond_1e
    if-eqz v9, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_20

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_20

    move v0, v8

    goto :goto_7

    :cond_20
    move v0, v7

    :goto_7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-eqz v1, :cond_21

    if-nez v0, :cond_21

    move v7, v8

    :cond_21
    return v7
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object v0
.end method

.method public getBaseInnerInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getBottomInset()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getInsetHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBottomMenuCustomViewTranslationY()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getBottomMenuCustomViewOffset()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBottomMenuMode()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    return v0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentMask()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .locals 2

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method getDeviceType()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    return v0
.end method

.method public getExtraPaddingPolicy()Lyk/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    return-object v0
.end method

.method public getInnerInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hideBottomMenu(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuExtraInset(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideBottomMenuCustomView()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideBottomMenuCustomView()V

    :cond_0
    return-void
.end method

.method public hideContentMask()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSplitAnimContentMask:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method isBottomAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return v0
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyk/b;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExtraPaddingApplyToContentEnable()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isRootSubDecor()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iget-boolean v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-eqz v5, :cond_5

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    return v2

    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_8

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :cond_8
    :goto_4
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/h3;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensity(Landroid/content/Context;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    new-instance p1, Lmiuix/appcompat/internal/app/widget/j;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/j;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->isContextMenuPopupWindowShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->refreshContextMenuPopupWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->pullChildren()V

    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eq v1, v0, :cond_3

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_top_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onFloatingModeChanged(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_2

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onFloatingModeChanged(Z)V

    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lyk/b;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyk/a;

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    invoke-interface {p2, p3}, Lyk/a;->onExtraPaddingChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lyk/b;->e(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    if-nez p2, :cond_3

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateCoordinateOffsetView()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v7, p0

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getWidthMeasureSpec(I)I

    move-result v8

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getHeightMeasureSpec(I)I

    move-result v9

    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v11, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    const/4 v12, 0x0

    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v1, 0x8

    if-ge v6, v0, :cond_2

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, v10, :cond_1

    if-eq v5, v11, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    move v4, v9

    move-object/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v1

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v12

    :goto_3
    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v4

    if-eqz v4, :cond_5

    if-lez v0, :cond_5

    iget-object v5, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v5, Landroid/graphics/Rect;->top:I

    :cond_5
    iget-boolean v5, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v5, :cond_6

    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_6
    if-eqz v4, :cond_7

    if-lez v0, :cond_8

    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_7
    iget-object v4, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_8
    :goto_4
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :goto_5
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_9

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-nez v0, :cond_b

    :cond_9
    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_a

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->right:I

    iput v12, v0, Landroid/graphics/Rect;->left:I

    :cond_a
    if-nez v1, :cond_b

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v0, 0x0

    iput-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimateContentMarginBottomInsets:Landroid/graphics/Rect;

    goto :goto_6

    :cond_c
    move/from16 v17, v6

    :goto_6
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_d

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v10, v0, v12, v1, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_d
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-super {v7, v0}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    iput-boolean v12, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_11

    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7

    :cond_10
    const v0, 0x1020002

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_11
    :goto_7
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lyk/b;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    invoke-direct {v7, v2, v3, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateExtraPaddingHorizontal(Landroid/content/Context;Lyk/b;II)V

    iget-boolean v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    if-eqz v1, :cond_12

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v0

    goto :goto_8

    :cond_12
    move v2, v8

    :goto_8
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsetsByMargin(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v8, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    invoke-static {v0, v9, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    new-instance v0, Lmiuix/appcompat/internal/app/widget/k;

    invoke-direct {v0, v7}, Lmiuix/appcompat/internal/app/widget/k;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMenuStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuVisibleHeight:[I

    aput p1, v0, p2

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 p2, 0x1

    aget p2, v0, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p2, :cond_0

    move p1, p2

    :cond_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    :goto_0
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    if-nez v2, :cond_1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    :cond_1
    if-lez p3, :cond_2

    aget p2, p4, v8

    sub-int p5, p3, p2

    if-lez p5, :cond_2

    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p5, :cond_2

    instance-of v1, p5, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v1, :cond_2

    sub-int/2addr p3, p2

    check-cast p5, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p5, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTopOffsetForCoordinateView(Landroid/view/View;)I

    move-result p2

    const/4 p5, -0x1

    if-eq p2, p5, :cond_2

    sub-int/2addr p2, p3

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    check-cast p3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTopOffsetOnNestedPreScroll(Landroid/view/View;I)I

    move-result p1

    aget p2, p4, v8

    add-int/2addr p2, p1

    aput p2, p4, v8

    :cond_2
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-gez p5, :cond_1

    aget v2, p7, v1

    sub-int v3, p5, v2

    if-gtz v3, :cond_1

    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v3, :cond_1

    instance-of v4, v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v4, :cond_1

    sub-int v2, p5, v2

    check-cast v3, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    move-object v4, p1

    invoke-virtual {v3, p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTopOffsetOnNestedScroll(Landroid/view/View;I)I

    move-result v2

    sub-int v3, p5, v2

    aget v5, p7, v1

    add-int/2addr v5, v2

    aput v5, p7, v1

    move v6, v3

    goto :goto_0

    :cond_1
    move-object v4, p1

    move/from16 v6, p5

    :goto_0
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v2, 0x0

    aput v2, v9, v1

    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsInSearchMode:Z

    if-nez v2, :cond_2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    :cond_2
    invoke-direct {p0, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->adjustNestedScrollMotionEventCoordinate(Landroid/view/View;)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mNestedScrollingParentEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getAdjustView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    return p1
.end method

.method public registerCoordinatedScrollView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeBottomMenuCustomView()V

    :cond_0
    return-void
.end method

.method public removeExtraPaddingObserver(Lyk/a;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestDispatchContentInset()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->notifyContentInset()V

    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    return-void
.end method

.method public setActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_0

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExtraPaddingPolicy(Lyk/b;)V

    :cond_0
    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setBottomMenuMode(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setPendingInset(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return-void
.end method

.method public setBottomExtraInset(I)V
    .locals 2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p1, :cond_1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuCustomViewTranslationYWithPx(I)V

    :cond_0
    return-void
.end method

.method public setBottomMenuExtraInset(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    return-void
.end method

.method public setBottomMenuMode(I)V
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateBottomMenuMode()V

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setContentInsetStateCallback(Lmiuix/appcompat/app/IContentInsetState;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsetStateCallback:Lmiuix/appcompat/app/IContentInsetState;

    return-void
.end method

.method public setContentMask(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    invoke-static {}, Lpl/e;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_window_content_mask_oled:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/g;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCorrectNestedScrollMotionEventEnabled:Z

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lyk/b;->j(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingInitEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingInitEnable:Z

    :cond_0
    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingApplyToContentEnable:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExtraPaddingPolicy(Lyk/b;)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    invoke-virtual {p1, v0}, Lyk/b;->j(Z)V

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingInitEnable:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateExtraPaddingHorizontal(Landroid/content/Context;Lyk/b;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mShouldExtraPaddingHorizontalNotifyChanged:Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyk/a;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraHorizontalPadding:I

    invoke-interface {v0, v1}, Lyk/a;->setExtraHorizontalPadding(I)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    invoke-virtual {p1, v0}, Lyk/b;->j(Z)V

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_2

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExtraPaddingPolicy(Lyk/b;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/v;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLifecycleOwner:Landroidx/lifecycle/v;

    return-void
.end method

.method public setNestedScrollingParentEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mNestedScrollingParentEnabled:Z

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setOverlayMode(Z)V

    :cond_0
    return-void
.end method

.method public setRootSubDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return-void
.end method

.method public setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_0
    return-void
.end method

.method public showBottomMenu(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuExtraInset(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showBottomMenuCustomView()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showBottomMenuCustomView()V

    :cond_0
    return-void
.end method

.method public showContentMask(I)V
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSplitAnimContentMask:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    sget v0, Lmiuix/appcompat/R$id;->split_anim_content_mask:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mSplitAnimContentMask:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->image_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_1

    int-to-float p1, p1

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, p1, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/i;->a(Landroid/widget/ImageView;Landroid/graphics/RenderEffect;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, p1}, Lml/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInflateLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->internalShowContextMenu(Landroid/view/View;FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/h;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBottomMenuExtraInset(I)V

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->makeMenuViewShowHideWithAnimation(Z)V

    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    instance-of p1, p1, Lmiuix/view/l;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public unregisterCoordinatedScrollView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCoordinatedScrollViewSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected updateBottomMenuMode()V
    .locals 7

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuModeConfig:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x3

    const/16 v3, 0x280

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lbl/c;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v1

    float-to-int v1, v6

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    if-ne v4, v5, :cond_0

    const/16 v4, 0x19a

    if-le v0, v4, :cond_0

    if-le v1, v3, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/c;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mDeviceType:I

    if-ne v1, v5, :cond_0

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setBottomMenuMode(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->refreshBottomMenu()V

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_4

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuMode:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBottomMenuMode(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->refreshBottomMenu()V

    :cond_4
    return-void
.end method

.method updateCurrentContentInsetInOverlayMode()V
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTopViewHeight()I

    move-result v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsMiuixFloating:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInsetTopInMiuixFloating:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v0

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomExtraInset:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBottomMenuExtraInset:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCurrentContentInset:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mThemeCompatSystemInset:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_5
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dispatchContentInset(Landroid/graphics/Rect;)V

    return-void
.end method
