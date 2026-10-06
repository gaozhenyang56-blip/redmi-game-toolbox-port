.class public final Lcom/miui/permcenter/privacycenter/SecurityFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/privacycenter/SecurityFragment$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/miui/permcenter/privacycenter/SecurityFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/preference/TextPreference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/privacycenter/SecurityFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/privacycenter/SecurityFragment$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->o:Lcom/miui/permcenter/privacycenter/SecurityFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static final synthetic a0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->m:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic b0(Lcom/miui/permcenter/privacycenter/SecurityFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->l:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/miui/permcenter/privacycenter/SecurityFragment;Landroid/content/Context;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->d0(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d0(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/miui/permcenter/privacycenter/SecurityFragment$b;-><init>(Landroid/content/Context;Ltj/d;)V

    invoke-static {v0, v1, p2}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final e0(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lxc/p;->b(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string p1, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.ShareLocationProxyActivity;end"

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-boolean v4, Lsl/a;->a:Z

    if-nez v4, :cond_4

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    if-nez v0, :cond_4

    const-string p2, "intent_source"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p2, p1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lx4/t;->P(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "#Intent;action=miui.intent.action.SIM_LOCK_CHOOSE;end"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/simlock/c;->s(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.security.SecuritySettings;end"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f120210

    if-eqz v0, :cond_8

    const-string p1, ":settings:show_fragment_title"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    const v2, 0x7f121715

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_1
    invoke-static {p1, v1}, Lx4/y1;->j(Landroid/content/Context;I)V

    goto :goto_2

    :cond_8
    const-string v0, "SOS"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.miui.packageinstaller"

    const-string v0, "com.miui.packageInstaller.ui.secure.SecureModeActivity"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "safe_mode_ref"

    const-string v0, "setting_entry"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "safe_mode_type"

    const-string v0, "setting"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "#Intent;launchFlags=0x4000000;action=miui.intent.action.SECURITY_CENTER;B.extra_auto_optimize=true;end"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    invoke-static {p2}, Lx4/t;->I(Landroid/content/Intent;)V

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_2
    return-void
.end method

.method private final refreshStatus()V
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [Loj/l;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a:Lmiuix/preference/TextPreference;

    const-string v2, "mFindDevicePreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->b:Lmiuix/preference/TextPreference;

    const-string v2, "mPowOffPasswordPreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->c:Lmiuix/preference/TextPreference;

    const-string v2, "mSimProtectPreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->d:Lmiuix/preference/TextPreference;

    const-string v2, "mAntispamSanPreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->e:Lmiuix/preference/TextPreference;

    const-string v2, "mFamilyGuardPreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->f:Lmiuix/preference/TextPreference;

    const-string v2, "mAntiFraudPreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->g:Lmiuix/preference/TextPreference;

    const-string v2, "mPaymentProtectPreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->i:Lmiuix/preference/TextPreference;

    const-string v2, "mSosPreference"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lqj/d0;->g([Loj/l;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->m:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    new-instance v5, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/permcenter/privacycenter/SecurityFragment$c;-><init>(Lcom/miui/permcenter/privacycenter/SecurityFragment;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->n:Llk/s1;

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f150062

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "security_find_device"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "IS_FIND_DEVICE_AVAILABLE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a:Lmiuix/preference/TextPreference;

    const-string p1, "security_power_off_password"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.SHUT_DOWN_PASSWORD_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lx4/f1;->F(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lx4/r1;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, p2

    :goto_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    :cond_3
    move-object p1, v0

    :goto_3
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->b:Lmiuix/preference/TextPreference;

    const-string p1, "security_sim_protect"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {}, Lcom/miui/simlock/c;->l()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    :cond_4
    move-object p1, v0

    :goto_4
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->c:Lmiuix/preference/TextPreference;

    const-string p1, "security_antispam_scan"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {}, Lx4/k0;->b()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    :cond_5
    move-object p1, v0

    :goto_5
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->d:Lmiuix/preference/TextPreference;

    const-string p1, "security_family_guard"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-static {}, Ldb/c;->k()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "EX_FUNC_SAFE_INSTALL_MODE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v1, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, p2

    :goto_6
    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    move v2, p2

    :goto_7
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_8

    :cond_8
    move-object p1, v0

    :goto_8
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->e:Lmiuix/preference/TextPreference;

    const-string p1, "security_anti_fraud"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-ne v2, v1, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    move v2, p2

    :goto_9
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_a

    :cond_a
    move-object p1, v0

    :goto_a
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->f:Lmiuix/preference/TextPreference;

    const-string p1, "security_payment_protect"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_b

    :cond_b
    move-object p1, v0

    :goto_b
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->g:Lmiuix/preference/TextPreference;

    const-string p1, "security_micare"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_c

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_c

    :cond_c
    move-object p1, v0

    :goto_c
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->h:Lmiuix/preference/TextPreference;

    const-string p1, "security_sos"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_e

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-ne v2, v1, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    move v2, p2

    :goto_d
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_e

    :cond_e
    move-object p1, v0

    :goto_e
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->i:Lmiuix/preference/TextPreference;

    const-string p1, "container_emergency_card"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_f

    :cond_f
    move-object p1, v0

    :goto_f
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->j:Lmiuix/preference/TextPreference;

    const-string p1, "more_security_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_10

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_10

    :cond_10
    move-object p1, v0

    :goto_10
    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->k:Lmiuix/preference/TextPreference;

    const-string p1, "security_center"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/TextPreference;

    if-eqz p1, :cond_12

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.miui.securitymanager"

    invoke-static {v0, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    move p2, v1

    :cond_11
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    move-object v0, p1

    :cond_12
    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->l:Lmiuix/preference/TextPreference;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->n:Llk/s1;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "preference"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->a:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f12170c

    const-string v0, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->e0(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->b:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f121720

    const-string v0, "#Intent;action=miui.intent.action.SHUT_DOWN_PASSWORD_ACTIVITY;package=com.miui.securitycenter;end"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->c:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f12173b

    const-string v0, "#Intent;action=miui.intent.action.SIM_LOCK_CHOOSE;end"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->d:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f1216f6

    const-string v0, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->e:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f121724

    const-string v0, "SOS"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->f:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f12190e

    const-string v0, "#Intent;action=miui.intent.action.ELECTRIC_RISK;package=com.miui.securitycenter;end"

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->g:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f12171b

    const-string v0, "#Intent;action=miui.intent.action.SAFE_PAY_MONITOR_SETTINGS;end"

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->h:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p1, 0x7f121712

    const-string v0, "#Intent;action=miui.intent.action.WARNINGCENTER_MAIN;end"

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->i:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f12173d

    const-string v0, "#Intent;component=com.android.settings/.SubSettings;S.%3Asettings%3Ashow_fragment=com.android.settings.emergency.ui.SosSettings;end"

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->j:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEmergencyInfoEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "#Intent;component=com.miui.securitycenter/com.miui.earthquakewarning.ui.EarthquakeWarningEmergencyEditActivity;end"

    goto :goto_1

    :cond_9
    const-string p1, "#Intent;component=com.miui.securitycenter/com.miui.earthquakewarning.ui.EarthquakeWarningEmergencyActivity;end"

    :goto_1
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEmergencyInfoEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f120765

    goto :goto_2

    :cond_a
    const v0, 0x7f120771

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->e0(Ljava/lang/String;I)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->k:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const p1, 0x7f121715

    const-string v0, "#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.security.SecuritySettings;end"

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/SecurityFragment;->l:Lmiuix/preference/TextPreference;

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f12020e

    const-string v0, "#Intent;action=miui.intent.action.SECURITY_CENTER;end"

    goto/16 :goto_0

    :cond_d
    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/SecurityFragment;->refreshStatus()V

    return-void
.end method
