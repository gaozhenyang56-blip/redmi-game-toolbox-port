.class public Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgInterceptSettingsFragment"
.end annotation


# instance fields
.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Lmiuix/preference/DropDownPreference;

.field private d:Lmiuix/preference/DropDownPreference;

.field private e:Lmiuix/preference/DropDownPreference;

.field private f:Lmiuix/preference/TextPreference;

.field private g:Lmiuix/preference/TextPreference;

.field private h:Lmiuix/preference/TextPreference;

.field private i:Landroidx/preference/CheckBoxPreference;

.field private j:Lmiuix/preference/TextPreference;

.field private k:Lmiuix/preference/TextPreference;

.field private l:Landroid/content/Context;

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic c0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->m0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    return p0
.end method

.method static synthetic g0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->j:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->k:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->m:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->n:[Ljava/lang/String;

    return-object p0
.end method

.method private static m0()Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;

    invoke-direct {v0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;-><init>()V

    return-object v0
.end method

.method private n0(Landroidx/preference/Preference;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f:Lmiuix/preference/TextPreference;

    const-string v1, "mms_mode"

    if-ne p1, v0, :cond_0

    const v0, 0x7f1217ae

    const-string v2, "stranger_sms_mode"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_1

    const v0, 0x7f1217b4

    const-string v2, "service_sms_mode"

    goto :goto_0

    :cond_1
    const v0, 0x7f1217b2

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    iget v4, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v2, v4, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h:Lmiuix/preference/TextPreference;

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->n:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->m:[Ljava/lang/String;

    :goto_2
    new-instance v4, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;

    invoke-direct {v4, p0, v2, p1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$b;-><init>(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;Ljava/lang/String;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v3, v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_sim_id"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f15000f

    goto :goto_0

    :cond_0
    const p1, 0x7f15000e

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "msg_stranger_group"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    const-string v0, "key_msg_mms"

    const-string v2, "key_msg_notification"

    const-string v3, "key_msg_stranger"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->d:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e:Lmiuix/preference/DropDownPreference;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h:Lmiuix/preference/TextPreference;

    :goto_1
    const-string p1, "key_msg_contacts"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    const-string p1, "key_msg_keyword_black"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->j:Lmiuix/preference/TextPreference;

    const-string p1, "key_msg_keyword_white"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03005e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->n:[Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    iget v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    const-string v2, "stranger_sms_mode"

    invoke-static {p1, v2, v0, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    iget v2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    const-string v3, "service_sms_mode"

    invoke-static {v0, v3, v2, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    iget v3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    const/4 v4, 0x2

    const-string v5, "mms_mode"

    invoke-static {v2, v5, v3, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    iget v4, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    const-string v5, "contact_sms_mode"

    invoke-static {v3, v5, v4, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->d:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e:Lmiuix/preference/DropDownPreference;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h:Lmiuix/preference/TextPreference;

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    if-le p1, v1, :cond_6

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f03005f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->m:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->d:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->E(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->m:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->n:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_6
    :goto_4
    move v1, p1

    :goto_5
    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->m:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->d:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_7
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->j:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->k:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    iget v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    const-string v2, "contact_sms_mode"

    invoke-static {p1, v2, v0, p2}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->d:Lmiuix/preference/DropDownPreference;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->e:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_4

    :cond_1
    move-object v0, p1

    check-cast v0, Lmiuix/preference/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->s()I

    move-result p2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->c:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_2

    const-string p1, "stranger_sms_mode"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->d:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_3

    const-string p1, "service_sms_mode"

    goto :goto_0

    :cond_3
    const-string p1, "mms_mode"

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    iget v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    invoke-static {v0, p1, v1, p2}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    const-class v0, Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->f:Lmiuix/preference/TextPreference;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->g:Lmiuix/preference/TextPreference;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->h:Lmiuix/preference/TextPreference;

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->j:Lmiuix/preference/TextPreference;

    const-string v3, "is_black"

    const-string v4, "key_sim_id"

    if-ne p1, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->k:Lmiuix/preference/TextPreference;

    if-ne p1, v1, :cond_3

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->l:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->o:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;->n0(Landroidx/preference/Preference;)V

    :cond_3
    :goto_2
    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment$a;-><init>(Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity$MsgInterceptSettingsFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
