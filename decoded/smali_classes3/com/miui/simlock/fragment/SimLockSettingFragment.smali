.class public Lcom/miui/simlock/fragment/SimLockSettingFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/preference/Preference;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private final d:Landroidx/preference/Preference$d;

.field private final e:Landroidx/preference/Preference$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/simlock/fragment/SimLockSettingFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/simlock/fragment/SimLockSettingFragment$a;-><init>(Lcom/miui/simlock/fragment/SimLockSettingFragment;)V

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->d:Landroidx/preference/Preference$d;

    new-instance v0, Lcom/miui/simlock/fragment/SimLockSettingFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/simlock/fragment/SimLockSettingFragment$b;-><init>(Lcom/miui/simlock/fragment/SimLockSettingFragment;)V

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->e:Landroidx/preference/Preference$c;

    return-void
.end method

.method static synthetic a0(Lcom/miui/simlock/fragment/SimLockSettingFragment;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->b:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic b0(Lcom/miui/simlock/fragment/SimLockSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockSettingFragment;->e0(I)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/simlock/fragment/SimLockSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->c:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/simlock/fragment/SimLockSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->a:Landroid/content/Context;

    return-object p0
.end method

.method private e0(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MiuiConfirmCommonPassword"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->a:Landroid/content/Context;

    const-class p3, Lcom/miui/simlock/activity/SimLockQueryAllActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->a:Landroid/content/Context;

    const p1, 0x7f150007

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "query_pin"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->b:Landroidx/preference/Preference;

    const-string p1, "master_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->b:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->d:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->e:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "sim_lock_enable"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->b:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/miui/simlock/fragment/SimLockSettingFragment;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/simlock/SimLockManager;->z8()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
