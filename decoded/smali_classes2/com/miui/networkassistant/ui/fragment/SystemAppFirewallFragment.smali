.class public Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;
.super Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$RoamingOptionDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_FILED:I = 0x7f120886


# instance fields
.field private mActiveSlotNum:I

.field private mItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

.field private mSlotNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateAppFireRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V

    return-void
.end method

.method private buildRestrictAndroidTipDialog(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f12087d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f12087c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentOptSlot()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSlotNum:I

    return v0
.end method

.method private getRoamingNetworkState()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

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

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    const-string v3, "isRoamingEnable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private initViewDelay()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateListTitleGroup()V

    const v0, 0x7f120873

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->setEmptyText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;)V

    return-void
.end method

.method private isRestrictAndroidSystemApp(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    const-string v1, "isRestrictAndroidSystemApp"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :goto_0
    const-string v0, "android"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setDualCardData()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getCurrentMobileSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

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

    new-instance v6, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$RoamingOptionDialogListener;

    invoke-direct {v6, v5}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$RoamingOptionDialogListener;-><init>(Landroid/app/Activity;)V

    invoke-direct {v4, v5, v6}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateAppFireRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->TAG:Ljava/lang/String;

    const-string p3, "setMobileRule"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateListTitleGroup()V
    .locals 0

    return-void
.end method

.method private updateSearchInputView(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100127

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getSystemAppList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

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

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->setDualCardData()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->initViewDelay()V

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

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSlotNum:I

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

    const/4 v5, 0x1

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/ui/adapter/FirewallMobileListAdapter;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;Z)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mSlotNum:I

    invoke-virtual {v6, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSlotNum(I)V

    return-object v6
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPostLoadDataTask()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateSearchInputView(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    :cond_0
    return-void
.end method

.method public onRuleChanged(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->getCurrentOptSlot()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->updateAppFireRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)V

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lx4/f1;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRuleChanging(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->getCurrentOptSlot()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->isRestrictAndroidSystemApp(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->buildRestrictAndroidTipDialog(Ljava/lang/String;I)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->getRoamingNetworkState()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->mActiveSlotNum:I

    if-ne p2, p1, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->showRoamingTipDialog()V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f120886

    return v0
.end method
