.class public abstract Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;
.super Lcom/miui/common/base/ui/LoadingFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficRelatedFragment"


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field protected mServiceConnected:Z

.field protected mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field protected mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

.field protected mSlotNum:I

.field protected mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/LoadingFragment;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    new-array v0, v0, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$1;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mConn:Landroid/content/ServiceConnection;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_1

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInsertedOne()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSlotNum:I

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->resetTitle()V

    :cond_3
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->bindTrafficManageService()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->showSecurityCenterAllowNetwork(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;->unbindTrafficManageService()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->recordPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onTrafficManageServiceConnected()V
.end method

.method protected resetTitle()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment$2;-><init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method
