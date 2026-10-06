.class public Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsPrivacyFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$g;
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/Preference;

.field private b:Landroidx/preference/Preference;

.field private c:Landroidx/preference/Preference;

.field private d:Landroidx/preference/Preference;

.field private e:Landroidx/preference/CheckBoxPreference;

.field private f:Landroidx/preference/CheckBoxPreference;

.field private g:Landroidx/preference/Preference;

.field private h:Landroid/app/Activity;

.field private i:Landroid/os/CountDownTimer;

.field private j:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->h:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->e0()V

    return-void
.end method

.method static synthetic c0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->i:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->i:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private e0()V
    .locals 3

    new-instance v0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$g;-><init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private f0(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->h0(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->g0(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->i0(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private g0(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Leg/n;->b()I

    move-result v0

    invoke-static {}, Leg/n;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120ea4

    new-instance v1, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$f;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$f;-><init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private h0(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f120ea7

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120ea6

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$e;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$e;-><init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)V

    const v2, 0x7f120ea4

    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private i0(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1214b8

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v5, 0x2

    aput-object v0, v3, v5

    const v0, 0x7f1214b3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$c;-><init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1214b4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$b;-><init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;)V

    const v2, 0x7f1214b5

    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$d;

    const-wide/16 v7, 0x2710

    const-wide/16 v9, 0x3e8

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$d;-><init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;JJLandroid/widget/Button;)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->i:Landroid/os/CountDownTimer;

    return-void
.end method

.method private j0(Z)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment$a;-><init>(Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150039

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->h:Landroid/app/Activity;

    const-string p1, "privacy_look_privacy"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->a:Landroidx/preference/Preference;

    const-string p1, "privacy_permission_relate"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->b:Landroidx/preference/Preference;

    const-string p1, "privacy_permission_desc"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->c:Landroidx/preference/Preference;

    const-string p1, "privacy_recommend_category"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->d:Landroidx/preference/Preference;

    const-string p1, "privacy_recommend_title"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->e:Landroidx/preference/CheckBoxPreference;

    const-string p1, "preference_key_information_setting_wlan"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->f:Landroidx/preference/CheckBoxPreference;

    const-string p1, "privacy_revoke_title"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->g:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->h:Landroid/app/Activity;

    const p2, 0x7f120cac

    invoke-static {p1, p2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lpf/g;->v()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->e:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lpf/g;->w()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->a:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->g:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->e:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->f:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    sget-boolean p1, Lcom/miui/permcenter/o;->n:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->i:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->i:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->f:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    invoke-static {p2}, Lpf/g;->M(Z)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->e:Landroidx/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_1

    invoke-static {p2}, Lpf/g;->N(Z)V

    xor-int/lit8 p1, p2, 0x1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->j0(Z)V

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->a:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v3, "_"

    if-eqz v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/security-pad-global/"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/all/"

    goto :goto_0

    :cond_1
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/security-pad/"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/security/"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->c:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "show_system_permission"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra_pkgname"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "start_pkg"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->g:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->h:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity$SettingsPrivacyFragment;->f0(Landroid/content/Context;)V

    :cond_5
    :goto_1
    return v1
.end method
