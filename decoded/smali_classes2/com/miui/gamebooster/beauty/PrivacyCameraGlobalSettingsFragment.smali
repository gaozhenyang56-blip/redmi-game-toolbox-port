.class public final Lcom/miui/gamebooster/beauty/PrivacyCameraGlobalSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "preference_key_beauty_privacy"

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/PrivacyCameraGlobalSettingsFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/beauty/PrivacyCameraGlobalSettingsFragment;->b0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final b0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "preference"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw5/f;->S0(ZLw5/a;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f15001f

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/PrivacyCameraGlobalSettingsFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2}, Lw5/f;->Z(Lw5/a;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    if-eqz p1, :cond_2

    new-instance p2, Lw5/k;

    invoke-direct {p2}, Lw5/k;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :cond_2
    return-void
.end method
