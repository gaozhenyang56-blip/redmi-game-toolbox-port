.class public Lcom/miui/securityscan/ui/settings/SettingsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/settings/SettingsFragment$f;,
        Lcom/miui/securityscan/ui/settings/SettingsFragment$e;,
        Lcom/miui/securityscan/ui/settings/SettingsFragment$d;,
        Lcom/miui/securityscan/ui/settings/SettingsFragment$b;,
        Lcom/miui/securityscan/ui/settings/SettingsFragment$c;,
        Lcom/miui/securityscan/ui/settings/SettingsFragment$g;,
        Lcom/miui/securityscan/ui/settings/SettingsFragment$h;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/miui/securityscan/ui/settings/SettingsFragment$f;

.field private final b:Ljava/lang/String;

.field private c:Landroidx/preference/Preference;

.field private d:Lmiuix/preference/TextPreference;

.field private e:Landroidx/preference/Preference;

.field private f:Lcom/miui/securityscan/ui/settings/CreateIconPreference;

.field private g:Landroidx/preference/CheckBoxPreference;

.field private h:Landroidx/preference/CheckBoxPreference;

.field private i:Landroidx/preference/CheckBoxPreference;

.field private j:Landroidx/preference/CheckBoxPreference;

.field private k:Landroidx/preference/CheckBoxPreference;

.field private l:Landroidx/preference/Preference;

.field private m:Landroidx/preference/Preference;

.field private n:Landroidx/preference/Preference;

.field private o:Landroidx/preference/Preference;

.field private p:Landroidx/preference/Preference;

.field private q:Landroidx/preference/Preference;

.field private r:Landroidx/preference/Preference;

.field private s:Landroidx/preference/Preference;

.field private t:Landroidx/preference/PreferenceCategory;

.field private u:Ljava/lang/String;

.field private v:Lmiuix/appcompat/app/AlertDialog;

.field private w:Lmiuix/appcompat/app/AlertDialog;

.field private x:J

.field private y:Landroid/content/Context;

.field private z:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const-string v0, "preference_key_manual_item_white_list"

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->x:J

    return-void
.end method

