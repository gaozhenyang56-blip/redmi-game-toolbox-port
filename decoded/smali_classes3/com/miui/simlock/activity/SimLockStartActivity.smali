.class public Lcom/miui/simlock/activity/SimLockStartActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Lcom/miui/simlock/fragment/SimLockStartFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockStartActivity;->a:Lcom/miui/simlock/fragment/SimLockStartFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/simlock/fragment/SimLockStartFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/simlock/fragment/SimLockStartFragment;

    invoke-direct {p1}, Lcom/miui/simlock/fragment/SimLockStartFragment;-><init>()V

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockStartActivity;->a:Lcom/miui/simlock/fragment/SimLockStartFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockStartActivity;->a:Lcom/miui/simlock/fragment/SimLockStartFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_0
    return-void
.end method
