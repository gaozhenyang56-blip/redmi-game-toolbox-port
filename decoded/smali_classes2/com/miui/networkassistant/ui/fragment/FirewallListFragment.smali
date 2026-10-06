.class public abstract Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;
.super Lcom/miui/common/base/ui/LoadingFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;,
        Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$LoadDataAsyncTask;
    }
.end annotation


# static fields
.field private static final MSG_FIREWALL_APP_LIST_UPDATED:I = 0x2

.field private static final MSG_FIREWALL_SERVICE_CONNECTED:I = 0x1


# instance fields
.field protected mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

.field protected mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mConn:Landroid/content/ServiceConnection;

.field protected mContainerLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field protected mEmptyView:Landroid/widget/TextView;

.field protected mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallObserver:Landroid/database/ContentObserver;

.field private mFirewallServiceConnected:Z

.field private mHandler:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

.field private mIsInSearch:Z

.field protected mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field protected mSearchActionMode:Lmiuix/view/l;

.field private mSearchActionModeCallback:Lmiuix/view/l$b;

.field protected mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field protected mSearchView:Landroid/view/View;

.field private onSearchViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/LoadingFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onSearchViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionModeCallback:Lmiuix/view/l$b;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$4;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mIsInSearch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->applyData()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallServiceConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

    return-object p0
.end method

.method private declared-synchronized applyData()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$LoadDataAsyncTask;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$LoadDataAsyncTask;-><init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerFirewallContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lmiui/provider/ExtraNetwork;->registerFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private registerFirewallService()V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private unRegisterFirewallContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lmiui/provider/ExtraNetwork;->unRegisterFirewallContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterFirewallService()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mFirewallServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
    return-void
.end method

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

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getNonSystemAppList()Ljava/util/ArrayList;

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

.method public hideLoadingView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/base/ui/LoadingFragment;->hideLoadingView()V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAppListUpdated()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected abstract onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;
.end method

.method protected onCreateSearchView(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f0b027f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mContainerLayout:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const p1, 0x1020004

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b0a23

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchView:Landroid/view/View;

    const p2, 0x1020009

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchView:Landroid/view/View;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onSearchViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b06d4

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07066c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lbl/i;->q(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lbl/i;->j(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    new-instance p1, Lmiuix/recyclerview/card/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_1
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/Fragment;->setExtraHorizontalPaddingEnable(Z)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {p1, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->registerFirewallContentObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->registerFirewallService()V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e02b5

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0, p0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->unRegisterFirewallContentObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->unRegisterFirewallService()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroySearchView(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method protected onFirewallServiceConnected()V
    .locals 0

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

.method protected abstract onPostLoadDataTask()V
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mIsInSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->applyData()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/ui/LoadingFragment;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->showLoadingView(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected startSearchMode()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionModeCallback:Lmiuix/view/l$b;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiuix/view/l;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchActionMode:Lmiuix/view/l;

    invoke-interface {v0}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    :cond_0
    return-void
.end method

.method protected updateSearchResult(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1215f7

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->setEmptyText(I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected updateView()V
    .locals 0

    return-void
.end method
