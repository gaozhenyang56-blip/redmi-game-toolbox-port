.class public Lcom/miui/superpower/SuperPowerSettings;
.super Lcom/miui/common/base/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "super_power_setting_enterway"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "enter_superpower_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lhd/a;->i0()V

    :cond_0
    return-void
.end method

.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/superpower/SuperPowerSettingsFragement;

    invoke-direct {v0}, Lcom/miui/superpower/SuperPowerSettingsFragement;-><init>()V

    return-object v0
.end method
