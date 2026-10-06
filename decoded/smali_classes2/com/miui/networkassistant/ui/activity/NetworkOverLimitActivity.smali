.class public Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mIsIgnore:Z

.field private mIsOverLimitType:I

.field private mIsTrafficPurchaseAvailable:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->lambda$onCreate$0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic b(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->lambda$onCreate$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->lambda$onCreate$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->lambda$onCreate$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->lambda$onCreate$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private enableMobileDataConnection()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setMobileDataState(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setMobilePolicyEnable(Z)Z

    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->startMiSimMainActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->enableMobileDataConnection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->resetDailyUsedCardSetting()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/g;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/ui/activity/g;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Ljava/lang/String;)V

    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->enableMobileDataConnection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->resetDailyUsedCardSetting()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    return-void
.end method

.method private synthetic lambda$onCreate$4(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private resetDailyUsedCardSetting()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkTime(J)Z

    :cond_0
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "TAG-mDialog"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    if-nez p1, :cond_1

    invoke-static {}, Lx4/a0;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iget v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageOverLimit(Landroid/content/Context;III)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12061e

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    sget-boolean v3, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_0

    const v7, 0x7f1206d8

    goto :goto_0

    :cond_0
    const v7, 0x7f1206d9

    :goto_0
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    const-string v2, "%s-%s"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    :goto_1
    invoke-static {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {v2, v3, v6}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsTrafficPurchaseAvailable:Z

    const v2, 0x7f0e0132

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0315

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getOverDataUsageStopNetworkType()I

    move-result v7

    iput v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v8, 0x3

    if-eqz v7, :cond_7

    const/4 v9, 0x7

    if-ne v7, v9, :cond_3

    goto :goto_2

    :cond_3
    if-ne v7, v5, :cond_4

    const v7, 0x7f12060c

    goto :goto_3

    :cond_4
    if-ne v7, v8, :cond_5

    const v7, 0x7f120ca9

    invoke-virtual {v1, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v7, 0x7f120ca8

    goto :goto_3

    :cond_5
    if-ne v7, v4, :cond_6

    const v7, 0x7f1215ad

    goto :goto_3

    :cond_6
    const/4 v9, 0x4

    if-ne v7, v9, :cond_8

    iget-object v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100022

    add-int/2addr v7, v5

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    :goto_2
    const v7, 0x7f120618

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_4
    iget v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    if-eq v7, v4, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/CommonConfig;->getMiSimTips()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/networkassistant/config/CommonConfig;->getMiSimAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120ddf

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    aput-object v7, v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/miui/networkassistant/ui/activity/c;

    invoke-direct {v7, v0, v9}, Lcom/miui/networkassistant/ui/activity/c;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v3, 0x7f0b0317

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-boolean v7, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v7, :cond_a

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f121569

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverLimitStopNetworkTime()J

    iget-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverDailyLimitTime()J

    move-result-wide v2

    iget-object v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkTime()J

    iget-object v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficProtectedStopNetTime()J

    iget-object v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverRoamingDailyLimitTime()J

    move-result-wide v9

    iget-object v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureOverLimitStopNetworkTime()J

    move-result-wide v11

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis()J

    move-result-wide v13

    iget v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    if-ne v7, v4, :cond_b

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v15

    cmp-long v4, v9, v15

    if-gez v4, :cond_b

    move v4, v5

    goto :goto_6

    :cond_b
    move v4, v6

    :goto_6
    or-int/2addr v4, v6

    iget v7, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    if-ne v7, v8, :cond_c

    cmp-long v8, v11, v13

    if-gez v8, :cond_c

    move v8, v5

    goto :goto_7

    :cond_c
    move v8, v6

    :goto_7
    or-int/2addr v4, v8

    if-ne v7, v5, :cond_d

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gez v2, :cond_d

    move v6, v5

    :cond_d
    or-int v2, v4, v6

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->enableMobileDataConnection()V

    iput-boolean v5, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_e
    const v2, 0x104000a

    new-instance v3, Lcom/miui/networkassistant/ui/activity/d;

    invoke-direct {v3, v0}, Lcom/miui/networkassistant/ui/activity/d;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f120619

    new-instance v3, Lcom/miui/networkassistant/ui/activity/e;

    invoke-direct {v3, v0}, Lcom/miui/networkassistant/ui/activity/e;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/miui/networkassistant/ui/activity/f;

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/ui/activity/f;-><init>(Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->registerPhoneStateListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsIgnore:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mIsOverLimitType:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendDataUsageOverLimit(Landroid/content/Context;III)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;->unRegisterPhoneStateListener()V

    return-void
.end method
