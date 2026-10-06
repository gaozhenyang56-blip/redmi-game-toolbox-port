.class public Lcom/miui/gamebooster/beauty/BeautySettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Landroidx/preference/SeekBarPreference;

.field private f:Landroidx/preference/PreferenceCategory;

.field private g:Landroidx/preference/CheckBoxPreference;

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Landroidx/preference/CheckBoxPreference;

.field private j:Landroidx/preference/PreferenceCategory;

.field private k:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a0(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->e:Landroidx/preference/SeekBarPreference;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->e:Landroidx/preference/SeekBarPreference;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1}, Lw5/f;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SeekBarPreference;->f(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lw5/f;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lw5/f;->F()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lw5/f;->I()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->a0(ZZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lw5/f;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-static {v1}, Lw5/f;->Z(Lw5/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lw5/f;->W()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f150031

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "preference_key_beauty_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const-string p1, "category_key_beauty_light"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    const-string p1, "preference_key_beauty_auto_light"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_beauty_light"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SeekBarPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->e:Landroidx/preference/SeekBarPreference;

    const-string p1, "category_key_beauty_face"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->f:Landroidx/preference/PreferenceCategory;

    const-string p1, "preference_key_beauty_face"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    const-string p1, "category_key_beauty_privacy"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    const-string p1, "preference_key_beauty_privacy"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    const-string p1, "category_key_beauty_pc"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->j:Landroidx/preference/PreferenceCategory;

    const-string p1, "preference_key_beauty_pc"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p2

    invoke-virtual {p2}, Lw5/f;->Q()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f1203b1

    goto :goto_0

    :cond_1
    const p2, 0x7f1203b2

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->e:Landroidx/preference/SeekBarPreference;

    invoke-static {}, Lw5/f;->j()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->d(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->e:Landroidx/preference/SeekBarPreference;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p2

    invoke-virtual {p2}, Lw5/f;->Q()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f1203b3

    goto :goto_1

    :cond_2
    const p2, 0x7f1203c2

    :goto_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->e:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-static {}, La8/p;->c()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1}, Lw5/f;->J()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    invoke-static {}, Lw5/f;->G()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->f:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    invoke-static {}, Lw5/f;->a0()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    invoke-static {}, Lw5/f;->Y()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->j:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_7
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange: newValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "BeautySettingsFragment"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "preference_key_beauty_pc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "preference_key_beauty_privacy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "preference_key_beauty_auto_light"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "preference_key_beauty_switch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "preference_key_beauty_light"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v3, "preference_key_beauty_face"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move p2, v1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v2}, Lw5/f;->w0(Z)V

    invoke-static {v2}, Lw5/f;->Q0(Z)V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lw5/f;->S0(ZLw5/a;)V

    goto :goto_2

    :pswitch_2
    invoke-static {v2}, Lw5/f;->m0(Z)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lw5/f;->M0(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->a:Landroid/app/Activity;

    if-eqz v2, :cond_8

    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->h0(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lcom/miui/gamebooster/beauty/BeautyService;->i0(Landroid/content/Context;)V

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lw5/i;->c()V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p2

    invoke-virtual {p2}, Lw5/f;->K()Z

    move-result p2

    invoke-static {}, Lw5/f;->q()I

    move-result v2

    invoke-virtual {p1, p2, v0, v2}, Lw5/f;->O0(ZII)V

    goto :goto_2

    :pswitch_5
    invoke-static {v2}, Lw5/f;->L0(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->refreshUI()V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x42e33104 -> :sswitch_5
        -0x192aafa9 -> :sswitch_4
        0x8d0413 -> :sswitch_3
        0x3d87fbe5 -> :sswitch_2
        0x69d97289 -> :sswitch_1
        0x6ac0a252 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/gamebooster/beauty/BeautySettingsFragment;->refreshUI()V

    return-void
.end method
