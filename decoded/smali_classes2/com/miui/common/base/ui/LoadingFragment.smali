.class public abstract Lcom/miui/common/base/ui/LoadingFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"


# instance fields
.field protected mLoadingManager:Lcom/miui/common/base/ui/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/LoadingFragment;->mLoadingManager:Lcom/miui/common/base/ui/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/b;->e(Z)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/miui/common/base/ui/b;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/common/base/ui/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/common/base/ui/LoadingFragment;->mLoadingManager:Lcom/miui/common/base/ui/b;

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/base/ui/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setAllowBackWhileLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/LoadingFragment;->mLoadingManager:Lcom/miui/common/base/ui/b;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/ui/b;->f(Z)V

    return-void
.end method

.method public setLoadingText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/LoadingFragment;->mLoadingManager:Lcom/miui/common/base/ui/b;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/ui/b;->g(I)V

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/LoadingFragment;->mLoadingManager:Lcom/miui/common/base/ui/b;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/ui/b;->h(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/LoadingFragment;->showLoadingView(Z)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BaseFragment;->mView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/ui/LoadingFragment;->mLoadingManager:Lcom/miui/common/base/ui/b;

    invoke-virtual {p1}, Lcom/miui/common/base/ui/b;->j()V

    return-void
.end method