.method public static synthetic c0(Lcom/miui/securityscan/ui/settings/SettingsFragment;Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->p0(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->q0(Z)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->A:Z

    return p0
.end method

.method static synthetic i0(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->A:Z

    return p1
.end method

.method static synthetic j0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->B:Z

    return p0
.end method

.method static synthetic k0(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->B:Z

    return p1
.end method

.method static synthetic l0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/securityscan/ui/settings/SettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method private n0()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v2, Lgh/b;->b:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1205f1

    goto :goto_0

    :cond_0
    const v2, 0x7f1205f0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_purpose"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f12020e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Leg/o;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy_policy"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mandatory_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.permission-group.LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "runtime_perm"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1205e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "runtime_perm_desc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private o0(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ":miui:starting_window_label"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_settings_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_settings_title_res"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "enter_way"

    const-string p2, "security_settings"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private synthetic p0(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->f:Lcom/miui/securityscan/ui/settings/CreateIconPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private q0(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ONLINE_SERVICE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "online_service_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lr0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method private r0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1205eb

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1205e9

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/ui/settings/SettingsFragment$c;

    invoke-direct {v1, p0, p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment$c;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Lcom/miui/securityscan/ui/settings/SettingsFragment;)V

    const v2, 0x7f1205e8

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;

    invoke-direct {v1, p0, p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment$b;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Lcom/miui/securityscan/ui/settings/SettingsFragment;)V

    const v2, 0x7f1205ea

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/ui/settings/SettingsFragment$d;

    invoke-direct {v1, p0, p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment$d;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Lcom/miui/securityscan/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-static {}, Lqf/c;->F0()V

    return-void
.end method

.method private s0()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121624

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1206af

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)V

    const v3, 0x7f120499

    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;

    invoke-direct {v2, p0, v1}, Lcom/miui/securityscan/ui/settings/SettingsFragment$g;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Z)V

    const v1, 0x7f120f48

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->w:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private t0()V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/miui/securityscan/ui/settings/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->v:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    const v0, 0x7f120d95

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->u:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120d98

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->v:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private u0(Z)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/ui/settings/SettingsFragment$h;

    invoke-direct {v0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment$h;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x12c

    if-ne p1, p3, :cond_3

    const/4 p1, -0x3

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Leg/o;->c(Landroid/content/Context;Z)V

    new-instance p1, Lcom/miui/securityscan/ui/settings/SettingsFragment$e;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/miui/securityscan/ui/settings/SettingsFragment$e;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment$a;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->n0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const p1, 0x7f150038

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->z:Landroid/app/Activity;

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p1}, Lx4/f1;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->u:Ljava/lang/String;

    const p1, 0x7f1213f2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->c:Landroidx/preference/Preference;

    const p1, 0x7f1213e5

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->d:Lmiuix/preference/TextPreference;

    const p1, 0x7f1213f8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/ui/settings/CreateIconPreference;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->f:Lcom/miui/securityscan/ui/settings/CreateIconPreference;

    sget-boolean p2, Lgh/b;->b:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    new-instance p2, Ldg/b;

    invoke-direct {p2, p0}, Ldg/b;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;)V

    invoke-static {p1, p2}, Lgh/b;->c(Landroid/content/Context;Lgh/b$b;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->f:Lcom/miui/securityscan/ui/settings/CreateIconPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_0
    const-string p1, "preference_key_manual_item_white_list"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->e:Landroidx/preference/Preference;

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->d:Lmiuix/preference/TextPreference;

    const p2, 0x7f120d97

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->u:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    const p1, 0x7f1213ed

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->e:Landroidx/preference/Preference;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    const-class v4, Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lx4/n1;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->c:Landroidx/preference/Preference;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    const-class v4, Lcom/miui/securityscan/shortcut/ShortcutActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_1
    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const p2, 0x7f1213f1

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->g:Landroidx/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lef/x;->H(Landroid/content/ContentResolver;)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_2
    const p2, 0x7f1213f3

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :goto_3
    const p1, 0x7f1213fc

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->l:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const p1, 0x7f1213fd

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->m:Landroidx/preference/Preference;

    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_5

    new-instance p2, Ldg/c;

    invoke-direct {p2, p0}, Ldg/c;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_4

    :cond_5
    const p1, 0x7f12002f

    const-string p2, "miui.intent.action.NETWORKASSISTANT_SETTINGS"

    invoke-direct {p0, p2, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o0(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->m:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_4
    invoke-static {}, Lx4/k0;->b()Z

    move-result p1

    const p2, 0x7f1213ec

    if-nez p1, :cond_6

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->m:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    const p1, 0x7f1213fa

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->n:Landroidx/preference/Preference;

    invoke-static {}, Lx4/k0;->b()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->n:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const p1, 0x7f1213fe

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o:Landroidx/preference/Preference;

    const p1, 0x7f120030

    const-string v2, "com.miui.securitycenter.action.POWER_SETTINGS"

    invoke-direct {p0, v2, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o0(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o:Landroidx/preference/Preference;

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-static {}, Lx4/t;->u()Z

    move-result p1

    const v2, 0x7f1213fb

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->p:Landroidx/preference/Preference;

    if-eqz p1, :cond_7

    const v3, 0x7f120086

    goto :goto_5

    :cond_7
    const v3, 0x7f120085

    :goto_5
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    if-eqz p1, :cond_8

    const p1, 0x7f12002d

    goto :goto_6

    :cond_8
    const p1, 0x7f12002c

    :goto_6
    const-string v2, "com.miui.securitycenter.action.ANTIVIRUS_SETTINGS"

    invoke-direct {p0, v2, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o0(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->p:Landroidx/preference/Preference;

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const p1, 0x7f121402

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->q:Landroidx/preference/Preference;

    const p1, 0x7f120f67

    const-string v2, "miui.intent.action.OPTIMIZE_MANAGE_SETTINGS"

    invoke-direct {p0, v2, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o0(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->q:Landroidx/preference/Preference;

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p1}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->l:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    const p1, 0x7f1213df

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->t:Landroidx/preference/PreferenceCategory;

    const p1, 0x7f1213ff

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->t:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    :cond_a
    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p2}, Lpf/i;->l(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->k:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :goto_7
    const p1, 0x7f1213dd

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_b

    invoke-static {}, Lx4/t;->p()Z

    move-result p2

    if-nez p2, :cond_b

    const p1, 0x7f1213f7

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    const p2, 0x7f120cac

    invoke-static {p1, p2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->i:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const p1, 0x7f1213f6

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->j:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    new-instance p1, Lcom/miui/securityscan/ui/settings/SettingsFragment$f;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment$f;-><init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;)V

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->C:Lcom/miui/securityscan/ui/settings/SettingsFragment$f;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_8
    const-string p1, "key_sim_lock_setting"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->r:Landroidx/preference/Preference;

    invoke-static {}, Lcom/miui/simlock/c;->l()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->r:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_9

    :cond_c
    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->r:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_9
    const-string p1, "settings_privacy_settings_title"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->s:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->s:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_a

    :cond_d
    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->s:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_a
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->v:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->v:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->w:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->w:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->C:Lcom/miui/securityscan/ui/settings/SettingsFragment$f;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1213f1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Lef/x;->k0(Landroid/content/ContentResolver;Z)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    const-class v3, Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    const-string p2, "notify"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p2, p1}, Lx4/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    return v2

    :cond_1
    const v0, 0x7f1213f3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->x:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->x:J

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->n0()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->r0()V

    :goto_1
    return v2

    :cond_4
    const v0, 0x7f1213f7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lpf/g;->M(Z)V

    return v2

    :cond_5
    const v0, 0x7f1213f6

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lpf/g;->N(Z)V

    xor-int/lit8 p1, p2, 0x1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->u0(Z)V

    return v2

    :cond_6
    const v0, 0x7f1213ff

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->s0()V

    goto :goto_2

    :cond_7
    invoke-direct {p0, p2}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->q0(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p1, p2}, Lpf/i;->v(Landroid/content/Context;Z)V

    :goto_2
    return v2

    :cond_8
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1213e5

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->t0()V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1213f8

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p1}, Lgh/b;->o(Landroid/content/Context;)V

    sget-boolean p1, Lgh/b;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->f:Lcom/miui/securityscan/ui/settings/CreateIconPreference;

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/settings/CreateIconPreference;->e()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->f:Lcom/miui/securityscan/ui/settings/CreateIconPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1213fc

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f12002e

    const-string v0, "com.miui.securitycenter.action.GARBAGE_CLEANUP_SETTINGS"

    invoke-direct {p0, v0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o0(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->D(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lx4/t;->J(Landroid/content/Intent;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {v0, p1}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1213fa

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    invoke-static {p1}, Lx4/v;->j(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    const v0, 0x7f1200f9

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_6
    const p1, 0x7f12002b

    const-string v0, "com.miui.antispam.action.ANTISPAM_SETTINGS"

    invoke-direct {p0, v0, p1}, Lcom/miui/securityscan/ui/settings/SettingsFragment;->o0(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->D(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lx4/t;->J(Landroid/content/Intent;)V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_8
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->r:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_9

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.SIM_LOCK_SETTING"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->z:Landroid/app/Activity;

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lx4/t;->J(Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->s:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_b

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->y:Landroid/content/Context;

    const-class v1, Lcom/miui/securityscan/ui/settings/SettingsPrivacyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_a
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->m:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_c

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->z:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_c
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment;->h:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
