.class public Lcom/miui/simlock/fragment/SimLockStartFragment;
.super Lcom/miui/simlock/fragment/SimLockBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# instance fields
.field private d:Lcom/miui/permcenter/settings/model/OneImagePreference;

.field private e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

.field private f:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

.field private g:Landroidx/preference/PreferenceCategory;

.field private h:Landroidx/preference/Preference;

.field private i:Lmiuix/appcompat/app/AlertDialog;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/simlock/fragment/SimLockStartFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->j0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/simlock/fragment/SimLockStartFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->m0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/simlock/fragment/SimLockStartFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->l0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/simlock/fragment/SimLockStartFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->k0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/simlock/fragment/SimLockStartFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->n0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/simlock/fragment/SimLockStartFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->o0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/simlock/fragment/SimLockStartFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->t0(I)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/simlock/fragment/SimLockStartFragment;)Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    return-object p0
.end method

.method private synthetic j0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "key_cloud_dialog_cancel"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic k0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "key_cloud_dialog_confirm"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->s0()V

    return-void
.end method

.method private synthetic l0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "key_keyguard_dialog_cancel"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic m0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "key_keyguard_dialog_confirm"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->w0()V

    return-void
.end method

.method private synthetic n0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "key_close_dialog_confirm"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic o0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "key_close_dialog_cancel"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->x0(I)V

    return-void
.end method

.method private p0()V
    .locals 3

    const-string v0, "key_cloud_dialog_show"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lhg/f;

    invoke-direct {v2, p0}, Lhg/f;-><init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lhg/g;

    invoke-direct {v2, p0}, Lhg/g;-><init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private q0()V
    .locals 3

    const-string v0, "key_keyguard_dialog_show"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lhg/j;

    invoke-direct {v2, p0}, Lhg/j;-><init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lhg/k;

    invoke-direct {v2, p0}, Lhg/k;-><init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private r0()V
    .locals 3

    const-string v0, "key_close_dialog_confirm_show"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    const v2, 0x7f130024

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1216a8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1216a7

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lhg/h;

    invoke-direct {v1, p0}, Lhg/h;-><init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V

    const v2, 0x7f1216aa

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lhg/i;

    invoke-direct {v1, p0}, Lhg/i;-><init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V

    const v2, 0x7f1205ea

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private s0()V
    .locals 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/miui/simlock/fragment/SimLockStartFragment$a;

    invoke-direct {v6, p0}, Lcom/miui/simlock/fragment/SimLockStartFragment$a;-><init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V

    const-string v1, "com.xiaomi"

    const-string v2, "passportapi"

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private t0(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockStartFragment::simLockSetUpFlow::step = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->x0(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/simlock/c;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->t0(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->p0()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/simlock/c;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->u0(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->q0()V

    :goto_0
    return-void
.end method

.method private u0(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MiuiConfirmCommonPassword"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private v0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/simlock/activity/SimLockQueryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    const-string v2, "slot_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private w0()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MiuiSecurityChooseUnlock"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private x0(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "slot_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "pin_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    iget v1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/simlock/c;->g(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->b:Landroid/content/Context;

    iget v4, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-static {v3, v4}, Lcom/miui/simlock/c;->k(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "sim_request_code"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/simlock/fragment/SimLockBaseFragment;->a:Lmiui/telephony/SubscriptionManager;

    iget v6, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-virtual {v5, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-virtual {v4, v5}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->d:Lcom/miui/permcenter/settings/model/OneImagePreference;

    if-eqz v0, :cond_3

    const v6, 0x7f080fab

    goto :goto_2

    :cond_3
    const v6, 0x7f080faa

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v5, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->f:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    invoke-virtual {v5, v0}, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->f:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SimLockStartFragment::onActivityResult::requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SimLock"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->v0()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->t0(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result p1

    iput p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-static {p1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result p1

    iput p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SimLockStartFragment::onCreatePreferences::mCurrentSlotId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimLock"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f150008

    invoke-virtual {p0, v0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string v0, "key_simlock_image"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/settings/model/OneImagePreference;

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->d:Lcom/miui/permcenter/settings/model/OneImagePreference;

    const-string v0, "key_simlock_bind"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    const-string v0, "key_simlock_set"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->f:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    const-string v0, "key_simlock_query_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->g:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_simlock_query"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->h:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->f:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->h:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-super {p0, p1, p2}, Lcom/miui/simlock/fragment/SimLockBaseFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockStartFragment::onPreferenceChange::key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->e:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->t0(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->r0()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->f:Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->x0(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/simlock/fragment/SimLockStartFragment;->x0(I)V

    :cond_3
    :goto_0
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockStartFragment::onPreferenceClick::key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/simlock/fragment/SimLockStartFragment;->h:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->u0(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/simlock/fragment/SimLockStartFragment;->a0()V

    return-void
.end method
