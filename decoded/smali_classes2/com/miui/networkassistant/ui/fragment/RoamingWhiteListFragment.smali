.class public Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;
.super Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mMiServicePackage:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static mRelatedMIServiceAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppDependTipDialog:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

.field private mAppDependTipListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

.field private mConn:Landroid/content/ServiceConnection;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mMiServiceListItem:Lcom/miui/networkassistant/model/WhiteListItem;

.field private mServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    const-string v1, "com.miui.cloudservice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    const-string v1, "com.xiaomi.channel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/model/WhiteListItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMiServiceListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->reLoadView()V

    return-void
.end method

.method private addRelatedApp(Lcom/miui/networkassistant/model/WhiteListItem;)V
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mRelatedMIServiceAppsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->isContainMiService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->buildAppsDependDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private bindFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_0
    return-void
.end method

.method private buildAppsDependDialog(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f1200ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipDialog:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    invoke-virtual {v1, v0, p1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isContainMiService()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMiServiceListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/WhiteListItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unBindFirewallService()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mConn:Landroid/content/ServiceConnection;

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

.method public getGroupNameId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f10005b

    goto :goto_0

    :cond_0
    const p1, 0x7f10005a

    :goto_0
    return p1
.end method

.method protected onAppInfoListChange(Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {v3}, Lcom/miui/networkassistant/model/WhiteListItem;-><init>()V

    iget-object v4, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/model/WhiteListItem;->setAppLabel(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/model/WhiteListItem;->setPkgName(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.xiaomi.xmsf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mMiServiceListItem:Lcom/miui/networkassistant/model/WhiteListItem;

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    sget-object v4, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->getGroupNameId(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->getGroupNameId(Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->TAG:Ljava/lang/String;

    const-string v4, "firewall get roaming rule"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_0
    return v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->unBindFirewallService()V

    return-void
.end method

.method protected onEnableGroupRes()I
    .locals 1

    const v0, 0x7f10005b

    return v0
.end method

.method protected onInit()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelOpenRoamingWhiteListNotify(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipListener:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mAppDependTipDialog:Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->bindFirewallService()V

    return-void
.end method

.method protected onItemSwitched(Lcom/miui/networkassistant/model/WhiteListItem;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->TAG:Ljava/lang/String;

    const-string v2, "RemoteExceptions setRoamingRule"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->addRelatedApp(Lcom/miui/networkassistant/model/WhiteListItem;)V

    :cond_1
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f1213dc

    return v0
.end method
