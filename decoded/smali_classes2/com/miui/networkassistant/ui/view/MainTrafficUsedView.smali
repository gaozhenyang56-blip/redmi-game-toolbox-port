.class public Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final STATUS_AD:I = 0x3

.field public static final STATUS_NET_AD:I = 0x6

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_NO_SET:I = 0x4

.field public static final STATUS_OVERFLOW:I = 0x2

.field public static final STATUS_VIRTUAL:I = 0x5

.field public static final STATUS_WARNING:I = 0x1


# instance fields
.field private mAdImage:Landroid/widget/ImageView;

.field private mBackgroundAnimView:Lcom/miui/networkassistant/ui/view/BackgroundView;

.field private mBillLayout:Landroid/view/View;

.field private mBillRemainedTextView:Landroid/widget/TextView;

.field private mBillRemainedUnitTextView:Landroid/widget/TextView;

.field private mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

.field private mCardBackgroundView:Landroid/widget/RelativeLayout;

.field private mCardTitle:Landroid/widget/TextView;

.field private mCardTitleImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mHasLeisure:Z

.field private mLayoutMonthPackage:Landroid/view/View;

.field private mMainBillRemainTextView:Landroid/widget/TextView;

.field private mMainMonthPackageTextView:Landroid/widget/TextView;

.field private mMainTodayUsedTextView:Landroid/widget/TextView;

.field private mMonthPackageTextView:Landroid/widget/TextView;

.field private mMonthPackageUnit:Landroid/widget/TextView;

.field private mMonthRemainedView:Landroid/widget/TextView;

.field private mNoSimIconView:Lcom/miui/maml/component/MamlView;

.field private mNoSimIconViewIsActive:Z

.field private mNoSimView:Landroid/widget/LinearLayout;

.field private mPackageUsedView:Landroid/view/View;

.field private mPreAdjustTimeTextView:Landroid/widget/TextView;

.field private mPrimaryTextLayout:Landroid/view/View;

.field private mPrimaryTextView:Landroid/widget/TextView;

.field private mSplitView:Landroid/view/View;

.field private mTodayUsedTextUnit:Landroid/widget/TextView;

.field private mTodayUsedTextView:Landroid/widget/TextView;

