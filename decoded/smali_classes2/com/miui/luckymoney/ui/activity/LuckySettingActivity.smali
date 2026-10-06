.class public Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static final MSG_UPDATE_CONFIG:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private layoutFastOpen:Landroid/view/View;

.field private layoutHasLuckyMoney:Landroid/view/View;

.field private layoutNoLuckyMoney:Landroid/view/View;

.field private mAppContext:Landroid/content/Context;

.field private mBackTextView:Landroid/widget/TextView;

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mFastOpenTextView:Landroid/widget/TextView;

.field private mFunctionNoWorkView:Landroid/widget/TextView;

.field private mLayoutToolbar:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mMasterSwitchView:Landroid/view/View;

.field private mMoreSettingClickListener:Landroid/view/View$OnClickListener;

.field private mMoreSettingTextView:Landroid/widget/TextView;

.field private mMoreSettingView:Landroid/view/View;

.field private mNoLuckyMoneyView:Landroid/view/View;

.field private mXiaomiLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mXiaomiLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private txvFastOpenStatus:Landroid/widget/TextView;

.field private txvNumberOfLuckyMoney:Landroid/widget/TextView;

.field private txvWarningSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const-class v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$8;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$9;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showCloseDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->updateXiaomiLuckyMoney(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvFastOpenStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initBannerSummaryView()V
    .locals 5

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getWarningLuckyMoneyCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mNoLuckyMoneyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutHasLuckyMoney:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutNoLuckyMoney:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvNumberOfLuckyMoney:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mNoLuckyMoneyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutHasLuckyMoney:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutNoLuckyMoney:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0b0685

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLayoutToolbar:Landroid/view/View;

    invoke-static {}, Lx4/a0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLayoutToolbar:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->setNotchToolbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mLayoutToolbar:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->setStatusbarMarginTop(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    const v0, 0x7f0b0db6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvWarningSummary:Landroid/widget/TextView;

    const v1, 0x7f1203d0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b080d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mNoLuckyMoneyView:Landroid/view/View;

    const v0, 0x7f0b0aa0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    const v0, 0x7f0b068b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingView:Landroid/view/View;

    const v0, 0x7f0b0674

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutFastOpen:Landroid/view/View;

    const v0, 0x7f0b0686

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMasterSwitchView:Landroid/view/View;

    const v0, 0x7f0b0d2a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFastOpenTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0836

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0d28

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvNumberOfLuckyMoney:Landroid/widget/TextView;

    const v0, 0x7f0b0d2b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvFastOpenStatus:Landroid/widget/TextView;

    const v0, 0x7f0b065d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutHasLuckyMoney:Landroid/view/View;

    const v0, 0x7f0b065e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutNoLuckyMoney:Landroid/view/View;

    const v0, 0x7f0b0c77

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFunctionNoWorkView:Landroid/widget/TextView;

    const v0, 0x7f0b01a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mBackTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFunctionNoWorkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f121bd3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvFastOpenStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5df2\u5f00\u542f"

    goto :goto_1

    :cond_1
    const-string v1, "\u5df2\u5173\u95ed"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->updateXiaomiLuckyMoney(Z)V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->initBannerSummaryView()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mXiaomiLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutFastOpen:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMasterSwitchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mBackTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFunctionNoWorkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private registerConfigChangedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.config_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private showCloseDialog()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12054a

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120549

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$5;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$5;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    const v2, 0x7f120c2f

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$6;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$6;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    const v2, 0x7f120548

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$7;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$7;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private showGuide()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFirstStartUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showTipsDialog()V

    :goto_0
    return-void
.end method

.method private showTipsDialog()V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isShouldUserTips()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setShouldUserTips(Z)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1203d2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1203d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1203cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$4;-><init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private unregisterConfigChangedReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateXiaomiLuckyMoney(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, p1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutFastOpen:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFastOpenTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;->startLuckyMoneyService(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->layoutFastOpen:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mFastOpenTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMoreSettingTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/luckymoney/upgrade/LuckyMoneyHelper;->stopLuckyMoneyService(Landroid/content/Context;)V

    :goto_0
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0038

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lag/a;->b(Landroid/view/Window;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->showGuide()V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->registerConfigChangedReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->unregisterConfigChangedReceiver()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isConfigChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "upload settings"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;

    invoke-direct {v0}, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;-><init>()V

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v3}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->txvFastOpenStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v1, "\u5df2\u5173\u95ed"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
