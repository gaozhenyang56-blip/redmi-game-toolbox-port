.class public Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation


# instance fields
.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Landroidx/preference/CheckBoxPreference;

.field private d:Landroidx/preference/CheckBoxPreference;

.field private e:Landroidx/preference/CheckBoxPreference;

.field private f:Landroid/app/Activity;

.field private g:Landroid/app/Dialog;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    return-void
.end method

.method private c0()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    iget v3, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-static {v0, v3}, Le2/b;->i(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    iget v4, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-static {v3, v4}, Le2/b;->f(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-boolean v4, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    iget v5, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-static {v4, v5}, Le2/b;->m(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-static {v3}, Le2/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15000d

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "notification"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "antispam_notification"

    const-string v0, "guide_report_numbers"

    const-string v1, "show"

    invoke-static {p1, v0, v1}, Lc2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_sim_id"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    const-string p1, "key_mark_fraud"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_mark_agent"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_mark_sell"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_repeated_marked_number"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    const v0, 0x7f121573

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    invoke-static {p1}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->i:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->e:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Le2/b;->x(IZ)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    invoke-static {v0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->g:Landroid/app/Dialog;

    if-nez p1, :cond_1

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1206c2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f1206a9

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f12047f

    new-instance v0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment$a;-><init>(Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;)V

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->g:Landroid/app/Dialog;

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->g:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    iget v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, v0, p2}, Le2/b;->v(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    iget v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, v0, p2}, Le2/b;->q(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->d:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    iget v0, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->h:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, v0, p2}, Le2/b;->z(Landroid/content/Context;IZ)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->f:Landroid/app/Activity;

    invoke-static {p1, v1}, Lm2/a;->w(Landroid/content/Context;Z)V

    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity$SettingsFragment;->c0()V

    return-void
.end method
