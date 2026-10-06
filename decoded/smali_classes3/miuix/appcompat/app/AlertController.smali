.class Lmiuix/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertController$LayoutChangeListener;,
        Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;,
        Lmiuix/appcompat/app/AlertController$ButtonInfo;,
        Lmiuix/appcompat/app/AlertController$AlertParams;,
        Lmiuix/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final AVOID_LEFT:I = 0x10

.field private static final AVOID_RIGHT:I = 0x20

.field private static final BUTTON_SCROLL_WINDOW_HEIGHT_LIMIT_DP:I = 0x1e0

.field private static final FLAG_NO_EAR_AREA:I = 0x300

.field private static final LIMIT_PANEL_WIDTH_THRESHOLD:I = 0x18a

.field private static final TAG:Ljava/lang/String; = "AlertController"


# instance fields
.field private buildJustNow:Z

.field private configurationAfterInstalled:Landroid/content/res/Configuration;

.field mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private mButtonForceVertical:Z

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private mComment:Ljava/lang/CharSequence;

.field private mCommentTextSize:F

.field private mCommentView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCreateThread:Ljava/lang/Thread;

.field private mCurrentDensityDpi:I

.field private mCustomTitleTextSize:F

.field private mCustomTitleTextView:Landroid/widget/TextView;

.field private mCustomTitleView:Landroid/view/View;

.field private mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

.field final mDialog:Landroidx/appcompat/app/e;

.field private final mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

.field private mDialogContentLayout:I

.field private mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

.field private mDimBg:Landroid/view/View;

.field private mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

.field mEnableEnterAnim:Z

.field private mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraImeMargin:I

.field private mFakeLandScreenMinorSize:I

.field private mFlipCutout:Landroid/view/DisplayCutout;

.field mHandler:Landroid/os/Handler;

.field mHapticFeedbackEnabled:Z

.field private mHasPendingDismiss:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconId:I

.field private mIconWidth:I

.field private mInflatedView:Landroid/view/View;

.field private mInsetsAnimationPlayed:Z

.field private mIsCarWithScreen:Z

.field private mIsChecked:Z

.field private mIsDebugEnabled:Z

.field private mIsDialogAnimating:Z

.field private mIsEnableImmersive:Z

.field private mIsFlipTinyScreen:Z

.field private mIsFromRebuild:Z

.field private mIsInFreeForm:Z

.field private mIsSynergy:Z

.field private mIsWindowLandScape:Z

.field private mLandscapePanel:Z

.field private final mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

.field private mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mLiteVersion:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageTextSize:F

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mNonImmersiveDialogHeight:I

.field mNonImmersiveDialogShowAnimDuration:J

.field private mPanelAndImeMargin:I

.field private mPanelMaxWidth:I

.field private mPanelMaxWidthLand:I

.field private mPanelOriginLeftMargin:I

.field private mPanelOriginRightMargin:I

.field private mPanelParamsHorizontalMargin:I

.field private mPanelParamsWidth:I

.field private mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

.field private mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

.field private mPreferLandscape:Z

.field private mRootViewSize:Landroid/graphics/Point;

.field private mRootViewSizeDp:Landroid/graphics/Point;

.field private mScreenMinorSize:I

.field private mScreenOrientation:I

.field private mScreenRealSize:Landroid/graphics/Point;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private final mShowTitle:Z

.field mShowUpTimeMillis:J

.field mSingleChoiceItemLayout:I

.field private mSmallIcon:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTextSize:F

.field private mTitleView:Landroid/widget/TextView;

