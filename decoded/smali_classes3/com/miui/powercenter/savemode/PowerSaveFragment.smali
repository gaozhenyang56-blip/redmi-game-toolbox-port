.class public Lcom/miui/powercenter/savemode/PowerSaveFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/savemode/PowerSaveFragment$d;,
        Lcom/miui/powercenter/savemode/PowerSaveFragment$e;
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Landroidx/preference/CheckBoxPreference;

.field private f:Lmiuix/preference/TextPreference;

.field private g:Lmiuix/preference/TextPreference;

.field private h:Landroidx/preference/CheckBoxPreference;

.field private i:Landroidx/preference/CheckBoxPreference;

.field private j:Lcom/miui/powercenter/savemode/PowerSaveFragment$d;

.field private k:Landroidx/preference/Preference$c;

.field l:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field m:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field n:Landroidx/preference/Preference$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/savemode/PowerSaveFragment$e;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;Lcom/miui/powercenter/savemode/PowerSaveFragment$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    new-instance v0, Lcom/miui/powercenter/savemode/PowerSaveFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/PowerSaveFragment$a;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->l:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/miui/powercenter/savemode/PowerSaveFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/PowerSaveFragment$b;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->m:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->n:Landroidx/preference/Preference$d;

    return-void
.end method

.method static synthetic a0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->f:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic b0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->g:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->h:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/powercenter/savemode/PowerSaveFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->g0(I)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/powercenter/savemode/PowerSaveFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->f0(I)V

    return-void
.end method

.method private f0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->g:Lmiuix/preference/TextPreference;

    invoke-static {p1}, Lme/e0;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private g0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->f:Lmiuix/preference/TextPreference;

    invoke-static {p1}, Lme/e0;->n(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const p1, 0x7f15004c

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "close_notification_wakeup"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->a:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "close_xiaoai_voice_wakeup"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "close_aod_display"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_other_optimization"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-static {}, Lce/g;->r()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_center_xiaoai_voice"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lce/g;->H(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "permit_disable_aod_in_power_save_mode"

    invoke-static {p2, v2, v1}, Lah/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :goto_3
    const-string p1, "key_ontime_enabled"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->e:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "key_ontime_open_time"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->f:Lmiuix/preference/TextPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->n:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {}, Lgd/c;->H0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->g0(I)V

    const-string p1, "key_ontime_close_time"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->g:Lmiuix/preference/TextPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->n:Landroidx/preference/Preference$d;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {}, Lgd/c;->G0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->f0(I)V

    const-string p1, "auto_exit_power_save_mode"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->h:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const v3, 0x7f121022

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "key_schedule_category"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->d:Landroidx/preference/PreferenceCategory;

    const-string p1, "preference_key_superpower_autoleave"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->d:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lpg/d;->b()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->i:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :goto_4
    const-string p1, "key_extreme_category"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string p2, "preference_key_extreme_mode_button"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lme/q;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->k:Landroidx/preference/Preference$c;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    new-instance p1, Lcom/miui/powercenter/savemode/PowerSaveFragment$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/powercenter/savemode/PowerSaveFragment$d;-><init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;Lcom/miui/powercenter/savemode/PowerSaveFragment$a;)V

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->j:Lcom/miui/powercenter/savemode/PowerSaveFragment$d;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->j:Lcom/miui/powercenter/savemode/PowerSaveFragment$d;

    const/4 v1, 0x2

    invoke-static {p2, v0, p1, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->j:Lcom/miui/powercenter/savemode/PowerSaveFragment$d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

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

    invoke-static {}, Lgd/c;->F0()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->e:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->f:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->f:Lmiuix/preference/TextPreference;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lgd/c;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lgd/c;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lme/e0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071801

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method
