.class public Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2;
.super Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;-><init>()V

    return-void
.end method

.method private h0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {v0}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private i0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1200f8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->o:[Ljava/lang/String;

    new-instance v3, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2$a;

    invoke-direct {v3, p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2$a;-><init>(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2;)V

    invoke-virtual {v0, v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected d0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public j0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {v1}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {v1, v2}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->o:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {v3, v2}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2;->h0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2;->j0()V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lm2/a;->u(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2;->h0()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, v2, p2}, Lm2/a;->t(Landroid/content/Context;IZ)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->s()I

    move-result p1

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {p2, p1, v2}, Lm2/a;->z(Landroid/content/Context;II)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim2;->i0()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->d:Lmiuix/preference/TextPreference;

    const/4 v1, 0x2

    const-string v2, "key_sim_id"

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v3, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v3, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->f:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v3, Lcom/miui/antispam/ui/activity/BlackListActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v3, Lcom/miui/antispam/ui/activity/WhiteListActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->onResume()V

    return-void
.end method
