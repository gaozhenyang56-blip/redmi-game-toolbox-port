.class public Lcom/miui/permcenter/settings/PrivacyInputModeFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/settings/PrivacyInputModeFragment$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroidx/preference/CheckBoxPreference;

.field private c:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/os/Messenger;

.field private j:Z

.field private k:Landroid/os/Messenger;

.field private l:Landroidx/preference/Preference$c;

.field private m:Landroid/content/ServiceConnection;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "PrivacyInputMode"

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->a:Ljava/lang/String;

    const-string v0, "miui.intent.action.PREPARE_PRIVACY_INPUT_MODE"

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->d:Ljava/lang/String;

    const-string v0, "ro.config.miui_orientation_enable"

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->e:Ljava/lang/String;

    const-string v0, "download_voice_package"

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->i:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->j:Z

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$c;-><init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->k:Landroid/os/Messenger;

    new-instance v0, Ltc/e;

    invoke-direct {v0, p0}, Ltc/e;-><init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->l:Landroidx/preference/Preference$c;

    new-instance v0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;-><init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->m:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->lambda$new$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->m0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->q0(Z)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->i:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic f0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->j:Z

    return p1
.end method

.method static synthetic g0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->k0()V

    return-void
.end method

.method static synthetic h0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->p0(Z)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method private j0()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.action.PREPARE_PRIVACY_INPUT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->m:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyInputMode"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private k0()V
    .locals 5

    const-string v0, "PrivacyInputMode"

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-boolean v3, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->h:Z

    if-eqz v3, :cond_0

    const-string v3, "securityadd_privacy_input_voice_pkg_download_counts"

    invoke-static {v3}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->h:Z

    const-string v4, "download_voice_package"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->k:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    const-string v2, "connectInput"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->i:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectInput error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private l0(Ljava/lang/String;)V
    .locals 10

    const v0, 0x7f150060

    invoke-virtual {p0, v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    new-instance v0, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e025f

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080ec8

    const v4, 0x7f080eb9

    const v5, 0x7f080ec8

    const v6, 0x7f080ed1

    const v7, 0x7f080ed1

    invoke-static/range {v2 .. v7}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIcon(I)V

    const v2, 0x7f120614

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const v2, 0x7f120615

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;->g(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080eca

    const v6, 0x7f080ebb

    const v7, 0x7f080eca

    const v8, 0x7f080ed2

    const v9, 0x7f080ed2

    invoke-static/range {v4 .. v9}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setIcon(I)V

    const v3, 0x7f12068f

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    const v3, 0x7f120690

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v2}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;->g(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080ecc

    const v6, 0x7f080ebd

    const v7, 0x7f080ecc

    const v8, 0x7f080ed3

    const v9, 0x7f080ed3

    invoke-static/range {v4 .. v9}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setIcon(I)V

    const v3, 0x7f12181b

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    const v3, 0x7f12181c

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v2}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;->g(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080ecd

    const v6, 0x7f080ebe

    const v7, 0x7f080ecd

    const v8, 0x7f080ed4

    const v9, 0x7f080ed4

    invoke-static/range {v4 .. v9}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setIcon(I)V

    const v3, 0x7f121534

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    const v3, 0x7f121535

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v2}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;->g(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080ecf

    const v6, 0x7f080ec0

    const v7, 0x7f080ecf

    const v8, 0x7f080ed5

    const v9, 0x7f080ed5

    invoke-static/range {v4 .. v9}, Lx4/k1;->d(Landroid/content/Context;IIIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    const v1, 0x7f120f46

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const v1, 0x7f120f47

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v2}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;->g(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/permcenter/settings/model/OneImagePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/permcenter/settings/model/OneImagePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f0e0449

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v1, 0x7f080eb0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;I)V
    .locals 0

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->h:Z

    iget-boolean p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->j:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->j0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->k0()V

    :goto_0
    return-void
.end method

.method private synthetic m0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic n0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121476

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12147a

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x7f121479

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120476

    new-instance v1, Ltc/f;

    invoke-direct {v1, p0}, Ltc/f;-><init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$a;-><init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1207f8

    new-instance v1, Ltc/g;

    invoke-direct {v1, p0}, Ltc/g;-><init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    const-string p1, "PrivacyInputMode"

    const-string v0, "close Privacy InputMode"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->p0(Z)V

    :goto_0
    return p2
.end method

.method public static o0()Lcom/miui/permcenter/settings/PrivacyInputModeFragment;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    invoke-direct {v0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;-><init>()V

    return-object v0
.end method

.method private p0(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->c:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->j(F)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-static {v1}, Lx4/k1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lx4/k1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {p1, v0, v1}, Lx4/k1;->t(ZLandroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private q0(Z)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lx4/y;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/y;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "ro.config.miui_orientation_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx4/g;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    if-nez p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setOrientationOptions"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const/16 p1, 0xe

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lx4/y;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->l0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f15005f

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "interception_net_image"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    iput-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->c:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    :goto_0
    const-string p1, "key_privacy_input_mode"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->l:Landroidx/preference/Preference$c;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/k1;->g(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->c:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->j(F)V

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->n:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/k1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lx4/k1;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/k1;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->b:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121478

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method
