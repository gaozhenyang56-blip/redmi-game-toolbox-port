.class public Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;
.super Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$RoamingOptionDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveSlotNum:I

.field private mSlotNum:I

.field private mTotalCount:I

.field private onItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->onItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getCurrentOptSlot()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSlotNum:I

    return v0
.end method

.method private getRoamingNetworkState()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingWhiteListEnable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->TAG:Ljava/lang/String;

    const-string v3, "isRoamingEnable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private initViewDelay()V
    .locals 2

    const v0, 0x7f120873

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->setEmptyText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->onItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;)V

    return-void
.end method

.method private setDualCardSlot()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    return-void
.end method

.method private showRoamingTipDialog()V
    .locals 7

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f120682

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120681

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v4, 0x7f1200bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v5, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$RoamingOptionDialogListener;

    invoke-direct {v6, v5}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$RoamingOptionDialogListener;-><init>(Landroid/app/Activity;)V

    invoke-direct {v4, v5, v6}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSearchInputView()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f100127

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

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
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->setDualCardSlot()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->initViewDelay()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "slot_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSlotNum:I

    :cond_0
    const p1, 0x7f130444

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
    .locals 7

    new-instance v6, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;Z)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mSlotNum:I

    invoke-virtual {v6, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSlotNum(I)V

    return-object v6
.end method

.method protected onCreateSearchView(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDestroySearchView(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method protected onFirewallServiceConnected()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getRoamingNetworkState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->showRoamingTipDialog()V

    :cond_0
    return-void
.end method

.method protected onPostLoadDataTask()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mTotalCount:I

    return-void
.end method

.method public onRuleChanged(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getCurrentOptSlot()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lp4/d;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lx4/f1;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRuleChanging(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getCurrentOptSlot()I

    move-result v0

    instance-of v1, p1, Lcom/miui/networkassistant/model/AppInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->getRoamingNetworkState()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mActiveSlotNum:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->showRoamingTipDialog()V

    :cond_0
    return v3

    :cond_1
    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v1, :cond_2

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    iget-object v4, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-ne p2, v1, :cond_3

    move v3, v2

    :cond_3
    invoke-static {v4, p1, v3, v0}, Lcom/miui/networkassistant/utils/FirewallUtils;->showMobileFirewallDialog(Landroid/app/Activity;Ljava/lang/String;ZI)V

    :cond_4
    return v2
.end method

.method protected updateView()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->updateSearchInputView()V

    return-void
.end method
