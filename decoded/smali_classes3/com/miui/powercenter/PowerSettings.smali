.class public Lcom/miui/powercenter/PowerSettings;
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
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_settings_title_res"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-direct {v0}, Lcom/miui/powercenter/PowerSettingsFragment;-><init>()V

    return-object v0
.end method