.field private mUnitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconViewIsActive:Z

    const p2, 0x7f0e0540

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0b0204

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mAdImage:Landroid/widget/ImageView;

    const v0, 0x7f0b07e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardBackgroundView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0736

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/BackgroundView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBackgroundAnimView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    const v0, 0x7f0b0825

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiTypefaceForNA(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b0d3b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0b9a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0d91

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    const v0, 0x7f0b08e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0b92

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0d8c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPackageUsedView:Landroid/view/View;

    const v0, 0x7f0b0be8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0bea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextUnit:Landroid/widget/TextView;

    const v0, 0x7f0b07bd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const v0, 0x7f0b07bf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPackageUsedView:Landroid/view/View;

    const v1, 0x7f0b0664

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillLayout:Landroid/view/View;

    const v0, 0x7f0b0175

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0177

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedUnitTextView:Landroid/widget/TextView;

    const v0, 0x7f0b01db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/LoadingButton;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    const v0, 0x7f0b0205

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0206

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitleImage:Landroid/widget/ImageView;

    const v0, 0x7f0b08ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextLayout:Landroid/view/View;

    const v0, 0x7f0b068a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLayoutMonthPackage:Landroid/view/View;

    const v0, 0x7f0b073e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainTodayUsedTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0737

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainBillRemainTextView:Landroid/widget/TextView;

    const v0, 0x7f0b07c1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainMonthPackageTextView:Landroid/widget/TextView;

    return-void
.end method

.method private switchMamlView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconViewIsActive:Z

    if-eqz v1, :cond_0

    const-string v1, "deactive"

    goto :goto_0

    :cond_0
    const-string v1, "active"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->onCommand(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconViewIsActive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconViewIsActive:Z

    :cond_1
    return-void
.end method

.method private updatePrimaryMessage(JJFZ)V
    .locals 1

    if-nez p6, :cond_0

    const p1, 0x7f120d0d

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    goto :goto_1

    :cond_0
    iget-boolean p6, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mHasLeisure:Z

    if-eqz p6, :cond_3

    long-to-float p6, p1

    long-to-float v0, p3

    mul-float/2addr v0, p5

    cmpg-float p5, p6, v0

    if-gez p5, :cond_1

    const p1, 0x7f120d14

    goto :goto_0

    :cond_1
    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    const p1, 0x7f120d12

    goto :goto_0

    :cond_2
    const p1, 0x7f120d13

    goto :goto_0

    :cond_3
    long-to-float p6, p1

    long-to-float v0, p3

    mul-float/2addr v0, p5

    cmpg-float p5, p6, v0

    if-gez p5, :cond_4

    const p1, 0x7f120d16

    goto :goto_0

    :cond_4
    cmp-long p1, p1, p3

    if-gez p1, :cond_5

    const p1, 0x7f120d17

    goto :goto_0

    :cond_5
    const p1, 0x7f120d15

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updateSplitViewVisible()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mSplitView:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public customBillRemainTextView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedUnitTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedUnitTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->switchMamlView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconView:Lcom/miui/maml/component/MamlView;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimIconView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onResume()V

    :cond_0
    return-void
.end method

.method public resetView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    const v1, 0x7f120d00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setAdStyle(Landroid/content/Context;I)V
    .locals 8

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setDataUsageButtonEnable(Z)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthPackageInfo(JJFZ)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setLeisureTrafficRemained(ZJ)V

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedViewVisible(Z)V

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setUnitTextViewVisible(Z)V

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setPrimaryTextLayoutVisible(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p2, :cond_0

    const v2, 0x7f1206d8

    goto :goto_0

    :cond_0
    const v2, 0x7f1206d9

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f120d0b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%s-%s "

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setCardStyle(Ljava/lang/String;IFI)V

    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutVisible(Z)V

    :cond_1
    return-void
.end method

.method public setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBillLayoutVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBillRemainedTextView(J)V
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedUnitTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setBillRemainedTextView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBillRemainedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCardRec(Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/SecondaryCardRec;->getPictureURL()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mAdImage:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->g:Lrh/c;

    invoke-static {p1, v0, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    return-void
.end method

.method public setCardStyle(Ljava/lang/String;IFI)V
    .locals 8

    const v0, 0x7f060aed

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x7f080319

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mAdImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardBackgroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showNoSimView(Z)V

    return-void

    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    const v7, 0x7f120e81

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v6, p4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    iget-object v6, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    const v7, 0x7f120d0b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "%s%d-%s"

    invoke-static {p1, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mAdImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    const v4, 0x7f0804cf

    goto :goto_0

    :pswitch_4
    const v4, 0x7f0804d2

    const v0, 0x7f060aef

    goto :goto_0

    :pswitch_5
    const v4, 0x7f0804c5

    const v0, 0x7f060aec

    :goto_0
    invoke-virtual {p0, v3}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showNoSimView(Z)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/16 v5, 0x8

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitleImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitleImage:Landroid/widget/ImageView;

    if-nez p4, :cond_1

    const p4, 0x7f08098e

    goto :goto_1

    :cond_1
    const p4, 0x7f08098f

    :goto_1
    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p4, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitle:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-ne p2, v2, :cond_2

    const v4, 0x7f081045

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardBackgroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPackageUsedView:Landroid/view/View;

    if-ne p2, v2, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBackgroundAnimView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2, p3, v3}, Lcom/miui/networkassistant/ui/view/BackgroundView;->setParam(IFZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public setDataUsageButtonEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/LoadingButton;->setEnabled(Z)V

    return-void
.end method

.method public setDataUsageButtonText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setDataUsageButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDataUsageButtonVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setDataUsageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDataUsageLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setDeclarationListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setErrorTextVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->updateSplitViewVisible()V

    return-void
.end method

.method public setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p4, p3, p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHasLeisure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mHasLeisure:Z

    return-void
.end method

.method public setLeisureTrafficRemained(ZJ)V
    .locals 0

    return-void
.end method

.method public setMainBillRemainTextView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainBillRemainTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMainMonthPackageTextView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainMonthPackageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMainTodayUsedTextView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainTodayUsedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMonthPackage(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public setMonthPackageInfo(JJFZ)V
    .locals 7

    sub-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_1

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    if-eqz p6, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    goto :goto_0

    :cond_0
    const v3, 0x7f120d0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageUnit:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p6}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->updatePrimaryMessage(JJFZ)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    aget-object p3, p1, v6

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    aget-object p1, p1, v5

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setMonthPackageViewVisible(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainMonthPackageTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMonthRemain(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMonthRemainedClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMonthRemainedViewVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMonthUsedText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMainMonthPackageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setMonthViewGroupVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mLayoutMonthPackage:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPreAdjustTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getPreAdjustTimeTips(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPreAdjustTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->updateSplitViewVisible()V

    return-void
.end method

.method public setPrimaryTextLayoutVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTodayUsed(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextUnit:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setFormattingTextView(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public setTodayUsedCustom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mTodayUsedTextUnit:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnitTextViewVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setUnlimitedMonthPackageInfo(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthPackageUnit:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mMonthRemainedView:Landroid/widget/TextView;

    const/4 p3, 0x0

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mUnitTextView:Landroid/widget/TextView;

    const/4 p3, 0x1

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f120d0d

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->showPrimaryMessage(I)V

    return-void
.end method

.method public showNoSimView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitleImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mCardTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPackageUsedView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mBackgroundAnimView:Lcom/miui/networkassistant/ui/view/BackgroundView;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mNoSimView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showPrimaryMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public showPrimaryMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startAnim()V
    .locals 1

    invoke-static {}, Lx4/k0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->mButtonAdjustUsage:Lcom/miui/networkassistant/ui/view/LoadingButton;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/view/LoadingButton;->startAnim()V

    return-void
.end method

.method public unRegisterBillLayoutClickListener()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setBillLayoutClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public unRegisterMonthRemainedClickListener()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->setMonthRemainedClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
