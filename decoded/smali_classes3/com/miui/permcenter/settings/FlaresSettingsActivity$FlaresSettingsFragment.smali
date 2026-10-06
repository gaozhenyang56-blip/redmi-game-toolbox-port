.class public Lcom/miui/permcenter/settings/FlaresSettingsActivity$FlaresSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/FlaresSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlaresSettingsFragment"
.end annotation


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15005b

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmc/c;->y(Landroid/content/Context;Z)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.action.sync_status_bar"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "miui.permission.READ_AND_WIRTE_PERMISSION_MANAGER"

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/permcenter/settings/FlaresSettingsActivity$FlaresSettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmc/c;->m(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "invisible_mode"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/permcenter/settings/FlaresSettingsActivity$FlaresSettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    const p2, 0x7f121344

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/permcenter/settings/FlaresSettingsActivity$FlaresSettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    const p2, 0x7f121345

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/miui/permcenter/settings/FlaresSettingsActivity$FlaresSettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-static {}, Ldb/c;->k()Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/settings/FlaresSettingsActivity$FlaresSettingsFragment;->a:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
