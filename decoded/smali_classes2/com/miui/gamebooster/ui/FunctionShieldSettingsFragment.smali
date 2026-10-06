.class public Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Landroidx/preference/CheckBoxPreference;

.field private e:Landroidx/preference/CheckBoxPreference;

.field private f:Landroidx/preference/CheckBoxPreference;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Lm6/a;

.field private n:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;

.field private o:Landroidx/preference/Preference$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->l:I

    new-instance v0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$a;-><init>(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o:Landroidx/preference/Preference$c;

    return-void
.end method

.method static synthetic a0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->l:I

    return p1
.end method

.method static synthetic b0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->l:I

    return v0
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->l:I

    return v0
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Lm6/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->m:Lm6/a;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->g:Z

    return p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->g:Z

    return p1
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->h:Z

    return p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->h:Z

    return p1
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->i:Z

    return p0
.end method

.method static synthetic n0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->i:Z

    return p1
.end method

.method static synthetic o0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->j:Z

    return p0
.end method

.method static synthetic p0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->j:Z

    return p1
.end method

.method static synthetic q0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->k:Z

    return p0
.end method

.method static synthetic r0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->k:Z

    return p1
.end method

.method static synthetic s0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method private u0()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;-><init>(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->n:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f150032

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->m:Lm6/a;

    const-string p1, "pref_auto_bright"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const-string p1, "pref_eye_shield"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string p1, "pref_three_finger"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    const-string p1, "pref_pull_notification_bar"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    const-string p1, "pref_disable_voicetrigger"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    new-instance p1, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;-><init>(Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->n:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->o:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-static {}, La8/g0;->w()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-static {}, Lef/d0;->a()I

    move-result p1

    const/16 p2, 0xc

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, La8/g0;->l0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->n:Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/FunctionShieldSettingsFragment;->u0()V

    return-void
.end method
