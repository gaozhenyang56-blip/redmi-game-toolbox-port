.class public Lcom/miui/antivirus/activity/SettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;,
        Lcom/miui/antivirus/activity/SettingsActivity$b;,
        Lcom/miui/antivirus/activity/SettingsActivity$a;,
        Lcom/miui/antivirus/activity/SettingsActivity$c;,
        Lcom/miui/antivirus/activity/SettingsActivity$d;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    const-string v2, "extra_settings_title_res"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const v0, 0x1020002

    new-instance v1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-direct {v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_1
    return-void
.end method
