.class public Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;
.super Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

.field private mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static newInstance()Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;-><init>()V

    return-object v0
.end method

.method private updateWifiRuleView(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const p2, 0x7f120871

    goto :goto_1

    :cond_1
    const p2, 0x7f120880

    :goto_1
    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getAppList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->getAppList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.qti.qcc"

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
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
    .locals 2

    const v0, 0x7f120874

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->setEmptyText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mItemClickListener:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$OnItemClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130444

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/util/ArrayList;Lcom/miui/networkassistant/service/IFirewallBinder;Lcom/miui/networkassistant/ui/view/FirewallRuleView$OnRuleChangedListener;)V

    return-object v0
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

.method protected onPostLoadDataTask()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->mTotalCount:I

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

.method public onRuleChanged(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->updateWifiRuleView(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)V

    return-void
.end method

.method public onRuleChanging(Landroid/view/View;Lcom/miui/networkassistant/model/FirewallRule;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/networkassistant/model/AppInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {p2, p1, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;->TAG:Ljava/lang/String;

    const-string v0, "onRuleChanging:"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
