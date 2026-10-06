.class public Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/electricrisk/ElectricProtectPhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutInfoFragment"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->k0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->h0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->j0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->l0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->i0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->m0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic h0(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "https://privacy.mi.com/AIalert/%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v0
.end method

.method private synthetic i0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->n0()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic j0(Landroidx/preference/Preference;)Z
    .locals 2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.bugreport"

    const-string v1, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic k0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->b:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->b:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "extra_pkgname"

    const-string v1, "com.miui.guardprovider"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.miui.securitycenter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic m0(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "ai_guard_function_switch"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->p0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->o0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "com.miui.guardprovider.AI_GUARD_PRIVACY_AGREEMENT"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->X0()V

    return-void
.end method

.method private n0()V
    .locals 9

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130024

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1200e0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1200df

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/electricrisk/s;

    invoke-direct {v1}, Lcom/miui/electricrisk/s;-><init>()V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/electricrisk/t;

    invoke-direct {v1, p0}, Lcom/miui/electricrisk/t;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/electricrisk/u;

    invoke-direct {v1, p0}, Lcom/miui/electricrisk/u;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;)V

    const v2, 0x7f1200dd

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;JJLandroid/widget/Button;)V

    iput-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static o0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static p0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.guardprovider/.aiguard.AiGuardService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->a:Ljava/lang/CharSequence;

    const v0, 0x7f1200dc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p1, 0x7f150027

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "permissions"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lcom/miui/electricrisk/o;

    invoke-direct {p2, p0}, Lcom/miui/electricrisk/o;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p1, "privacy_policy"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lcom/miui/electricrisk/p;

    invoke-direct {p2, p0}, Lcom/miui/electricrisk/p;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p1, "revoke_privacy_policy"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lcom/miui/electricrisk/q;

    invoke-direct {p2, p0}, Lcom/miui/electricrisk/q;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string p1, "bugreport"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lcom/miui/electricrisk/r;

    invoke-direct {p2, p0}, Lcom/miui/electricrisk/r;-><init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
