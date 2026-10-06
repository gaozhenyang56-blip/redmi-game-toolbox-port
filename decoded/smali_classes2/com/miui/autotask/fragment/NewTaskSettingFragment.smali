.class public Lcom/miui/autotask/fragment/NewTaskSettingFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroidx/preference/Preference$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lv3/d2;

    invoke-direct {v0, p0}, Lv3/d2;-><init>(Lcom/miui/autotask/fragment/NewTaskSettingFragment;)V

    iput-object v0, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b:Landroidx/preference/Preference$c;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/autotask/fragment/NewTaskSettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic b0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "short_cut_setting"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/d;->v(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, La4/f2;->L(Ljava/lang/String;Z)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 12

    const p1, 0x7f150019

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const p1, 0x7f1200e8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1203c7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f1207f7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120809

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1200ea

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f121645

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Landroidx/preference/CheckBoxPreference;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    sget-boolean v10, Lcom/miui/common/i;->a:Z

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/miui/common/i;->b()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v9

    :goto_1
    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    sget-object v11, Lcom/miui/securityscan/shortcut/d$b;->n:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v10, v11}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v10

    invoke-virtual {v8, v10}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b:Landroidx/preference/Preference$c;

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :cond_2
    invoke-static {p1}, La4/f2;->C(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p2}, La4/f2;->C(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v4, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v0}, La4/f2;->C(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v5, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v1}, La4/f2;->C(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v6, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {v2, v9}, La4/f2;->D(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v7, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b:Landroidx/preference/Preference$c;

    invoke-virtual {v3, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b:Landroidx/preference/Preference$c;

    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b:Landroidx/preference/Preference$c;

    invoke-virtual {v5, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b:Landroidx/preference/Preference$c;

    invoke-virtual {v6, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskSettingFragment;->b:Landroidx/preference/Preference$c;

    invoke-virtual {v7, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->d(Z)V

    :cond_0
    return-void
.end method
