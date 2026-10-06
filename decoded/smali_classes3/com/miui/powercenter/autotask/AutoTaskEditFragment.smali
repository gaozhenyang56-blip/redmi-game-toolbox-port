.class public Lcom/miui/powercenter/autotask/AutoTaskEditFragment;
.super Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;
.source "SourceFile"


# instance fields
.field d:Lcom/miui/powercenter/autotask/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/powercenter/autotask/i<",
            "Lcom/miui/powercenter/autotask/AutoTaskEditFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public e0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, Lhd/b;->v()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lhd/b;->k()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/autotask/AutoTask;->conditionsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    invoke-static {}, Lhd/b;->u()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lhd/b;->j()V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/autotask/AutoTask;->operationsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    invoke-static {}, Lhd/b;->w()V

    goto :goto_3

    :cond_5
    invoke-static {}, Lhd/b;->l()V

    :cond_6
    :goto_3
    return-void
.end method

.method public f0()Z
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->isConditionEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f12030c

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/powercenter/autotask/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->isOperationEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120309

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->d0()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return v3

    :cond_2
    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v4}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lhd/b;->h()V

    :cond_3
    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v4, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2, v4}, Lcom/miui/powercenter/autotask/AutoTask;->conditionsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lhd/b;->g()V

    :cond_4
    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v4, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2, v4}, Lcom/miui/powercenter/autotask/AutoTask;->operationsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lhd/b;->i()V

    :cond_5
    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->setEnabled(Z)V

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v2, v1}, Lcom/miui/powercenter/autotask/AutoTask;->setStarted(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeAllRestoreOperation()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v1, v2}, Lcom/miui/powercenter/autotask/g;->p(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return v3
.end method

.method public g0(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c0(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/i;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/powercenter/autotask/i;->d(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/autotask/f;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/autotask/f;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/powercenter/autotask/e;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/autotask/e;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    :goto_0
    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    invoke-virtual {v0, p0}, Lcom/miui/powercenter/autotask/i;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/i;->b(Landroid/os/Bundle;)V

    return-void
.end method
