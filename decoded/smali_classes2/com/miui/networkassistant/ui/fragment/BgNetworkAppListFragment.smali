.class public Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;
.super Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$BgNetWorkComparator;
    }
.end annotation


# instance fields
.field private mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseAppWhiteListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;
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

.method public getGroupNameId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f10001e

    goto :goto_0

    :cond_0
    const p1, 0x7f10001f

    :goto_0
    return p1
.end method

.method protected onAppInfoListChange(Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 7
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
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

    iget v4, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4}, Lx4/z1;->b(I)I

    move-result v4

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_1

    invoke-static {v3}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPrePolicyPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/miui/networkassistant/model/WhiteListItem;

    invoke-direct {v4}, Lcom/miui/networkassistant/model/WhiteListItem;-><init>()V

    iget-object v5, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/networkassistant/model/WhiteListItem;->setAppLabel(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/miui/networkassistant/model/WhiteListItem;->setPkgName(Ljava/lang/String;)V

    iget v5, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/miui/networkassistant/model/WhiteListItem;->setUid(I)V

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    iget v2, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v5, v3, v2}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->isAppRestrictBackground(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->getGroupNameId(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/model/WhiteListItem;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->getGroupNameId(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$BgNetWorkComparator;

    invoke-direct {p1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$BgNetWorkComparator;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$BgNetWorkComparator;

    invoke-direct {p1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$BgNetWorkComparator;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f12087d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_0
    return v1
.end method

.method protected onEnableGroupRes()I
    .locals 1

    const v0, 0x7f10001e

    return v0
.end method

.method protected onInit()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    return-void
.end method

.method protected onItemSwitched(Lcom/miui/networkassistant/model/WhiteListItem;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7f10001e

    goto :goto_0

    :cond_0
    const v0, 0x7f10001f

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;->setGroup(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->mBgPolicyService:Lcom/miui/networkassistant/firewall/BackgroundPolicyService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteListItem;->getUid()I

    move-result p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/firewall/BackgroundPolicyService;->setAppRestrictBackground(IZ)V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f12139b

    return v0
.end method
