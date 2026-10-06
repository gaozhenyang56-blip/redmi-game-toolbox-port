.class public abstract Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$b;
    }
.end annotation


# instance fields
.field protected b:Landroidx/preference/CheckBoxPreference;

.field protected c:Landroidx/preference/CheckBoxPreference;

.field protected d:Lmiuix/preference/TextPreference;

.field protected e:Lmiuix/preference/TextPreference;

.field protected f:Lmiuix/preference/TextPreference;

.field protected g:Lmiuix/preference/TextPreference;

.field protected h:Landroidx/preference/PreferenceCategory;

.field protected i:Lmiuix/preference/DropDownPreference;

.field protected j:Lmiuix/preference/TextPreference;

.field protected k:Landroidx/preference/CheckBoxPreference;

.field protected l:Lmiuix/preference/TextPreference;

.field protected m:Lmiuix/appcompat/app/ProgressDialog;

.field protected n:Landroid/content/Context;

.field protected o:[Ljava/lang/String;

.field protected p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected q:I

.field protected r:Z

.field private s:Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$b;

.field private t:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$a;-><init>(Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->t:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic c0(Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g0()V

    return-void
.end method

.method private f0()V
    .locals 3

    new-instance v0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$b;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->d0()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$b;-><init>(Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;I)V

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->s:Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private g0()V
    .locals 4

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput v2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->q:I

    goto :goto_2

    :cond_0
    invoke-static {}, Lm2/f;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->p:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->q:I

    goto :goto_2

    :cond_3
    :goto_1
    iput v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->q:I

    :goto_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget v3, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->q:I

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected abstract d0()I
.end method

.method public e0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->r:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lm2/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {}, Lm2/a;->p()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->r:Z

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f150011

    goto :goto_0

    :cond_0
    const p1, 0x7f150010

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "key_share_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const v0, 0x7f1217df

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "key_antispam_enable"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_msg_intercept"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->d:Lmiuix/preference/TextPreference;

    const-string p1, "key_call_intercept"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e:Lmiuix/preference/TextPreference;

    const-string p1, "key_number_blacklist"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->f:Lmiuix/preference/TextPreference;

    const-string p1, "key_number_whitelist"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g:Lmiuix/preference/TextPreference;

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-static {}, Ln2/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g:Lmiuix/preference/TextPreference;

    invoke-static {}, Ln2/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    const-string v0, "key_show_antispam_notification"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    :goto_1
    const-string p1, "key_sms_engine_auto_update"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_sms_engine_manual_update"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->l:Lmiuix/preference/TextPreference;

    const-string p1, "other_settings_group"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p1, "category_antispam_group"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->r:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lm2/a;->o()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03006a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->o:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g0()V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->t:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->t:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->s:Lcom/miui/antispam/ui/fragment/BaseSettingsFragment$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->f0()V

    return-void
.end method