.field private mTreatAsLandConfig:Z

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/e;Landroid/view/Window;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    const/4 v2, -0x2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiuix/appcompat/app/AlertController;->mShowUpTimeMillis:J

    new-instance v2, Lmiuix/appcompat/app/AlertController$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    new-instance v1, Lmiuix/appcompat/widget/DialogAnimHelper;

    invoke-direct {v1}, Lmiuix/appcompat/widget/DialogAnimHelper;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    const/high16 v3, 0x41900000    # 18.0f

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    const/high16 v4, 0x41800000    # 16.0f

    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    const/high16 v4, 0x41500000    # 13.0f

    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    new-instance v3, Lmiuix/appcompat/app/AlertController$2;

    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$2;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    new-instance v3, Lmiuix/appcompat/app/AlertController$3;

    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$3;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$integer;->dialog_enter_duration:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogShowAnimDuration:J

    new-instance v3, Lmiuix/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {v3, p2}, Lmiuix/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    sget-boolean v3, Lsl/a;->f:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Lsl/b;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    invoke-static {}, Lpl/f;->a()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDisplayInfo(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    sget-object v3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const v4, 0x101005d

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_showTitle:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/e;->supportRequestWindowFeature(I)Z

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge p2, v2, :cond_2

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isMiuiLegacyNotch()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p2, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "addExtraFlags"

    invoke-static {p3, v0, p2, v1}, Lpl/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImeDebugEnabled()Z

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create Dialog mCurrentDensityDpi "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlertController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setCustomPanelSize$3(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/app/AlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateContent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1500(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    return p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/app/AlertController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateViewOnDensityChanged(F)V

    return-void
.end method

.method static synthetic access$1900(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/widget/DialogAnimHelper;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method static synthetic access$2002(Lmiuix/appcompat/app/AlertController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    return p1
.end method

.method static synthetic access$2100(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p0
.end method

.method static synthetic access$2202(Lmiuix/appcompat/app/AlertController;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p1
.end method

.method static synthetic access$2300(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    return p0
.end method

.method static synthetic access$2500(Lmiuix/appcompat/app/AlertController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    return-void
.end method

.method static synthetic access$2600(Lmiuix/appcompat/app/AlertController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    return-void
.end method

.method static synthetic access$2700(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$2800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$2900(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return p0
.end method

.method static synthetic access$3000(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lmiuix/appcompat/app/AlertController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/view/View;)V

    return-void
.end method

.method private adjustHeight2WrapContent()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method private buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;)Z
    .locals 7

    invoke-virtual {p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getButtonFullyVisibleHeight()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lbl/c;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float v4, v2

    div-float/2addr p1, v4

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v6, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    int-to-float v5, v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buttonNeedScrollable: buttonRate = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", topPanelRate = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", windowHeight = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rootViewSizeDp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AlertController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    const v4, 0x3e99999a    # 0.3f

    goto :goto_3

    :cond_5
    const v4, 0x3ecccccd    # 0.4f

    :goto_3
    if-eqz v2, :cond_6

    const v2, 0x3eb33333    # 0.35f

    goto :goto_4

    :cond_6
    const v2, 0x3ee66666    # 0.45f

    :goto_4
    cmpl-float p1, p1, v4

    if-gez p1, :cond_7

    cmpl-float p1, v5, v2

    if-gez p1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    move v1, v3

    :cond_8
    return v1
.end method

.method public static synthetic c(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$1(Landroid/view/View;)V

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private checkAndClearFocus()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    :cond_0
    return-void
.end method

.method private checkThread()Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cleanWindowInsetsAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk3/p;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    :cond_0
    return-void
.end method

.method private clearCustomContent()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeHorizontalMargin(Landroid/widget/FrameLayout$LayoutParams;IIIIZ)[I
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_2

    if-eqz p6, :cond_2

    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_2

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getRotationSafely()I

    move-result p2

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p3, p4

    iget p5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p3, p5

    div-int/2addr p3, v0

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-ne p2, v2, :cond_0

    add-int p5, p4, p3

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    aput p5, v1, v4

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p3, p4

    :goto_1
    aput p3, v1, v3

    const/16 p2, 0x53

    :goto_2
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v1

    :cond_2
    if-nez p4, :cond_3

    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-gtz v5, :cond_4

    :cond_3
    if-nez p3, :cond_5

    if-eqz p6, :cond_5

    :cond_4
    return-object v1

    :cond_5
    mul-int/lit8 p6, p3, 0x2

    add-int/2addr p6, p4

    add-int/2addr p6, p2

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-le p6, v5, :cond_6

    move p6, v3

    goto :goto_3

    :cond_6
    move p6, v4

    :goto_3
    if-eqz p6, :cond_8

    sub-int/2addr v5, p4

    sub-int/2addr v5, p2

    div-int/2addr v5, v0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-le p4, p3, :cond_7

    move p6, p4

    goto :goto_4

    :cond_7
    add-int p6, p4, p2

    :goto_4
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v0, :cond_9

    if-le p4, p3, :cond_9

    add-int p6, p4, p2

    goto :goto_5

    :cond_8
    add-int p6, p3, p4

    :cond_9
    :goto_5
    const/16 p2, 0x10

    if-ne p5, p2, :cond_a

    move p4, p6

    goto :goto_6

    :cond_a
    move p4, p3

    :goto_6
    aput p4, v1, v4

    if-ne p5, p2, :cond_b

    goto :goto_7

    :cond_b
    move p3, p6

    :goto_7
    aput p3, v1, v3

    if-ne p5, p2, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x5

    :goto_8
    or-int/lit8 p2, v2, 0x50

    goto :goto_2
.end method

.method public static synthetic d(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$2()V

    return-void
.end method

.method private disableForceDark(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/view/d;->b(Landroid/view/View;Z)V

    return-void
.end method

.method private getAssociatedActivityInsets(I)Landroid/graphics/Insets;
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method private getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;
    .locals 8
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x1

    const/16 v7, 0x1e

    if-lt v5, v7, :cond_0

    invoke-direct {p0, p1, v6}, Lmiuix/appcompat/app/AlertController;->getNaviBarInsets(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object v4

    :cond_0
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    if-ne v3, v6, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    invoke-direct {p0, p1, v6}, Lmiuix/appcompat/app/AlertController;->getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object p1

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    sub-int/2addr v1, v3

    :cond_3
    iget p1, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v3

    sub-int/2addr v2, p1

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v3

    sub-int/2addr v1, p1

    iput v2, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private getCutoutMode(II)I
    .locals 1

    const/4 v0, 0x2

    if-nez p2, :cond_1

    if-ne p1, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2
.end method

.method private getCutoutSafely()Landroid/view/DisplayCutout;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->showSystemAlertInFlip()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getCutoutSafely"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show system alert in flip, use displayCutout by reflect, displayCutout = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/app/f;->a(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get displayCutout from context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is not associated display info, please check the type of context, the exception info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lmiuix/appcompat/app/f;->a(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method private getDialogPanelExtraBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getDialogPanelMargin()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private getDialogWidthMargin(I)I
    .locals 1

    const/16 v0, 0x168

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_margin:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private getDisplayCutout(Z)Landroid/graphics/Rect;
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/graphics/Insets;->left:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    iget v5, v1, Landroid/graphics/Insets;->right:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cutout from host, cutout = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getDisplayCutout"

    invoke-direct {p0, v3, v1, v2}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getCutoutSafely()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput v3, v0, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput v3, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput v3, v0, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    :cond_4
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_3
    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private getFlipCutout()V
    .locals 6

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getFlipFoldedCutout"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v2, v4, v5}, Lgm/a;->l(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayCutout;

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "getFlipCutout"

    const-string v3, "can\'t reflect from display to query cutout"

    invoke-direct {p0, v2, v3, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    :goto_1
    return-void
.end method

.method private getGravity()I
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    :goto_0
    return v0
.end method

.method private getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->getDisplayCutout(Z)Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getImeBottomByWindowInsets(Landroid/view/WindowInsets;)I
    .locals 2
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_3

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    :cond_3
    return v0
.end method

.method private getNaviBarInsets(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;
    .locals 4
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/view/m3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_4

    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_3

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lbl/c;->d(Landroid/content/Context;Z)I

    move-result p1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getRotationSafely()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_5

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_5
    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_6
    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_7
    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-object v0
.end method

.method private getPanelWidth(ZZ)I
    .locals 4

    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content_land:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    if-eq p1, v3, :cond_4

    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    if-eqz p2, :cond_4

    int-to-float p1, p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :cond_4
    iget p2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    if-eq p2, v0, :cond_6

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz p2, :cond_5

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {p2, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsInTinyScreen(Z)V

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVerticalAvoidSpace()I

    move-result v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setVerticalAvoidSpace(I)V

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    return p1
.end method

.method private getRotationSafely()I
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is not associated display info, please check the type of context, the exception info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getScreenOrientation()I
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method private getVerticalAvoidSpace()I
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/graphics/Insets;->top:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    move v1, v0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_tablet_t:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-nez v1, :cond_4

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    add-int v1, v3, v4

    :cond_4
    :goto_2
    if-nez v0, :cond_6

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    add-int/2addr v3, v4

    move v0, v3

    :cond_6
    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method private getVisibleButtonCount()I
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v1, v0

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    return v1
.end method

.method private hideSoftIME()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->i(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    return-void
.end method

.method private isCancelable()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return v0
.end method

.method private isCanceledOnTouchOutside()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method private isConfigurationChanged(Landroid/content/res/Configuration;)Z
    .locals 11

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v5, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v2, v5, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    iget v6, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v6, v7, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    iget v7, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v7, v8, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_4
    iget v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v9, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v8, v9, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    iget v9, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v10, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6

    move v9, v3

    goto :goto_6

    :cond_6
    move v9, v4

    :goto_6
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, p1, :cond_7

    move p1, v3

    goto :goto_7

    :cond_7
    move p1, v4

    :goto_7
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-nez v7, :cond_9

    if-nez v9, :cond_9

    if-nez v8, :cond_9

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    move v3, v4

    :cond_9
    :goto_8
    return v3
.end method

.method private isDialogImeDebugEnabled()Z
    .locals 4

    const-string v0, "AlertController"

    const-string v1, ""

    :try_start_0
    const-string v2, "log.tag.alertdialog.ime.debug.enable"

    invoke-static {v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    return v0
.end method

.method private isFreeFormMode()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/c;->n(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isLandscape(ILandroid/graphics/Point;)Z
    .locals 3

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/c;->l(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-eqz v2, :cond_1

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, v0, p1}, Lmiuix/appcompat/app/AlertController;->judgeLandscape(III)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p2, Landroid/graphics/Point;->x:I

    const/16 v0, 0x18a

    if-ge p1, v0, :cond_4

    return v2

    :cond_4
    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le p1, p2, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    return v1

    :cond_6
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-static {p1, p2}, Lbl/p;->c(Landroid/content/Context;Landroid/graphics/Point;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le p2, p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1
.end method

.method private isLandscape(Landroid/graphics/Point;)Z
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/app/AlertController;->isLandscape(ILandroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method private isMiuiLegacyNotch()Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Lpl/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "ro.miui.notch"

    aput-object v6, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "getInt"

    invoke-static {v0, v1, v6, v3, v2}, Lpl/g;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v5, v4

    :cond_0
    return v5
.end method

.method private isNeedUpdateDialogPanelTranslationY()Z
    .locals 7

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/i;->o(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    sget-boolean v4, Lsl/a;->b:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lsl/b;->d(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    :goto_2
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_4

    if-nez v1, :cond_8

    :cond_4
    if-nez v5, :cond_8

    :cond_5
    :goto_3
    move v2, v3

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    if-nez v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    return v2
.end method

.method private isNotch(Landroid/view/WindowInsets;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroidx/core/view/g3;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private isSpecifiedDialogHeight()Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTablet()Z
    .locals 1

    sget-boolean v0, Lsl/a;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private judgeLandscape(III)Z
    .locals 2

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ge p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private synthetic lambda$setCustomPanelSize$3(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setupView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupView$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupView$2()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;->onPanelSizeChanged(Lmiuix/appcompat/app/AlertDialog;Lmiuix/appcompat/internal/widget/DialogParentPanel2;)V

    :cond_0
    return-void
.end method

.method private listViewIsNeedFullScroll()Z
    .locals 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const v1, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_1
    const v1, 0x3eb33333    # 0.35f

    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    if-le v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method private onLayoutReload()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->onLayoutReload()V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;->onLayoutReload()V

    :cond_0
    return-void
.end method

.method private printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlertController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lbl/i;->t(FF)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lbl/i;->t(FF)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lbl/i;->t(FF)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lbl/i;->t(FF)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method private reInitLandConfig()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private resetListMaxHeight()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v1

    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private safeRemoveFromParent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setAnimIfEditExistForNonImmersive(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lmiuix/appcompat/R$style;->Animation_Dialog_ExistIme:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_2
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 11

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    move v0, v2

    :goto_0
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    :goto_1
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    :goto_2
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v6

    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    if-nez v7, :cond_5

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v8, Lmiuix/internal/widget/GroupButton;

    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v10

    invoke-direct {v8, v9, v5, v10}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v6, v8}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$602(Lmiuix/appcompat/app/AlertController$ButtonInfo;Lmiuix/internal/widget/GroupButton;)Lmiuix/internal/widget/GroupButton;

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1200(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    :cond_5
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1300(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v8

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$702(Lmiuix/appcompat/app/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    :cond_6
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    :cond_7
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_8
    if-nez v0, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_9
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/p;->m(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    move v4, v3

    :goto_6
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v6, :cond_d

    if-nez v1, :cond_d

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    move v1, v3

    goto :goto_8

    :cond_d
    :goto_7
    move v1, v2

    :goto_8
    move-object v4, p1

    check-cast v4, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    :goto_9
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lbl/p;->c(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v6, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v6, p1

    check-cast v6, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;)Z

    move-result v6

    iget-boolean v7, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez v7, :cond_e

    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/16 v8, 0x1e0

    if-gt v7, v8, :cond_f

    :cond_e
    const/4 v7, 0x3

    if-lt v0, v7, :cond_f

    move v0, v2

    goto :goto_a

    :cond_f
    move v0, v3

    :goto_a
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    int-to-float v1, v1

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v8

    cmpg-float v1, v7, v1

    if-lez v1, :cond_11

    if-nez v6, :cond_11

    if-eqz v0, :cond_10

    goto :goto_b

    :cond_10
    move v2, v3

    :cond_11
    :goto_b
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v0, :cond_13

    if-nez v2, :cond_12

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_c

    :cond_12
    invoke-direct {p0, p1, v4}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    check-cast v4, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :cond_13
    :goto_c
    return-void
.end method

.method private setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V
    .locals 2
    .param p2    # Landroid/view/ViewStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p2, 0x1020001

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget p2, Lmiuix/appcompat/R$id;->textAlign:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/TextAlignLayout;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/TextAlignLayout;->setDialogPanelHasCheckbox(Z)V

    :cond_2
    return-void
.end method

.method private setupCheckbox(Landroid/widget/CheckBox;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;Z)V
    .locals 9

    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v3, 0xc8

    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    new-instance v3, Lvm/f;

    invoke-direct {v3}, Lvm/f;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    if-eqz p2, :cond_9

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz p2, :cond_6

    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v7}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v7, v3}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_2
    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v6, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_4
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-nez v3, :cond_5

    move-object v1, v6

    :cond_5
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_6
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :cond_7
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p2, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_list_view_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_a

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_a
    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    :cond_b
    move v2, p2

    :cond_c
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v2, :cond_d

    goto :goto_3

    :cond_d
    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_4
    return-void
.end method

.method private setupContentView(Landroid/view/ViewGroup;)V
    .locals 2

    sget v0, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    sget v0, Lmiuix/appcompat/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)Z
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    const/high16 v0, 0x20000

    if-eqz v2, :cond_5

    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :goto_2
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->setAnimIfEditExistForNonImmersive(Landroid/view/View;)V

    if-eqz v2, :cond_6

    invoke-direct {p0, v1, p1}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :goto_3
    return v2
.end method

.method private setupImmersiveWindow()V
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_NoAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, -0x7ffff700

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v3, v1}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/appcompat/app/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    return-void
.end method

.method private setupNonImmersiveWindow()V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelLayoutParams(Landroid/graphics/Point;)V

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {v5, v1}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v1

    mul-int/2addr v2, v4

    sub-int v2, v1, v2

    :cond_0
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    if-lez v1, :cond_1

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-lt v1, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v1

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/16 v6, 0x50

    and-int/2addr v1, v6

    const/4 v7, 0x0

    if-ne v1, v6, :cond_a

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v6, :cond_2

    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    goto :goto_1

    :cond_2
    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    :goto_1
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lbl/i;->q(Landroid/content/Context;)Z

    move-result v6

    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lbl/i;->o(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lsl/b;->d(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    iget-boolean v9, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v9, :cond_4

    if-eqz v8, :cond_7

    if-eqz v6, :cond_7

    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v6, v8, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v6

    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v6

    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eqz v6, :cond_5

    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    if-nez v6, :cond_6

    add-int/2addr v1, v8

    goto :goto_4

    :cond_6
    add-int/2addr v1, v6

    :cond_7
    :goto_4
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x8000000

    and-int v9, v6, v8

    if-eqz v9, :cond_8

    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v8}, Landroid/view/Window;->clearFlags(I)V

    :cond_8
    const/high16 v8, 0x4000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_9

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v8}, Landroid/view/Window;->clearFlags(I)V

    :cond_9
    int-to-float v1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v1, v6

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v1, v6, :cond_b

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_b
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v4, 0x40000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lpl/j;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget v4, Ltm/f;->b:F

    goto :goto_5

    :cond_c
    sget v4, Ltm/f;->a:F

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isSpecifiedDialogHeight()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_d
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_Center:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_width_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_height_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    if-eqz v1, :cond_4

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setupView()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v1, v2}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->storeCustomViewInitialTextSize()V

    return-void
.end method

.method private setupView(ZZZF)V
    .locals 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiuix/appcompat/app/h;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/h;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateImmersiveDialogPanel()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isSpecifiedDialogHeight()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v2, Lmiuix/appcompat/app/i;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/i;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/AlertController$6;

    invoke-direct {p2, p0, p4}, Lmiuix/appcompat/app/AlertController$6;-><init>(Lmiuix/appcompat/app/AlertController;F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_3
    :goto_1
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p4, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v0, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v2, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p4, :cond_4

    invoke-direct {p0, p4, p3}, Lmiuix/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;Z)V

    :cond_4
    if-eqz v0, :cond_5

    move-object p3, v0

    check-cast p3, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result p4

    invoke-virtual {p3, p4}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isContentLandscape(Z)V

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_6
    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_7

    move v0, p3

    goto :goto_2

    :cond_7
    move v0, p4

    :goto_2
    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_9

    :cond_8
    sget v0, Lmiuix/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_b

    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p4, :cond_b

    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget p4, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    const/4 v0, -0x1

    if-le p4, v0, :cond_b

    invoke-virtual {p2, p4, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setSelection(I)V

    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p3, Lmiuix/appcompat/R$id;->checkbox_stub:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_c

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/app/AlertController;->setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V

    :cond_c
    if-nez p1, :cond_d

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->onLayoutReload()V

    :cond_d
    :goto_3
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/j;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/j;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupWindow()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupImmersiveWindow()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    :goto_0
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Lmiuix/appcompat/app/AlertController$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertController$7;-><init>(Lmiuix/appcompat/app/AlertController;I)V

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lk3/p;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmiuix/appcompat/app/AlertController$8;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$8;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private shouldLimitWidth(I)Z
    .locals 1

    const/16 v0, 0x18a

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldUseLandscapePanel()Z
    .locals 4

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    if-ge v2, v3, :cond_1

    return v1

    :cond_1
    mul-int/lit8 v2, v2, 0x2

    if-gt v2, v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private showSystemAlertInFlip()Z
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x7f6

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7d3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private storeCustomViewInitialTextSize()V
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_0

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lmiuix/appcompat/app/d;->a(Landroid/widget/TextView;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    div-float/2addr v1, v0

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    div-float/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    :cond_3
    :goto_1
    return-void
.end method

.method private translateDialogPanel(I)V
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The DialogPanel transitionY for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lbl/p;->c(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object v2, p1

    check-cast v2, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AlertController;->buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;)Z

    move-result v3

    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/16 v7, 0x1e0

    if-gt v4, v7, :cond_1

    :cond_0
    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v1, v1

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v7

    cmpg-float v1, v4, v1

    if-lez v1, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v5

    :goto_2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbl/p;->m(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v6

    :goto_3
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    move v3, v5

    goto :goto_4

    :cond_5
    move v3, v6

    :goto_4
    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v5, v6

    :cond_7
    :goto_5
    invoke-virtual {v2, v5}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    if-nez v0, :cond_8

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_6

    :cond_8
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    check-cast p2, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_6
    return-void
.end method

.method private updateContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v0, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :cond_2
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->E0(Landroid/view/View;Z)V

    :cond_4
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v5

    :goto_2
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_3
    return-void
.end method

.method private updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 6
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isNeedUpdateDialogPanelTranslationY()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/i;->o(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v2

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v4, "AlertController"

    if-eqz v3, :cond_0

    const-string v3, "======================Debug for checkTranslateDialogPanel======================"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The mPanelAndImeMargin: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The imeInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The navigationBarInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The insets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    :cond_1
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    :cond_2
    invoke-direct {p0, v1, v0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelTranslationYByIme(IZZ)V

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_3

    const-string p1, "===================End of Debug for checkTranslateDialogPanel==================="

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateDialogPanelLayoutParams(Landroid/graphics/Point;)V
    .locals 5
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isLandscape(Landroid/graphics/Point;)Z

    move-result v0

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->shouldLimitWidth(I)Z

    move-result v1

    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogPanelLayoutParams isLandScape "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDialogPanelLayoutParams shouldLimitWidth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getDialogWidthMargin(I)I

    move-result p1

    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsWindowLandScape:Z

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(ZZ)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    return-void
.end method

.method private updateDialogPanelTranslationYByIme(IZZ)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "AlertController"

    if-lez p1, :cond_6

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    if-gtz v2, :cond_0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    :cond_0
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogPanelTranslationYByIme mPanelAndImeMargin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMultiWindowMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " imeBottom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    neg-int p2, p1

    goto :goto_0

    :cond_2
    neg-int p2, p1

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    add-int/2addr p2, v2

    :goto_0
    if-eqz p3, :cond_3

    iget p3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    if-ge p1, p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDialogPanelTranslationYByIme anim translateDialogPanel Y="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_5
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDialogPanelTranslationYByIme translateDialogPanel Y="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_7

    const-string p1, "updateDialogPanelTranslationYByIme imeBottom <= 0"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    :cond_8
    :goto_2
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method private updateDimBgBottomMargin(I)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateDisplayInfo(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsl/b;->b(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lsl/b;->e(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    return-void
.end method

.method private updateImmersiveDialogPanel()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelLayoutParams(Landroid/graphics/Point;)V

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lbl/i;->d(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMinorScreenSize()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    return-void
.end method

.method private updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 21
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-nez v0, :cond_20

    if-nez v8, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-static {v8, v0}, Landroidx/core/view/m3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {v8, v0}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {v8, v1}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v7, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v2, :cond_1

    iget-object v2, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Insets;->left:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    iget v5, v1, Landroid/graphics/Insets;->right:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-boolean v1, v7, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v10, "AlertController"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateParentPanel navigationBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateParentPanel mDisplayCutoutSafeInsets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v7, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    iget-object v1, v7, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    iget-object v1, v7, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v12

    sub-int/2addr v1, v11

    iget-object v2, v7, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v2, v14, :cond_3

    iget v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v2, v1, v2

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    :cond_3
    move v15, v2

    iget v0, v0, Landroid/graphics/Insets;->top:I

    iget-object v2, v7, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, v7, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v3, :cond_4

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    goto :goto_0

    :cond_4
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v2, v7, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-eqz v4, :cond_5

    add-int/2addr v2, v0

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    iget-boolean v4, v7, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez v4, :cond_6

    move v5, v0

    goto :goto_2

    :cond_6
    move v5, v2

    :goto_2
    sub-int v0, v1, v15

    div-int/lit8 v0, v0, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ltz v0, :cond_7

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v3, v9, Landroid/graphics/Insets;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v0, v2, :cond_7

    move/from16 v2, v17

    goto :goto_3

    :cond_7
    move/from16 v2, v16

    :goto_3
    if-ltz v0, :cond_8

    iget-object v3, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/graphics/Insets;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v0, v3, :cond_8

    move/from16 v3, v17

    goto :goto_4

    :cond_8
    move/from16 v3, v16

    :goto_4
    iget v4, v7, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    iget v14, v7, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    move/from16 v18, v4

    iget-boolean v4, v7, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    move/from16 v19, v5

    const-string v5, ", leftNeedAvoid = "

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v6

    const-string v6, "updateParentPanel, panelWidth = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", params.width = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rootViewWidthForChild = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", params.leftMargin = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", params.rightMargin = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rightNeedAvoid = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateParentPanel, restWidth = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxRight = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/graphics/Insets;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move/from16 v20, v6

    :goto_5
    if-nez v2, :cond_c

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v0, v7, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "immersive dialog reset gravity result"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move/from16 v4, v18

    move/from16 v8, v19

    move/from16 v18, v11

    move/from16 v11, v20

    goto/16 :goto_c

    :cond_c
    :goto_6
    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v2, :cond_d

    move v4, v0

    goto :goto_7

    :cond_d
    move v4, v1

    :goto_7
    iget v3, v9, Landroid/graphics/Insets;->left:I

    iget v6, v9, Landroid/graphics/Insets;->right:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v4, v3, :cond_e

    move/from16 v6, v17

    goto :goto_8

    :cond_e
    move/from16 v6, v16

    :goto_8
    if-eqz v2, :cond_f

    const/16 v3, 0x10

    goto :goto_9

    :cond_f
    const/16 v3, 0x20

    :goto_9
    move v14, v3

    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v7, v3}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelLayoutParams(Landroid/graphics/Point;)V

    iget v3, v7, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_10

    iget v3, v7, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    iput v3, v7, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    iput v3, v7, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    :cond_10
    if-eqz v2, :cond_11

    iget v3, v7, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    goto :goto_a

    :cond_11
    iget v3, v7, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    :goto_a
    iget-boolean v8, v7, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v8, :cond_12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v11

    const-string v11, "immersive dialog margin compute, leftNeedAvoidSpace = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rightNeedAvoidSpace = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", horizontalMargin = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isAvoidNaviBar = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_12
    move/from16 v18, v11

    :goto_b
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v15

    move/from16 v8, v19

    move v5, v14

    move/from16 v11, v20

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/AlertController;->computeHorizontalMargin(Landroid/widget/FrameLayout$LayoutParams;IIIIZ)[I

    move-result-object v0

    aget v4, v0, v16

    aget v14, v0, v17

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    if-ne v4, v14, :cond_13

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_13
    :goto_c
    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/i;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v7, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v0, :cond_14

    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsl/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    move/from16 v0, v17

    goto :goto_d

    :cond_14
    move/from16 v0, v16

    :goto_d
    iget-boolean v1, v7, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v1, :cond_15

    if-eqz v0, :cond_18

    :cond_15
    iget v0, v9, Landroid/graphics/Insets;->bottom:I

    if-nez v0, :cond_18

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-direct {v7, v0}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, v7, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v0, :cond_16

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_e

    :cond_16
    move/from16 v0, v16

    :goto_e
    if-nez v0, :cond_17

    add-int v6, v11, v1

    goto :goto_f

    :cond_17
    add-int v6, v11, v0

    :goto_f
    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/app/AlertController;->getImeBottomByWindowInsets(Landroid/view/WindowInsets;)I

    move-result v0

    if-lez v0, :cond_1a

    move v6, v11

    goto :goto_11

    :cond_18
    iget-boolean v0, v7, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v0, :cond_19

    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_19

    goto :goto_10

    :cond_19
    iget v0, v9, Landroid/graphics/Insets;->bottom:I

    iget-object v1, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_10
    add-int v6, v11, v0

    :cond_1a
    :goto_11
    iget-boolean v0, v7, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_1b

    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v12

    sub-int v0, v0, v18

    sub-int/2addr v0, v4

    sub-int/2addr v0, v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersive dialog margin result, leftMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", topMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rightMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottomMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rootWidthForPanel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v12

    sub-int v2, v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lastPanelWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newPanelWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", displayCutout = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", navigationBarInset = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rootViewLeftPadding = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rootViewRightPadding = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v0, v8, :cond_1c

    iput v8, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v16, v17

    :cond_1c
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v0, v6, :cond_1d

    iput v6, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v17

    :cond_1d
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v0, v4, :cond_1e

    iput v4, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v17

    :cond_1e
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v0, v14, :cond_1f

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_12

    :cond_1f
    move/from16 v17, v16

    :goto_12
    if-eqz v17, :cond_20

    iget-object v0, v7, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_20
    :goto_13
    return-void
.end method

.method private updateRootViewSize(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lbl/c;->j(Landroid/content/Context;Landroid/content/res/Configuration;)Lbl/o;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v2, v0, Lbl/o;->d:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget-object v0, v0, Lbl/o;->c:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRootViewSize mRootViewSizeDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration.density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateRootViewSize(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRootViewSize by view mRootViewSizeDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configuration.density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlertController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateViewOnDensityChanged(F)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lmiuix/view/e;->d(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/e;->b(Landroid/widget/TextView;F)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/e;->b(Landroid/widget/TextView;F)V

    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/e;->b(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lmiuix/view/e;->d(Landroid/view/View;F)V

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/e;->a(Landroid/widget/TextView;F)V

    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, p1}, Lmiuix/view/e;->c(Landroid/view/View;F)V

    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    invoke-static {v0, p1}, Lmiuix/view/e;->d(Landroid/view/View;F)V

    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0, p1}, Lmiuix/view/e;->c(Landroid/view/View;F)V

    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Lmiuix/view/e;->c(Landroid/view/View;F)V

    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-static {v0, p1}, Lmiuix/view/e;->e(Landroid/view/View;F)V

    invoke-static {v0, p1}, Lmiuix/view/e;->c(Landroid/view/View;F)V

    :cond_9
    return-void
.end method

.method private updateWindowCutoutMode()V
    .locals 3

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_2

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method addExtraButton(Lmiuix/appcompat/app/AlertController$ButtonInfo;)V
    .locals 1

    invoke-static {p1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1200(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method clearExtraButton()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->cleanWindowInsetsAnimation()V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkAndClearFocus()V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;ZLandroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    :cond_3
    const-string p1, "AlertController"

    const-string v0, "dialog is not attached to window when dismiss is invoked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    invoke-static {v1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1300(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method getNonImmersiveDialogHeight()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    return v0
.end method

.method public getSingleItemMinHeight()I
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {v0, v1}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method hasPendingDismiss()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return v0
.end method

.method public installContent(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lbl/i;->m(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getFlipCutout()V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/e;

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/e;->setContentView(I)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_root_view:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/widget/DialogRootView;

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_dim_bg:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v1, Lmiuix/appcompat/app/AlertController$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertController$4;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/DialogRootView;->setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindow()V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupView()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v0, Lmiuix/appcompat/app/AlertController$5;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertController$5;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    return v0
.end method

.method isDialogImmersive()Z
    .locals 2

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isShowingAnimation()Z
    .locals 7

    iget-wide v0, p0, Lmiuix/appcompat/app/AlertController;->mShowUpTimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-wide v5, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogShowAnimDuration:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    return v3
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V
    .locals 6

    sget-boolean v0, Lsl/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsl/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbl/i;->m(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getFlipCutout()V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDisplayInfo(Landroid/content/Context;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v4, "AlertController"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChangednewDensityDpi "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " densityScale "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged mRootViewSize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkThread()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dialog is created in thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but onConfigurationChanged is called from different thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", so this onConfigurationChanged call should be ignore"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v3, :cond_7

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    :cond_7
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsInTinyScreen(Z)V

    invoke-direct {p0, v1, p2, p3, v2}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateLayout(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance p2, Lmiuix/appcompat/app/AlertController$9;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertController$9;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_b
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVerticalAvoidSpace()I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setVerticalAvoidSpace(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    invoke-static {}, Lpl/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v4

    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsWindowLandScape:Z

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lpl/j;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Ltm/f;->b:F

    goto :goto_0

    :cond_2
    sget v1, Ltm/f;->a:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateLayout(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public replaceView(IZ)V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->clearCustomContent()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V

    return-void
.end method

.method public replaceView(Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->clearCustomContent()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method setButtonForceVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setComment(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCustomPanelSize(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Lmiuix/appcompat/app/g;

    invoke-direct {v1, p0, p1}, Lmiuix/appcompat/app/g;-><init>(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mParentPanel or layoutParams is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method setEnableEnterAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    return-void
.end method

.method setEnableImmersive(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIconSize(II)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    return-void
.end method

.method public setLayoutReloadListener(Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

    return-void
.end method

.method setLiteVersion(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mLiteVersion:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setNonImmersiveDialogHeight(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    return-void
.end method

.method public setPanelSizeChangedListener(Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    return-void
.end method

.method setPendingDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return-void
.end method

.method setPreferLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    return-void
.end method

.method public setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUseSmallIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method
