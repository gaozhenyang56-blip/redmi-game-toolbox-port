.class public Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;
.super Lcom/miui/networkassistant/ui/base/ListFragment;
.source "SourceFile"


# static fields
.field public static final BUNDLE_KEY_LIST_HEADER:Ljava/lang/String; = "list_header"

.field public static final BUNDLE_KEY_UID_MAP:Ljava/lang/String; = "uid_map"

.field private static final MSG_UPDATE_DATA:I = 0x0

.field private static final SETTING_BUTTON_ID:I = 0x1

.field private static final TITLE_FILED:I = 0x7f120cbb


# instance fields
.field private mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

.field private mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mHandler:Landroid/os/Handler;

.field private mItemClickListener:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSetttingsButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mItemClickListener:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
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
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "list_header"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0ba9

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0bb0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mItemClickListener:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAppMonitorWrapper:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-void
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0e02a8

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateListAdapter()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    const v1, 0x7f080a76

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;->mSetttingsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f120cbb

    return v0
.end method
