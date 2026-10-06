.class public Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;
.super Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field protected mServiceConnected:Z

.field protected mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

.field protected mSlotNum:I

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->reLoadView()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mConn:Landroid/content/ServiceConnection;

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

.method public getGroupNameId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f10005f

    goto :goto_0

    :cond_0
    const p1, 0x7f10005e

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

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

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

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/AppInfo;

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

    :try_start_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    invoke-interface {v4, v2, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isDataUsageIgnore(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->getGroupNameId(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->getGroupNameId(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException isDataUsageIgnore:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    .locals 3

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->reloadIgnoreAppList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->TAG:Ljava/lang/String;

    const-string v2, "reloadIgnoreAppList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->unbindTrafficManageService()V

    return-void
.end method

.method protected onEnableGroupRes()I
    .locals 1

    const v0, 0x7f10005f

    return v0
.end method

.method protected onInit()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->bindTrafficManageService()V

    return-void
.end method

.method protected onItemSwitched(Lcom/miui/networkassistant/model/WhiteListItem;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getPkgName()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->TAG:Ljava/lang/String;

    const-string v0, "RemoteException setDataUsageIgnore:"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f1213a9

    return v0
.end method

.method protected resetTitle()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method
