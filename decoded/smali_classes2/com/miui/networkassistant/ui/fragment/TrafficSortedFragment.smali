.class public Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;
.super Lcom/miui/networkassistant/ui/base/ListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;
.implements Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;


# static fields
.field private static final BUNDLE_SLOT_NUM_TAG:Ljava/lang/String; = "slot_num_tag"


# instance fields
.field private mAdapterType:I

.field private mAllAppDataUsageTotal:[J

.field private mAppTrafficInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/model/TrafficInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataReady:Z

.field private mDateTypePrefix:[Ljava/lang/String;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallServiceConnection:Landroid/content/ServiceConnection;

.field private mImsi:Ljava/lang/String;

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mSlotNum:I

.field private mSortedType:I

.field private mSpinnerTitleTxt:[Ljava/lang/String;

.field private mTitleLayout:Landroid/view/View;

.field private mTitleType:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

.field private mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

.field private mTrafficType:[Ljava/lang/String;

.field private reStore:Z

.field sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

.field trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->reStore:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    return p0
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateSpinnerTitle()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    return p0
.end method

.method static synthetic access$602(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    return-object p0
.end method

.method public static synthetic b0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->lambda$updateData$2()V

    return-void
.end method

.method private bindFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private bindTrafficStatisticService()V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mImsi:Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->registerListener(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->lambda$onCustomizeActionBar$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->lambda$initViewDelay$0(Landroid/view/View;)V

    return-void
.end method

.method private dismissAllMenu()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 4

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDateTypePrefix:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDateTypePrefix:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f030070

    invoke-static {v0, v1}, Lx4/y1;->d(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficType:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "system_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    const-string v1, "title_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->reStore:Z

    if-nez v1, :cond_1

    const-string v1, "sort_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    :cond_1
    invoke-static {}, Lx4/k0;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iput v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    :cond_2
    const-string v1, "slot_num_tag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->parseSlotNum(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSimImsi(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mImsi:Ljava/lang/String;

    return-void
.end method

.method private initViewDelay()V
    .locals 2

    const v0, 0x7f0b069a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0b06d3

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/k0;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/k0;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->initData()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->onResetTitle()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->bindTrafficStatisticService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->bindFirewallService()V

    return-void
.end method

.method private synthetic lambda$initViewDelay$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->showTrafficMenuItem()V

    return-void
.end method

.method private synthetic lambda$onCustomizeActionBar$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->showSortTypeMenu()V

    return-void
.end method

.method private synthetic lambda$updateData$2()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateAppTotalTraffic()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateSpinnerTitle()V

    return-void
.end method

.method private onResetTitle()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseSlotNum(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-static {p1}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    return-void

    :cond_0
    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "sim_slot_num_tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-static {p1}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    :cond_1
    return-void
.end method

.method private showSortTypeMenu()V
    .locals 2

    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficType:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setItems([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    const v1, 0x7f0b0381

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->sortTypeMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V

    return-void
.end method

.method private showTrafficMenuItem()V
    .locals 2

    new-instance v0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSpinnerTitleTxt:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setItems([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->setOnMenuListener(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->trafficItemMenu:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V

    return-void
.end method

.method private startSystemAppActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "system_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    const-string v2, "title_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    const-string v2, "sort_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unBindFirewallService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private unBindTrafficStatisticService()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->unRegisterListener(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$TrafficStatisticListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->quitStatistic()V

    :cond_0
    return-void
.end method

.method private updateAppTotalTraffic()V
    .locals 6

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getNonSystemAppsListLocked()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppTrafficInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getAllAppDataUsageTotal()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAllAppDataUsageTotal:[J

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getSystemAppListLocked()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppTrafficInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->getSystemAppDataUsageTotal()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAllAppDataUsageTotal:[J

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setFirewall(Lcom/miui/networkassistant/service/IFirewallBinder;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppTrafficInfoList:Ljava/util/List;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setData(Ljava/util/List;III)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAppTrafficInfoList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/base/ListFragment;->showEmptyView(Z)V

    return-void
.end method

.method private updateData()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficStatisticManager:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/l0;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/l0;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateSpinnerTitle()V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDateTypePrefix:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficType:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAllAppDataUsageTotal:[J

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    aget-object v1, v1, v6

    aput-object v1, v4, v5

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    aget-object v1, v2, v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    aget-wide v6, v3, v6

    invoke-static {v5, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v1, "%s%s%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
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

.method protected initView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->initViewDelay()V

    return-void
.end method

.method public onAppTrafficStatisticUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->updateData()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->dismissAllMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "mLastType"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->reStore:Z

    const p1, 0x7f130443

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0e02b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateListAdapter()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 5

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSlotNum:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    return-object v0
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/base/ListFragment;->onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    const p1, 0x7f0b0d8f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060b0a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/ListFragment;->showEmptyView(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07160b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 4

    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080f32

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1216f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/m0;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/m0;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v2, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v2, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_0
    return v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->unBindTrafficStatisticService()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->unBindFirewallService()V

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mDataReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/TrafficInfo;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/4 v2, -0x5

    if-eq v1, v2, :cond_4

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdService(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdIntentExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget-object p1, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object p1, p1, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    aget-wide v4, p1, v3

    iget v6, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mImsi:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->startHybirdTrafficSortActivity(Landroid/content/Context;IJILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mAdapterType:I

    if-nez v1, :cond_3

    iget-object p1, p1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget p1, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/16 v1, -0xa

    if-ne p1, v1, :cond_3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->startSystemAppActivity()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTitleType:I

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    invoke-static {p1, v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mTrafficAdapter:Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->mSortedType:I

    const-string v1, "mLastType"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->dismissAllMenu()V

    return-void
.end method
