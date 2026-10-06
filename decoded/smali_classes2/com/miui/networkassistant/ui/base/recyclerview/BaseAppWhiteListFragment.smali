.class public abstract Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"


# instance fields
.field private final mDataList:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private final mFilterDataList:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mMultiRecycleViewHelper:Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

.field private mOnItemClickListener:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field protected mSearchActionMode:Lmiuix/view/l;

.field private mSearchActionModeCallback:Lmiuix/view/l$b;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$1;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mOnItemClickListener:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$2;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$4;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$5;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMultiRecycleViewHelper:Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;Lmiuix/view/l$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->startSearchMode(Lmiuix/view/l$b;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public static synthetic b0(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->lambda$initView$0(Landroid/view/View;Z)V

    return-void
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private startSearchMode(Lmiuix/view/l$b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchActionMode:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/WhiteListItem;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/WhiteListItem;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMultiRecycleViewHelper:Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->setData(Landroid/util/Pair;)V

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->reLoadView()V

    return-void
.end method

.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public abstract getGroupNameId(Z)I
.end method

.method protected initView()V
    .locals 2

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->getNewInstance(Lmiuix/recyclerview/widget/RecyclerView;Landroid/content/Context;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMultiRecycleViewHelper:Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mOnItemClickListener:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->init(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;)V

    const v0, 0x7f0b0379

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mEmptyView:Landroid/view/View;

    const v0, 0x7f0b0a23

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchView:Landroid/view/View;

    const v1, 0x7f0b0578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/networkassistant/ui/base/recyclerview/a;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/base/recyclerview/a;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchView:Landroid/view/View;

    new-instance v1, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment$3;-><init>(Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->registerMonitorCenter()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->onInit()V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onAppInfoListChange(Ljava/util/ArrayList;)Landroid/util/Pair;
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
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/common/base/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e00ae

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->unRegisterMonitorCenter()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method protected abstract onEnableGroupRes()I
.end method

.method protected abstract onInit()V
.end method

.method protected abstract onItemSwitched(Lcom/miui/networkassistant/model/WhiteListItem;Z)V
.end method

.method protected reLoadView()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->onAppInfoListChange(Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->registerMonitorCenter()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mMultiRecycleViewHelper:Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mFilterDataList:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiRecycleViewHelper;->setData(Landroid/util/Pair;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mDataList:Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->uploadSerchView(Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100127

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public uploadSerchView(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/model/WhiteListItem;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10002c

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
