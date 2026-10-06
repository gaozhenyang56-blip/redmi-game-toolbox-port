.class public Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacyapps/ui/PrivacySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacySettingsFragment"
.end annotation


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/Preference;

.field private d:Lse/a;

.field private e:Lmiui/security/SecurityManager;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a0(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v1

    invoke-virtual {v1}, Lc3/d;->l()Z

    move-result v1

    const-string v2, "extra_data"

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "HappyCodingMain"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "forbide"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "external_app_name"

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/16 v1, 0x7e6

    if-ne p1, v1, :cond_1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->f:Z

    if-ne p2, p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->g:Z

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lse/a;->k(Landroid/content/Context;I)V

    goto :goto_2

    :cond_0
    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->g:Z

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lse/a;->k(Landroid/content/Context;I)V

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e4

    if-ne p1, v1, :cond_3

    if-ne p2, p3, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->f:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    const/16 v1, 0x7e5

    if-ne p1, v1, :cond_5

    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x15

    if-ne p2, p1, :cond_2

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->f:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f15005e

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "pa_shield_message"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    const-string p1, "pa_password_enable"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const-string p1, "privacy_apps_tutorial"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "security"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/security/SecurityManager;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->e:Lmiui/security/SecurityManager;

    new-instance p2, Lse/a;

    invoke-direct {p2, p1}, Lse/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->d:Lse/a;

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-static {p1}, Lse/a;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->d:Lse/a;

    invoke-virtual {p1}, Lse/a;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->g:Z

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->f:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pa_shield_message"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lse/a;->j(Landroid/content/Context;Z)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->e:Lmiui/security/SecurityManager;

    xor-int/2addr p1, v2

    invoke-static {p2, v0, p1}, Lse/e;->j(Lmiui/security/SecurityManager;Landroid/content/Context;Z)V

    goto :goto_1

    :cond_0
    const-string v1, "pa_password_enable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x7e6

    invoke-direct {p0, p2}, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->a0(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->g:Z

    :goto_0
    invoke-static {v0, p1}, Lse/a;->k(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_1
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->c:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x7e5

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/privacyapps/ui/PrivacySettingsActivity$PrivacySettingsFragment;->g:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/applicationlock/PrivacyAppsConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x7e4

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
