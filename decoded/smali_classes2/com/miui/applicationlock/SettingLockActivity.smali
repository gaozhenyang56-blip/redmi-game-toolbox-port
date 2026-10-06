.class public Lcom/miui/applicationlock/SettingLockActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/SettingLockActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/applicationlock/SettingLockFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/miui/applicationlock/SettingLockFragment;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    iget-boolean v1, v1, Lcom/miui/applicationlock/SettingLockFragment;->J:Z

    const-string v2, "is_click_lock_all_apps"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockFragment;->G0()V

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SettingLockFragment"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/applicationlock/SettingLockFragment;

    invoke-direct {p1}, Lcom/miui/applicationlock/SettingLockFragment;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v1, 0x1020002

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/SettingLockFragment;

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/applicationlock/SettingLockFragment;->E0()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->a:Lcom/miui/applicationlock/SettingLockFragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/applicationlock/SettingLockActivity$a;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/applicationlock/SettingLockActivity$a;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
