.class public Lcom/miui/optimizemanage/settings/SettingsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/settings/SettingsFragment$c;
    }
.end annotation


# instance fields
.field private a:Lmiuix/preference/TextPreference;

.field private b:Lmiuix/preference/DropDownPreference;

.field private c:Lmiuix/preference/DropDownPreference;

.field private d:Landroidx/preference/CheckBoxPreference;

.field private e:Landroidx/preference/PreferenceCategory;

.field private f:Lmiuix/appcompat/app/AlertDialog;

.field private g:Lmiuix/appcompat/app/AlertDialog;

.field private h:Lmiuix/preference/TextPreference;

.field private i:Landroid/app/Activity;

.field private j:Landroidx/preference/Preference$d;

.field private k:Landroidx/preference/Preference$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/optimizemanage/settings/SettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/settings/SettingsFragment$a;-><init>(Lcom/miui/optimizemanage/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->j:Landroidx/preference/Preference$d;

    new-instance v0, Lcom/miui/optimizemanage/settings/SettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/settings/SettingsFragment$b;-><init>(Lcom/miui/optimizemanage/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->k:Landroidx/preference/Preference$c;

    return-void
.end method

.method public static synthetic a0(I)V
    .locals 0

    invoke-static {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->n0(I)V

    return-void
.end method

.method static synthetic b0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->a:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/optimizemanage/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->p0()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->h:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/optimizemanage/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->o0()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/optimizemanage/settings/SettingsFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->l0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/optimizemanage/settings/SettingsFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->m0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private k0()I
    .locals 1

    invoke-static {}, Lgd/c;->o0()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private l0(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const p1, 0x7f120634

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100024

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private m0(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f120f64

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic n0(I)V
    .locals 0

    invoke-static {p0}, Lkb/a;->v(I)V

    return-void
.end method

.method private o0()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->k0()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget v4, v0, v3

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    array-length v1, v0

    new-array v4, v1, [Ljava/lang/String;

    :goto_2
    if-ge v2, v1, :cond_2

    aget v5, v0, v2

    invoke-direct {p0, v5}, Lcom/miui/optimizemanage/settings/SettingsFragment;->l0(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->f:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->f:Lmiuix/appcompat/app/AlertDialog;

    :cond_3
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f120633

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/miui/optimizemanage/settings/SettingsFragment$c;

    invoke-direct {v5, p0, v0, v4}, Lcom/miui/optimizemanage/settings/SettingsFragment$c;-><init>(Lcom/miui/optimizemanage/settings/SettingsFragment;[I[Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->f:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private p0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->i:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private r0()V
    .locals 2

    invoke-static {}, Lkb/a;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->m0(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->q0()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f150041

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->i:Landroid/app/Activity;

    const-string p1, "preference_key_lock_app_manage"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->a:Lmiuix/preference/TextPreference;

    const-string p1, "preference_key_memory_clean_lock_screen"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    const-string p1, "preference_key_memory_occupy_notify"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    const-string p1, "preference_key_cpu_over_load"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_notify_manage_category"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->e:Landroidx/preference/PreferenceCategory;

    const-string p1, "category_key_memory_clean_lock_screen"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->a:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->j:Landroidx/preference/Preference$d;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-static {}, Lkb/a;->m()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->e:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-static {}, Lpg/i;->k()I

    move-result p2

    const/16 v0, 0xa

    if-ge p2, v0, :cond_1

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    new-instance p2, Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->h:Lmiuix/preference/TextPreference;

    const-string v0, "preference_key_memory_clean_lock_screen_old"

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->h:Lmiuix/preference/TextPreference;

    const v0, 0x7f120f62

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->h:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->j:Landroidx/preference/Preference$d;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->h:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->f:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->g:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->q0()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->r0()V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->b:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->k0()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->l0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->h:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->k0()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/settings/SettingsFragment;->l0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lkb/a;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public q0()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/optimizemanage/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->d0()I

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment;->a:Lmiuix/preference/TextPreference;

    invoke-virtual {v2, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v1

    new-instance v2, Lkb/c;

    invoke-direct {v2, v0}, Lkb/c;-><init>(I)V

    invoke-virtual {v1, v2}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
