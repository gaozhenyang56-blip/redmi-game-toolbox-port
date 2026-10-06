.class public Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;
.super Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;
.source "SourceFile"


# instance fields
.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    return-void
.end method

.method static synthetic h0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->p0(I)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->l0()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->q0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    return p0
.end method

.method private l0()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {v0}, Lm2/a;->e(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    const v4, 0x7f1200ac

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    const v1, 0x7f1200ad

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private m0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    iget v1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    invoke-static {v0, v1}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1200f8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->o:[Ljava/lang/String;

    new-instance v3, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$d;

    invoke-direct {v3, p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$d;-><init>(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V

    invoke-virtual {v0, v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private n0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1206c6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1206bc

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$b;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$b;-><init>(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V

    const v2, 0x7f1206c4

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private p0(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->m:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->m:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->m:Lmiuix/appcompat/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SettingsFragmentForSim1"

    const-string v1, "error dismiss dialog"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private q0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1206c7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v3}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->m:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lj2/a;->e(Landroid/content/Context;)Lj2/a;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$a;-><init>(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V

    invoke-virtual {v0, v1}, Lj2/a;->d(Lj2/a$b;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/miui/antispam/service/AntiSpamService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/antispam/service/AntiSpamService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private r0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f121a86

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->n0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->o0()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->q0()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected d0()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    return v0
.end method

.method public o0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1206c6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1206c5

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$c;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1$c;-><init>(Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;)V

    const v2, 0x7f1206c3

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->q:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {p1}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    :cond_0
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->l:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->s0()V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    iget v0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, v0, p2}, Lm2/a;->t(Landroid/content/Context;IZ)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lm2/a;->A(Landroid/content/Context;Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->s()I

    move-result p1

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    iget v0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    invoke-static {p2, p1, v0}, Lm2/a;->z(Landroid/content/Context;II)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->m0()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->d:Lmiuix/preference/TextPreference;

    const-string v1, "key_sim_id"

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget v0, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->e:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->f:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/BlackListActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->g:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/WhiteListActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->l:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->r0()V

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->onResume()V

    return-void
.end method

.method public s0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->c:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    iget v2, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    invoke-static {v1, v2}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->i:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    iget v2, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    invoke-static {v1, v2}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->j:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->o:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    iget v3, p0, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->u:I

    invoke-static {v2, v3}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseSettingsFragment;->n:Landroid/content/Context;

    invoke-static {v1}, Lm2/a;->n(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SettingsFragmentForSim1;->l0()V

    return-void
.end method
