.class public Lcom/miui/powercenter/autotask/OperationEditFragment;
.super Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;
.source "SourceFile"


# instance fields
.field private d:Lcom/miui/powercenter/autotask/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/powercenter/autotask/i<",
            "Lcom/miui/powercenter/autotask/OperationEditFragment;",
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
.method public e0()Z
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->d0()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v4, "task"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "bundle"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f0(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c0(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/OperationEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/i;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/autotask/m;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/autotask/m;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/powercenter/autotask/l;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/autotask/l;-><init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V

    :goto_0
    iput-object v0, p0, Lcom/miui/powercenter/autotask/OperationEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    invoke-virtual {v0, p0}, Lcom/miui/powercenter/autotask/i;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/OperationEditFragment;->d:Lcom/miui/powercenter/autotask/i;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/autotask/i;->b(Landroid/os/Bundle;)V

    return-void
.end method
