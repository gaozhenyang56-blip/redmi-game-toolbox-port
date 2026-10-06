.class public Lcom/miui/superpower/SuperPowerSettingsFragement;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/Preference$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/superpower/SuperPowerSettingsFragement$a;

    invoke-direct {v0, p0}, Lcom/miui/superpower/SuperPowerSettingsFragement$a;-><init>(Lcom/miui/superpower/SuperPowerSettingsFragement;)V

    iput-object v0, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->c:Landroidx/preference/Preference$c;

    return-void
.end method

.method static synthetic a0(Lcom/miui/superpower/SuperPowerSettingsFragement;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/SuperPowerSettingsFragement;->b0()V

    return-void
.end method

.method private b0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const p1, 0x7f150051

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p1, "preference_key_superpower_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lme/w;->S(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->a:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->c:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "preference_key_superpower_autoleave"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1218ff

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->b:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lpg/d;->b()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->b:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->c:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/superpower/SuperPowerSettingsFragement;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
