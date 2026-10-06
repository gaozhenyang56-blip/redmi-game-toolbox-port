.class public Lcom/miui/optimizemanage/settings/SettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroidx/appcompat/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public d0()I
    .locals 1

    invoke-static {p0}, Ljb/c;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsActivity;->a:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_0

    const-string v0, "extra_settings_title_res"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsActivity;->a:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->onCreateFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lx4/y;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/optimizemanage/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->q0()V

    return-void
.end method
