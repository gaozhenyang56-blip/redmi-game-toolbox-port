.class public Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# instance fields
.field private b:Lmiuix/preference/DropDownPreference;

.field private c:[I

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->c:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->d:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x5a
        0x50
        0x46
        0x3c
    .end array-data
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f150049

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "key_pc_night_charge_protection"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    const-string p2, "key_pc_smart_discharge_protection"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    const-string v0, "key_pc_smart_discharge_drop_down"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    invoke-static {}, Lmd/o;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lgd/c;->r0()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move p1, v1

    :goto_0
    invoke-static {}, Lmd/c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lgd/c;->M0()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :goto_1
    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->c:[I

    array-length p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    if-ge v1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->d:[Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->c:[I

    aget v3, v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->d:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->d:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    invoke-static {}, Lgd/c;->N0()I

    move-result p2

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-double v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_pc_night_charge_protection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->n2(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "key_pc_smart_discharge_protection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lmd/c;->b()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->M2(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "key_pc_smart_discharge_drop_down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->b:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->s()I

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingFragment;->c:[I

    aget p1, p2, p1

    invoke-static {p1}, Lgd/c;->N2(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmd/c;->m(Landroid/content/Context;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
