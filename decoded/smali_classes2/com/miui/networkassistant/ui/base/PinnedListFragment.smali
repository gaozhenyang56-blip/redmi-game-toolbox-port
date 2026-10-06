.class public abstract Lcom/miui/networkassistant/ui/base/PinnedListFragment;
.super Lcom/miui/common/base/ui/LoadingFragment;
.source "SourceFile"


# instance fields
.field protected mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

.field protected mEmptyView:Landroid/widget/TextView;

.field protected mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

.field protected mSearchActionMode:Lmiuix/view/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/LoadingFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
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

.method public getListView()Lcom/miui/common/expandableview/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/ui/LoadingFragment;->hideLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    const p3, 0x7f0b04df

    invoke-virtual {p0, p3}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p3}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const p3, 0x7f0b042e

    invoke-virtual {p0, p3}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const p1, 0x7f0b06cc

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/common/expandableview/PinnedHeaderListView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    const p1, 0x1020004

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->onCreateListAdapter()Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {p2, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e017d

    return v0
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

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->recordPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public setEmptyImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/ui/LoadingFragment;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->showLoadingView(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mList:Lcom/miui/common/expandableview/PinnedHeaderListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/PinnedListFragment;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
    return-void
.end method
