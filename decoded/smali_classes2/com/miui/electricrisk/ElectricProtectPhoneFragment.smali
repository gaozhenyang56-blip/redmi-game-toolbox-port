.class public Lcom/miui/electricrisk/ElectricProtectPhoneFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;,
        Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/CheckBoxPreference;

.field private b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;

.field private c:Lmiuix/appcompat/app/AlertDialog;

.field private d:Landroidx/preference/CheckBoxPreference;

.field private final e:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Lcom/miui/electricrisk/l;

    invoke-direct {v1, p0}, Lcom/miui/electricrisk/l;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->e:Landroidx/activity/result/b;

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Lcom/miui/electricrisk/m;

    invoke-direct {v1, p0}, Lcom/miui/electricrisk/m;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->f:Landroidx/activity/result/b;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->r0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->o0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;ILandroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->q0(ILandroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;Ljava/lang/Boolean;)Loj/t;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->s0(Ljava/lang/Boolean;)Loj/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->p0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic f0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->n0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->a:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->c:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->c:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private j0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Leg/o;->c(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/miui/electricrisk/n;

    invoke-direct {v2, v0}, Lcom/miui/electricrisk/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k0()V
    .locals 2

    const-string v0, "preference_title_ai_guard"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "preference_category_ai_guard"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "preference_comment_ai_guard"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->o0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->p0(Landroid/content/Context;)V

    return-void
.end method

.method private l0()Z
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    return v0
.end method

.method public static m0(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "com.miui.guardprovider"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "com.miui.guardprovider.AI_GUARD_PRIVACY_AGREEMENT"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private static synthetic n0(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Leg/o;->a:Ljava/lang/String;

    invoke-static {p0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lue/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic o0(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->d:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->u0()V

    :cond_0
    return-void
.end method

.method private synthetic p0(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->j0()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.guardprovider/.aiguard.PermissionRequestActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->e:Landroidx/activity/result/b;

    invoke-virtual {v0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic q0(ILandroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->l0()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "capabilities"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.miui.guardprovider/.aiguard.PermissionRequestActivity"

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->e:Landroidx/activity/result/b;

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.miui.securitycenter"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean p2, Lgh/b;->b:Z

    if-eqz p2, :cond_1

    const p2, 0x7f1205f1

    goto :goto_1

    :cond_1
    const p2, 0x7f1205f0

    :goto_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "all_purpose"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x7f12020e

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "app_name"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1205e7

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "agree_desc"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Leg/o;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "privacy_policy"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "mandatory_permission"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.permission-group.LOCATION"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v1, "runtime_perm"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    new-array p2, p3, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f1205e6

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "runtime_perm_desc"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->f:Landroidx/activity/result/b;

    goto :goto_0

    :goto_2
    return v0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->o0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->p0(Landroid/content/Context;)V

    return p3
.end method

.method private synthetic r0(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-class v0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;

    const v1, 0x1020002

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/s;->x(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/s;

    move-result-object p1

    const-string v0, "about"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/s;->i(Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic s0(Ljava/lang/Boolean;)Loj/t;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->d:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static t0()Lcom/miui/electricrisk/ElectricProtectPhoneFragment;
    .locals 1

    new-instance v0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;

    invoke-direct {v0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;-><init>()V

    return-object v0
.end method

.method private u0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const p1, 0x7f150028

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    new-instance p1, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;Lcom/miui/electricrisk/ElectricProtectPhoneFragment$a;)V

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;

    const-string p1, "key_protect_phone"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->a:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "ai_guard_function_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->d:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/electricrisk/AiGuardUtils;->getCapabilities(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->d:Landroidx/preference/CheckBoxPreference;

    const v3, 0x7f1200db

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/electricrisk/AiGuardCloudController;->loadCachedCloudData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->k0()V

    :cond_3
    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->d:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/miui/electricrisk/j;

    invoke-direct {v0, p0, p1}, Lcom/miui/electricrisk/j;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;I)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string p1, "ai_guard_about"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lcom/miui/electricrisk/k;

    invoke-direct {p2, p0}, Lcom/miui/electricrisk/k;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/electricrisk/h;->l(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->m0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment;->d:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lii/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lii/b;-><init>(Landroid/content/Context;Lak/p;Lak/p;)V

    new-instance v0, Lcom/miui/electricrisk/i;

    invoke-direct {v0, p0}, Lcom/miui/electricrisk/i;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment;)V

    invoke-virtual {v1, v0}, Lii/b;->d(Lak/l;)V

    return-void
.end method
