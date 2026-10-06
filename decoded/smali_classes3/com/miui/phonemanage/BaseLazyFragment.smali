.class public Lcom/miui/phonemanage/BaseLazyFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method private f0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected b0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->b:Z

    return v0
.end method

.method public c0()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->b:Z

    invoke-virtual {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->e0()V

    :cond_0
    return-void
.end method

.method protected d0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->b:Z

    invoke-virtual {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->e0()V

    :cond_0
    return-void
.end method

.method protected e0()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->b:Z

    iput-boolean v0, p0, Lcom/miui/phonemanage/BaseLazyFragment;->a:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/phonemanage/BaseLazyFragment;->a:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/phonemanage/BaseLazyFragment;->d0()V

    :cond_0
    return-void
.end method
