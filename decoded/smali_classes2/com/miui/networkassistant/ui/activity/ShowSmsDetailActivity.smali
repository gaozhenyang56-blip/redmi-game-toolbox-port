.class public Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;
.super Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFAULT_CAT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final EXTRA_VIEW_FROM:Ljava/lang/String; = "view_from"

.field public static final LAUNCH_FROM:Ljava/lang/String; = "launchFrom"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "SecurityCenter"

.field public static final REQUIRE_CONTACT:I = 0x168

.field public static final REQUIRE_VIRTUAL:I = 0x244

.field public static final SLOT_ID:Ljava/lang/String; = "slotId"

.field private static final TAG:Ljava/lang/String; = "ShowSmsDetailActivity"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_BILL:I = 0x1

.field public static final TYPE_TRAFFIC:I


# instance fields
.field public businessHallVersionIsExist:Z

.field public contact:I

.field private isDataSaved:Z

.field private mAdjustCMDText:Landroid/widget/TextView;

.field private mBackTextView:Landroid/widget/TextView;

.field private mChargeMenuItem:Landroid/view/MenuItem;

.field private mCorrectFailLayout:Landroid/view/View;

.field private mCorrectSuccessLayout:Landroid/view/View;

.field private mFailReason:Landroid/widget/TextView;

.field private mLeftText:Landroid/widget/TextView;

.field private mLeftUnit:Landroid/widget/TextView;

.field private mReportMenuItem:Landroid/view/MenuItem;

.field private mServiceConnected:Z

.field private mSettingMenuItem:Landroid/view/MenuItem;

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mSmsDetail:Ljava/lang/String;

.field private mSmsDetailView:Landroid/widget/TextView;

.field private mSmsResult:I

.field private mSmsShowType:I

.field private mSubTitle:Landroid/widget/TextView;

.field private mSuccessTitle:Landroid/widget/TextView;

.field private mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConnection:Landroid/content/ServiceConnection;

.field private mUsageText:Landroid/widget/TextView;

.field private mUsageUnit:Landroid/widget/TextView;

.field private mViewFrom:Ljava/lang/String;

.field public virtual:I

.field public virtualSimVersionInstalled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->virtual:I

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->contact:I

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->virtualSimVersionInstalled:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->businessHallVersionIsExist:Z

    new-instance v0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->setSubTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->saveUploadCorrectionResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    return p0
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private initView()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "view_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mViewFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "other"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mViewFrom:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mViewFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTcSmsDetailShow(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0ab0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const v0, 0x7f0b066e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    const v0, 0x7f0b066d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    const v0, 0x7f0b0b91

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSuccessTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0b9e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageText:Landroid/widget/TextView;

    const v0, 0x7f0b0b9f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageUnit:Landroid/widget/TextView;

    const v0, 0x7f0b0b98

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftText:Landroid/widget/TextView;

    const v0, 0x7f0b0b99

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftUnit:Landroid/widget/TextView;

    const v0, 0x7f0b0b8f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mFailReason:Landroid/widget/TextView;

    const v0, 0x7f0b0b8d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->resetTitle()V

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillSmsDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficSmsDetail()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetail:Ljava/lang/String;

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillTcResultCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficTcResultCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetail:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetailView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const/16 v3, 0x8

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0, v3, v4, v5, v6}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getPreAdjustTimeTips(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSuccessTitle:Landroid/widget/TextView;

    const v4, 0x7f1216ce

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTcUsed()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageText:Landroid/widget/TextView;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mUsageUnit:Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTcRemain()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesSplited(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftText:Landroid/widget/TextView;

    aget-object v2, v0, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mLeftUnit:Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_3

    :pswitch_0
    const v0, 0x7f12198c    # 1.9419993E38f

    goto :goto_3

    :pswitch_1
    const v0, 0x7f121966

    goto :goto_3

    :pswitch_2
    const v0, 0x7f121967

    goto :goto_3

    :pswitch_3
    const v0, 0x7f121968

    goto :goto_3

    :pswitch_4
    const v0, 0x7f121965

    goto :goto_3

    :pswitch_5
    const v0, 0x7f121969

    :goto_3
    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mFailReason:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectSuccessLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mCorrectFailLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mAdjustCMDText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetTitle()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f1216cf

    goto :goto_0

    :cond_0
    const v0, 0x7f1216d0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized saveUploadCorrectionResult()V
    .locals 10

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillTcResult()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficTcResult()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-boolean v4, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mServiceConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_6

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_2

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-ne v3, v2, :cond_3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v4

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v4, v6

    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v5, v8

    goto :goto_4

    :cond_5
    move-object v6, v7

    :goto_4
    aget-object v5, v5, v2

    goto :goto_5

    :cond_6
    move-object v5, v4

    move-object v6, v5

    :goto_5
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTcSmsReportCache(Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->isDataSaved:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSubTitle()V
    .locals 6

    const v0, 0x7f0b0cdf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsResult:I

    if-eqz v3, :cond_1

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getPreAdjustTimeTips(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private smsReportDeclare()V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120dad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12144d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1214a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v4, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;

    invoke-direct {v5, p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V

    invoke-direct {v3, v4, v5}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startSmsDetailActivity(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "view_from"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mTrafficManageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public jumpToCharge()V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->virtualSimVersionInstalled:Z

    const-string v1, "bill"

    const-string v2, "goto"

    const-string v3, "slotId"

    const-string v4, "android.intent.category.DEFAULT"

    const-string v5, "SecurityCenter"

    const-string v6, "launchFrom"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.miui.businesshall.ACTION_ROUTER"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->businessHallVersionIsExist:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.mobile.businesshall.ACTION_ROUTER"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0138

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0b8d

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p0, v0, p1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setTranslucentStatus(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->bindTrafficManageService()V

    return-void
.end method

.method public onCreateContentView()I
    .locals 1

    const v0, 0x7f0e04b8

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b097b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mReportMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0b0221

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mChargeMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0b0a4f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSettingMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->setChargeMenuItem()V

    iget p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSmsShowType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSettingMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return v0
.end method

.method protected onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->unbindTrafficManageService()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mReportMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->smsReportDeclare()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mChargeMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->jumpToCharge()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSettingMenuItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setChargeMenuItem()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "com.miui.virtualsim"

    invoke-static {v0, v1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->virtual:I

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->contact:I

    iget v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->virtual:I

    const/4 v2, 0x1

    const/16 v3, 0x244

    if-lt v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->virtualSimVersionInstalled:Z

    :cond_0
    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->businessHallVersionIsExist:Z

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->virtualSimVersionInstalled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->businessHallVersionIsExist:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f120d8c

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mChargeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->mChargeMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method
