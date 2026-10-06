.class public Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"


# instance fields
.field protected b:Lcom/miui/powercenter/autotask/AutoTask;

.field protected c:Lcom/miui/powercenter/autotask/AutoTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c0(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-void
.end method


# virtual methods
.method protected c0(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {p1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    return-void
.end method

.method public d0()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->conditionsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->operationsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreLevel()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v1}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "task"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTask;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Lcom/miui/powercenter/autotask/AutoTask;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    :cond_1
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseEditPreferenceFragment;->c:Lcom/miui/powercenter/autotask/AutoTask;

    const-string v1, "task"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
