.class public abstract Lcom/miui/networkassistant/ui/base/ListFragment;
.super Lcom/miui/common/base/ui/LoadingFragment;
.source "SourceFile"


# instance fields
.field protected mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

.field protected mEmptyView:Landroid/widget/TextView;

.field protected mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mSearchActionMode:Lmiuix/view/l;

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

.method public getListView()Lmiuix/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/base/ui/LoadingFragment;->hideLoadingView()V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mSearchActionMode:Lmiuix/view/l;

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

.method protected abstract onCreateListAdapter()Landroidx/recyclerview/widget/RecyclerView$h;
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 5

    const p3, 0x7f0b04df

    invoke-virtual {p0, p3}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p3}, Lcom/miui/networkassistant/ui/base/ListFragment;->onCreateHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const p3, 0x7f0b042e

    invoke-virtual {p0, p3}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/ListFragment;->onCreateFooterView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const p1, 0x7f0b06d4

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/ListFragment;->onCreateListAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const p1, 0x1020004

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mEmptyView:Landroid/widget/TextView;

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e02a7

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showEmptyView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/ui/LoadingFragment;->showLoadingView()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/LoadingFragment;->showLoadingView(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mEmptyView:Landroid/widget/TextView;

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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/ListFragment;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
    return-void
.end method
