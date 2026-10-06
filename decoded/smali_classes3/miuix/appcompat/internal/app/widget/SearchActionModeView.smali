.class public Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;,
        Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x190


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarTopMargin:I

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mAnchorParentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateToVisible:Z

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewTranslationYLength:I

.field private mAnimateViewTranslationYStart:I

.field private mAnimatedViewListener:Lmiuix/view/l$a;

.field private mAnimationCanceled:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/b;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationProgress:F

.field private mCancelBtnInitPaddings:Lpl/j$d;

.field private mContentOriginPaddingBottom:I

.field private mContentOriginPaddingTop:I

.field private mContentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mCustomFrameLayout:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mDimView:Landroid/view/View;

.field private mExtraPadding:I

.field private mExtraPaddingApplyToAnchorByUser:Z

.field private mExtraPaddingPolicy:Lyk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFirstLayout:Z

.field private mHasSetCustomView:Z

.field private mHorizontalPaddingDp:I

.field private mInActionMode:Z

.field private mInitPaddings:Lpl/j$d;

.field private mInputPaddingRight:I

.field private mInputPaddingTop:I

.field private mInputView:Landroid/widget/EditText;

.field private mLimitTextSizeDp:I

.field private mLocation:[I

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mOriginOverlayMode:Z

.field private mOriginalAnimateViewTranslationY:F

.field private mOriginalPaddingTop:I

.field private mOverlayView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentLocationY:I

.field private mPendingInsetTop:I

.field private mResultView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewOriginPaddingBottom:I

.field private mResultViewOriginPaddingTop:I

.field private mResultViewSet:Z

.field private mSearchContainer:Landroid/view/ViewGroup;

.field private mSearchViewHeight:I

.field private mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lpl/j$d;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lpl/j$d;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    const v0, 0x7fffffff

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_view_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_mode_bg_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    invoke-static {p1, v1}, Lbl/i;->e(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbl/i;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x1b

    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputPaddingRight:I

    return p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return p0
.end method

.method static synthetic access$1302(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return p1
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/l$a;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/l$a;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    return p0
.end method

.method static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    return p0
.end method

.method static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    return p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    return p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentView:Ljava/lang/ref/WeakReference;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private resetLocationY()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I

    return-void
.end method

.method private resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_edit_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    int-to-float v4, v3

    cmpl-float v1, v1, v4

    const/4 v4, 0x1

    if-lez v1, :cond_1

    int-to-float v1, v3

    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_action_mode_cancel_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLimitTextSizeDp:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    int-to-float p1, v0

    invoke-virtual {p2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldAnimateContent()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateExtraPadding(F)V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isExtraPaddingApplyToContentEnable()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lyk/b;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {v0}, Lyk/b;->f()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    goto :goto_2

    :cond_3
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    :goto_2
    return-void
.end method

.method private updateOnPaddingTopChanged()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private updateResultViewMargin(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method

.method private updateViewPadding(IF)V
    .locals 4

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHorizontalPaddingDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lpl/j$d;

    iget v1, v0, Lpl/j$d;->b:I

    iget v2, v0, Lpl/j$d;->c:I

    iget v3, v0, Lpl/j$d;->d:I

    iget v0, v0, Lpl/j$d;->e:I

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_action_mode_cancel_text_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p2, p1

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lwm/a;->a(Landroid/content/Context;)Lwm/a;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lwm/a;->c(Landroid/widget/EditText;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->pollViews()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->createAnimationListeners()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    return-void
.end method

.method public closeMode()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected createAnimationListeners()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SplitActionBarAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected finishAnimation()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method protected getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->action_bar_container:I

    if-ne v3, v4, :cond_1

    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarTopMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object v0
.end method

.method protected getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object v0
.end method

.method public getAnimationProgress()F
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    return v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method protected getDimView()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->search_mask_vs:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_1

    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchViewHeight:I

    return v0
.end method

.method protected getViewPager()Lxm/a;
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lmiuix/appcompat/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxm/a;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    return-void
.end method

.method public killMode()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->finishAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/l$a;

    if-eqz v1, :cond_2

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/l$a;

    :cond_2
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSplitActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "AnimationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lpl/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x190

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->obtainInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

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

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

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

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

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

.method public obtainInterpolator()Landroid/animation/TimeInterpolator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwm/a;->a(Landroid/content/Context;)Lwm/a;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lwm/a;->c(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwm/a;->a(Landroid/content/Context;)Lwm/a;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lwm/a;->b(Landroid/widget/EditText;)V

    :goto_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestDispatchContentInset()V

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_4
    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->killMode()V

    :cond_6
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationCanceled:Z

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->search_text_cancel:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lmiuix/appcompat/R$id;->search_mask:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mFirstLayout:Z

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lpl/j$d;

    invoke-direct {v0, p0}, Lpl/j$d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lpl/j$d;

    sget v0, Lmiuix/appcompat/R$id;->search_text_cancel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lpl/j$d;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lpl/j$d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCancelBtnInitPaddings:Lpl/j$d;

    sget v0, Lmiuix/appcompat/R$id;->search_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/view/d;->b(Landroid/view/View;Z)V

    const v0, 0x1020009

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mTextCancel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mSearchContainer:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInitPaddings:Lpl/j$d;

    iget v0, v0, Lpl/j$d;->c:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginalPaddingTop:I

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    :cond_0
    return-void
.end method

.method public onFloatingModeChanged()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->resetLocationY()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    int-to-float p4, p5

    add-float/2addr p2, p4

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected pollViews()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getSplitActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method public rePaddingAndRelayout(Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateOnPaddingTopChanged()V

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    instance-of p1, p1, Lfl/b;

    if-eqz p1, :cond_2

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2

    :cond_2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I

    :goto_2
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    :cond_3
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInActionMode:Z

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateResultViewMargin(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method public removeAnimationListener(Lmiuix/view/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public resetCustomView()V
    .locals 3

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    :cond_2
    return-void
.end method

.method public setAnchorApplyExtraPaddingByUser(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingApplyToAnchorByUser:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    sget v0, Lmiuix/appcompat/R$id;->search_mode_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setAnimatedViewListener(Lmiuix/view/l$a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/l$a;

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimationProgress:F

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method protected setContentViewPadding(II)V
    .locals 4

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    add-int/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    add-int/2addr p2, v3

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method protected setContentViewTranslation(F)V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/appcompat/R$id;->searchActionMode_customFrameLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mCustomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mHasSetCustomView:Z

    :cond_0
    return-void
.end method

.method public setExtraPaddingPolicy(Lyk/b;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lyk/b;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateExtraPadding(F)V

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mExtraPadding:I

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->updateViewPadding(IF)V

    :cond_0
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOverlayModeView(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOverlayView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z

    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v0, v0, Lfl/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewSet:Z

    :cond_2
    return-void
.end method

.method public updateBackground(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
